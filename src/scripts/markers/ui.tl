local ui = require('openmw.ui')
local async = require('openmw.async')
local I = require('openmw.interfaces')
local input = require('openmw.input')
local util = require('openmw.util')
local aux_util = require('openmw_aux.util')
local camera = require('openmw.camera')
local self = require('openmw.self')
local sendGlobalEvent = require("openmw.core").sendGlobalEvent
local types = require("openmw.types")
local auxUi = require('openmw_aux.ui')
local quest = require("scripts.markers.quest")

local colorNormal = I.MWUI.templates.textNormal.props.textColor as util.Color
local colorOver = util.color.rgb(223 / 255, 201 / 255, 159 / 255)
local colorActive = util.color.rgb(96 / 255, 112 / 255, 202 / 255)
local colorDisabled = util.color.rgb(179 / 255, 168 / 255, 135 / 255)

-- Various utilities taken from OpenMW's code that are private
local objectiveComplete = auxUi.deepLayoutCopy(I.MWUI.templates.textNormal as {any : any}) as ui.Template
objectiveComplete.props.textColor = colorDisabled

local questHeader = auxUi.deepLayoutCopy(I.MWUI.templates.textHeader as {any : any}) as ui.Template
questHeader.props.textSize = 24


local growingInterval: ui.Layout = {
    template = I.MWUI.templates.interval,
    external = {
        grow = 1,
    },
}

local function paddedBox(layout: ui.Layout): ui.Layout
    return {
        template = I.MWUI.templates.box,
        content = ui.content {
            {
                template = I.MWUI.templates.padding,
                content = ui.content { layout },
            },
        }
    }
end

-- Janky scroll list reimplementation
local function renderScrollList(
    components: {ui.Layout},
    size: util.Vector2,
    maxVisibleItems: integer,
    updateCallback: function()
): ui.Layout
    local function getVisibleItems(from: integer): {ui.Layout}
        return { table.unpack(components,
            math.max(1, from),
            math.min(from + maxVisibleItems - 1, #components)
        ) }
    end

    local scrollPosition = 1
    
    local listCanvas: ui.Layout = {
        type = ui.TYPE.Flex,
        props = {
            horizontal = false,
            autoSize = false,
            size = util.vector2(size.x, size.y),
        },
        external = { grow = 1 },
        
        content = ui.content(getVisibleItems(scrollPosition)),
    }

    local upArrow = ui.texture {
        path = 'textures/omw_menu_scroll_up.dds',
    }
    local downArrow = ui.texture {
        path = 'textures/omw_menu_scroll_down.dds',
    }

    local scrollControls: ui.Layout = {
        type = ui.TYPE.Flex,
        props = { horizontal = false },
        external = { stretch = 1 },
        content = ui.content({
            {
                type = ui.TYPE.Image,
                props = {
                    resource = upArrow,
                    size = util.vector2(1, 1) * 15,
                },
                events = {
                    mouseClick = async:callback(function()
                        scrollPosition = math.max(1, math.min(scrollPosition - 1, #components - maxVisibleItems))
                        listCanvas.content = ui.content(getVisibleItems(scrollPosition))

                        ui.showMessage(tostring(scrollPosition), {})
                        updateCallback()
                    end),
                },
                template = I.MWUI.templates.borders
            },
            {
                template = I.MWUI.templates.interval,
                external = { grow = 1 },
            },
            {
                type = ui.TYPE.Image,
                props = {
                    resource = downArrow,
                    size = util.vector2(1, 1) * 15,
                },
                events = {
                    mouseClick = async:callback(function()
                        scrollPosition = math.max(1, math.min(scrollPosition + 1, #components - maxVisibleItems))
                        listCanvas.content = ui.content(getVisibleItems(scrollPosition))

                        ui.showMessage(tostring(scrollPosition), {})
                        updateCallback()
                    end),
                },
                template = I.MWUI.templates.borders
            },
        })
    }

    local list: ui.Layout = paddedBox {
        type = ui.TYPE.Flex,
        props = {
            horizontal = true,
            autoSize = false,
            size = size,
        },
        content = ui.content({
            listCanvas, scrollControls
        })
    }
    return list
end


local function renderObjective(objective: quest.ObjectiveUIState): ui.Layout
    if objective.isCompleted then
        return {
            type = ui.TYPE.Text,
            template = objectiveComplete,
            props = { text = "[x] " .. objective.info.text }
        }
    else
        return {
            type = ui.TYPE.Text,
            template = I.MWUI.templates.textNormal,
            props = { text = "[ ] " .. objective.info.text }
        }
    end
end

local spacer: ui.Layout = {
    props = {
        size = util.vector2(0, 10),
    },
}
local hSpacer: ui.Layout = {
    props = { size = util.vector2(10, 0) }
}
local stretchingLine: ui.Layout = {
    template = I.MWUI.templates.horizontalLine,
    external = {
        stretch = 1,
    },
}

local function renderObjectives(objectives: {quest.ObjectiveUIState}): ui.Layout
    local components: {ui.Layout} = {}
    for _, obj in ipairs(objectives) do
        table.insert(components, renderObjective(obj))
        table.insert(components, spacer)
    end

    return {
        type = ui.TYPE.Flex,
        props = { horizontal = false },
        content = ui.content(components)
    }
end

local function renderQuestInfo(questState: quest.QuestUIState): ui.Layout
    local header: ui.Layout = {
        type = ui.TYPE.Text,
        template = questHeader,
        external = { stretch = 1 },
        props = { 
            text = questState.name,
            wordWrap = true,
            multiLine = true,
            autoSize = true,
            -- size = util.vector2(0, 50)
        }
    }
    local flavorText: ui.Layout = {
        type = ui.TYPE.Text,
        template = I.MWUI.templates.textNormal,
        external = { stretch = 1 },
        props = {
            text = questState.currentFlavorText,
            wordWrap = true,
            multiLine = true,
            autoSize = false,
            -- -- We can't just say "autosize, fix horizontal axis but vertical can go as much as
            -- -- you need", so we fix a 150px here
            size = util.vector2(0, 150)
        }
    }
    local objectives: ui.Layout = {
        type = ui.TYPE.Flex,
        props = { horizontal = true },
        content = ui.content{hSpacer, renderObjectives(questState.objectives)}
    }
    
    return {
        type = ui.TYPE.Flex,
        props = { horizontal = false },
        external = {
            grow = 1, stretch = 1
        },
        content = ui.content {
            header,
            spacer,
            stretchingLine,
            spacer,
            flavorText,
            spacer,
            spacer,
            objectives
        }
    }
end

local function renderWindow(size: util.Vector2, content: ui.Layout): ui.Layout

    local titleBar: ui.Layout = {
        type = ui.TYPE.Flex,
        props = {
            horizontal = true,
            align = ui.ALIGNMENT.Center,
        },
        content = ui.content {{
            type = ui.TYPE.Text,
            props = {
                text = "Quest Log",
                autoSize = true,
            },
            template = I.MWUI.templates.textNormal,
        }},
    }
    
    local questWindowInner: ui.Layout = {
        type = ui.TYPE.Flex,
        props = {
            horizontal = false,
            autoSize = false,
            relativeSize = util.vector2(1, 1),
        },
        content = ui.content {
            titleBar,
            content,
        },
    }
    
    local questWindow: ui.Layout = {
        type = ui.TYPE.Window,
        props = {
            size = size,
            caption = "Quest Journal",
        },
        content = ui.content { questWindowInner },
    }
    
    local questWindowContainer: ui.Layout = {
        layer = "Windows",
        type = ui.TYPE.Container,
        props = {
            relativePosition = util.vector2(0.5, 0.5),
            anchor = util.vector2(0.5, 0.5),
        },
        template = I.MWUI.templates.boxTransparentThick,
        content = ui.content { questWindow },
    }

    return questWindowContainer
end

local function makeQuestWindowTest(state: quest.UIState): ui.Element
    local questListElement: ui.Element = nil
    local function questListUpdate()
        if questListElement == nil then
            error("callback called before element instantiated")
        end
        questListElement:update()
    end

    local listComponents: {ui.Layout} = {}

    local function selectComponent(ix: number)
        for i, comp in ipairs(listComponents) do
            if i == ix then
                comp.props.textColor = colorActive
            else
                comp.props.textColor = colorNormal
            end
        end

        questListUpdate()
    end

    local questState: quest.QuestUIState

    if state == nil then
        for i = 1, 20 do
            table.insert(listComponents, {
                type = ui.TYPE.Text,
                props = {
                    text = "Mages Guild: Dwemer Tube from Arkngthunch-Sturdumz " .. tostring(i),
                    autoSize = true,
                },
                template = I.MWUI.templates.textNormal,
                events = {
                    mouseClick = async:callback(function(_) selectComponent(i) end)
                }
            } as ui.Layout)
        end

    -- Fake a quest state

        questState = {
            name = "Mages Guild: Dwemer Tube from Arkngthunch-Sturdumz",
            isCompleted = false,
            isActive = true,
            currentFlavorText = [[
            My orders are to go to the town of Balmora in Vvardenfell District and report to a man named Caius Cosades. To find out where he lives, I should ask in Balmora at the cornerclub called South Wall. When I find Caius Cosades, I must give him a package of documents, and wait for further orders. My orders are to go to the town of Balmora in Vvardenfell District and report to a man named Caius Cosades. To find out where he lives, I should ask in Balmora at the cornerclub called South Wall. When I find Caius Cosades, I must give him a package of documents, and wait for further orders.]],
            objectives = {
                {
                    isCompleted = false,
                    info = { text = "Never gonna give you up"}
                },
                {
                    isCompleted = false,
                    info = { text = "Never gonna let you down"}
                },
                {
                    isCompleted = false,
                    info = { text = "Never gonna run around and desert you"}
                },
                {
                    isCompleted = true,
                    info = { text = "Never gonna make you cry"}
                },
                {
                    isCompleted = true,
                    info = { text = "Never gonna say goodbye"}
                },
                {
                    isCompleted = true,
                    info = { text = "Never gonna tell a lie and hurt you"}
                },
            }
        }
    else
        for i, q in ipairs(state.quests) do
            local textColor: util.Color
            if q.isCompleted then
                textColor = colorDisabled
            else
                textColor = colorNormal
            end

            table.insert(listComponents, {
                type = ui.TYPE.Text,
                props = {
                    text = q.name,
                    autoSize = true,
                    textColor = textColor,
                },
                template = I.MWUI.templates.textNormal,
                events = {
                    mouseClick = async:callback(function(_) selectComponent(i) end)
                }
            } as ui.Layout)
        end

        questState = state.quests[1]
    end

    local questList: ui.Layout = renderScrollList(
        listComponents,
        util.vector2(250, 544),
        34, -- 36x16 = 544
        questListUpdate
    )

    local questObjectives: ui.Layout = {
        type = ui.TYPE.Flex,
        props = {
            autoSize = false,
            size = util.vector2(490, 544),
        },
        content = ui.content { renderQuestInfo(questState) }
    }

    local questWindowBody: ui.Layout = {
        type = ui.TYPE.Flex,
        props = {
            autoSize = true,
            horizontal = true,
            align = ui.ALIGNMENT.Center,
            arrange = ui.ALIGNMENT.Center,
        },
        external = {
            stretch = 1,
            grow = 1,
        },
        content = ui.content {
            growingInterval,
            questList,
            growingInterval,
            questObjectives,
            growingInterval,
        },
        template = I.MWUI.templates.bordersThick,
    }

    local questWindow = renderWindow(util.vector2(800, 600), questWindowBody)

    local element = ui.create(questWindow)

    questListElement = element
    
    return element
end


return {
    renderScrollList = renderScrollList,
    makeQuestWindowTest = makeQuestWindowTest
}
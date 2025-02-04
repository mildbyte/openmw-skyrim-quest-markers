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
local colorDisabledSelected = util.color.rgb(243 / 255, 237 / 255, 221 / 255)

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

local function paddedBox(layout: ui.Layout, name: string): ui.Layout
    return {
        name = name,
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
    name: string,
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

    local list: ui.Layout = paddedBox (
        {
            type = ui.TYPE.Flex,
            props = {
                horizontal = true,
                autoSize = false,
                size = size,
            },
            content = ui.content({
                listCanvas, scrollControls
            })
        },
        name
    )
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

local function renderQuestInfo(
    questState: quest.QuestUIState,
    onTracked: function()
): ui.Layout
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
    -- TODO don't render this button when the quest is completed
    local trackButton: ui.Layout = paddedBox(
        {
            template = I.MWUI.templates.padding,
            content = ui.content {
                {
                    template = I.MWUI.templates.textNormal,
                    props = {
                        text = (questState.isActive and "Untrack" or "Track")
                    },
                    events = {
                        mouseClick = async:callback(onTracked)
                    }
                },
            },
        },
        nil
    ) 
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
            trackButton,
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


local function testQuestState(): quest.UIState
    local result: {quest.QuestUIState} = {}

    for i = 1, 20 do
        local questState: quest.QuestUIState = {
            name = "Dwemer Tube Quest " .. tostring(i),
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

        table.insert(result, questState)
    end

    return {
        quests = result,
    } as quest.UIState
end

local function renderQuestBody(state: quest.QuestUIState, onTracked: function()): ui.Layout
    return {
        name = "questObjectives",
        type = ui.TYPE.Flex,
        props = {
            autoSize = false,
            size = util.vector2(490, 544),
        },
        content = ui.content { renderQuestInfo(state, onTracked) }
    }
end

local function renderQuestListItem(item: quest.QuestUIState, selected: boolean, onClick: function()): ui.Layout
    local textColor: util.Color
    local text: string
    if item.isCompleted and selected then
        textColor = colorDisabledSelected
    elseif item.isCompleted and not selected then
        textColor = colorDisabled
    elseif not item.isCompleted and selected then
        textColor = colorActive
    else
        textColor = colorNormal
    end

    if item.isActive then
        text = "> " .. item.name
    else
        text = item.name
    end

    return {
        type = ui.TYPE.Text,
        props = {
            text = text,
            autoSize = true,
            textColor = textColor,
        },
        template = I.MWUI.templates.textNormal,
        events = {
            mouseClick = async:callback(function(_) onClick() end)
        }
    } as ui.Layout
end

local function renderQuestList(
    state: quest.UIState,
    selectComponent: function(integer),
    updateCallback: function(),
    selectedComponent: integer
): ui.Layout
    local listComponents: {ui.Layout} = {}
    
    for i, q in ipairs(state.quests) do
        local selected: boolean
        if i == selectedComponent then selected = true else selected = false end
        table.insert(listComponents, renderQuestListItem(q, selected, function() selectComponent(i) end))
    end

    local questList: ui.Layout = renderScrollList(
        listComponents,
        util.vector2(250, 544),
        34, -- 36x16 = 544
        "questList",
        updateCallback
    )

    return questList
end


local function makeQuestWindowTest(state: quest.UIState): ui.Element
    local questListElement: ui.Element = nil
    local function questListUpdate()
        if questListElement == nil then
            error("callback called before element instantiated")
        end
        questListElement:update()
    end
    
    
    local questWindowBody: ui.Layout = nil
    local selectComponent: function(integer) = nil

    -- TODO figure out this callback weirdness
    -- Also, we don't want to mutate the state because we can reproduce
    -- it from the journal, events etc, so we should somehow do it
    -- differently lol
    local function flipQuestTracked(ix: integer)
        if questWindowBody == nil then
            error("callback called before element instantiated")
        end
        state.quests[ix].isActive = not state.quests[ix].isActive
        questWindowBody.content["questObjectives"] = renderQuestBody(
            state.quests[ix],
            function() flipQuestTracked(ix) end
        )
        questWindowBody.content["questList"] = renderQuestList(
            state,
            selectComponent,
            questListUpdate,
            ix
        )

        questListUpdate()
    end

    selectComponent = function(ix: integer)
        if questWindowBody == nil then
            error("callback called before element instantiated")
        end

        questWindowBody.content["questObjectives"] = renderQuestBody(
            state.quests[ix],
            function() flipQuestTracked(ix) end
        )
        questWindowBody.content["questList"] = renderQuestList(
            state,
            selectComponent,
            questListUpdate,
            ix
        )

        questListUpdate()
    end

    questWindowBody = {
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
            renderQuestList(
                state,
                selectComponent,
                questListUpdate,
                1
            ),
            growingInterval,
            renderQuestBody(
                state.quests[1],
                function() flipQuestTracked(1) end
            ),
            growingInterval,
        },
        template = I.MWUI.templates.bordersThick,
    }

    local questWindow = renderWindow(util.vector2(800, 600), questWindowBody)

    local element = ui.create(questWindow)
    questListElement = element
    selectComponent(1)
    return element
end


return {
    renderScrollList = renderScrollList,
    makeQuestWindowTest = makeQuestWindowTest
}
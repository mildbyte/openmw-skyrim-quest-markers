local ui = require('openmw.ui')
local async = require('openmw.async')
local I = require('openmw.interfaces')
local util = require('openmw.util')
local auxUi = require('openmw_aux.ui')
local T = require('scripts.markers.types')
local utils = require('scripts.markers.utils')

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

-- It's tough to battle FLEX and word wrapping so we instead hand-arrange most components
local QUEST_WINDOW_SIZE = util.vector2(1100, 600)
local QUEST_LIST_SIZE = util.vector2(390, 544)
local CURRENT_QUEST_BODY_SIZE = util.vector2(650, 544)
local MAX_ENTRIES_IN_QUEST_LIST = 34 -- 16 (text height) x 34 = 544 = height of the quest list
local CURRENT_QUEST_NAME_SIZE = util.vector2(640, 50)
local CURRENT_QUEST_FLAVOR_SIZE = util.vector2(640, 150)

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
    scrollPosition: integer,
    onScrollUp: function(),
    onScrollDown: function()
): ui.Layout
    local function getVisibleItems(from: integer): {ui.Layout}
        return { table.unpack(components,
            math.max(1, from),
            math.min(from + maxVisibleItems - 1, #components)
        ) }
    end

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
                events = { mouseClick = async:callback(onScrollUp) },
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
                events = { mouseClick = async:callback(onScrollDown) },
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
        nil
    )
    return list
end


local function renderObjective(objective: T.ObjectiveUIState): ui.Layout
    if objective.isCompleted then
        return {
            type = ui.TYPE.Text,
            template = objectiveComplete,
            props = { text = "[x] " .. objective.info.text, wordWrap = true, multiline = true, }
        }
    else
        return {
            type = ui.TYPE.Text,
            template = I.MWUI.templates.textNormal,
            props = { text = "[ ] " .. objective.info.text, wordWrap = true, multiline = true, }
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

local function renderObjectives(objectives: {T.ObjectiveUIState}): ui.Layout
    local components: {ui.Layout} = {}
    local objectivesReversed = utils.listCopy(objectives)
    utils.listReverse(objectivesReversed)
    for _, obj in ipairs(objectivesReversed) do
        if obj.isStarted then
            table.insert(components, renderObjective(obj))
            table.insert(components, spacer)
        end
    end

    return {
        type = ui.TYPE.Flex,
        props = { horizontal = false },
        content = ui.content(components)
    }
end

local function renderQuestInfo(
    questState: T.QuestUIState,
    isTracked: boolean,
    onTracked: function()
): ui.Layout
    local header: ui.Layout = {
        type = ui.TYPE.Text,
        template = questHeader,
        props = { 
            text = questState.name,
            wordWrap = true,
            multiLine = true,
            autoSize = false,
            size = CURRENT_QUEST_NAME_SIZE
        }
    }
    local trackButtonOrCompleted: ui.Layout

    if not questState.isCompleted then
        trackButtonOrCompleted = paddedBox(
            {
                template = I.MWUI.templates.padding,
                content = ui.content {{
                    template = I.MWUI.templates.textNormal,
                    props = {
                        text = (isTracked and "Untrack" or "Track")
                    },
                    events = {
                        mouseClick = async:callback(onTracked)
                    }
                }},
            },
        nil)
    else
        trackButtonOrCompleted = paddedBox(
            {
                template = I.MWUI.templates.padding,
                content = ui.content {{
                    template = objectiveComplete,
                    props = {
                        text = "Completed"
                    },
                }},
            },
        nil)
    end
    local flavorText: ui.Layout = {
        type = ui.TYPE.Text,
        template = I.MWUI.templates.textNormal,
        props = {
            text = questState.currentFlavorText .. "\r\n",
            wordWrap = true,
            multiLine = true,
            autoSize = false,
            size = CURRENT_QUEST_FLAVOR_SIZE,
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
            trackButtonOrCompleted,
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

local function renderQuestBody(state: T.QuestUIState, isTracked: boolean, onTracked: function()): ui.Layout
    return {
        name = "questObjectives",
        type = ui.TYPE.Flex,
        props = {
            autoSize = false,
            size = CURRENT_QUEST_BODY_SIZE,
        },
        content = ui.content { renderQuestInfo(state, isTracked, onTracked) }
    }
end

local function renderQuestListItem(
    item: T.QuestUIState,
    selected: boolean,
    isTracked: boolean,
    onClick: function()
): ui.Layout
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

    if isTracked then
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
    state: T.UIState,
    sortedQuests: {T.QuestUIState},
    selectComponent: function(integer),
    onScrollUp: function(),
    onScrollDown: function(),
    selectedComponent: integer,
    scrollPosition: integer
): ui.Layout
    local listComponents: {ui.Layout} = {}
    
    for i, q in ipairs(sortedQuests) do
        local selected: boolean
        if i == selectedComponent then selected = true else selected = false end
        table.insert(listComponents, renderQuestListItem(q, selected, state.trackedQuestIDs[q.id], function() selectComponent(i) end))
    end

    local questList: ui.Layout = renderScrollList(
        listComponents,
        QUEST_LIST_SIZE,
        MAX_ENTRIES_IN_QUEST_LIST,
        scrollPosition,
        onScrollUp,
        onScrollDown
    )

    return questList
end

local function questCompare(left: T.QuestUIState, right: T.QuestUIState): boolean
    if left.isCompleted and not right.isCompleted then
        return false
    elseif not left.isCompleted and right.isCompleted then
        return true
    else
        return left.id < right.id
    end
end

local function makeQuestWindowTest(
    state: T.UIState,
    onSwitchTracking: function(T.QuestUIState): T.UIState
): ui.Element
    -- forward declaration of circular stuff
    local element: ui.Element = nil
    local selectedIndex = 1
    local scrollPosition = 1
    local selectComponent: function(integer)
    local flipQuestTracked: function(integer)
    local rerenderWindow: function()
    local scrollUp: function()
    local scrollDown: function()
    
    local quests: {T.QuestUIState} = {}
    for _, quest in pairs(state.questsByID) do
        table.insert(quests, quest)
    end

    table.sort(quests, questCompare)

    rerenderWindow = function()
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
                renderQuestList(
                    state,
                    quests,
                    selectComponent,
                    scrollUp,
                    scrollDown,
                    selectedIndex,
                    scrollPosition
                ),
                growingInterval,
                renderQuestBody(
                    quests[selectedIndex],
                    state.trackedQuestIDs[quests[selectedIndex].id],
                    function() flipQuestTracked(selectedIndex) end
                ),
                growingInterval,
            },
            template = I.MWUI.templates.bordersThick,
        }

        local questWindow = renderWindow(QUEST_WINDOW_SIZE, questWindowBody)
    
        if element == nil then
            element = ui.create(questWindow)
        else
            element.layout = questWindow
            element:update()
        end
    end

    flipQuestTracked = function(ix: integer)
        state = onSwitchTracking(quests[ix])
        rerenderWindow()
    end

    selectComponent = function(ix: integer)
        selectedIndex = ix
        rerenderWindow()
    end

    local maxVisibleItems = 34

    scrollUp = function()
        scrollPosition = math.max(1, math.min(scrollPosition - 1, #quests - maxVisibleItems))
        rerenderWindow()
    end

    scrollDown = function()
        scrollPosition = math.max(1, math.min(scrollPosition + 1, #quests - maxVisibleItems))
        rerenderWindow()
    end

    rerenderWindow()
    return element
end


return {
    renderScrollList = renderScrollList,
    makeQuestWindowTest = makeQuestWindowTest
}
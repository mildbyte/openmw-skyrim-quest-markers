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

local getCellCoords = require("scripts.markers.utils").getCellCoords
local CellCoords = require('scripts.markers.types').CellCoords
local RoutingGraph = require('scripts.markers.types').RoutingGraph
local coordsToString = require("scripts.markers.types").coordsToString
local GRAPH = require('scripts.markers.graph').graph
local listContains = require("scripts.markers.utils").listContains
local listReverse = require("scripts.markers.utils").listReverse
local getRoute = require("scripts.markers.routing").getRoute

-- TODO we might be able to yoink this
-- but we'll need to fool Teal into thinking these decls exist
-- local renderers = require("scripts.omw.settings.renderers")

local quest = require("scripts.markers.quest")

global BLIP_ELEMENTS: {ui.Element} = {}

local function setObjectiveBlips(positions: {util.Vector2})
    for i, position in ipairs(positions) do
        if i > #BLIP_ELEMENTS then
            local element = ui.create {
                layer = 'HUD',
                type = ui.TYPE.Text,
                props = {
                  relativePosition = position,
                  anchor = position,
                  text = "v",
                  textSize = 24,
                  textColor = util.color.rgb(0, 1, 0),
                },
            }
            -- ui.showMessage("adding blip" .. i .. tostring(position), nil)
            table.insert(BLIP_ELEMENTS, element)
        else
            local element = BLIP_ELEMENTS[i]
            element.layout.props.relativePosition = position
            element.layout.props.anchor = position
            element:update()
            -- ui.showMessage("updating blip" .. i .. tostring(position), nil)
        end
    end

    if #positions < #BLIP_ELEMENTS then
        for i = #positions + 1, #BLIP_ELEMENTS do
            local element = BLIP_ELEMENTS[#positions + 1]
            element:destroy()
            table.remove(BLIP_ELEMENTS, #positions + 1)
            -- ui.showMessage("deleting blip" .. i, nil)
        end
    end
end

local record ObjectiveBlips
    -- [[ Coordinates in the local cell of the objective(s) to render]]
    localBlips: {util.Vector3}
    -- [[ Coordinates in the global worldspace of the objective(s)]]
    globalBlips: {util.Vector3}
end

local function computeBlips(objectives: {CellCoords}, player: CellCoords, graph: RoutingGraph): ObjectiveBlips
    local localBlips: {util.Vector3} = {}
    local globalBlips: {util.Vector3} = {}

    local routes = getRoute(graph, player, objectives)

    for i, objective in ipairs(objectives) do
        local route = routes[i]
        ui.printToConsole("Getting route for " .. coordsToString(player) .. ".." .. coordsToString(objective), ui.CONSOLE_COLOR.Default)
        if route == nil then
            ui.printToConsole("Could not find a route from " .. tostring(player) .. " to " .. tostring(objective), ui.CONSOLE_COLOR.Error)
        else
            -- global blip: closest from end to a cell that is global
            -- local blip: next blip in the player's cell
            ui.printToConsole("route: " .. tostring(route), ui.CONSOLE_COLOR.Info)

            for _, v in ipairs(route) do
                if v ~= player then
                    assert(v.cellId == player.cellId)
                    if not listContains(localBlips, v.coords) then
                        table.insert(localBlips, v.coords)
                    end
                    break
                end
            end

            -- The closest global cell to our destination is where we put the global blip
            listReverse(route)
            for _, v in ipairs(route) do
                if v.cellId == nil then
                    if not listContains(localBlips, v.coords) then
                        table.insert(globalBlips, v.coords)
                    end
                    break
                end
            end
        end
    end

    return {
        localBlips = localBlips,
        globalBlips = globalBlips,
    }
end

global OBJECTIVE_BLIPS: ObjectiveBlips = {localBlips = {}, globalBlips = {}}

local function updateViewportObjectives(objectiveBlips: ObjectiveBlips)
    local screenSpace = {}
    for _, blip in ipairs(objectiveBlips.localBlips) do
        local viewport = camera.worldToViewportVector(blip)
        -- Clamp and convert the viewport to 0..1
        local viewportX = util.clamp(viewport.x / ui.screenSize().x, 0, 1)
        local viewportY = util.clamp(viewport.y / ui.screenSize().y, 0, 1)

        local cameraDir = camera.viewportToWorldVector(util.vector2(0.5, 0.5))
        local blipDir = blip - camera.getPosition()
        local dot = cameraDir:dot(blipDir)

        if dot < 0 then
            -- If the objective is behind us, stick the blip to the edge of the screen
            local x_dist = math.abs(viewportX - 0.5)
            local y_dist = math.abs(viewportY - 0.5)
            viewportX = 1 - viewportX
            viewportY = 1 - viewportY

            if x_dist > y_dist then
                if viewportX < 0.5 then
                    viewportX = 0
                else
                    viewportX = 1
                end
            else
                if viewportY < 0.5 then
                    viewportY = 0
                else
                    viewportY = 1
                end
            end
        end

        table.insert(screenSpace, util.vector2(viewportX, viewportY))
    end

    setObjectiveBlips(screenSpace)
end

global TEST_OBJECTIVE: {CellCoords} = {{
    coords = util.vector3(85183, 117570, 4944),
    cellId = nil,
}}

local type WindowDrag = record
    position: util.Vector2
    size: util.Vector2
end

global PLAYER_COORDS: CellCoords = nil

local function renderScrollArea(inner: ui.Layout): ui.Layout
    -- local canvas: ui.Layout = {
    --     type = ui.TYPE.Flex,
    --     props = {
    --         -- size = util.vector2(300, 200),
    --         autoSize = true,
    --     },
    --     content = ui.content { inner },
    -- }

    local layout: ui.Layout = {
        name = "outer_box",
        type = ui.TYPE.Flex,
        props = {
            -- This size is mandatory (which sucks because I thought
            -- it'd stick to the parent's size)

            -- lmao we can go -ve position as long as we add a corresponding
            -- number to size

            -- so i think we can do this scrollarea but maybe we need to know
            -- exactly when the child ends so that we can stop scrolling

            -- that's option 1; option 2 is we have a janky flex impl
            -- that has a component capacity (which is dynamic lololo)
            -- e.g. we can render 20 quests
            -- so we have a window of 20 quests that we render and a callback
            -- to get a previous / next quest
            size = util.vector2(300, 300),
            position = util.vector2(0, -100),
            autoSize = false
        },
        content = ui.content {
            inner
        },
    }

    return layout
end

-- TODO this is useful
-- constants.textNormalSize

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

return {
    engineHandlers = {
        onKeyPress = function(key: input.KeyboardEvent)
            if key.symbol == 'x' then
                ui.printToConsole("Sending objective recalc event", ui.CONSOLE_COLOR.Default)
                sendGlobalEvent("QuestMarkersRecalcObjective", nil)
                -- OBJECTIVE_BLIPS = computeBlips(objectives, getPlayerCellCoords(), GRAPH)
                local cellCoords = getCellCoords(self.object)
                print("recalculating route to " .. #TEST_OBJECTIVE .. " objective(s)")
                OBJECTIVE_BLIPS = computeBlips(TEST_OBJECTIVE, cellCoords, GRAPH)
                updateViewportObjectives(OBJECTIVE_BLIPS)
                PLAYER_COORDS = cellCoords
            end
            if key.symbol == 'c' then
                local quests = quest.loadQuestYAML(quest.TEST_YAML)
                ui.printToConsole(aux_util.deepToString(quests, 6), ui.CONSOLE_COLOR.Default)
                
                local playerQuests = types.Player.quests(self.object)
                local uiState = quest.calculateUIState(quests, playerQuests as {string: types.PlayerQuest}, nil)
                ui.printToConsole(aux_util.deepToString(uiState, 6), ui.CONSOLE_COLOR.Default)
            end
            if key.symbol == 'b' then
                local bigThing: ui.Layout = {
                    type = ui.TYPE.Text,
                    props = {
                        text = [[

    The missile knows where it is at all times. It knows this because it knows where it isn't. By subtracting where it is from where it isn't, or where it isn't from where it is (whichever is greater), it obtains a difference, or deviation. The guidance subsystem uses deviations to generate corrective commands to drive the missile from a position where it is to a position where it isn't, and arriving at a position where it wasn't, it now is. Consequently, the position where it is, is now the position that it wasn't, and it follows that the position that it was, is now the position that it isn't.

    In the event that the position that it is in is not the position that it wasn't, the system has acquired a variation, the variation being the difference between where the missile is, and where it wasn't. If variation is considered to be a significant factor, it too may be corrected by the GEA. However, the missile must also know where it was.

    The missile guidance computer scenario works as follows. Because a variation has modified some of the information the missile has obtained, it is not sure just where it is. However, it is sure where it isn't, within reason, and it knows where it was. It now subtracts where it should be from where it wasn't, or vice-versa, and by differentiating this from the algebraic sum of where it shouldn't be, and where it was, it is able to obtain the deviation and its variation, which is called error.
]],
                        wordWrap = true,
                        multiline = true,
                        autoSize = false,
                        size = util.vector2(300, 1000),
                    },
                    template = I.MWUI.templates.textNormal,
                }

                local scrollarea = renderScrollArea(bigThing)

                local element = ui.create {
                    layer = 'HUD',
                    type = ui.TYPE.Container,
                    props = {
                        relativePosition = util.vector2(0.5, 0.5),
                        -- i think the container size literally doesn't matter
                        size = util.vector2(1, 1),
                    },
                    content = ui.content { scrollarea },
                    
                    -- ui.content {
                    --     {
                    --         type = ui.TYPE.Flex,
                    --         props = { autoSize = false, size = util.vector2(300, 200) },
                    --         content = ui.content { scrollarea }
                    --     }
                    -- },
                    template = I.MWUI.templates.boxSolidThick
                }
                ui.printToConsole(aux_util.deepToString(element, 6), ui.CONSOLE_COLOR.Default)
                element:update()
            end
            if key.symbol == 'v' then
                local listComponents: {ui.Layout} = {}

                for i = 1, 200 do
                    table.insert(listComponents, {
                        type = ui.TYPE.Text,
                        props = {
                            text = ">>>>> Auest " .. tostring(i) .. " << ",
                            autoSize = true,
                        },
                        template = I.MWUI.templates.textNormal,
                    } as ui.Layout)
                end

                local questStack: ui.Layout = {
                    type = ui.TYPE.Flex,
                    props = {
                        horizontal = false,
                        autoSize = false,
                        position = util.vector2(30, 30),
                        size = util.vector2(200, 400),
                    },
                    content = ui.content(listComponents),
                    template = I.MWUI.templates.borders,
                }

                local titleBar: ui.Layout = {
                    type = ui.TYPE.Flex,
                    props = {
                        horizontal = true,
                    },
                    content = ui.content { {
                        type = ui.TYPE.Text,
                        props = {
                            text = "Quest Journal",
                            autoSize = true,
                        },
                        template = I.MWUI.templates.textNormal,
                    } },
                    external = { action = true, },
                }

                local questWindowBody: ui.Layout = {
                    type = ui.TYPE.Flex,
                    props = {
                        autoSize = true,
                    },
                    external = {
                        stretch = 1,
                        grow = 1,
                    },
                    content = ui.content { questStack },
                    template = I.MWUI.templates.bordersThick,
                }

                local questWindowInner: ui.Layout = {
                    type = ui.TYPE.Flex,
                    props = {
                        horizontal = false,
                        autoSize = false,
                        relativeSize = util.vector2(1, 1),
                    },
                    external = {
                        stretch = 1,
                        grow = 1,
                    },
                    content = ui.content {
                        titleBar,
                        questWindowBody,
                    },
                }

                local questWindow: ui.Layout = {
                    type = ui.TYPE.Window,
                    props = {
                        size = util.vector2(640, 480),
                        caption = "Quest Journal",
                    },
                    content = ui.content { questWindowInner },
                    events = {
                        windowDrag = async:callback(function(t: WindowDrag)
                            ui.showMessage("got dragged to pos " .. tostring(t.position) .. " size " .. tostring(t["size"]), {})
                        end)
                    }
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
                ui.create(questWindowContainer)
            end
        end,
        onUpdate = function(dt: number)
            local cellCoords = getCellCoords(self.object)

            -- Automatically update the routing when a cell changes
            -- TODO: also do it occasionally in the exterior
            -- hmm, what about ASV teleports
            if PLAYER_COORDS == nil or cellCoords.cellId ~= PLAYER_COORDS.cellId then
                print("recalculating route to " .. #TEST_OBJECTIVE .. " objective(s)")
                OBJECTIVE_BLIPS = computeBlips(TEST_OBJECTIVE, cellCoords, GRAPH)
            end
            updateViewportObjectives(OBJECTIVE_BLIPS)
            PLAYER_COORDS = cellCoords
        end
    },
    eventHandlers = {
        QuestMarkersSetObjective = function(objectives: {CellCoords}) 
            ui.printToConsole("received new objectives", ui.CONSOLE_COLOR.Default)
            TEST_OBJECTIVE = objectives
        end
    }
}

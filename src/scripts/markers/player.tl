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
local ambient = require('openmw.ambient')

local getCellCoords = require("scripts.markers.utils").getCellCoords
local CellCoords = require('scripts.markers.types').CellCoords
local RoutingGraph = require('scripts.markers.types').RoutingGraph
local coordsToString = require("scripts.markers.types").coordsToString
local GRAPH = require('scripts.markers.graph').graph
local listContains = require("scripts.markers.utils").listContains
local listReverse = require("scripts.markers.utils").listReverse
local getRoute = require("scripts.markers.routing").getRoute
local qmUI = require("scripts.markers.ui")

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

global PLAYER_COORDS: CellCoords = nil

global QUEST_WINDOW: ui.Element = nil

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
            if key.symbol == 'v' then
                local quests = quest.loadQuestYAML(quest.TEST_YAML)
                ui.printToConsole(aux_util.deepToString(quests, 6), ui.CONSOLE_COLOR.Default)
                
                local playerQuests = types.Player.quests(self.object)
                local uiState = quest.calculateUIState(quests, playerQuests as {string: types.PlayerQuest}, nil)

                if QUEST_WINDOW == nil then
                    QUEST_WINDOW = qmUI.makeQuestWindowTest(uiState)
                    ambient.playSound('book open', {scale = false})
                    I.UI.addMode('Interface', {windows = {}})
                else
                    QUEST_WINDOW:destroy()
                    QUEST_WINDOW = nil
                    ambient.playSound('book close', {scale = false})
                    I.UI.removeMode('Interface')
                end
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

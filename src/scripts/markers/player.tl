local ui = require('openmw.ui')
local input = require('openmw.input')
local util = require('openmw.util')
local camera = require('openmw.camera')
local self = require('openmw.self')

local CellCoords = require('scripts.markers.types').CellCoords
local RoutingGraph = require('scripts.markers.types').RoutingGraph
local coordsToString = require("scripts.markers.types").coordsToString
local GRAPH = require('scripts.markers.graph').graph
local listContains = require("scripts.markers.utils").listContains
local listReverse = require("scripts.markers.utils").listReverse
local getRoute = require("scripts.markers.routing").getRoute

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

    for _, objective in ipairs(objectives) do
        ui.printToConsole("Getting route for " .. coordsToString(player) .. ".." .. coordsToString(objective), ui.CONSOLE_COLOR.Default)
        local route = getRoute(graph, player, objective)
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

local function getPlayerCellCoords(): CellCoords
    local cellId: string
    if self.object.cell.isExterior then
        cellId = nil
    else
        cellId = self.object.cell.name
    end

    return { cellId = cellId, coords = self.object.position }
end

return {
    engineHandlers = {
        onKeyPress = function(key: input.KeyboardEvent)
            if key.symbol == 'x' then
                local objective: CellCoords = {
                    coords = util.vector3(3874, 3954, 14410),
                    cellId = "Dagoth Ur, Facility Cavern",
                }
                OBJECTIVE_BLIPS = computeBlips({objective}, getPlayerCellCoords(), GRAPH)
            end
        end,
        onUpdate = function(dt: number)
            updateViewportObjectives(OBJECTIVE_BLIPS)
        end,
    }
}

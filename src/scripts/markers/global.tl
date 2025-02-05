local world = require("openmw.world")
local types = require("openmw.types")
local getRealTime = require("openmw.core").getRealTime
local T = require('scripts.markers.types')
local getCellCoords = require("scripts.markers.utils").getCellCoords
local getRoute = require("scripts.markers.routing").getRoute
local GRAPH = require('scripts.markers.graph').graph

local record NPCState
    coords: T.CellCoords
    isDead: boolean
end

local function computeBlips(
    objectives: {T.Objective},
    player: T.CellCoords,
    graph: T.RoutingGraph,
    npcLocations: {string:NPCState}
): {T.ObjectiveBlip}
    local coordObjectives: {T.CellCoords:T.Objective} = {}
    local routingCoords: {T.CellCoords} = {}

    for i, objective in ipairs(objectives) do
        if objective.pointer.name == "InteriorCluster" then
            local cellId = (objective.pointer as T.InteriorCluster).cellId
            local cluster = graph.cellClusterMap[cellId]
            if cluster ~= graph.cellClusterMap[player.cellId] and cluster ~= nil then
                -- If the player isn't in that interior, just point them to some random
                -- point in that interior
                for _, vertex in ipairs(cluster.entryExitVertices) do
                    if vertex.cellId == cellId then
                        coordObjectives[vertex] = objective
                        table.insert(routingCoords, vertex)
                        break
                    end
                end
            end
        elseif objective.pointer.name == "Item" then
            -- TODO
        elseif objective.pointer.name == "NPC" then
            local id = (objective.pointer as T.NPC).id
            local location = npcLocations[id]
            if location ~= nil then
                coordObjectives[location.coords] = objective
                table.insert(routingCoords, location.coords)
            end
        end
    end
    
    -- No need to run Dijkstra for the entire graph if we're not
    -- actually looking for anything
    if #routingCoords == 0 then return {} end

    local routes = getRoute(graph, player, routingCoords)
    local localBlips: {T.ObjectiveBlip} = {}

    for i, coords in ipairs(routingCoords) do
        local route = routes[i]
        local objective = coordObjectives[coords]

        if route ~= nil then
            -- local blip: next blip in the player's cell
            print("route: " .. tostring(route))

            for _, v in ipairs(route) do
                if v ~= player then
                    assert(v.cellId == player.cellId)
                    table.insert(localBlips, {objective = objective, localCoords = v.coords})
                    break
                end
            end
        end
    end

    return localBlips
end



global UPDATE_EVERY = 100000000000000
global last_update = 0.0

return {
    engineHandlers = {},
    eventHandlers = {
        QuestMarkersRecalcObjective = function()
            local objectives: {T.CellCoords} = {}

            local startTime = getRealTime()
                
            for i, cell in ipairs(world.cells) do
                for ii, item in ipairs(cell:getAll(types.Miscellaneous)) do
                    if item.recordId == "misc_dwrv_artifact60" then
                        table.insert(objectives, getCellCoords(item))
                    end
                end
            end
            print("scanned all cells for dwemer tube in  " .. getRealTime() - startTime .. "s")

            -- GameObject.sendEvent((Player as GameObject), "QuestMarkersSetObjective", objectives)
            world.players[1]:sendEvent("QuestMarkersSetObjective", objectives)
        end,
        QuestMarkersReroute = function(params: T.QuestMarkersRerouteParams)
            local npcLocations: {string:NPCState} = {}
            for i, cell in ipairs(world.cells) do
                for ii, npc in ipairs(cell:getAll(types.NPC)) do
                    npcLocations[npc.recordId] = {
                        coords = getCellCoords(npc),
                        isDead = types.Actor.isDead(npc)
                    }
                end
            end

            local blips = computeBlips(
                params.objectives,
                params.player,
                GRAPH,
                npcLocations
            )

            world.players[1]:sendEvent("QuestMarkersUpdateObjectiveBlips", blips)
        end
    }
    --     onUpdate = function(dt: number)
    --         last_update = last_update + dt
    --         if last_update < UPDATE_EVERY then return end

    --         last_update = 0.0

    --         local deadActors = 0

    --         local startTime = getRealTime()
    --         for i, cell in ipairs(world.cells) do
    --             for ii, npc in ipairs(cell:getAll(types.NPC)) do
    --                 if types.Actor.isDead(npc) then
    --                     deadActors = deadActors + 1
    --                 end
    --             end
    --         end
    --         print("scanned all cells for dead NPCs in  " .. getRealTime() - startTime .. "s")
    --         startTime = getRealTime()

    --         for i, cell in ipairs(world.cells) do
    --             for ii, item in ipairs(cell:getAll(types.Miscellaneous)) do
    --                 if item.recordId == "misc_dwrv_ark_cube00" then
    --                     print(item.cell)
    --                 end
    --             end
    --         end
    --         print("scanned all cells for puzzle box in  " .. getRealTime() - startTime .. "s")

    --     end,
    -- }
}

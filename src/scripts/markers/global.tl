local world = require("openmw.world")
local types = require("openmw.types")
local getRealTime = require("openmw.core").getRealTime
local CellCoords = require('scripts.markers.types').CellCoords
local getCellCoords = require("scripts.markers.utils").getCellCoords



global UPDATE_EVERY = 100000000000000
global last_update = 0.0

return {
    engineHandlers = {},
    eventHandlers = {
        QuestMarkersRecalcObjective = function()
            local objectives: {CellCoords} = {}

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

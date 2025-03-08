local world = require("openmw.world")
local types = require("openmw.types")
local core = require("openmw.core")
local T = require('scripts.markers.types')
local getCellCoords = require("scripts.markers.utils").getCellCoords
local getRoute = require("scripts.markers.routing").getRoute
local GRAPH = require('scripts.markers.graph').graph
local utils = require("scripts.markers.utils")
local loadQuestData = require("scripts.markers.quests.loader").loadQuestData
local L = require("scripts.markers.logging")

local record NPCState
    coords: T.CellCoords
    isDead: boolean
end

local function computeBlips(
    objectives: {T.Objective},
    player: T.CellCoords,
    routingGraph: T.RoutingGraph,
    npcLocations: {string:NPCState}
): {T.ObjectiveBlip}
    local coordObjectives: {T.CellCoords:T.Objective} = {}
    local routingCoords: {T.CellCoords} = {}

    for _, objective in ipairs(objectives) do
        if objective.pointer == nil then goto continue end

        if objective.pointer.name == "InteriorCluster" then
            local cellId = (objective.pointer as T.InteriorCluster).cellId
            L.trace("looking for " .. cellId .. " cluster")
            local cluster = routingGraph.cellClusterMap[cellId]
            if cluster ~= routingGraph.cellClusterMap[player.cellId] and cluster ~= nil then
                L.trace("found " .. cellId .. " cluster")
                -- If the player isn't in that interior, just point them to some random
                -- point in that interior

                -- TODO hacky, we use some meta knowledge to say that this is the door
                local vertex = cluster.entryExitVertices[1]
                coordObjectives[vertex] = objective
                table.insert(routingCoords, vertex)
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

        ::continue::
    end
    
    -- No need to run Dijkstra for the entire graph if we're not
    -- actually looking for anything
    if #routingCoords == 0 then return {} end

    local routes = getRoute(routingGraph, player, routingCoords)
    local localBlips: {T.ObjectiveBlip} = {}

    for i, coords in ipairs(routingCoords) do
        local route = routes[i]
        local objective = coordObjectives[coords]

        if route ~= nil then
            -- local blip: next blip in the player's cell
            L.trace("route: " .. tostring(route))

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

local record GameState
    -- Database of quests and objectives
    questData: T.QuestData

    -- Mutable current state of all objectives and quests
    -- only by us, consumers shouldn't mutate it
    uiState: T.UIState
end

local function getTrackedObjectives(uiState: T.UIState): {T.Objective}
    L.debug("we're in getTrackedObjectives", {uiState = uiState})
    local result: {T.Objective} = {}

    for _, questState in pairs(uiState.questsByID) do
        if not questState.isCompleted and uiState.trackedQuestIDs[questState.id] then
            for _, objective in ipairs(questState.objectives) do
                if not objective.isCompleted and objective.isStarted then
                    table.insert(result, objective.info)
                end
            end
        end
    end

    return result
end

local interface Named
   name: string
end

local record JournalAdvanced is Named
    where self.name == "JournalAdvanced"
    questId: string
    stage: integer
end

local record NPCKilled is Named
    where self.name == "NPCKilled"
    id: string
end

local record ItemPickedUp is Named
    where self.name == "ItemPickedUp"
    id: string
end

local type ObjectiveEvent = JournalAdvanced | NPCKilled | ItemPickedUp

local function prepQuestState(quest: T.Quest): T.QuestUIState
    local objectives: {T.ObjectiveUIState} = {}
    for _, questObjective in ipairs(quest.objectives) do
        table.insert(objectives, {
            isCompleted = false,
            isStarted = false,
            info = questObjective
        })
    end

    return {
        name = quest.name,
        id = quest.id,
        isCompleted = false,
        currentFlavorText = nil,
        objectives = objectives,
    }
end

local function eventCompletesQuestObjective(event: ObjectiveEvent, objective: T.Objective): boolean
    if event.name == "JournalAdvanced" and objective.condition.name == "Journal" then
        local castEvent = event as JournalAdvanced
        local castObjective = objective.condition as T.Journal
        return 
            castEvent.questId:lower() == castObjective.questId:lower()
            and castEvent.stage >= castObjective.stage
    elseif event.name == "NPCKilled" and objective.condition.name == "NPCDead" then
        local castEvent = event as NPCKilled
        local castObjective = objective.condition as T.NPCDead
        return castEvent.id:lower() == castObjective.id:lower()
    elseif event.name == "ItemPickedUp" and objective.condition.name == "ItemPickedUp" then
        local castEvent = event as ItemPickedUp
        local castObjective = objective.condition as T.ItemPickedUp
        -- TODO do we worry about location?
        return castEvent.id:lower() == castObjective.id:lower()
    end
    return false
end

local function getQuestObjectiveRelevantQuests(event: ObjectiveEvent, questData: T.QuestData): {T.Quest}
    if event.name == "JournalAdvanced" then
        local castEvent = event as JournalAdvanced
        return questData.relevantQuests[castEvent.questId] or {}
    elseif event.name == "NPCKilled" then
        local castEvent = event as NPCKilled
        return questData.relevantNpcs[castEvent.id] or {}
    elseif event.name == "ItemPickedUp" then
        local castEvent = event as ItemPickedUp
        return questData.relevantItems[castEvent.id] or {}
    end
    return {}
end

-- Process a game event, update our state 
local function processEvent(uiState: T.UIState, questData: T.QuestData, event: ObjectiveEvent): {T.QuestEvent}
    -- Find out which objective(s) this event completes
    -- List of tuples (questID, objective index)
    --  objective index is nil if the quest has started
    local completedObjectives: {{string, integer}} = {}

    local quests = getQuestObjectiveRelevantQuests(event, questData)

    L.trace("checking event", {event = event})
    if quests ~= nil and #quests > 0 then
        L.trace("found relevant quest", {event = event, quest = quests})
    
        for _, quest in ipairs(quests) do
            -- Go down the list until we find one that the player has completed.
            -- We make the one just before it incomplete and visible,
            -- we mark that objective as active
            -- and then we mark everything after that as completed.
            -- This has a bunch of limitations:
            --   - we can't have multiple in-progress objectives (only one)
            --   - we can't reflect multiple routes taken to complete an objective
            --     (e.g. in the Gra-Muzgob Informant quest, we could complete stage
            --     10, then immediately go get the skull instead of listening to her
            --     explanation, we'd have the "talk to Gra-Muzgob" and "return the skull")
            --     objectives marked as complete. Or, we could actually do it the
            --     right way, listen to her explanation, get the skull and return it,
            --     in which case we'd have all the objectives marked as completed. But
            --     if we're doing this based on the world state and not based on looking
            --     at an event log and not persisting the complete objectives in the 
            --     player's savegame, we can only say "well, they have the skull so they
            --     must have completed all previous objectives".
            --
            -- TODO we also can't "uncomplete" an objective based on events?
            local objectives = utils.listCopy(quest.objectives)
            utils.listReverse(objectives)

            local anyCompleted = false
            for i, objective in ipairs(objectives) do
                L.trace("checking objective", {objective = objective})
                if eventCompletesQuestObjective(event, objective) then
                    table.insert(completedObjectives, {quest.id:lower(), #objectives - i + 1})
                    anyCompleted = true
                end
            end

            if not anyCompleted and event.name == "JournalAdvanced" then
                table.insert(completedObjectives, {quest.id:lower(), nil})
            end
        end
        L.trace("event processed, completed objectives", {objectives = completedObjectives})
    end

    local events: {T.QuestEvent} = {}

    -- Now process all completed objectives and apply them to the UI state
    for _, idIndex in ipairs(completedObjectives) do
        local questId = idIndex[1]
        local objectiveIndex = idIndex[2]

        local questState = uiState.questsByID[questId]
        local quest = questData.questsByID[questId]
        
        if questState == nil then
            -- The quest isn't started yet. Don't start it at all if this
            -- isn't a Journal objective.
            if event.name == "JournalAdvanced" then
                questState = prepQuestState(quest)
                uiState.questsByID[questId] = questState

                -- Autotrack
                -- TODO quest.id is case insensitive and questId is lowercase here
                uiState.trackedQuestIDs[quest.id] = true
                table.insert(events, { eventType = "QuestStarted", name = quest.name })
            else
                goto continue
            end
        end

        
        -- For journal advancements, also add the journal entry
        -- as flavor text.
        -- NB: needs openmw 0.49RC (API version 70)
        -- TODO: add this flavor text even if we got a journal entry
        -- for this quest that doesn't match an objective.
        if event.name == "JournalAdvanced" then
            local journal = event as JournalAdvanced
            local records = core.dialogue.journal as core.DialogueRecords
            local recordsMap = records.records as {string: core.DialogueRecord}
            for _, info in ipairs(recordsMap[journal.questId].infos) do
                if info.questStage == journal.stage then
                    questState.currentFlavorText = info.text
                    break
                end
            end
        end

        -- If we "started" the quest (got a journal from it that doesn't)
        -- yet assign to any objectives and there are no other objectives
        -- that have been completed for this quest, we sent out a started
        -- event above and also have to send out an event for the first
        -- objective for that quest
        if objectiveIndex == nil then 
            questState.objectives[1].isStarted = true
            table.insert(events, { eventType = "ObjectiveStarted", name = questState.objectives[1].info.text })
            goto continue
        end

        local objective = quest.objectives[objectiveIndex]
        -- If this objective is already completed (e.g. we're replaying and we recorded
        -- the journal entry for some quest and then we found out that the player had
        -- killed an NPC that's required by an earlier objective), we just ignore it
        if questState.objectives[objectiveIndex].isCompleted then goto continue end

        -- Objective completed - emit an event and mark everything up to and including
        -- this objective as completed
        table.insert(events, { eventType = "ObjectiveCompleted", name = objective.text })

        for ix = 1, objectiveIndex do
            questState.objectives[ix].isStarted = true
            questState.objectives[ix].isCompleted = true
            if questState.objectives[ix].info.completesQuest then
                questState.isCompleted = true
                uiState.trackedQuestIDs[quest.id] = false
            end
        end

        if questState.isCompleted then
            table.insert(events, { eventType = "QuestCompleted", name = quest.name })
        else
            -- if there's a next objective, mark it as started
            if objectiveIndex < #questState.objectives then
                questState.objectives[objectiveIndex + 1].isStarted = true
                table.insert(events, { eventType = "ObjectiveStarted", name = questState.objectives[objectiveIndex + 1].info.text })
            end
        end

        ::continue::
    end

    return events
end

local GAME_STATE: GameState = nil
local TRACKED_QUEST_IDS: {string: boolean} = {}

-- We bootstrap the game state in a funky way, by loading the current state of
-- the player's journal and all dead NPCs, as well as all player inventory items,
-- and then pretending that these are the events we need to play through 
local function loadGameState(injectQuestIds: {string: boolean}): GameState
    local questData = loadQuestData()

    local uiState: T.UIState = {
        questsByID = {},
        trackedQuestIDs = utils.tableCopy(injectQuestIds),
    }

    L.debug("quest data loaded", {quest = questData})

    local playerJournal = types.Player.quests(world.players[1]) as {string: types.PlayerQuest}

    for _, playerQuest in pairs(playerJournal) do
        local events = processEvent(uiState, questData, {
            name = "JournalAdvanced",
            questId = playerQuest.id,
            stage = playerQuest.stage,
        } as ObjectiveEvent)

        if #events > 1 then
            L.debug("got events", {events = events})
        end
    end

    return {
        questData = questData,
        uiState = uiState,
    }
end

local function updateEverything()
    local npcLocations: {string:NPCState} = {}
    for _, cell in ipairs(world.cells) do
        for _, npc in ipairs(cell:getAll(types.NPC)) do
            npcLocations[npc.recordId] = {
                coords = getCellCoords(npc),
                isDead = types.Actor.isDead(npc)
            }
        end
    end

    local playerCoords = utils.getCellCoords(world.players[1])
    local playerObjectives = getTrackedObjectives(GAME_STATE.uiState)
    local blips = computeBlips(
        playerObjectives,
        playerCoords,
        GRAPH,
        npcLocations
    )
    
    world.players[1]:sendEvent("QuestMarkersUpdateObjectiveBlips", blips)
    world.players[1]:sendEvent("QuestMarkersUpdateQuestState", GAME_STATE.uiState)
end

return {
    engineHandlers = {},
    eventHandlers = {
        QuestMarkersReroute = function(params: T.QuestMarkersRerouteParams)
            GAME_STATE = loadGameState(TRACKED_QUEST_IDS)
            GAME_STATE.uiState.trackedQuestIDs = utils.tableCopy(params.trackedQuestIDs)
            TRACKED_QUEST_IDS = utils.tableCopy(TRACKED_QUEST_IDS)
            updateEverything()
        end,
        QuestMarkersQuestUpdated = function(event: JournalAdvanced)
            -- bit of a hack because we don't get the union tag from the payload
            event.name = "JournalAdvanced"
            local events = processEvent(GAME_STATE.uiState, GAME_STATE.questData, event)
            TRACKED_QUEST_IDS = utils.tableCopy(GAME_STATE.uiState.trackedQuestIDs)
            if #events > 0 then
                updateEverything()
                world.players[1]:sendEvent("QuestMarkersHUDQuestEvent", events)
            end
        end,
        onLoad = function()
            GAME_STATE = loadGameState(TRACKED_QUEST_IDS)
            updateEverything()
        end,
    }
}

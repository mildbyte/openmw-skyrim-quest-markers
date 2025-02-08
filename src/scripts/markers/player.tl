local ui = require('openmw.ui')
local I = require('openmw.interfaces')
local input = require('openmw.input')
local util = require('openmw.util')
local aux_util = require('openmw_aux.util')
local camera = require('openmw.camera')
local self = require('openmw.self')
local sendGlobalEvent = require("openmw.core").sendGlobalEvent
local ambient = require('openmw.ambient')
local nearby = require('openmw.nearby')

local getCellCoords = require("scripts.markers.utils").getCellCoords
local T = require('scripts.markers.types')
local L = require('scripts.markers.logging')
local qmUI = require("scripts.markers.ui")
local listContains = require("scripts.markers.utils").listContains
local listAppend = require("scripts.markers.utils").listAppend

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
            L.trace("adding blip" .. i .. tostring(position))
            table.insert(BLIP_ELEMENTS, element)
        else
            local element = BLIP_ELEMENTS[i]
            element.layout.props.relativePosition = position
            element.layout.props.anchor = position
            element:update()
            L.trace("updating blip" .. i .. tostring(position))
        end
    end

    if #positions < #BLIP_ELEMENTS then
        for _ = #positions + 1, #BLIP_ELEMENTS do
            local element = BLIP_ELEMENTS[#positions + 1]
            element:destroy()
            table.remove(BLIP_ELEMENTS, #positions + 1)
            L.trace("deleting blip")
        end
    end
end


local function fastUpdateBlips(objectiveBlips: {T.ObjectiveBlip})
    -- Prepare the blips for rendering by updating them with positions of objects
    -- that are in the same cell (so that the blips move as NPCs move)
    -- Mutates its parameter

    local actorPositions: {string:util.Vector3} = {}
    for _, actor in ipairs(nearby.actors) do
        actorPositions[actor.recordId] = actor.position
    end

    for _, blip in ipairs(objectiveBlips) do
        if blip.objective.pointer.name == "NPC" then
            local id = (blip.objective.pointer as T.NPC).id
            local position = actorPositions[id]
            if position ~= nil then
                blip.localCoords = position
            end
        end
    end
end

local function updateViewportObjectives(objectiveBlips: {T.ObjectiveBlip})
    -- Dedupe the blips if they're pointing to the same thing
    local blips: {util.Vector3} = {}
    for _, blip in ipairs(objectiveBlips) do
        if not listContains(blips, blip.localCoords) then
            table.insert(blips, blip.localCoords)
        end
    end

    local screenSpace = {}
    for _, blip in ipairs(blips) do
        L.trace("rendering blip", {blip = blip})
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

global CURRENT_OBJECTIVE_BLIPS: {T.ObjectiveBlip} = {}
global PLAYER_COORDS: T.CellCoords = nil
global QUEST_WINDOW: ui.Element = nil
global TRACKED_QUEST_IDS: {string:boolean} = {}

global QUEST_STATE: T.UIState = nil
global PENDING_QUEST_EVENTS: {T.QuestEvent} = {}

global HUD_EVENT_INTERVALS: {T.QuestEventType: integer} = {
    ObjectiveStarted = 3,
    ObjectiveCompleted = 3,
    QuestStarted = 5,
    QuestCompleted = 7,
}
global HUD_EVENT_SOUND_FILES: {T.QuestEventType: string} = {
    ObjectiveStarted = "Sound\\markers\\journal_update.wav",
    ObjectiveCompleted = "Sound\\markers\\journal_update.wav",
    QuestStarted = "Sound\\markers\\quest_update.wav",
    QuestCompleted = "Sound\\markers\\quest_complete.wav",
}
global HUD_EVENT_TTL: number = nil

return {
    engineHandlers = {
        onKeyPress = function(key: input.KeyboardEvent)
            if key.symbol == 'x' then
                L.debug("Sending objective recalc event")
                sendGlobalEvent("QuestMarkersReroute", {trackedQuestIDs = TRACKED_QUEST_IDS})
            end
            if key.symbol == 'v' then
                local function onSwitchTracking(questState: T.QuestUIState): T.UIState
                    if TRACKED_QUEST_IDS[questState.id] then
                        TRACKED_QUEST_IDS[questState.id] = false
                    else
                        TRACKED_QUEST_IDS[questState.id] = true
                    end

                    QUEST_STATE.trackedQuestIDs = TRACKED_QUEST_IDS
                    return QUEST_STATE
                end

                if QUEST_WINDOW == nil then
                    QUEST_WINDOW = qmUI.makeQuestWindowTest(QUEST_STATE, onSwitchTracking)
                    ambient.playSound('book open', {scale = false})
                    I.UI.addMode('Interface', {windows = {}})
                else
                    QUEST_WINDOW:destroy()
                    QUEST_WINDOW = nil
                    ambient.playSound('book close', {scale = false})
                    I.UI.removeMode('Interface')

                    -- Recalculate the objectives
                    sendGlobalEvent("QuestMarkersReroute", {trackedQuestIDs = TRACKED_QUEST_IDS})
                end
            end
        end,
        onUpdate = function(dt: number)
            local cellCoords = getCellCoords(self.object)
            -- Update full routing when the cell changes
            -- TODO: also do it occasionally in the exterior
            -- hmm, what about ASV teleports
            if PLAYER_COORDS == nil or cellCoords.cellId ~= PLAYER_COORDS.cellId then
                sendGlobalEvent("QuestMarkersReroute", {trackedQuestIDs = TRACKED_QUEST_IDS})
            end
            PLAYER_COORDS = cellCoords
            
            -- Update the blips on the screen based on the local cell
            fastUpdateBlips(CURRENT_OBJECTIVE_BLIPS)
            updateViewportObjectives(CURRENT_OBJECTIVE_BLIPS)

            -- Update / pop out the HUD notifications
            if HUD_EVENT_TTL ~= nil then
                HUD_EVENT_TTL = HUD_EVENT_TTL - dt
                if HUD_EVENT_TTL < 0 then HUD_EVENT_TTL = nil end
            end

            if HUD_EVENT_TTL == nil and #PENDING_QUEST_EVENTS > 0 then
                local event = table.remove(PENDING_QUEST_EVENTS, 1)
                if event.eventType == "QuestStarted" then
                    ui.showMessage("New Quest: " .. event.name, {})
                elseif event.eventType == "QuestCompleted" then
                    ui.showMessage("Quest Completed: " .. event.name, {})
                elseif event.eventType == "ObjectiveStarted" then
                    ui.showMessage("New Objective: " .. event.name, {})
                elseif event.eventType == "ObjectiveCompleted" then
                    ui.showMessage("Objective Completed: " .. event.name, {})
                end

                HUD_EVENT_TTL = HUD_EVENT_INTERVALS[event.eventType]
                ambient.playSoundFile(HUD_EVENT_SOUND_FILES[event.eventType], {})
            end

        end,
        onQuestUpdate = function(questId: string, stage: integer)
            sendGlobalEvent("QuestMarkersQuestUpdated", {questId = questId, stage = stage})
            L.debug("Sending quest update event", {questId = questId, stage = stage})
        end
    },
    eventHandlers = {
        QuestMarkersUpdateQuestState = function(state: T.UIState)
            L.debug("received new quest state", {state = state})
            QUEST_STATE = state
            TRACKED_QUEST_IDS = QUEST_STATE.trackedQuestIDs
        end,
        QuestMarkersUpdateObjectiveBlips = function(objectives: {T.ObjectiveBlip}) 
            L.debug("received new objective blips", {objectives = objectives})

            CURRENT_OBJECTIVE_BLIPS = objectives
            fastUpdateBlips(CURRENT_OBJECTIVE_BLIPS)
            L.debug("blips after fastUpdate", {objectives = objectives})
            updateViewportObjectives(CURRENT_OBJECTIVE_BLIPS)
        end,
        QuestMarkersHUDQuestEvent = function(events: {T.QuestEvent})
            L.debug("received HUD events", {events = events})
            PENDING_QUEST_EVENTS = listAppend(PENDING_QUEST_EVENTS, events)
        end
    }
}

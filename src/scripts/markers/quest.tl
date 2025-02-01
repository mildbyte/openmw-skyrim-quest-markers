local CellCoords = require("scripts.markers.types").CellCoords
local types = require("openmw.types")
local utils = require("scripts.markers.utils")
local markup = require('openmw.markup')

-- jank
-- https://github.com/teal-language/tl/blob/master/docs/tutorial.md#current-limitations-of-union-types

local interface Named
    name: string
end

local record Journal is Named
    where self.name == "Journal"
    questId: string
    stage: integer
end

local record NPCDead is Named
    where self.name == "NPCDead"
    id: string
end

local record ItemPickedUp is Named
    where self.name == "ItemPickedUp"
    id: string
    location: CellCoords
end

local record InteriorCluster is Named
    where self.name == "InteriorCluster"
    cellId: string
end

local record Item is Named
    where self.name == "Item"
    id: string
    location: CellCoords
end

local record NPC is Named
    where self.name == "NPC"
    id: string
end

local type Pointer = NPC | Item | InteriorCluster

local type Condition = Journal | NPCDead | ItemPickedUp

local record Objective
    pointer: Pointer
    condition: Condition
    completesQuest: boolean
    text: string
end

local record Quest
    name: string -- textual quest name (though we have it in game)
    id: string  -- morrowind quest ID
    objectives: {Objective}
end

local record QuestData
    quests: {Quest}
end

-- UI state code

local record ObjectiveUIState
    isCompleted: boolean
    info: Objective
end

local record QuestUIState
    name: string
    isCompleted: boolean
    isActive: boolean
  
    -- Journal entry?
    currentFlavorText: string
    
    objectives: {ObjectiveUIState}
end

local record UIState
    quests: {QuestUIState}
end

--- Infer which objectives the player has completed
local function calculateObjectives(
    quest: Quest,
    playerQuests: { string: types.PlayerQuest },
    playerQuest: types.PlayerQuest
): {ObjectiveUIState}
    local objectives = utils.listCopy(quest.objectives)
    utils.listReverse(objectives)
    local completedAfterHere = false

    local uiObjectives: {ObjectiveUIState} = {}

    -- Basically, we just go down the reversed list of objectives until
    -- we find one that the player has completed. We make the one just
    -- before it incomplete and visible, we mark that objective as active
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

    for i, currentObj in ipairs(objectives) do
        if completedAfterHere then
            table.insert(uiObjectives, {
                isCompleted = true,
                info = currentObj
            })
        else
            local isObjectiveCompleted = false
            -- Is the objective completed?
            if currentObj.condition.name == "Journal" then
                local journal = currentObj.condition as Journal
                
                if journal.questId == nil and playerQuest.stage >= journal.stage then
                    isObjectiveCompleted = true
                else
                    local currentQuest = playerQuests[quest.id]
                    if currentQuest ~= nil then
                        if currentQuest.stage >= journal.stage then
                            isObjectiveCompleted = true
                        end
                    end
                end
            elseif currentObj.condition.name == "NPCDead" then
                -- TODO
            elseif currentObj.condition.name == "ItemPickedUp" then
                -- TODO
            end

            if isObjectiveCompleted then
                -- Add the objective just before that as the "active" objective
                if i > 1 then
                    local nextObjective = objectives[i-1]
                    table.insert(uiObjectives, {
                        isCompleted = false,
                        info = nextObjective
                    })
                end
                -- Add this objective as completed, everything after it
                -- will be counted as completed
                table.insert(uiObjectives, {
                    isCompleted = true,
                    info = currentObj
                })
                completedAfterHere = true
            end
        end
    end

    -- If the quest is considered started, add its first objective as the
    -- active objective

    -- TODO we also need to react to events
    -- TODO: some order issues
    
    utils.listReverse(uiObjectives)
    if playerQuest.started and #uiObjectives == 0 then
        table.insert(uiObjectives, {
            isCompleted = false,
            info = objectives[#objectives]
        })
    end

    return uiObjectives
end

local function calculateUIState(
    quests: QuestData,
    -- apparently this can be indexed by quest ID
    playerQuests: { string: types.PlayerQuest },
    activeQuestID: string
): UIState
    local questUIStates: {QuestUIState} = {}

    for _, quest in ipairs(quests.quests) do
        -- Find the PlayerQuest for this ID, skip if doesn't exist
        local playerQuest = playerQuests[quest.id]
        if playerQuest == nil then goto continue end
        -- TODO if there's an objective that's completed and that fake-starts
        -- this quest ("the prelude objective"), then consider the quest started too
        if not playerQuest.started then goto continue end

        local isActive = quest.id == activeQuestID
        local isFinished = playerQuest.finished
        
        local uiObjectives = calculateObjectives(quest, playerQuests, playerQuest)

        table.insert(
            questUIStates,
            {
                name = quest.id,
                isCompleted = isFinished,
                isActive = isActive,
                currentFlavorText = "TODO",
                objectives = uiObjectives,
            }
        )
        ::continue::
    end

    return {
        quests = questUIStates
    }
end

global TEST_YAML = [[
- name: Report to Caius Cosades
  id: A1_1_FindSpymaster
  objectives:
    - pointer:
        type: InteriorCluster
        cellId: Balmora, South Wall Cornerclub
      condition:
        type: Journal
        questId: null
        stage: 5
      completesQuest: false
      text: Go to South Wall Cornerclub
    - pointer:
        type: NPC
        id: bacola closcius
      condition:
        type: Journal
        stage: 10
      completesQuest: false
      text: Speak with Bacola Closcius
    - pointer:
        type: NPC
        id: caius cosades
      condition:
        type: Journal
        stage: 14
      completesQuest: true
      text: Speak with Caius Cosades


- name: Antabolis Informant
  id: A1_2_AntabolisInformant
  objectives:
    - pointer:
        type: NPC
        id: caius cosades
      condition:
        type: Journal
        questId: null
        stage: 1
      text: "Speak with Caius Cosades when you're ready"
]]

local function parseCondition(dict: {string: any}): Condition
    if dict["type"] == "Journal" then
        return {
            -- TODO figure out why discriminant unions don't work
            name = "Journal",
            questId = dict["questId"] as string,
            stage = dict["stage"] as integer,
        } as Journal
    elseif dict["type"] == "NPCDead" then
        return {
            name = "NPCDead",
            id = dict["id"] as string
        } as NPCDead
    elseif dict["type"] == "ItemPickedUp" then
        return {
            name = "ItemPickedUp",
            id = dict["id"] as string,
            location = nil   -- TODO
        } as ItemPickedUp
    end
    -- TODO error
    return nil
end

local function parsePointer(dict: {string: any}): Pointer
    if dict["type"] == "NPC" then
        return {
            name = "NPC",
            id = dict["id"] as string,
        } as NPC
    elseif dict["type"] == "Item" then
        return {
            name = "Item",
            id = dict["id"] as string,
            location = nil   -- TODO
        } as Item
    elseif dict["type"] == "InteriorCluster" then
        return {
            name = "InteriorCluster",
            cellId = dict["cellId"] as string
        } as InteriorCluster
    end
    -- TODO error
    return nil
end

local function parseObjective(dict: {string: any}): Objective
    return {
        completesQuest = dict["completesQuest"] as boolean or false,
        text = dict["text"] as string,
        pointer = parsePointer(dict["pointer"] as {string: any}),
        condition = parseCondition(dict["condition"] as {string: any}),
    }
end

local function parseQuest(dict: {string: any}): Quest
    local objectives: {Objective} = {}
    for _, objDict in ipairs(dict["objectives"] as {{string:any}}) do
        table.insert(objectives, parseObjective(objDict))
    end

    return {
        id = dict["id"] as string,
        name = dict["name"] as string,
        objectives = objectives,
    }
end

local function loadQuestYAML(yamlString: string): QuestData
    local yamlTable = markup.decodeYaml(yamlString)
    local quests: {Quest} = {}
    for _, rawQuest in ipairs(yamlTable as {{string: any}}) do
        table.insert(quests, parseQuest(rawQuest))
    end

    return { quests = quests } as QuestData
end

return {
    calculateUIState = calculateUIState,
    loadQuestYAML = loadQuestYAML,
    TEST_YAML = TEST_YAML
}

-- TODO: maybe we should just use lua here instead of yaml

-- TODO

-- [22:41:13.257 E] L@0x1[scripts/markers/player.lua] onKeyPress failed. Lua error: [string "scripts/markers/utils.lua"]:14: attempt to get length of local 'l' (a nil value)
-- [22:41:13.257 E] stack traceback:
-- [22:41:13.257 E]        [string "scripts/markers/utils.lua"]:14: in function 'listReverse'
-- [22:41:13.257 E]        [string "scripts/markers/quest.lua"]:96: in function 'calculateObjectives'
-- [22:41:13.257 E]        [string "scripts/markers/quest.lua"]:196: in function 'calculateUIState'
-- [22:41:13.257 E]        [string "scripts/markers/player.lua"]:177: in function <[string "scripts/markers/player.lua"]:161

-- breaks probably because not a tagged union?

-- table: 0x01ef03c25df0 {
--   quests = table: 0x01ef03c26f20 {
--     1 = table: 0x01ef03c25f80 {
--       name = Report to Caius Cosades,
--       objectives = table: 0x01ef03c26e30 {
--         1 = table: 0x01ef03c25e90 {
--           condition = table: 0x01ef03c26250 {
--             stage = 5,
--           },
--           text = Go to South Wall Cornerclub,
--           completesQuest = false,
--           pointer = table: 0x01ef03c26b10 {
--             cellId = Balmora, South Wall Cornerclub,
--           },
--         },
--         2 = table: 0x01ef03c26340 {
--           condition = table: 0x01ef03c25c10 {
--             stage = 10,
--           },
--           text = Speak with Bacola Closcius,
--           completesQuest = false,
--           pointer = table: 0x01ef03c25bc0 {
--             id = bacola closcius,
--           },
--         },
--         3 = table: 0x01ef03c25d00 {
--           condition = table: 0x01ef03c261b0 {
--             stage = 14,
--           },
--           text = Speak with Caius Cosades,
--           completesQuest = true,
--           pointer = table: 0x01ef03c26110 {
--             id = caius cosades,
--           },
--         },
--       },
--       id = A1_1_FindSpymaster,
--     },
--     2 = table: 0x01ef03c26480 {
--       name = Antabolis Informant,
--       objectives = table: 0x01ef03c26a20 {
--         1 = table: 0x01ef03c25d50 {
--           condition = table: 0x01ef03c26bb0 {
--             stage = 1,
--           },
--           text = Speak with Caius Cosades when you're ready,
--           completesQuest = false,
--           pointer = table: 0x01ef03c25da0 {
--             id = caius cosades,
--           },
--         },
--       },
--       id = A1_2_AntabolisInformant,
--     },
--   },
-- }
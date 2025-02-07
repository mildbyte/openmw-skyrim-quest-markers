local markup = require('openmw.markup')
local T = require('scripts.markers.types')
local utils = require("scripts.markers.utils")

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
        stage: 1
      text: "Speak with Caius Cosades when you're ready"
    - pointer:
        type: NPC
        id: hasphat antabolis
      condition:
        type: Journal
        stage: 5
      text: "Speak with Hasphat Antabolis"
]]

local function parseCondition(dict: {string: any}, defaultQuestId: string): T.Condition
    if dict["type"] == "Journal" then
        return {
            -- TODO figure out why discriminant unions don't work
            name = "Journal",
            questId = (dict["questId"] as string) or defaultQuestId,
            stage = dict["stage"] as integer,
        } as T.Journal
    elseif dict["type"] == "NPCDead" then
        return {
            name = "NPCDead",
            id = dict["id"] as string
        } as T.NPCDead
    elseif dict["type"] == "ItemPickedUp" then
        return {
            name = "ItemPickedUp",
            id = dict["id"] as string,
            location = nil   -- TODO
        } as T.ItemPickedUp
    end
    -- TODO error
    return nil
end

local function parsePointer(dict: {string: any}): T.Pointer
    if dict["type"] == "NPC" then
        return {
            name = "NPC",
            id = dict["id"] as string,
        } as T.NPC
    elseif dict["type"] == "Item" then
        return {
            name = "Item",
            id = dict["id"] as string,
            location = nil   -- TODO
        } as T.Item
    elseif dict["type"] == "InteriorCluster" then
        return {
            name = "InteriorCluster",
            cellId = dict["cellId"] as string
        } as T.InteriorCluster
    end
    -- TODO error
    return nil
end

local function parseObjective(dict: {string: any}, defaultQuestId: string): T.Objective
    return {
        completesQuest = dict["completesQuest"] as boolean or false,
        text = dict["text"] as string,
        pointer = parsePointer(dict["pointer"] as {string: any}),
        condition = parseCondition(dict["condition"] as {string: any}, defaultQuestId),
    }
end

local function parseQuest(dict: {string: any}): T.Quest
    local objectives: {T.Objective} = {}
    for _, objDict in ipairs(dict["objectives"] as {{string:any}}) do
        table.insert(objectives, parseObjective(objDict, dict["id"] as string))
    end

    return {
        id = dict["id"] as string,
        name = dict["name"] as string,
        objectives = objectives,
    }
end

local function addToSet<K, V>(set: {K: {V}}, key: K, value: V)
    local currVals = set[key] or {}
    if not utils.listContains(currVals, value) then
        table.insert(currVals, value)
    end
    set[key] = currVals
end

local function loadQuestYAML(yamlString: string): T.QuestData
    local yamlTable = markup.decodeYaml(yamlString)
    
    local questsByID: {string:T.Quest} = {}
    local quests: {T.Quest} = {}
    local relevantNpcs: {string: {T.Quest}} = {}
    local relevantItems: {string: {T.Quest}} = {}
    local relevantQuests: {string: {T.Quest}} = {}

    for _, rawQuest in ipairs(yamlTable as {{string: any}}) do
        local quest = parseQuest(rawQuest)
        questsByID[quest.id:lower()] = quest
        table.insert(quests, quest)
        for _, objective in ipairs(quest.objectives) do
            if objective.condition.name == "Journal" then
                local castObjective = objective.condition as T.Journal
                addToSet(relevantQuests, castObjective.questId:lower(), quest)
            elseif objective.condition.name == "NPCDead" then
                local castObjective = objective.condition as T.NPCDead
                addToSet(relevantNpcs, castObjective.id:lower(), quest)
            elseif objective.condition.name == "ItemPickedUp" then
                local castObjective = objective.condition as T.ItemPickedUp
                addToSet(relevantItems, castObjective.id:lower(), quest)
            end
        end
    end

    return { 
        quests = quests,
        questsByID = questsByID,
        relevantNpcs = relevantNpcs,
        relevantItems = relevantItems,
        relevantQuests = relevantQuests,
    } as T.QuestData
end

return {
    loadQuestYAML = loadQuestYAML,
    TEST_YAML = TEST_YAML
}

-- TODO: maybe we should just use lua here instead of yaml

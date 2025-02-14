local T = require("scripts.markers.types")
local utils = require("scripts.markers.utils")

local questLines = {
    require("scripts.markers.quests.modules.main_quest").questLine,
    require("scripts.markers.quests.modules.daedric").questLine,
    require("scripts.markers.quests.modules.fighters_guild").questLine,
    require("scripts.markers.quests.modules.house_hlaalu").questLine,
    require("scripts.markers.quests.modules.house_redoran").questLine,
    require("scripts.markers.quests.modules.house_telvanni").questLine,
    require("scripts.markers.quests.modules.imperial_cult").questLine,
    require("scripts.markers.quests.modules.imperial_legion").questLine,
    require("scripts.markers.quests.modules.mages_guild").questLine,
    require("scripts.markers.quests.modules.morag_tong").questLine,
    require("scripts.markers.quests.modules.miscellaneous").questLine,
    require("scripts.markers.quests.modules.thieves_guild").questLine,
    require("scripts.markers.quests.modules.tribunal_temple").questLine,
    require("scripts.markers.quests.modules.vampire").questLine,
}

local function addToSet<K, V>(set: {K: {V}}, key: K, value: V)
    local currVals = set[key] or {}
    if not utils.listContains(currVals, value) then
        table.insert(currVals, value)
    end
    set[key] = currVals
end

local function loadQuestData(): T.QuestData
    local questsByID: {string:T.Quest} = {}
    local quests: {T.Quest} = {}
    local relevantNpcs: {string: {T.Quest}} = {}
    local relevantItems: {string: {T.Quest}} = {}
    local relevantQuests: {string: {T.Quest}} = {}

    for _, questLine in ipairs(questLines) do
        for _, quest in ipairs(questLine) do
            questsByID[quest.id:lower()] = quest
            table.insert(quests, quest)
            for _, objective in ipairs(quest.objectives) do
                if objective.condition.name == "Journal" then
                    local castObjective = objective.condition as T.Journal
                    castObjective.questId = castObjective.questId or quest.id
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
    end

    return { 
        quests = quests,
        questsByID = questsByID,
        relevantNpcs = relevantNpcs,
        relevantItems = relevantItems,
        relevantQuests = relevantQuests,
    } as T.QuestData
end

return { loadQuestData = loadQuestData }

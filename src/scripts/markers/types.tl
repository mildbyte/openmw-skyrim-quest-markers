local util = require('openmw.util')

local record CellCoords
    cellId: string
    coords: util.Vector3
end

local function coordsToString(coords: CellCoords): string
    return tostring(coords.coords) .. " " .. tostring(coords.cellId)
end

local record Edge
    vertex: CellCoords
    cost: number
end

local record CellCluster
    cellIds: {string}
    entryExitVertices: {CellCoords}
end

local record RoutingGraph
    vertices: {CellCoords}
    travelNPCVertices: {CellCoords}
    edges: {CellCoords:{Edge}}

    cellClusters: {CellCluster}
    cellClusterMap: {string:CellCluster}
end


local record Objective
    pointer: Pointer
    condition: Condition
    completesQuest: boolean
    text: string
end

local record ObjectiveBlip
    objective: Objective
    -- [[ Coordinates in the local cell of the objective(s) to render]]
    localCoords: util.Vector3
end


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

local record Quest
    name: string -- textual quest name (though we have it in game)
    id: string  -- morrowind quest ID
    objectives: {Objective}
end

local record QuestData
    questsById: {string:Quest}

    -- NPC IDs that affect objectives of a quest (kill etc)
    relevantNpcs: {string: {Quest}}

    -- Item IDs that affect objectives of a quest
    relevantItems: {string: {Quest}}

    -- Quest IDs that affect other quests (e.g. completing one
    -- immediately starts the other)
    relevantQuests: {string: {Quest}}
end

-- UI state code

local record ObjectiveUIState
    isCompleted: boolean
    isStarted: boolean
    info: Objective
end

local record QuestUIState
    name: string
    id: string
    isCompleted: boolean
  
    -- Journal entry?
    currentFlavorText: string
    
    objectives: {ObjectiveUIState}
end

local record UIState
    -- List of QuestUIState and pointers to the same
    quests: {QuestUIState}
    questsByID: {string: QuestUIState}
    trackedQuestIDs: {string: boolean}
end

local record QuestMarkersRerouteParams 
    trackedQuestIDs: {string: boolean}
end

return {
    CellCoords = CellCoords,
    RoutingGraph = RoutingGraph,
    Edge = Edge,
    CellCluster = CellCluster,
    ObjectiveBlip = ObjectiveBlip,
    Objective = Objective,
    UIState = UIState,
    QuestUIState = QuestUIState,
    ObjectiveUIState = ObjectiveUIState,
    Quest = Quest,
    QuestData = QuestData,
    NPC = NPC,
    Item = Item,
    InteriorCluster = InteriorCluster,
    Condition = Condition,
    Journal = Journal,
    NPCDead = NPCDead,
    ItemPickedUp = ItemPickedUp,
    Pointer = Pointer,
    QuestMarkersRerouteParams = QuestMarkersRerouteParams,

    coordsToString = coordsToString
}

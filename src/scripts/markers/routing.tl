local getRealTime = require("openmw.core").getRealTime

local PriorityQueue = require("scripts.markers.3rdparty.priority_queue")
local T = require("scripts.markers.types")
local CellCoords = T.CellCoords
local Edge = T.Edge
local coordsToString = T.coordsToString
local RoutingGraph = T.RoutingGraph
local CellCluster = T.CellCluster
local listReverse = require("scripts.markers.utils").listReverse
local listContains = require("scripts.markers.utils").listContains
local tableLength = require("scripts.markers.utils").tableLength
local setLength = require("scripts.markers.utils").setLength
local L = require("scripts.markers.logging")

local function cellIdToIndex(cellId: string): string
    if cellId == nil then return "" else return cellId end
end

local record PrunedGraph
    vertices: {CellCoords:boolean}
    edges: {CellCoords:{Edge}}
    
    -- map of cellIdToIndex(cell) -> all vertices in that cell
    verticesByCell: {string:{CellCoords}}
end

local function dumpGraph(graph: PrunedGraph)
    print("pruned graph vertices")
    for v, _ in pairs(graph.vertices) do
        print("  " .. coordsToString(v))
    end
    print("pruned graph edges")
    for sv, dvs in pairs(graph.edges) do
        print("  " .. coordsToString(sv) .. " -> ")
        for _, dv in ipairs(dvs) do
            print("    " .. coordsToString(dv.vertex))
        end
    end
end

local function pruneGraph(graph: RoutingGraph, source: CellCoords, destinations: {CellCoords}): PrunedGraph
    -- [[ Delete vertices from the graph that the player will 
    -- never need to pass through and prepare a map of vertices in
    -- each cell for implied edge calculation.
    -- ]]

    local requiredVertices: {CellCoords:boolean} = {}
    local requiredClusters: {CellCluster:boolean} = {}
    local pois: {CellCoords} = {source}

    for _, destination in ipairs(destinations) do
        table.insert(pois, destination)
    end

    -- Add travel NPCs and their destinations to POIs
    for _, travelNPC in ipairs(graph.travelNPCVertices) do
        table.insert(pois, travelNPC)
        for _, NPCDestination in ipairs(graph.edges[travelNPC]) do
            table.insert(pois, NPCDestination.vertex)
        end
    end

    for _, poi in ipairs(pois) do
        requiredVertices[poi] = true
        if poi.cellId ~= nil then
            local cellCluster = graph.cellClusterMap[poi.cellId]
            requiredClusters[cellCluster] = true            
        end
    end

    -- We need to precompute the cell -> vertices map here for interiors
    local verticesByCell: {string:{CellCoords}} = {}
    for _, vertex in ipairs(graph.vertices) do
        if vertex.cellId ~= nil then
            local vertices = verticesByCell[vertex.cellId]
            if vertices == nil then vertices = {} end
            table.insert(vertices, vertex)
            verticesByCell[vertex.cellId] = vertices
        end
    end

    -- ... so that we can expand the POIs to all vertices in the same cell group
    for cellCluster, _ in pairs(requiredClusters) do
        for _, cellId in ipairs(cellCluster.cellIds) do
            for _, vertex in ipairs(verticesByCell[cellId]) do
                requiredVertices[vertex] = true
            end

            for _, vertex in ipairs(cellCluster.entryExitVertices) do
                requiredVertices[vertex] = true
            end
        end
    end

    -- Filter the edges down to only the ones between required vertices
    local requiredEdges: {CellCoords:{Edge}} = {}
    for sourceVertex, destinationVertices in pairs(graph.edges) do
        if requiredVertices[sourceVertex] ~= nil then
            local newDestinationVertices: {Edge} = {}
            for _, destinationVertex in ipairs(destinationVertices) do
                if requiredVertices[destinationVertex.vertex] ~= nil then
                    table.insert(newDestinationVertices, destinationVertex)
                end
            end
            if next(newDestinationVertices) ~= nil then
                requiredEdges[sourceVertex] = newDestinationVertices
            end
        end
    end

    -- Recalculate the verticesByCell map to only have required vertices
    -- but also include exteriors
    verticesByCell = {}
    for vertex, _ in pairs(requiredVertices) do
        local cellId = cellIdToIndex(vertex.cellId)

        local vertices = verticesByCell[cellId]
        if vertices == nil then vertices = {} end
        table.insert(vertices, vertex)
        verticesByCell[cellId] = vertices
    end

    return {
        vertices = requiredVertices,
        edges = requiredEdges,
        verticesByCell = verticesByCell
    }
end

local function dijkstra(graph: RoutingGraph, source: CellCoords, destinations: {CellCoords}): {CellCoords: number}, {CellCoords: CellCoords}
    local INFINITY: number = 1e50

    local dist: {CellCoords: number} = {}
    local prev: {CellCoords: CellCoords} = {}

    local startTime = getRealTime()

    local remainingDestinations: {CellCoords: boolean} = {}
    for _, destination in ipairs(destinations) do
        remainingDestinations[destination] = true
    end

    local prunedGraph = pruneGraph(graph, source, destinations)
    if L.LEVELS[LOG_LEVEL] >= L.LEVELS["DEBUG"] then
        dumpGraph(prunedGraph)
    end

    L.info(
        "pruned travel graph from " .. #graph.vertices .. "v " .. tableLength(graph.edges) ..
        "e to " .. tableLength(prunedGraph.vertices) .. "v " .. 
        tableLength(prunedGraph.edges) .. "e in " .. 
        (getRealTime() - startTime) .. "s"
    )
    
    local Q = PriorityQueue:make()

    for v, _ in pairs(prunedGraph.vertices) do
        dist[v] = INFINITY
        prev[v] = nil
        if v == source then
            dist[v] = 0
        end
        Q:put(v, dist[v])
    end

    startTime = getRealTime()
    local relaxations = 0
    local queueLoops = 0
    local edgeLoops = 0

    while not Q:empty() do
        L.trace("dijkstra, q size is " .. tostring(Q:size()))

        local vertexAndCost = Q.heap[1]
        local vertex = vertexAndCost[1] as CellCoords
        local vertexCost = vertexAndCost[2]
        Q:pop()

        queueLoops = queueLoops + 1
        
        if remainingDestinations[vertex] ~= nil then
            remainingDestinations[vertex] = nil
            if setLength(remainingDestinations) == 0 then
                break
            end
        end

        -- https://cs.stackexchange.com/a/118406
        if dist[vertex] < vertexCost then goto continue end
        L.trace("dijkstra " .. coordsToString(vertex))
        -- each vertex (without ASV and teleports) has one normal edge
        
        local vertexNeighbours: {{CellCoords, number}} = {}
        
        -- Add actual teleportation neighbours
        local neighbours = prunedGraph.edges[vertex]
        if neighbours ~= nil then
            for _, neighbour in ipairs(neighbours) do
                table.insert(vertexNeighbours, {neighbour.vertex, neighbour.cost})
            end
        end

        -- Add neighbours in the same cell
        local cellNeighbours = prunedGraph.verticesByCell[cellIdToIndex(vertex.cellId)]
        if cellNeighbours ~= nil then
            for _, neighbour in ipairs(cellNeighbours) do
                table.insert(vertexNeighbours, {neighbour, (neighbour.coords - vertex.coords):length()})
            end
        end

        for _, otherVertexAndCost in ipairs(vertexNeighbours) do
            edgeLoops = edgeLoops + 1
            local otherVertex = otherVertexAndCost[1]
            local distance = otherVertexAndCost[2]
            L.trace("checking cost to " .. coordsToString(otherVertex) .. " dist " .. tostring(distance))
            if dist[vertex] + distance < dist[otherVertex] then
                relaxations = relaxations + 1
                dist[otherVertex] = dist[vertex] + distance
                prev[otherVertex] = vertex
                Q:put(otherVertex, dist[otherVertex])
            end
        end
        ::continue::
    end

    L.info(
        "dijkstra finished in " .. getRealTime() - startTime .. "s, " ..
        queueLoops .. " vertex loops, " .. edgeLoops .. " edge loops, " .. 
        relaxations .. " relaxations"
    )

    return dist, prev
end

local function getRoute(graph: RoutingGraph, source: CellCoords, destinations: {CellCoords}): {{CellCoords}}
    -- Filter destinations to the ones that we actually know about
    -- (where the cell exists)
    if source.cellId ~= nil and graph.cellClusterMap[source.cellId] == nil then
        return nil
    end

    local existingDestinations: {CellCoords} = {}
    for _, destination in ipairs(destinations) do
        if destination.cellId == nil or graph.cellClusterMap[destination.cellId] ~= nil then
            table.insert(existingDestinations, destination)
        end
    end

    local _, prev = dijkstra(graph, source, existingDestinations)

    local result: {{CellCoords}} = {}

    for _, destination in ipairs(destinations) do
        if listContains(existingDestinations, destination) then
            local subResult: {CellCoords} = {}
            while (destination ~= nil) and (destination ~= source) do
                table.insert(subResult, destination)
                destination = prev[destination]
            end

            if destination == source then
                listReverse(subResult)
                table.insert(result, subResult)
            else
                table.insert(result, nil)
            end

            if L.LEVELS[L.LOG_LEVEL] >= L.LEVELS["DEBUG"] then
                print("route")
                for _, v in ipairs(subResult) do
                    print(coordsToString(v))
                end
            end
        else
            table.insert(result, nil)
        end
    end

    return result
end

return { getRoute = getRoute }

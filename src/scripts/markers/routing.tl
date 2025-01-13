local ui = require("openmw.ui")

local PriorityQueue = require("scripts.markers.3rdparty.priority_queue")
local CellCoords = require("scripts.markers.types").CellCoords
local coordsToString = require("scripts.markers.types").coordsToString
local RoutingGraph = require("scripts.markers.types").RoutingGraph
local listContains = require("scripts.markers.utils").listContains
local listReverse = require("scripts.markers.utils").listReverse

-- Assuming running, speed=50, athletics=50, game units per second
-- global RUN_SPEED = 337.5

local function cellIdToIndex(cellId: string): string
    if cellId == nil then return "" else return cellId end
end

local function dijkstra(graph: RoutingGraph, source: CellCoords, destination: CellCoords): {CellCoords: number}, {CellCoords: CellCoords}
    print("routing: source " ..  coordsToString(source) .. ".." ..  coordsToString(destination))
    local INFINITY: number = 1e50

    local dist: {CellCoords: number} = {}
    local prev: {CellCoords: CellCoords} = {}
    
    local Q = PriorityQueue:make()

    for _, v in ipairs(graph.vertices) do
        dist[v] = INFINITY
        prev[v] = nil
        Q:put(v, dist[v])
    end
    dist[source] = 0
    dist[destination] = INFINITY
    prev[destination] = nil

    if not listContains(graph.vertices, source) then
        Q:put(source, dist[source])
    end

    if not listContains(graph.vertices, destination) then
        Q:put(destination, dist[destination])
    end

    -- we need a map of cellname (incl nil) to all vertices in that cell
    local verticesByCell: {string:{CellCoords}} = {}
    for _, vertex in ipairs(graph.vertices) do
        local vertices = verticesByCell[cellIdToIndex(vertex.cellId)]
        if vertices == nil then vertices = {} end
        table.insert(vertices, vertex)
        verticesByCell[cellIdToIndex(vertex.cellId)] = vertices
    end

    -- add source and destination too
    local vertices = verticesByCell[cellIdToIndex(source.cellId)]
    if vertices == nil then vertices = {} end
    table.insert(vertices, source)
    verticesByCell[cellIdToIndex(source.cellId)] = vertices

    vertices = verticesByCell[cellIdToIndex(destination.cellId)]
    if vertices == nil then vertices = {} end
    table.insert(vertices, source)
    verticesByCell[cellIdToIndex(destination.cellId)] = vertices

    while not Q:empty() do
        local vertex = Q:pop() as CellCoords
        print("dijkstra, q size is " .. tostring(Q:size()))
        if vertex == destination then
            return dist, prev
        end

        print("dijkstra " .. coordsToString(vertex))

        -- each vertex (without ASV and teleports) has one normal edge
        
        local vertexNeighbours: {{CellCoords, number}} = {}
        
        -- Add actual teleportation neighbours
        local neighbours = graph.edges[vertex]
        if neighbours == nil then neighbours = {} end
        for _, neighbour in ipairs(neighbours) do
            table.insert(vertexNeighbours, {neighbour.vertex, neighbour.cost})
        end

        -- Add neighbours in the same cell
        local cellNeighbours = verticesByCell[cellIdToIndex(vertex.cellId)]
        if cellNeighbours == nil then cellNeighbours = {} end
        for _, neighbour in ipairs(cellNeighbours) do
            table.insert(vertexNeighbours, {neighbour, (neighbour.coords - vertex.coords):length()})
        end

        for _, otherVertexAndCost in ipairs(vertexNeighbours) do
            local otherVertex = otherVertexAndCost[1]
            local distance = otherVertexAndCost[2]
            print("checking cost to " .. coordsToString(otherVertex) .. " dist " .. tostring(distance))
            if dist[vertex] + distance < dist[otherVertex] then
                dist[otherVertex] = dist[vertex] + distance
                prev[otherVertex] = vertex
                Q:put(otherVertex, dist[otherVertex])
            end
        end
    end

    return dist, prev
end

local function getRoute(graph: RoutingGraph, source: CellCoords, destination: CellCoords): {CellCoords}
    local _, prev = dijkstra(graph, source, destination)

    local result: {CellCoords} = {}

    while destination ~= nil do
        table.insert(result, destination)
        destination = prev[destination]
    end

    ui.printToConsole("route", ui.CONSOLE_COLOR.Default)
    for _, v in ipairs(result) do
        ui.printToConsole(coordsToString(v), ui.CONSOLE_COLOR.Default)
    end

    if destination ~= source then
        return nil
    end

    listReverse(result)
    return result
end

return { getRoute = getRoute }

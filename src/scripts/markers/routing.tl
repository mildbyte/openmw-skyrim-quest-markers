local ui = require("openmw.ui")

local PriorityQueue = require("scripts.markers.3rdparty.priority_queue")
local CellCoords = require("scripts.markers.types").CellCoords
local coordsToString = require("scripts.markers.types").coordsToString
local RoutingGraph = require("scripts.markers.types").RoutingGraph
local listContains = require("scripts.markers.utils").listContains
local listReverse = require("scripts.markers.utils").listReverse

-- Assuming running, speed=50, athletics=50, game units per second
-- global RUN_SPEED = 337.5

local function getDistance(v1: CellCoords, v2: CellCoords, graph: RoutingGraph): number
    -- If we can teleport between the two locations, do that
    print("distance " ..  coordsToString(v1) .. ".." ..  coordsToString(v2))
    local edge = graph.edges[{v1, v2}]
    if edge ~= nil then
        return edge
    end

    -- Otherwise, if the two vertices are in the same cell, return
    -- the distance between them
    -- (exterior is cellId == nil, and in Lua nil == nil, so this works too)
    if v1.cellId == v2.cellId then
        return (v2.coords - v1.coords):length()
    end

    -- Otherwise, it's not possible to go between the two points
    return nil
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

    while not Q:empty() do
        local vertex = Q:pop() as CellCoords
        print("dijkstra " .. coordsToString(vertex), ui.CONSOLE_COLOR.Default)
        -- TODO: include the destination in this loop?
        for _, otherVertex in ipairs(graph.vertices) do
            if vertex == otherVertex then
                goto continue
            end

            local d = getDistance(vertex, otherVertex, graph)
            if d is nil then
                goto continue
            end

            if dist[vertex] + d < dist[otherVertex] then
                dist[otherVertex] = dist[vertex] + d
                prev[otherVertex] = vertex

                -- decrease-key
                for _, item in ipairs(Q.heap) do
                    if item[1] == otherVertex then
                        item[2] = dist[vertex] + d
                        Q:swim()
                        goto continue
                    end
                end
            end
            ::continue::
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

    if destination ~= source then
        return nil
    end

    listReverse(result)
    return result
end

return { getRoute = getRoute }

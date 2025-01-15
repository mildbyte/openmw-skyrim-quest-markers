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

return {
    CellCoords = CellCoords,
    RoutingGraph = RoutingGraph,
    Edge = Edge,
    CellCluster = CellCluster,

    coordsToString = coordsToString
}
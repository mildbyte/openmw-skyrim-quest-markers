local util = require('openmw.util')

local record CellCoords
    cellId: string
    coords: util.Vector3
end

local function coordsToString(coords: CellCoords): string
    return tostring(coords.coords) .. " " .. tostring(coords.cellId)
end

local record RoutingGraph
    vertices: {CellCoords}
    edges: {{CellCoords, CellCoords}:number}
end

return {
    CellCoords = CellCoords,
    RoutingGraph = RoutingGraph,

    coordsToString = coordsToString
}
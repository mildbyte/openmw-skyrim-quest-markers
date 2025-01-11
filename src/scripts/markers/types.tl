local util = require('openmw.util')

local record CellCoords
    cellId: string
    coords: util.Vector3
end

local record RoutingGraph
    vertices: {CellCoords}
    edges: {{CellCoords, CellCoords}:number}
end

return {
    CellCoords = CellCoords,
    RoutingGraph = RoutingGraph
}
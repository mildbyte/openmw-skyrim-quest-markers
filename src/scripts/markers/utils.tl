local core = require("openmw.core")
local CellCoords = require("scripts.markers.types").CellCoords

local function listContains<A>(t: {A}, v: A): boolean
    for _, tv in ipairs(t) do
        if v == tv then
            return true
        end
    end
    return false
end

local function listReverse<A>(l: {A}): {A}
    for i=1, math.floor(#l / 2) do
      l[i], l[#l - i + 1] = l[#l - i + 1], l[i]
    end
end

local function tableLength(t: table): integer
    local result = 0
    for _ in pairs(t) do result = result + 1 end
    return result
end

local function getCellCoords(object: core.GameObject): CellCoords
    local cellId: string
    if object.cell.isExterior then
        cellId = nil
    else
        cellId = object.cell.name
    end

    return { cellId = cellId, coords = object.position }
end


return { listContains = listContains, listReverse = listReverse, tableLength = tableLength, getCellCoords = getCellCoords }

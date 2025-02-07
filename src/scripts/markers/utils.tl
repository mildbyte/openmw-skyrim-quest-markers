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

local function listCopy<A>(l: {A}): {A}
    local u: {A} = { }
    for k, v in ipairs(l) do u[k] = v end
    return u
end

local function listAppend<A>(l1: {A}, l2: {A}): {A}
    local result = listCopy(l1)
    for _, v in ipairs(l2) do table.insert(result, v) end
    return result
end

local function tableLength(t: table): integer
    local result = 0
    for _ in pairs(t) do result = result + 1 end
    return result
end

local function setLength<A>(s: {A: boolean}): integer
    local result = 0
    for _, v in pairs(s) do if v == true then result = result + 1 end end
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


return { 
    listContains = listContains,
    listReverse = listReverse,
    listAppend = listAppend,
    listCopy = listCopy,
    tableLength = tableLength,
    getCellCoords = getCellCoords,
    setLength = setLength
}

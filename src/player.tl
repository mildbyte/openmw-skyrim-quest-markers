local ui = require('openmw.ui')
local input = require('openmw.input')
local util = require('openmw.util')
local camera = require('openmw.camera')
local self = require('openmw.self')

global BLIP_ELEMENTS: {ui.Element} = {}

local function setObjectiveBlips(positions: {util.Vector2})
    for i, position in ipairs(positions) do
        if i > #BLIP_ELEMENTS then
            local element = ui.create {
                layer = 'HUD',
                type = ui.TYPE.Text,
                props = {
                  relativePosition = position,
                  anchor = position,
                  text = "v",
                  textSize = 24,
                  textColor = util.color.rgb(0, 1, 0),
                },
            }
            -- ui.showMessage("adding blip" .. i .. tostring(position), nil)
            table.insert(BLIP_ELEMENTS, element)
        else
            local element = BLIP_ELEMENTS[i]
            element.layout.props.relativePosition = position
            element.layout.props.anchor = position
            element:update()
            -- ui.showMessage("updating blip" .. i .. tostring(position), nil)
        end
    end

    if #positions < #BLIP_ELEMENTS then
        for i = #positions + 1, #BLIP_ELEMENTS do
            local element = BLIP_ELEMENTS[#positions + 1]
            element:destroy()
            table.remove(BLIP_ELEMENTS, #positions + 1)
            -- ui.showMessage("deleting blip" .. i, nil)
        end
    end
end

local record ObjectiveBlips
    -- [[ Coordinates in the local cell of the objective(s) to render]]
    localBlips: {util.Vector3}
    -- [[ Coordinates in the global worldspace of the objective(s)]]
    globalBlips: {util.Vector3}
end

local record CellCoords
    cellId: string
    coords: util.Vector2
end

local record RoutingGraph
end

local function computeBlips(objectives: {CellCoords}, player: CellCoords, graph: RoutingGraph): ObjectiveBlips
    return {
        localBlips = {util.vector3(0, 0, 0), util.vector3(100, 0, 100)},
        globalBlips = {}
    }
end

global OBJECTIVE_BLIPS: ObjectiveBlips = {localBlips = {}, globalBlips = {}}

local function updateViewportObjectives(objectiveBlips: ObjectiveBlips)
    local screenSpace = {}
    for _, blip in ipairs(objectiveBlips.localBlips) do
        local viewport = camera.worldToViewportVector(blip)
        -- Clamp and convert the viewport to 0..1
        local viewport2d = util.vector2(
            util.clamp(viewport.x / ui.screenSize().x, 0, 1),
            util.clamp(viewport.y / ui.screenSize().y, 0, 1)
        )

        local cameraDir = camera.viewportToWorldVector(util.vector2(0.5, 0.5))
        local blipDir = blip - camera.getPosition()
        local dot = cameraDir:dot(blipDir)
        ui.showMessage(tostring(dot), {})

        if dot < 0 then
            -- If the objective is behind us, stick the blip to the edge of the screen
            local x_dist = math.abs(viewport2d.x - 0.5)
            local y_dist = math.abs(viewport2d.y - 0.5)

            if x_dist > y_dist then
                if viewport2d.x < 0.5 then
                    viewport2d.x = 0
                else
                    viewport2d.x = 1
                end
            else
                if viewport2d.y < 0.5 then
                    viewport2d.y = 0
                else
                    viewport2d.y = 1
                end
            end
        end

        table.insert(screenSpace, viewport2d)
    end

    setObjectiveBlips(screenSpace)
end

return {
    engineHandlers = {
        onKeyPress = function(key: input.KeyboardEvent)
            if key.symbol == 'x' then
                local playerPos = { cell = self.object.cell, position = self.object.position }
                OBJECTIVE_BLIPS = computeBlips({}, playerPos, {})
            end
        end,
        onUpdate = function(dt: number)
            updateViewportObjectives(OBJECTIVE_BLIPS)
        end,
    }
 }

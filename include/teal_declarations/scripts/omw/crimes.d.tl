--[[
  Allows to utilize built-in crime mechanics.
  require('openmw.interfaces').Crimes
]]

local openmw_core = require("openmw.core")
local openmw_types = require("openmw.types")
local record Crimes
  --[[
    Commits a crime as if done through an in-game action.
    Can only be used in global context.
  ]]
  commitCrime: function(
    player: openmw_core.GameObject, --[[The player committing the crime]]
    CommitCrimeInputs: any
  ): any
  
  --[[
    Interface version
  ]]
  version: number
  
  --[[
    Table with information needed to commit crimes.
  ]]
  record CommitCrimeInputs
    --[[
      The amount to increase the player bounty by, if the crime type is theft. Ignored otherwise (optional, defaults to 0)
    ]]
    arg: number
    
    --[[
      ID of the faction the crime is committed against (optional)
    ]]
    faction: string
    
    --[[
      The type of the crime to commit. See @{openmw.types#OFFENSE_TYPE} (required)
    ]]
    type: openmw_types.OFFENSE_TYPE
    
    --[[
      The victim of the crime (optional)
    ]]
    victim: openmw_core.GameObject
    
    --[[
      Whether the victim is aware of the crime (optional, defaults to false)
    ]]
    victimAware: boolean
    
  end
  --[[
    Table containing information returned by the engine after committing a crime
  ]]
  record CommitCrimeOutputs
    --[[
      Whether the crime was seen
    ]]
    wasCrimeSeen: boolean
    
  end
end
return Crimes
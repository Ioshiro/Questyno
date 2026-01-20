-- B42 OK
require 'SFQuest_Database'

-- Monkey patch per gestire il pickup dei manichini:
-- - Manichini nel MannequinPool (quest) → blocca pickup
-- - Manichini normali → permetti pickup
local original_canPickUpMoveableInternal = ISMoveableSpriteProps.canPickUpMoveableInternal

function ISMoveableSpriteProps:canPickUpMoveableInternal(_character, _square, _object, _isMulti)
    if self.isoType == "IsoMannequin" and _square then
        local x, y, z = _square:getX(), _square:getY(), _square:getZ()
        local squaretag = tostring(x) .. "x" .. tostring(y) .. "x" .. tostring(z)
        if SFQuest_Database.MannequinPool[squaretag] then
            return false
        else
            return true
        end
    end
    return original_canPickUpMoveableInternal(self, _character, _square, _object, _isMulti)
end

-- B42 OK
require 'SFQuest_Database'

-- Monkey patch per impedire lo smontaggio dei manichini registrati nel MannequinPool
local original_canScrapObject = ISMoveableSpriteProps.canScrapObject

function ISMoveableSpriteProps:canScrapObject(_character)
    local object = self.object
    if object and object:getObjectName() and object:getObjectName() == "Mannequin" then
        local square = object:getSquare()
        if square then
            local x, y, z = square:getX(), square:getY(), square:getZ()
            local squaretag = tostring(x) .. "x" .. tostring(y) .. "x" .. tostring(z)
            if SFQuest_Database.MannequinPool[squaretag] then
                return {craftValid = false, canScrap = false}, 0, nil
            end
        end
    end
    return original_canScrapObject(self, _character)
end

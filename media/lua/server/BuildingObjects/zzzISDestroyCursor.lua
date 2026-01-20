-- B42 OK
require 'SFQuest_Database'

-- Monkey patch per impedire la distruzione con sledgehammer dei manichini nel MannequinPool
local original_canDestroy = ISDestroyCursor.canDestroy

function ISDestroyCursor:canDestroy(object)
    if object and object:getSquare() and object:getProperties() then
        local props = object:getProperties()
        if props:has("CustomName") and props:get("CustomName") == "Mannequin" then
            local square = object:getSquare()
            local x, y, z = square:getX(), square:getY(), square:getZ()
            local squaretag = tostring(x) .. "x" .. tostring(y) .. "x" .. tostring(z)
            if SFQuest_Database.MannequinPool[squaretag] then
                return false
            end
        end
    end
    return original_canDestroy(self, object)
end

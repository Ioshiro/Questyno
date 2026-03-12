require 'SFQuest_Database'
require 'SFQuest_Utils'

local useIsoNpc = NpcPool ~= nil

-- Check if there's a bot NPC on this square
local function hasBotOnSquare(square)
    local movingObjects = square:getMovingObjects()
    for i = 0, movingObjects:size() - 1 do
        local obj = movingObjects:get(i)
        if instanceof(obj, "IsoPlayer") and isBot and isBot(obj) then
            return true
        end
    end
    return false
end

local function onToggleNpc(worldobjects, playerObj, x, y, z, isCurrentlyRemoved)
    if useIsoNpc then
        if isCurrentlyRemoved then
            sendClientCommand(playerObj, "IsoNpc", "unremoveNpc", {x=x, y=y, z=z})
        else
            sendClientCommand(playerObj, "IsoNpc", "removeNpc", {x=x, y=y, z=z})
        end
    else
        if isCurrentlyRemoved then
            SFQuestMannequinClient.unremoveMannequin(x, y, z)
        else
            SFQuestMannequinClient.removeMannequin(x, y, z)
        end
    end
end

local function SFQuest_AdminMannequinMenu(player, context, worldobjects, test)
    if isClient() and not isAdmin() then return end
    if test then return ISWorldObjectContextMenu.setTest() end

    local square = worldobjects[1]:getSquare()
    if not square then return end

    local x, y, z = square:getX(), square:getY(), square:getZ()
    local squaretag = SFQuest_Utils.squaretag(x, y, z)

    if not SFQuest_Database.MannequinPool[squaretag] then return end

    local playerObj = getSpecificPlayer(player)

    -- Determine current state based on spawn mode
    local isCurrentlyRemoved
    if useIsoNpc then
        -- Bot mode: check if there's a bot on the square (no ModData needed)
        isCurrentlyRemoved = not hasBotOnSquare(square)
    else
        -- Mannequin mode: check cached removal state
        isCurrentlyRemoved = SFQuestMannequinClient.isRemoved(x, y, z)
    end

    if isCurrentlyRemoved then
        context:addOption(
            getText("ContextMenu_EnableNPC"),
            worldobjects, onToggleNpc, playerObj, x, y, z, true
        )
    else
        context:addOption(
            getText("ContextMenu_DisableNPC"),
            worldobjects, onToggleNpc, playerObj, x, y, z, false
        )
    end
end

Events.OnFillWorldObjectContextMenu.Add(SFQuest_AdminMannequinMenu)

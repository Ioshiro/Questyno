require 'SFQuest_Database'
require 'SFQuest_Utils'

local function onToggleMannequin(worldobjects, playerObj, x, y, z, isCurrentlyRemoved)
    if isCurrentlyRemoved then
        SFQuestMannequinClient.unremoveMannequin(x, y, z)
    else
        SFQuestMannequinClient.removeMannequin(x, y, z)
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
    local isCurrentlyRemoved = SFQuestMannequinClient.isRemoved(x, y, z)

    if isCurrentlyRemoved then
        context:addOption(
            getText("ContextMenu_EnableNPC"),
            worldobjects, onToggleMannequin, playerObj, x, y, z, true
        )
    else
        context:addOption(
            getText("ContextMenu_DisableNPC"),
            worldobjects, onToggleMannequin, playerObj, x, y, z, false
        )
    end
end

Events.OnFillWorldObjectContextMenu.Add(SFQuest_AdminMannequinMenu)

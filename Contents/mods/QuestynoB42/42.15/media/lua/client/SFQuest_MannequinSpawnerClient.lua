--[[
    Client-side Mannequin Support for Build 42 - SSOT Architecture

    This file provides client-side utilities for the mannequin system.

    ARCHITECTURE (Single Source of Truth):
    - SFQuest_Database.MannequinPool (in shared/) is the SSOT
    - Server reads directly from shared/ - no client->server data transfer needed
    - Client only sends runtime commands (remove/unremove)

    This file handles:
    - Runtime commands to remove/unremove mannequins
    - Receiving removed state updates from server

    NOTE: Actual mannequin spawning is done SERVER-SIDE only.
]]--
if isServer() then return end -- This file runs ONLY on clients (and singleplayer)

-- If IsoNPC is loaded, it handles NPC spawning - disable mannequin client
if NpcPool then
    SFQuestMannequinClient = SFQuestMannequinClient or {}
    SFQuestMannequinClient.isRemoved = function() return false end
    return
end

require 'SFQuest_Utils'


-- Initialize the module
SFQuestMannequinClient = SFQuestMannequinClient or {}

-- Local cache of removed state (synced from server)
SFQuestMannequinClient.removedCache = {}

-- Request to remove a mannequin (sends command to server)
SFQuestMannequinClient.removeMannequin = function(x, y, z)
    if isClient() then
        -- In multiplayer, send command to server
        sendClientCommand("SFQuestMannequin", "remove", {
            x = x,
            y = y,
            z = z
        })
    else
        -- In singleplayer, update directly in ModData
        local modData = ModData.getOrCreate("SFQuest_MannequinRemoved")
        local squaretag = SFQuest_Utils.squaretag(x, y, z)
        modData[squaretag] = true
    end
end

-- Request to unremove a mannequin (sends command to server to respawn)
SFQuestMannequinClient.unremoveMannequin = function(x, y, z)
    if isClient() then
        -- In multiplayer, send command to server
        sendClientCommand("SFQuestMannequin", "unremove", {
            x = x,
            y = y,
            z = z
        })
    else
        -- In singleplayer, update directly in ModData
        local modData = ModData.getOrCreate("SFQuest_MannequinRemoved")
        local squaretag = SFQuest_Utils.squaretag(x, y, z)
        modData[squaretag] = nil
    end
end

-- Check if a mannequin is removed
SFQuestMannequinClient.isRemoved = function(x, y, z)
    local squaretag = SFQuest_Utils.squaretag(x, y, z)
    return SFQuestMannequinClient.removedCache[squaretag] == true
end

-- Receive updated removed state from server
local function onReceiveGlobalModData(key, modData)
    if key == "SFQuest_MannequinRemoved" then
        SFQuestMannequinClient.removedCache = modData or {}
        print("[SFQuest] Received MannequinRemoved state from server")
    end
end

Events.OnReceiveGlobalModData.Add(onReceiveGlobalModData)

-- Request removed state from server on game start
local function onInitGMD()
    ModData.request("SFQuest_MannequinRemoved")
end

Events.OnInitGlobalModData.Add(onInitGMD)

print("[SFQuest] Client-side Mannequin Support loaded (B42 SSOT Architecture)")

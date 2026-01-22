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

require 'SFQuest_Database'

if isServer() then return end -- This file runs ONLY on clients (and singleplayer)

-- Initialize the module
SFQuestMannequinClient = SFQuestMannequinClient or {}

-- Local cache of removed state (synced from server)
SFQuestMannequinClient.removedCache = {}

-- Helper function to get mannequin script name (mirror of server function)
SFQuestMannequinClient.getScriptName = function(sprite)
    local scriptMap = {
        ["location_shop_mall_01_65"] = "FemaleWhite01",
        ["location_shop_mall_01_66"] = "FemaleWhite02",
        ["location_shop_mall_01_67"] = "FemaleWhite03",
        ["location_shop_mall_01_68"] = "MaleWhite01",
        ["location_shop_mall_01_69"] = "MaleWhite02",
        ["location_shop_mall_01_70"] = "MaleWhite03",
        ["location_shop_mall_01_73"] = "FemaleBlack01",
        ["location_shop_mall_01_74"] = "FemaleBlack02",
        ["location_shop_mall_01_75"] = "FemaleBlack03",
        ["location_shop_mall_01_76"] = "MaleBlack01",
        ["location_shop_mall_01_77"] = "MaleBlack02",
        ["location_shop_mall_01_78"] = "MaleBlack03",
    }
    return scriptMap[sprite] or "MaleWhite01"
end

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
        local squaretag = tostring(x) .. "x" .. tostring(y) .. "x" .. tostring(z)
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
        local squaretag = tostring(x) .. "x" .. tostring(y) .. "x" .. tostring(z)
        modData[squaretag] = nil
    end
end

-- Check if a mannequin is removed
SFQuestMannequinClient.isRemoved = function(x, y, z)
    local squaretag = tostring(x) .. "x" .. tostring(y) .. "x" .. tostring(z)
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

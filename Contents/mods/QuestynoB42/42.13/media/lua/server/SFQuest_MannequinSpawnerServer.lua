--[[
    Server-side Mannequin Spawner for Build 42 - SSOT Architecture

    This file handles mannequin spawning on the SERVER side only.

    ARCHITECTURE (Single Source of Truth):
    - SFQuest_Database.MannequinPool (in shared/) is the SSOT for mannequin definitions
    - ModData stores only "removed" state for persistence
    - Server reads directly from SFQuest_Database.MannequinPool
    - No client->server data transfer needed for static data

    LOAD ORDER:
    1. shared/ loads SFQuest_Database.lua (creates empty pools)
    2. shared/ loads NPC/*.lua (populates MannequinPool)
    3. server/ loads this file (reads from MannequinPool)
    4. Events.LoadGridsquare -> spawns mannequins

    FLOW:
    1. On LoadGridsquare, check if squaretag exists in MannequinPool
    2. Check ModData for "removed" state
    3. If not removed and mannequin doesn't exist, spawn it
]]--

require 'SFQuest_Database'

if isClient() then return end -- This file runs ONLY on server (and singleplayer)

-- Initialize the module
SFQuestMannequinServer = SFQuestMannequinServer or {}

-- Helper function to get mannequin script name from sprite
SFQuestMannequinServer.getScriptName = function(sprite)
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

-- Get removed state from ModData (persistence)
SFQuestMannequinServer.getRemovedState = function()
    local modData = ModData.getOrCreate("SFQuest_MannequinRemoved")
    return modData
end

-- Check if mannequin was removed
SFQuestMannequinServer.isRemoved = function(squaretag)
    local removedState = SFQuestMannequinServer.getRemovedState()
    return removedState[squaretag] == true
end

-- Mark a mannequin as removed (persistent)
SFQuestMannequinServer.removeMannequin = function(x, y, z)
    local removedState = SFQuestMannequinServer.getRemovedState()
    local squaretag = tostring(x) .. "x" .. tostring(y) .. "x" .. tostring(z)
    removedState[squaretag] = true
    ModData.transmit("SFQuest_MannequinRemoved")
end

-- Unmark a mannequin as removed (for re-spawning)
SFQuestMannequinServer.unremoveMannequin = function(x, y, z)
    local removedState = SFQuestMannequinServer.getRemovedState()
    local squaretag = tostring(x) .. "x" .. tostring(y) .. "x" .. tostring(z)
    removedState[squaretag] = nil
    ModData.transmit("SFQuest_MannequinRemoved")
end

-- Check if a mannequin already exists on the square
SFQuestMannequinServer.findExistingMannequin = function(square)
    local objects = square:getObjects()
    for i = 0, objects:size() - 1 do
        local object = objects:get(i)
        local name = object:getObjectName()
        if name and name == "Mannequin" then
            return object
        end
    end
    return nil
end

-- Main spawner function - called on LoadGridsquare event
SFQuestMannequinServer.onLoadGridsquare = function(square)
    local x, y, z = square:getX(), square:getY(), square:getZ()
    local squaretag = tostring(x) .. "x" .. tostring(y) .. "x" .. tostring(z)

    -- Get mannequin data directly from SSOT (SFQuest_Database.MannequinPool)
    local mannequinData = SFQuest_Database.MannequinPool[squaretag]

    -- If no mannequin registered for this square, exit
    if not mannequinData then
        return
    end

    -- Check if mannequin was removed (from ModData persistence)
    local isRemoved = SFQuestMannequinServer.isRemoved(squaretag)

    -- Check if mannequin already exists on this square
    local existingMannequin = SFQuestMannequinServer.findExistingMannequin(square)

    if existingMannequin then
        -- Mannequin exists
        if isRemoved then
            -- Should be removed - delete it from the world
            square:transmitRemoveItemFromSquare(existingMannequin)
        else
            -- Mannequin exists and should exist - ensure no containers
            existingMannequin:removeAllContainers()
        end
        return
    end

    -- If marked as removed, don't spawn
    if isRemoved then
        return
    end

    -- Spawn the mannequin (SERVER SIDE)
    local sprite = mannequinData.sprite
    local outfit = mannequinData.outfit
    local direction = mannequinData.direction or "S"
    local hair = mannequinData.hair
    local beard = mannequinData.beard
    local haircolor = mannequinData.haircolor
    local beardcolor = mannequinData.beardcolor

    -- Create the mannequin
    local mannequin = IsoMannequin.new(getCell(), square, getSprite(sprite))
    mannequin:setSquare(square)

    -- Set script name
    local scriptName = SFQuestMannequinServer.getScriptName(sprite)
    mannequin:setMannequinScriptName(scriptName)

    -- Set direction
    local dir = IsoDirections[direction]
    if dir then
        mannequin:setDir(dir)
    end

    -- Remove all containers (prevents item storage on NPC mannequins)
    mannequin:removeAllContainers()

    -- Configure visuals
    local visuals = mannequin:getHumanVisual()
    visuals:clear()

    if outfit then
        visuals:dressInNamedOutfit(outfit, visuals:getBodyVisuals())
        visuals:synchWithOutfit(visuals:getOutfit())
    end

    -- Hair
    if hair then
        visuals:setHairModel(hair)
    end

    if haircolor then
        local tempTable = luautils.split(haircolor, ",")
        if #tempTable >= 3 then
            local hR = tonumber(tempTable[1])
            local hG = tonumber(tempTable[2])
            local hB = tonumber(tempTable[3])
            local hcolor = ImmutableColor.new(hR, hG, hB)
            visuals:setHairColor(hcolor)
        end
    end

    -- Beard
    if beard then
        if beard == "null" or beard == "none" then
            visuals:setBeardModel("")
        else
            visuals:setBeardModel(beard)
        end
    end

    if beardcolor then
        local tempTable = luautils.split(beardcolor, ",")
        if #tempTable >= 3 then
            local bR = tonumber(tempTable[1])
            local bG = tonumber(tempTable[2])
            local bB = tonumber(tempTable[3])
            local bcolor = ImmutableColor.new(bR, bG, bB)
            visuals:setBeardColor(bcolor)
        end
    end

    -- Prevent picking
    mannequin:setNoPicking(true)

    -- Add to square using AddSpecialObject for proper bounding box registration
    square:AddSpecialObject(mannequin)

    -- CRITICAL: Transmit to all clients (server-side only)
    mannequin:transmitCompleteItemToClients()

    -- Recalculate square properties
    square:RecalcProperties()

    -- Trigger event for other systems
    triggerEvent("OnObjectAdded", mannequin)
end

-- Register the event handler
Events.LoadGridsquare.Add(SFQuestMannequinServer.onLoadGridsquare)

-- Handle server commands from clients for runtime changes
local function onClientCommand(module, command, player, args)
    if module ~= "SFQuestMannequin" then return end

    if command == "remove" and args then
        SFQuestMannequinServer.removeMannequin(args.x, args.y, args.z)
    elseif command == "unremove" and args then
        SFQuestMannequinServer.unremoveMannequin(args.x, args.y, args.z)
    end
end

Events.OnClientCommand.Add(onClientCommand)

-- Debug: Log pool status on game boot
local function onServerStarted()
    local count = 0
    for _ in pairs(SFQuest_Database.MannequinPool) do
        count = count + 1
    end
    print("[SFQuest] Server: MannequinPool has " .. tostring(count) .. " entries (SSOT from shared/)")
end

Events.OnServerStarted.Add(onServerStarted)

print("[SFQuest] Server-side Mannequin Spawner loaded (B42 SSOT Architecture)")

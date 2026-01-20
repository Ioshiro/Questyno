local SFQuest_Utils = require "utils/SFQuest_Utils"

SF_MissionPanel = SF_MissionPanel or ISPanelJoypad:derive("SF_MissionPanel");
SF_MissionPanel.Commands = SF_MissionPanel.Commands or {};

-- Commands

function SF_MissionPanel.Commands.actionevent(condition, commandslist)
    local checkcondition = luautils.split(condition, ":");
    if checkcondition[1] == "killzombies" then
        local player = getPlayer();
        local prog = player:getModData().missionProgress;
        local goal = tonumber(checkcondition[2])
        local tierzone, tierlevel
        local conditionType = checkcondition[3]
        local conditionValue = checkcondition[4]

        if conditionType == "tierzone" then
            tierzone = conditionValue
        elseif conditionType == "tierlevel" then
            tierlevel = tonumber(conditionValue)
        end
        local convertedCommands = commandslist:gsub(":", ";");
        table.insert(prog.ActionEvent, {
            kills = 0,
            goal = goal,
            tierzone = tierzone,
            tierlevel = tierlevel,
            condition = "killzombies",
            commands = convertedCommands
        })
        if not SF_MissionPanel.EventsRegistered then
            Events.OnZombieDead.Add(SF_MissionPanel.Events.OnZombieDead);
            SF_MissionPanel.EventsRegistered = true;
        end
        SF_MissionPanel.instance.needsBackup = true;
    end
end

function SF_MissionPanel.Commands.additem(item, quantity)
	local inv = getPlayer():getInventory();
	inv:AddItems(item, quantity);
end

function SF_MissionPanel.Commands.addmannequin(squaretag)
	if SFQuest_Database.MannequinPool[squaretag] then
		SFQuest_Database.MannequinPool[squaretag].removed = nil;
	end
end

--- Removes a specified quantity of an item from the player's inventory for a given quest.
-- If the item is successfully removed, a message is displayed to the player indicating the item and quantity removed.
-- If the item removal fails, a failure message is displayed to the player.
-- @param item The item to be removed.
-- @param quantity The quantity of the item to be removed.
-- @param questName The name of the quest associated with the item removal.
-- @message IGUI_SFQuest_Questyno_ItemRemoved "Removed {quantity} {itemName} for quest {questName}."
-- @message IGUI_SFQuest_Questyno_ItemRemoveFailed "Failed to remove item for quest {questName}."
function SF_MissionPanel.Commands.removeitem(item, quantity, questName)
    local success = SF_MissionPanel.instance:takeNeededItem(item .. ";" .. quantity)

    if success then
        local newString = item:gsub("Tag.-#", ""):gsub("Predicate.-#", "")
        local itemName =  getItemText(newString)
        local message = getText("IGUI_SFQuest_Questyno_ItemRemoved", quantity, itemName, getText(questName))
        getPlayer():Say(message, 1.000, 0.000, 0.000, UIFont.Small, 0, "default")
    else
        local message = getText("IGUI_SFQuest_Questyno_ItemRemoveFailed", getText(questName))
        getPlayer():Say(message, 1.000, 0.000, 0.000, UIFont.Small, 0, "default")
    end
end

function SF_MissionPanel.Commands.addserverpoints(points)
    local player = getPlayer();
    sendClientCommand("ServerPoints", "add", { player:getUsername(), points })
    --sendServerCommand("ServerPoints", "add", { player:getUsername(), points })
end

function SF_MissionPanel.Commands.addreputation(faction, reputation)
    SF_MissionPanel.instance:awardReputation(faction, reputation)
end

function SF_MissionPanel.Commands.changefrequency(dailyevent, frequency)
    SF_MissionPanel.instance:updateFrequency(dailyevent, frequency)
end

function SF_MissionPanel.Commands.unlockquest(questid)
    SF_MissionPanel.instance:unlockQuest(questid)
end

function SF_MissionPanel.Commands.unlockworldevent(identity, dialoguecode, questid, dailycode)
    local player = getPlayer();
    local prog = player:getModData().missionProgress;
    local worldevent = SF_MissionPanel.instance:getWorldInfo(identity);
    local squaretag = worldevent.square;
    local event = {identity = identity, dialoguecode = dialoguecode, quest = questid, dailycode = dailycode};

    if prog.WorldEvent[squaretag] then
        SF_MissionPanel.instance:removeWorldEvent(squaretag);
    end

    prog.WorldEvent[squaretag] = event;

    local squareTable = luautils.split(squaretag, "x");
    local x, y, z = tonumber(squareTable[1]), tonumber(squareTable[2]), tonumber(squareTable[3]);
    local square = getCell():getGridSquare(x, y, z);
    local marker
    if square then
        if string.find(string.lower(dialoguecode), "complete") then
            marker = getIsoMarkers():addIsoMarker({}, {"media/textures/Complete_Marker.png"}, square, 1, 1, 1, false, false);
        else
            marker = getIsoMarkers():addIsoMarker({}, {"media/textures/Test_Marker.png"}, square, 1, 1, 1, false, false);
        end
        marker:setDoAlpha(false);
        marker:setAlphaMin(0.8);
        marker:setAlpha(1.0);
        prog.WorldEvent[squaretag].marker = marker;
        SF_MissionPanel.instance.needsBackup = true;
    end
end

function SF_MissionPanel.Commands.playersay(entry)
	local player = getPlayer();
	local text = getText(entry);
	player:Say(text);
end

function SF_MissionPanel.Commands.clickevent(squareaddress, actiondata, commands)
    local player = getPlayer();
    local prog = player:getModData().missionProgress;
    local squareTable = luautils.split(squareaddress, ":");
    local convertedaction = actiondata:gsub(":", ";");
    local convertedlist = commands:gsub(":", ";");
    local squareCoord = luautils.split(squareTable[1], "x");
    local x,y,z = tonumber(squareCoord[1]), tonumber(squareCoord[2]), tonumber(squareCoord[3]);
    local square = getCell():getGridSquare(x,y,z);
    local marker;
    if square then
        marker = getIsoMarkers():addIsoMarker({}, {"media/textures/worldclickevent.png"}, square, 1, 1, 1, false, false);
        marker:setDoAlpha(false);
        marker:setAlphaMin(0.8);
        marker:setAlpha(1.0);
    end
    local event = {square = squareTable[1], address = squareTable[2], actiondata = convertedaction, commands = convertedlist, marker = marker};
    prog.ClickEvent[squareTable[1]] = event;
    SF_MissionPanel.instance.needsBackup = true;
end

function SF_MissionPanel.Commands.removeclickevent(address)
    local player = getPlayer();
    local prog = player:getModData().missionProgress;
    if not prog or not prog.ClickEvent then return end
    for k2,event in pairs(prog.ClickEvent) do
        if event.address and event.address == address then
            if event.marker then
                event.marker:remove();
            end
            prog.ClickEvent[k2] = nil;
            SF_MissionPanel.instance.needsBackup = true;
            break;
        end
    end
end

-- super funzione per rimuovere coattamente una quest e tutte le relative sottofunzioni aggiunte (se presenti)
function SF_MissionPanel.Commands.removequest(questid)
    local player = getPlayer();
    local prog = player:getModData().missionProgress;
    local currentTasks = prog.Category2
    local clickEvents = prog.ClickEvent;
    local worldEvents = prog.WorldEvent;
    local actionEvents = prog.ActionEvent;
    local done = false

    -- Helper function per rimuovere WorldEvent by dialoguecode
    local function removeWorldEventByDialogue(condition)
        if not worldEvents then return end
        for k, v in pairs(worldEvents) do
            if v.dialoguecode == condition then
                if worldEvents[k].marker then
                    worldEvents[k].marker:remove();
                end
                worldEvents[k] = nil
                break;
            end
        end
    end

    -- Helper function per rimuovere ClickEvent by address
    local function removeClickEventByAddress(address)
        if not clickEvents then return end
        for k2, event in pairs(clickEvents) do
            if event.address and event.address == address then
                clickEvents[k2] = nil
                break;
            end
        end
    end

    if #currentTasks > 0 then
        for i = #currentTasks, 1, -1 do
            if currentTasks[i].guid == questid then
                local task = currentTasks[i]
                if task then
                    -- rimozione di eventuali clickevent degli obiettivi (se presenti)
                    if task.objectives and #task.objectives > 0 then
                        for k=1,#task.objectives do
                            local objective = task.objectives[k];
                            if objective.oncompleted then
                                local oncompletedTable = luautils.split(objective.oncompleted, ";");
                                for j = 1, #oncompletedTable do
                                    if oncompletedTable[j] == "removeclickevent" then
                                        removeClickEventByAddress(oncompletedTable[j + 1])
                                    elseif oncompletedTable[j] == "unlockworldevent" then
                                        removeWorldEventByDialogue(oncompletedTable[j + 2])
                                    elseif oncompletedTable[j] == "clickevent" then
                                        removeClickEventByAddress(oncompletedTable[j + 2])
                                    end
                                end
                            end
                            if objective.onobtained then
                                local onObtainedTable = luautils.split(objective.onobtained, ";");
                                for j = 1, #onObtainedTable do
                                    if onObtainedTable[j] == "unlockworldevent" then
                                        removeWorldEventByDialogue(onObtainedTable[j + 2])
                                    elseif onObtainedTable[j] == "clickevent" then
                                        removeClickEventByAddress(onObtainedTable[j + 2])
                                    end
                                end
                            end
                        end
                    end
                    if task.unlocks then
                        local convertedcondition = task.unlocks:gsub(":", ";");
                        local unlocksTable = luautils.split(convertedcondition, ";");
                        for j = 1, #unlocksTable do
                            if unlocksTable[j] == "killzombies" then
                                if actionEvents and #actionEvents > 0 then
                                    for a=#actionEvents,1,-1 do
                                        local commands = luautils.split(actionEvents[a].commands, ";");
                                        if actionEvents[a].condition == "killzombies" and commands[2] == task.guid then
                                            table.remove(actionEvents, a);
                                            break;
                                        end
                                    end
                                end
                            elseif unlocksTable[j] == "unlockworldevent" then
                                removeWorldEventByDialogue(unlocksTable[j + 2])
                            elseif unlocksTable[j] == "clickevent" then
                                removeClickEventByAddress(unlocksTable[j + 2])
                            end
                        end
                    end
                    if task.onobtained then
                        local onObtainedTable = luautils.split(task.onobtained, ";");
                        for j = 1, #onObtainedTable do
                            if onObtainedTable[j] == "unlockworldevent" then
                                removeWorldEventByDialogue(onObtainedTable[j + 2])
                            end
                        end
                    end
                    -- check sullo status della quest, se COMPLETED viene spostato nella categoria 1
                    if task.status == "Completed" then
                        table.insert(prog.Category1, task);
                    end
                    -- rimozione coatta dalle quest attive
                    table.remove(currentTasks, i);
                    done = true;
                end
                break
            end
        end
    end
    if done then
        SF_MissionPanel.instance:triggerUpdate()
        SF_MissionPanel.instance.needsBackup = true;
    end
end

function SF_MissionPanel.Commands.randomcodedworldfrompool(dailycode, tablename1, npcname)
    local poolTable = SFQuest_Database.RandomEventPool[tablename1][npcname];
    if not poolTable then
        print("SOUL QUEST SYSTEM - Pool table not found: " .. tablename1 .. " for npc: " .. npcname);
        return
    end
    local player = getPlayer();
    local prog = player:getModData().missionProgress;
    local random = ZombRand(1, #poolTable + 1);
    local randompick = luautils.split(poolTable[random], ";");
    if not prog.LastDailyCompleted then
        prog.LastDailyCompleted = {};
    end
    local lastDailyCompleted = prog.LastDailyCompleted;
    -- se la poolTable ha solo 1 quest non darebbe più quest quindi controlliamo che la poolTable è maggiore di 1
    if #poolTable > 1 and lastDailyCompleted[dailycode] and randompick[3] == lastDailyCompleted[dailycode] then
        SF_MissionPanel.Commands.randomcodedworldfrompool(dailycode, tablename1, npcname)
        return
    else
        lastDailyCompleted[dailycode] = randompick[3]
    end
    SF_MissionPanel.instance:runCommand("unlockworldevent", randompick[1], randompick[2], randompick[3], dailycode)
end

function SF_MissionPanel.Commands.removemannequin(squaretag)
	if SFQuest_Database.MannequinPool[squaretag] then
		SFQuest_Database.MannequinPool[squaretag].removed = true;
	end
end

function SF_MissionPanel.Commands.revealobjective(guid, index)
	local quest = SF_MissionPanel.instance:getActiveQuest(guid);
	if quest and quest.objectives and  quest.objectives[index] then
		if quest.objectives[index].hidden then
			quest.objectives[index].hidden = nil;
			SF_MissionPanel.instance:setLists();
			SF_MissionPanel.instance.needsUpdate = true;
			SF_MissionPanel.instance.needsBackup = true;
		end
	end
end

function SF_MissionPanel.Commands.unlockdaily(daily)
    local player = getPlayer();
    local prog = player:getModData().missionProgress;
    if not prog or not prog.DailyEvent then
        print("SOUL QUEST SYSTEM - " .. player:getUsername() .. " did not have a proper Daily Event table set.");
        return
    end
    local t0 = SF_MissionPanel:getStartingHour();
    local serverTime = getGameTime():getWorldAgeHours() + t0;
    local lastRoll = math.floor(serverTime / (24 * (daily.frequency or 1)));
    local dailyTable = { dailycode = daily.dailycode, condition = daily.condition, commands = daily.commands, days = lastRoll, frequency = daily.frequency };
    table.insert(prog.DailyEvent, dailyTable);
    SF_MissionPanel.instance.needsBackup = true;
end

function SF_MissionPanel.Commands.unlockroom(squaretag, commandslist)
    local player = getPlayer();
    local prog = player:getModData().missionProgress;
    local convertedlist = commandslist:gsub(":", ";");
    if not prog.Rooms[squaretag] then
        prog.Rooms[squaretag] = {};
    end
    table.insert(prog.Rooms[squaretag], convertedlist);
    SF_MissionPanel.instance.needsBackup = true;
end

function SF_MissionPanel.Commands.unlocktimer(guid)
    local player = getPlayer();
    local prog = player:getModData().missionProgress;
    if not prog or not prog.Timers then return end
    local timer = SF_MissionPanel:getTimer(guid)
    local agedHours = getGameTime():getWorldAgeHours();
    local timeMod = timer.timermin;
    if not timer.timermin == timer.timermax then
        timeMod = ZombRandFloat(timer.timermin, timer.timermax);
    end
    local finalTime = agedHours + timeMod;
    local timeTable = {guid = timer.guid, command = timer.command, commands = timer.commands, sound = timer.sound, timer = finalTime};
    table.insert(prog.Timers, timeTable);
    SF_MissionPanel.instance.needsBackup = true;
end

function SF_MissionPanel.Commands.updateobjectivetext(guid, index, text)
	local quest = SF_MissionPanel.instance:getActiveQuest(guid);
	if quest and quest.objectives and  quest.objectives[index] then
		quest.objectives[index].text = text;
		SF_MissionPanel.instance.needsUpdate = true;
		SF_MissionPanel.instance.needsBackup = true;
	end
end

-- WIP
-- function SF_MissionPanel.Commands.unlockdaily(daily)
--     local player = getPlayer();
--     if not player:getModData().missionProgress.DailyEvent then
--         print("SOUL QUEST SYSTEM - " .. player:getUsername() .. " did not have a proper Daily Event table set.");
--         return
--     end
    
--     -- Se usiamo SFQuest_Calendar e days è diverso da 0, potremmo convertirlo
--     -- in un timestamp reale. Ma se days è 0, lo lasciamo come 0 per indicare
--     -- "disponibile immediatamente"
--     local initialDays = daily.days
    
--     -- Opzionale: se vuoi convertire valori di days non-zero in timestamp
--     if initialDays ~= 0 then
--         local currentTime = SFQuest_Calendar.getStarTime()
--         SFQuest_Calendar.setExpectedDateInSecond(currentTime)
--         SFQuest_Calendar.setWaitingOfDays(initialDays)
--         initialDays = SFQuest_Calendar.getExpectedDateInSecond()
--     end
    
--     local dailyTable = { 
--         dailycode = daily.dailycode, 
--         condition = daily.condition, 
--         commands = daily.commands, 
--         days = initialDays,
--         frequency = daily.frequency 
--     };
    
--     table.insert(player:getModData().missionProgress.DailyEvent, dailyTable);
--     SF_MissionPanel.instance.needsBackup = true;
-- end

return SF_MissionPanel.Commands
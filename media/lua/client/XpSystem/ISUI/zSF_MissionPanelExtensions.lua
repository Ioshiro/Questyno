require "XpSystem/ISUI/SFQuest_MissionPanel"
local SFQuest_Utils = require "utils/SFQuest_Utils"
local SFQuest_Calendar = require("utils/SFQuest_Calendar")

--[[ ]]
--SF_MissionPanel = SF_MissionPanel
SF_MissionPanel.Commands = SF_MissionPanel.Commands or {};
SF_MissionPanel.Events = {};
SF_MissionPanel.EventsRegistered = false
--------------------------------------------------------------------------------------------------------
-- Local functions, usually used to check certain items' conditions

function SF_MissionPanel.Events.OnZombieDead(zombie)
    local player = getPlayer()
    if not player:getModData().missionProgress.ActionEvent then
        Events.OnZombieDead.Remove(SF_MissionPanel.Events.OnZombieDead)
        SF_MissionPanel.EventsRegistered = false
        return
    end
    local attackedBy = zombie:getAttackedBy()
    if player:isDriving() then return end
    if attackedBy ~= player then return end
    if not instanceof(attackedBy, "IsoPlayer") then return end

    -- Ottieni tierLevel e zoneName attuali
    local currentTierLevel, currentZoneName = checkZone()

    local actionevent = player:getModData().missionProgress.ActionEvent;
    for i = #actionevent, 1, -1 do
        local eventData = actionevent[i]
        local condition = luautils.split(eventData.condition, ";")

        if condition[1] == "killzombies" then
            local canIncrement = true

            -- Se è impostata una tierzone, controlla se coincide con quella attuale
            if eventData.tierzone and eventData.tierzone ~= currentZoneName then
                canIncrement = false
            end

            -- Se è impostato un tierlevel, controlla se coincide con quello attuale
            if eventData.tierlevel and eventData.tierlevel > currentTierLevel then
                canIncrement = false
            end

            if canIncrement then
                eventData.kills = (eventData.kills or 0) + 1
                if eventData.kills >= eventData.goal then
                    local commandTable = luautils.split(eventData.commands, ";")
                    local questName = commandTable[3]:gsub("^SFQuest_", ""):gsub("_Complete$", "")
                    questName = getText("IGUI_SFQuest_"..questName.."_Text")
                    player:Say(getText("IGUI_SFQuest_Questyno_ZombieCompleted", eventData.goal, questName), 1.000, 0.000, 0.000, UIFont.Small, 0, "default")
                    SF_MissionPanel.instance:readCommandTable(commandTable)
                    table.remove(actionevent, i)
                end
                SF_MissionPanel.instance.needsBackup = true
                SF_MissionPanel.instance:triggerUpdate() --temp
            end
        end
    end
    if #actionevent == 0 and SF_MissionPanel.EventsRegistered then
        Events.OnZombieDead.Remove(SF_MissionPanel.Events.OnZombieDead)
        SF_MissionPanel.EventsRegistered = false
        return
    end
end

function SF_MissionPanel.Commands.actionevent(condition, commandslist)
    -- condition example: killzombies:2000:tierzone:Louisville;
    -- or 
    -- condition example: killzombies:1500:tierlevel:2;
    -- commandslist example: unlockworldevent:Questyno_AlexMercer:SFQuest_Questyno_AlexMercer2_Complete:placeholder:updatequeststatus:Questyno_AlexMercer2:Obtained
	-- local convertedcondition = condition:gsub(":", ";");
	local checkcondition = luautils.split(condition, ":");
	if checkcondition[1] == "killzombies" then
        local player = getPlayer();
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
	    table.insert(player:getModData().missionProgress.ActionEvent, {
            kills = 0,
            goal = goal,
            tierzone = tierzone,
            tierlevel = tierlevel,
            condition = "killzombies",
            commands = convertedCommands
        })
        -- Registriamo l'evento una sola volta
        if not SF_MissionPanel.EventsRegistered then
            Events.OnZombieDead.Add(SF_MissionPanel.Events.OnZombieDead);
            SF_MissionPanel.EventsRegistered = true;
        end
        SF_MissionPanel.instance.needsBackup = true;
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
	local worldevent = SF_MissionPanel.instance:getWorldInfo(identity);
	local squaretag = worldevent.square;
	local event = {identity = identity, dialoguecode = dialoguecode, quest = questid, dailycode = dailycode};

    --if already exists a worldevent in that square then remove it
    if player:getModData().missionProgress.WorldEvent[squaretag] then
        SF_MissionPanel.instance:removeWorldEvent(squaretag);
    end

	player:getModData().missionProgress.WorldEvent[squaretag] = event;
	
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
		player:getModData().missionProgress.WorldEvent[squaretag].marker = marker;
		SF_MissionPanel.instance.needsBackup = true;
	end
end

function SF_MissionPanel.Commands.clickevent(squareaddress, actiondata, commands)
	local player = getPlayer();
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
    player:getModData().missionProgress.ClickEvent[squareTable[1]] = event;
	SF_MissionPanel.instance.needsBackup = true;
end

function SF_MissionPanel.Commands.removeclickevent(address)
	local player = getPlayer();
	if not player:getModData().missionProgress.ClickEvent then return end
	for k2,event in pairs(player:getModData().missionProgress.ClickEvent) do
		if event.address and event.address == address then
            if event.marker then
                event.marker:remove();
            end
			player:getModData().missionProgress.ClickEvent[k2] = nil;
			SF_MissionPanel.instance.needsBackup = true;
			break;
		end
	end
end

-- super funzione per rimuovere coattamente una quest e tutte le relative sottofunzioni aggiunte (se presenti) - WIP
function SF_MissionPanel.Commands.removequest(questid)
    local player = getPlayer();
    local currentTasks = player:getModData().missionProgress.Category2
    local done = false
    if #currentTasks > 0 then
        for i = #currentTasks, 1, -1 do
            if currentTasks[i].guid == questid then
                local task = currentTasks[i]
                if task then
                    -- rimozione di eventuali clickevent degli obiettivi (se presenti)
                    if task.objectives and #task.objectives > 0 then
                        for k=1,#task.objectives do
                            if task.objectives[k].oncompleted then
                                local oncompletedTable = luautils.split(task.objectives[k].oncompleted, ";");
                                for j = 1, #oncompletedTable do
                                    if oncompletedTable[j] == "removeclickevent" then
                                        local removeClickEventValue = oncompletedTable[j + 1]
                                        for k2,event in pairs(player:getModData().missionProgress.ClickEvent) do
                                            if event.address and event.address == removeClickEventValue then
                                                player:getModData().missionProgress.ClickEvent[k2] = nil
                                                break;
                                            end
                                        end
                                    end
                                    if oncompletedTable[j] == "unlockworldevent" then
                                        local condition = oncompletedTable[j+2]
                                        if player:getModData().missionProgress.WorldEvent then
                                            for k, v in pairs(player:getModData().missionProgress.WorldEvent) do
                                                if v.dialoguecode == condition then
                                                    if player:getModData().missionProgress.WorldEvent[k].marker then
                                                        player:getModData().missionProgress.WorldEvent[k].marker:remove();
                                                    end
                                                    player:getModData().missionProgress.WorldEvent[k] = nil
                                                    break;
                                                end
                                            end
                                        end
                                    end
                                    if oncompletedTable[j] == "clickevent" then
                                        local removeClickEventValue = oncompletedTable[j + 2]
                                        for k2,event in pairs(player:getModData().missionProgress.ClickEvent) do
                                            if event.address and event.address == removeClickEventValue then
                                                player:getModData().missionProgress.ClickEvent[k2] = nil
                                                break;
                                            end
                                        end
                                    end
                                end
                            end
                            if task.objectives[k].onobtained then
                                local onObtainedTable = luautils.split(task.objectives[k].onobtained, ";");
                                if #onObtainedTable > 0 then
                                    for j = 1, #onObtainedTable do
                                        if onObtainedTable[j] == "unlockworldevent" then
                                            local condition = onObtainedTable[j+2]
                                            if player:getModData().missionProgress.WorldEvent then
                                                for k, v in pairs(player:getModData().missionProgress.WorldEvent) do
                                                    if v.dialoguecode == condition then
                                                        if player:getModData().missionProgress.WorldEvent[k].marker then
                                                            player:getModData().missionProgress.WorldEvent[k].marker:remove();
                                                        end
                                                        player:getModData().missionProgress.WorldEvent[k] = nil
                                                        break;
                                                    end
                                                end
                                            end
                                        end
                                        if onObtainedTable[j] == "clickevent" then
                                            local removeClickEventValue = onObtainedTable[j + 2]
                                            for k2,event in pairs(player:getModData().missionProgress.ClickEvent) do
                                                if event.address and event.address == removeClickEventValue then
                                                    player:getModData().missionProgress.ClickEvent[k2] = nil
                                                    break;
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                    if task.unlocks then
                        local convertedcondition = task.unlocks:gsub(":", ";");
                        local unlocksTable = luautils.split(convertedcondition, ";");
                        if #unlocksTable > 0 then
                            for j = 1, #unlocksTable do
                                if unlocksTable[j] == "killzombies" then
                                    if player:getModData().missionProgress.ActionEvent and #player:getModData().missionProgress.ActionEvent > 0 then
                                        local actionevent = player:getModData().missionProgress.ActionEvent; 
                                        for a=#actionevent,1,-1 do -- TODO: fix this with actionevent[a].condition == "killzombies" and using luautils.stringStarts
                                            local commands = luautils.split(actionevent[a].commands, ";");
                                            if commands[1] == "killzombies" and commands[2] == task.guid then                                                        
                                                table.remove(player:getModData().missionProgress.ActionEvent, a);
                                                break;
                                            end
                                        end
                                    end
                                end
                                if unlocksTable[j] == "unlockworldevent" then
                                    local condition = unlocksTable[j+2]
                                    if player:getModData().missionProgress.WorldEvent then
                                        for k, v in pairs(player:getModData().missionProgress.WorldEvent) do
                                                if v.dialoguecode == condition then
                                                if player:getModData().missionProgress.WorldEvent[k].marker then
                                                    player:getModData().missionProgress.WorldEvent[k].marker:remove();
                                                end
                                                player:getModData().missionProgress.WorldEvent[k] = nil
                                                break;
                                            end
                                        end
                                    end
                                end
                                if unlocksTable[j] == "clickevent" then
                                    local removeClickEventValue = unlocksTable[j + 2]
                                    for k2,event in pairs(player:getModData().missionProgress.ClickEvent) do
                                        if event.address and event.address == removeClickEventValue then
                                            player:getModData().missionProgress.ClickEvent[k2] = nil
                                            break;
                                        end
                                    end
                                end
                            end
                        end
                    end
                    if task.onobtained then
                        local onObtainedTable = luautils.split(task.onobtained, ";");
                        if #onObtainedTable > 0 then
                            for j = 1, #onObtainedTable do
                                if onObtainedTable[j] == "unlockworldevent" then
                                    local condition = onObtainedTable[j+2]
                                    if player:getModData().missionProgress.WorldEvent then
                                        for k, v in pairs(player:getModData().missionProgress.WorldEvent) do
                                            if v.dialoguecode == condition then
                                                if player:getModData().missionProgress.WorldEvent[k].marker then
                                                    player:getModData().missionProgress.WorldEvent[k].marker:remove();
                                                end
                                                player:getModData().missionProgress.WorldEvent[k] = nil
                                                break;
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                    -- check sullo status della quest, se COMPLETED viene spostato nella categoria 1
                    if task.status == "Completed" then
                        table.insert(player:getModData().missionProgress.Category1, task);
                    end
                    -- rimozione coatta dalle quest attive xD
                    table.remove(player:getModData().missionProgress.Category2, i);
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
        print("zSOUL QUEST SYSTEM - Pool table not found: " .. tablename1 .. "for npc: " .. npcname);
        return
    end
	local random = ZombRand(1, #poolTable + 1);
	local randompick = luautils.split(poolTable[random], ";");
    local lastDailyCompleted = getPlayer():getModData().missionProgress.LastDailyCompleted;
    if not getPlayer():getModData().missionProgress.LastDailyCompleted then
        getPlayer():getModData().missionProgress.LastDailyCompleted = {};
    end
    -- avoid last daily to be drawn again from the pool of quests of this dailycode
    -- randompick[3] is the guid of the quest
    -- lastDailyCompleted[dailycode] is the guid of the last daily quest of this dailycode
    -- se la poolTable ha solo 1 quest non darebbe più quest (tipo Lincoln Reed) quindi controlliamo che la poolTable è maggiore di 1
    if #poolTable > 1 and lastDailyCompleted[dailycode] and randompick[3] == lastDailyCompleted[dailycode] then
        print("zSOUL QUEST SYSTEM - Last daily quest already drawn from pool of quests of daily code: " .. dailycode);
        SF_MissionPanel.Commands.randomcodedworldfrompool(dailycode, tablename1, npcname)
        return
    else
        lastDailyCompleted[dailycode] = randompick[3]
        -- aggiunge la daily in una tabella temporanea che si assicura di non farla ripescare al prossimo giro
    end
	SF_MissionPanel.instance:runCommand("unlockworldevent", randompick[1], randompick[2], randompick[3], dailycode)
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

function SF_MissionPanel:checkDefaults()
    if not self.player:getModData().missionProgress then return end

    if self.player:getModData().missionProgress.Factions then
        for i, v in ipairs(self.player:getModData().missionProgress.Factions) do
            -- ATTENZIONE: le due liste devono essere ordinate nello stesso ordine, e bisogna usare ipairs per le table indicizzate!
            if v.factioncode == SFQuest_Database.FactionPool[i].factioncode then
                if v.tierlevel > 1 then
                    local tier = SFQuest_Database.FactionPool[i].tiers[v.tierlevel];
                    v.tiername = tier.tiername
                    v.tiercolor = tier.barcolor
                end
            end
        end
    end

    if self.player:getModData().missionProgress.DailyEvent then
        for i, v in ipairs(self.player:getModData().missionProgress.DailyEvent) do
            -- ATTENZIONE: le due liste devono essere ordinate nello stesso ordine, e bisogna usare ipairs per le table indicizzate!

            if v.dailycode == SFQuest_Database.DailyEventPool[i].dailycode then
                v.condition = SFQuest_Database.DailyEventPool[i].condition
            end
        end
    end
end

-- override SF_MissionPanel:readCommandTable(commandtable) to add removeitem
local base_SF_MissionPanel_readCommandTable = SF_MissionPanel.readCommandTable;
function SF_MissionPanel:readCommandTable(commandTable, questName)
    if false then
        base_SF_MissionPanel_readCommandTable(self, commandTable);
    end
    local player = getPlayer();
    local count = 1;

    while commandTable[count] do
        if commandTable[count] == "actionevent" then
            SF_MissionPanel.instance:runCommand("actionevent", commandTable[count + 1], commandTable[count + 2]);
            count = count + 3;
        elseif commandTable[count] == "additem" then
            SF_MissionPanel.instance:runCommand("additem", commandTable[count + 1], tonumber(commandTable[count + 2]));
            count = count + 3;
        elseif commandTable[count] == "addmannequin" then
            SF_MissionPanel.instance:runCommand("addmannequin", commandTable[count + 1]);
            count = count + 2;
        elseif commandTable[count] == "addserverpoints" then
            SF_MissionPanel.instance:runCommand("addserverpoints", tonumber(commandTable[count + 1]));
            count = count + 2;
        elseif commandTable[count] == "removeitem" then
            SF_MissionPanel.instance:runCommand("removeitem", commandTable[count + 1], tonumber(commandTable[count + 2]), questName);
            count = count + 3;
        elseif commandTable[count] == "addreputation" then
            SF_MissionPanel.instance:runCommand("addreputation", commandTable[count + 1],
                tonumber(commandTable[count + 2]));
            count = count + 3;
        elseif commandTable[count] == "changefrequency" then
            SF_MissionPanel.instance:runCommand("changefrequency", commandTable[count + 1],
                tonumber(commandTable[count + 2]));
            count = count + 3;
        elseif commandTable[count] == "call" then
            local callguid = commandTable[count + 1];
            table.insert(player:getModData().missionProgress.Calls, callguid)
            self.needsBackup = true;
            count = count + 2;
        elseif commandTable[count] == "clickevent" then
            SF_MissionPanel.instance:runCommand("clickevent", commandTable[count + 1], commandTable[count + 2],
                commandTable[count + 3]);
            count = count + 4;
        elseif commandTable[count] == "completequest" then
            local guid = commandTable[count + 1];
            SF_MissionPanel.instance:completeQuest(player, guid);
            count = count + 2;
        elseif commandTable[count] == "delivery" then
            local guid = commandTable[count + 1];

            --if task.update then guid = task.task end;
            --player:getModData().missionProgress.Delivery[task.deliverysquare] = guid;

            self.needsBackup = true;
            count = count + 2;
        elseif commandTable[count] == "lore" then
            SF_MissionPanel.instance:updateLore(commandTable[count + 1], { commandTable[count + 2] });
            count = count + 3;
        elseif commandTable[count] == "playersay" then
            SF_MissionPanel.instance:runCommand("playersay", commandTable[count + 1]);
            count = count + 2;
        elseif commandTable[count] == "quest" then

        elseif commandTable[count] == "removeclickevent" then
            SF_MissionPanel.instance:runCommand("removeclickevent", commandTable[count + 1]);
            count = count + 2;
        elseif commandTable[count] == "randomcodedworldfrompool" then
            SF_MissionPanel.instance:runCommand("randomcodedworldfrompool", commandTable[count + 1],
                commandTable[count + 2], commandTable[count + 3]);
            count = count + 4;
        elseif commandTable[count] == "removemannequin" then
            SF_MissionPanel.instance:runCommand("removemannequin", commandTable[count + 1]);
            count = count + 2;
        elseif commandTable[count] == "revealobjective" then
            SF_MissionPanel.instance:runCommand("revealobjective", commandTable[count + 1],
                tonumber(commandTable[count + 2]));
            count = count + 3;
        elseif commandTable[count] == "timer" or commandTable[count] == "unlocktimer" then
            SF_MissionPanel.instance:runCommand("unlocktimer", commandTable[count + 1]);
            count = count + 2;
        elseif commandTable[count] == "updatequeststatus" then
            SF_MissionPanel.instance:updateQuestStatus(commandTable[count + 1], commandTable[count + 2]);
            count = count + 3;
        elseif commandTable[count] == "unlockquest" then
            SF_MissionPanel.instance:runCommand("unlockquest", commandTable[count + 1]);
            count = count + 2;
        elseif commandTable[count] == "updateobjective" then
            SF_MissionPanel.instance:updateObjective(commandTable[count + 1], tonumber(commandTable[count + 2]),
                commandTable[count + 3]);
            count = count + 4;
        elseif commandTable[count] == "updateobjectivetext" then
            SF_MissionPanel.instance:runCommand("updateobjectivetext", commandTable[count + 1],
                tonumber(commandTable[count + 2]), commandTable[count + 3]);
            count = count + 4;
        elseif commandTable[count] == "worldevent" or commandTable[count] == "unlockworldevent" then
            SF_MissionPanel.instance:runCommand("unlockworldevent", commandTable[count + 1], commandTable[count + 2],
                commandTable[count + 3]);
            count = count + 4;
        else
            print("SOUL QUEST SYSTEM - Unrecognized command from a command table: " .. commandTable[count]);
            return
        end
    end
end

local base_SF_MissionPanel_checkQuestForCompletionByType = SF_MissionPanel.checkQuestForCompletionByType;

function SF_MissionPanel:checkQuestForCompletionByType(type, entry, newStatus)
    print("zSOUL QUEST SYSTEM - checkQuestForCompletionByType triggered")
    
    -- Se si vuole usare la funzione base, decommentare questa riga
    -- base_SF_MissionPanel_checkQuestForCompletionByType(self, type, entry, newStatus);
    
    local status = newStatus or "Obtained";
    
    -- Verifico se esiste il progresso delle missioni
    if not self.player:getModData().missionProgress or not self.player:getModData().missionProgress.Category2 then
        return
    end
    
    local currentTasks = self.player:getModData().missionProgress.Category2
    if #currentTasks == 0 then
        return
    end
    
    -- Funzione per processare obiettivi
    local function processObjectives(task)
        if not task.objectives or #task.objectives == 0 then
            return
        end
        
        for o = 1, #task.objectives do
            local objective = task.objectives[o];
            if objective.needsitem and objective.status ~= "Completed" then
                local quantitycheck = SF_MissionPanel.instance:checkItemQuantity(objective.needsitem);
                if quantitycheck then
                    local guid = task.guid;
                    SF_MissionPanel.instance:updateObjective(guid, o, status)
                    SF_MissionPanel.instance:triggerUpdate()
                end
            end
        end
    end
    
    -- Funzione per gestire gli eventi mondiali quando un oggetto non è più valido
    local function handleWorldEvent(task)
        if task.status ~= "Obtained" or not task.onobtained then
            return
        end
        
        local onObtainedTable = luautils.split(task.onobtained, ";");
        if #onObtainedTable == 0 then
            return
        end
        
        for j = 1, #onObtainedTable do
            if onObtainedTable[j] == "unlockworldevent" then
                local condition = onObtainedTable[j+2]
                if not self.player:getModData().missionProgress.WorldEvent then
                    return
                end
                
                for k, v in pairs(self.player:getModData().missionProgress.WorldEvent) do
                    if v.dialoguecode == condition then
                        -- Rimuovo il marker se esiste
                        if self.player:getModData().missionProgress.WorldEvent[k].marker then
                            self.player:getModData().missionProgress.WorldEvent[k].marker:remove();
                        end
                        
                        -- Rimuovo l'evento e resetto lo stato della missione
                        self.player:getModData().missionProgress.WorldEvent[k] = nil
                        task.status = nil
                        
                        -- Notifico il giocatore
                        local questName = getText(task.text)
                        local message = getText("IGUI_SFQuest_Questyno_NotCompleted", questName)
                        self.player:Say(message, 1.000, 0.000, 0.000, UIFont.Small, 0, "default")
                        
                        self.needsBackup = true
                        SF_MissionPanel.instance:triggerUpdate()
                        break;
                    end
                end
            end
        end
    end
    
    -- Funzione per gestire l'ottenimento di un oggetto
    local function handleItemObtained(task)
        if task.status ~= status then
            task.status = status;
            SF_MissionPanel.instance:triggerUpdate()
            
            -- Notifico il giocatore
            local questName = getText(task.text)
            local message = getText("IGUI_SFQuest_Questyno_Completed", questName)
            self.player:Say(message, 1.000, 0.000, 0.000, UIFont.Small, 0, "default")
            
            -- Eseguo azioni post-ottenimento
            if status == "Obtained" and task.onobtained then
                local commandTable = luautils.split(task.onobtained, ";");
                SF_MissionPanel.instance:readCommandTable(commandTable, task.text);
            end
        end
        
        -- Gestisco il completamento della missione
        if status == "Completed" then
            local guid = task.guid;
            SF_MissionPanel.instance:completeQuest(getPlayer(), guid);
            if task.ondone then
                local commandTable = luautils.split(task.ondone, ";");
                SF_MissionPanel.instance:readCommandTable(commandTable);
            end
        end
    end
    
    -- Gestisco la ricerca generica per tutti gli oggetti
    if not entry then
        for i = 1, #currentTasks do
            local task = currentTasks[i];
            
            if type == "item" and task.needsitem then
                local quantitycheck = SF_MissionPanel.instance:checkItemQuantity(task.needsitem)
                
                if quantitycheck then
                    handleItemObtained(task)
                else
                    -- Se l'oggetto non è più valido, resetto la missione
                    handleWorldEvent(task)
                end
            end
            
            -- Controllo gli obiettivi della missione
            if type == "item" and task.objectives then
                processObjectives(task)
            end
        end
    else
        -- Gestisco la ricerca per un oggetto specifico
        for i = 1, #currentTasks do
            local task = currentTasks[i];
            
            if type == "item" and task.needsitem then
                local needsTable = luautils.split(task.needsitem, ";");
                local itemscript = needsTable[1];
                local quantity = tonumber(needsTable[2]) or 1;
                local isTag = false;
                
                if luautils.stringStarts(needsTable[1], "Tag") or luautils.stringStarts(needsTable[1], "Predicate") then
                    itemscript = luautils.split(itemscript, "#")[2];
                    isTag = true;
                end
                
                if itemscript == entry then
                    task.status = status;
                    SF_MissionPanel.instance:triggerUpdate()
                    
                    if status == "Completed" then
                        local guid = task.guid;
                        SF_MissionPanel.instance:completeQuest(getPlayer(), guid);
                    end
                end
            end
        end
    end
end

function SF_MissionPanel:checkTaskForCompletion(guid)
    local player = self.player or getPlayer();
    
    -- Verifica se esistono dati di missione
    if not player:getModData().missionProgress or not player:getModData().missionProgress.Category2 then
        return
    end
    
    local currentTasks = player:getModData().missionProgress.Category2
    if #currentTasks == 0 then
        return
    end
    
    -- Trova la missione con il GUID specificato
    local taskIndex = nil
    for i = 1, #currentTasks do
        if currentTasks[i].guid and currentTasks[i].guid == guid then
            taskIndex = i
            break
        end
    end
    
    -- Se non troviamo la missione, usciamo
    if not taskIndex then
        return
    end
    
    local task = currentTasks[taskIndex]
    
    -- Funzione per verificare se tutti gli obiettivi sono completati
    local function areObjectivesCompleted(objectives)
        if not objectives or #objectives == 0 then
            return true, nil
        end
        
        local allCompleted = true
        local deliveryIndex = nil
        
        for o = 1, #objectives do
            local objective = objectives[o]
            
            -- Un obiettivo senza stato non è completo
            if not objective.status then
                allCompleted = false
            -- Un obiettivo con needsitem non è completo se non è "Completed"
            elseif objective.needsitem ~= nil and objective.status ~= "Completed" then
                allCompleted = false
            -- Un obiettivo che blocca il completamento non è completo se non è "Completed"
            elseif objective.blockscompletion == true and objective.status ~= "Completed" then
                allCompleted = false
            -- Salvare l'indice dell'obiettivo di consegna se presente
            elseif objective.deliverysquare then
                deliveryIndex = o
            end
        end
        
        return allCompleted, deliveryIndex
    end
    
    -- Verifica se gli obiettivi sono completi
    local completed, deliveryIndex = areObjectivesCompleted(task.objectives)
    
    -- Esegui comandi se gli obiettivi sono completati
    if completed and task.onobjectivescompleted then
        local commandsTable = luautils.split(task.onobjectivescompleted, ";")
        SF_MissionPanel.instance:readCommandTable(commandsTable)
    end
    
    -- Completa la missione se gli obiettivi sono completati e non serve una segnalazione
    if completed and not task.needsreport then
        -- Se c'è un obiettivo di consegna, imposta il suo stato come "Completed"
        if deliveryIndex then
            player:getModData().missionProgress.Category2[taskIndex].objectives[deliveryIndex].status = "Completed"
        end
        
        -- Completa la missione
        SF_MissionPanel:completeQuest(player, guid)
    end
end

function SF_MissionPanel:updateFrequency(dailycode, frequency)
    local player = getPlayer();
    if player:getModData().missionProgress.DailyEvent then
        for i, v in ipairs(player:getModData().missionProgress.DailyEvent) do
            if v.dailycode == dailycode then
                v.frequency = frequency
                self.needsBackup = true
                SF_MissionPanel.instance:triggerUpdate()
                break
            end
        end
    end
end  

--PredicateFullDrainable#Base.PropaneTank;2;
function SF_MissionPanel:checkItemQuantity(stringforcheck)
	local needsTable = luautils.split(stringforcheck, ";");
	local itemscript = needsTable[1]; -- PredicateFullDrainable#Base.PropaneTank
	local quantity = tonumber(needsTable[2]) or 1;
	local carrying;
	local isTag;
    local isPredicate;
	local predicateValue;

     -- Verifica se itemscript inizia con 'Tag' o 'Predicate' e imposta i booleani
     if luautils.stringStarts(itemscript, "Tag") then
        itemscript = luautils.split(itemscript, "#")[2];
        predicateValue = tonumber(needsTable[3]);
        isTag = true
    end
    if luautils.stringStarts(itemscript, "Predicate") then
        --PredicateFullDrainable#Base.PropaneTank
        itemscript = luautils.split(itemscript, "#")[2]; -- Base.PropaneTank
        predicateValue = tonumber(needsTable[3]) or 0;
        isPredicate = true
    end
    if isTag then
	    if luautils.stringStarts(needsTable[1], "Tag#") then
	    	isTag = true;
	    	carrying = self.player:getInventory():getCountTagRecurse(itemscript);
	    elseif luautils.stringStarts(needsTable[1], "TagPredicateBigFish#") then
	    	isTag = true;
	    	carrying = self.player:getInventory():getCountTagEvalRecurse(itemscript, SFQuest_Utils.predicateBigFish);
	    elseif luautils.stringStarts(needsTable[1], "TagPredicateCondition#") then
	    	isTag = true;
	    	carrying = self.player:getInventory():getCountTagEvalArgRecurse(itemscript, SFQuest_Utils.predicateCondition, SFQuest_Utils.predicateValue);
	    elseif luautils.stringStarts(needsTable[1], "TagPredicateFreshFood#") then
	    	isTag = true;
	    	carrying = self.player:getInventory():getCountTagEvalRecurse(itemscript, SFQuest_Utils.predicateFreshFood);	
	    elseif luautils.stringStarts(needsTable[1], "TagPredicateFullDrainable#") then
	    	isTag = true;
	    	carrying = self.player:getInventory():getCountTagEvalRecurse(itemscript, SFQuest_Utils.predicateFullDrainable);
	    elseif luautils.stringStarts(needsTable[1], "TagPredicateDrainable#") then
	    	isTag = true;
	    	carrying = self.player:getInventory():getCountTagEvalArgRecurse(itemscript, SFQuest_Utils.predicateDrainable, SFQuest_Utils.predicateValue);
        elseif luautils.stringStarts(needsTable[1], "TagPredicateFoodWeight") then
	    	isTag = true;
	    	carrying = self.player:getInventory():getCountTagEvalArgRecurse(itemscript, SFQuest_Utils.predicateFoodWeight, SFQuest_Utils.predicateValue);
        elseif luautils.stringStarts(needsTable[1], "TagPredicateFoodHunger") then
	    	isTag = true;
	    	carrying = self.player:getInventory():getCountTagEvalArgRecurse(itemscript, SFQuest_Utils.predicateFoodHunger, SFQuest_Utils.predicateValue);
        elseif luautils.stringStarts(needsTable[1], "TagPredicateFoodCooked") then
        	isTag = true;
        	carrying = self.player:getInventory():getCountTagEvalRecurse(itemscript, SFQuest_Utils.predicateFoodCooked);
        end
    elseif isPredicate then
        if luautils.stringStarts(needsTable[1], "PredicateBigFish#") then
            carrying = self.player:getInventory():getCountTypeEvalRecurse(itemscript, SFQuest_Utils.predicateBigFish);

        elseif luautils.stringStarts(needsTable[1], "PredicateCondition#") then
            carrying = self.player:getInventory():getCountTypeEvalArgRecurse(itemscript, SFQuest_Utils.predicateCondition, SFQuest_Utils.predicateValue);

        elseif luautils.stringStarts(needsTable[1], "PredicateFreshFood#") then
            carrying = self.player:getInventory():getCountTypeEvalRecurse(itemscript, SFQuest_Utils.predicateFreshFood);    

        elseif luautils.stringStarts(needsTable[1], "PredicateFullDrainable#") then
            carrying = self.player:getInventory():getCountTypeEvalRecurse(itemscript, SFQuest_Utils.predicateFullDrainable);
        elseif luautils.stringStarts(needsTable[1], "PredicateDrainable#") then
            carrying = self.player:getInventory():getCountTypeEvalArgRecurse(itemscript, SFQuest_Utils.predicateDrainable, SFQuest_Utils.predicateValue);

        elseif luautils.stringStarts(needsTable[1], "PredicateFoodWeight") then
            carrying = self.player:getInventory():getCountTypeEvalArgRecurse(itemscript, SFQuest_Utils.predicateFoodWeight, SFQuest_Utils.predicateValue);

        elseif luautils.stringStarts(needsTable[1], "PredicateFoodHunger") then
            carrying = self.player:getInventory():getCountTypeEvalArgRecurse(itemscript, SFQuest_Utils.predicateFoodHunger, SFQuest_Utils.predicateValue);
        elseif luautils.stringStarts(needsTable[1], "PredicateFoodCooked") then
            carrying = self.player:getInventory():getCountTypeEvalRecurse(itemscript, SFQuest_Utils.predicateFoodCooked);
        end
    else
		carrying = self.player:getInventory():getItemCountRecurse(itemscript);
	end
	if quantity <= carrying then
        print("Carrying: " .. carrying .. " Quantity: " .. quantity)
		return true
	end
	return false
end

function SF_MissionPanel.Commands.randomcodedworldfrompool(dailycode, tablename1, npcname)
	local poolTable = SFQuest_Database.RandomEventPool[tablename1][npcname];
    if not poolTable then
        print("zSOUL QUEST SYSTEM - Pool table not found: " .. tablename1 .. "for npc: " .. npcname);
        return
    end
	local random = ZombRand(1, #poolTable + 1);
	local randompick = luautils.split(poolTable[random], ";");
    local lastDailyCompleted = getPlayer():getModData().missionProgress.LastDailyCompleted;
    if not getPlayer():getModData().missionProgress.LastDailyCompleted then
        getPlayer():getModData().missionProgress.LastDailyCompleted = {};
    end
    -- avoid last daily to be drawn again from the pool of quests of this dailycode
    -- randompick[3] is the guid of the quest
    -- lastDailyCompleted[dailycode] is the guid of the last daily quest of this dailycode
    -- se la poolTable ha solo 1 quest non darebbe più quest (tipo Lincoln Reed) quindi controlliamo che la poolTable è maggiore di 1
    if #poolTable > 1 and lastDailyCompleted[dailycode] and randompick[3] == lastDailyCompleted[dailycode] then
        print("zSOUL QUEST SYSTEM - Last daily quest already drawn from pool of quests of daily code: " .. dailycode);
        SF_MissionPanel.Commands.randomcodedworldfrompool(dailycode, tablename1, npcname)
        return
    else
        lastDailyCompleted[dailycode] = randompick[3]
        -- aggiunge la daily in una tabella temporanea che si assicura di non farla ripescare al prossimo giro
    end
	SF_MissionPanel.instance:runCommand("unlockworldevent", randompick[1], randompick[2], randompick[3], dailycode)
end

function SF_MissionPanel:updateQuestStatus(guid, status)
    local player = self.player or getPlayer();
    
    -- Verifica se esistono dati di missione
    if not player:getModData().missionProgress or not player:getModData().missionProgress.Category2 then
        return
    end
    
    local currentTasks = player:getModData().missionProgress.Category2
    if #currentTasks == 0 then
        return
    end
    
    -- Funzione per eseguire i comandi in base allo stato
    local function executeStatusCommands(task, status)
        local commandProperty = nil
        
        if status == "Failed" and task.onfailed then
            commandProperty = task.onfailed
        elseif status == "Completed" and task.ondone then
            commandProperty = task.ondone
        elseif status == "Obtained" and task.onobtained then
            commandProperty = task.onobtained
        end
        
        if commandProperty then
            local commandTable = luautils.split(commandProperty, ";")
            SF_MissionPanel.instance:readCommandTable(commandTable)
        end
    end
    
    -- Cerca la missione con il GUID specificato
    for i = 1, #currentTasks do
        local task = currentTasks[i]
        if task.guid and task.guid == guid then
            -- Aggiorna lo stato della missione
            task.status = status
            
            -- Esegui eventuali comandi basati sul nuovo stato
            executeStatusCommands(task, status)
            
            -- Imposta i flag di aggiornamento e backup
            SF_MissionPanel.instance:triggerUpdate()
            self.needsBackup = true
            
            -- Esci dal ciclo dopo aver trovato e aggiornato la missione
            break
        end
    end
end

-- WIP
-- function SF_MissionPanel.DailyEventRerollExpand()
--     local player = getPlayer()
--     if not player:getModData().missionProgress or not player:getModData().missionProgress.DailyEvent or 
--        #player:getModData().missionProgress.DailyEvent == 0 then
--         return
--     end
    
--     local prog = player:getModData().missionProgress
--     local currentTime = SFQuest_Calendar.getStarTime()
--     local eventTable = prog.DailyEvent
    
--     for d = #eventTable, 1, -1 do
--         local event = eventTable[d]
--         if not event.days then event.days = 0 end
        
--         -- Verifica se è tempo di attivare l'evento
--         local canActivate = (event.days == 0) or (currentTime >= event.days)
        
--         if canActivate and event.condition then
--             local conditionTable = luautils.split(event.condition, ";")
--             if conditionTable[1] == "notmaxedwithcode" and conditionTable[4] == "hasfactiontier" then
--                 local dailycode = conditionTable[2]
--                 local maxed = tonumber(conditionTable[3])
--                 local active = SF_MissionPanel.instance:countActiveQuestsWithCode(dailycode)
--                 local faction = conditionTable[5]
--                 local tier = tonumber(conditionTable[6])
--                 local playerTier = SF_MissionPanel.instance:getReputationTier(faction, player)
                
--                 if active < maxed and tier <= playerTier then
--                     if not prog.WorldEvent or not SF_MissionPanel.instance:hasActiveWorldEventWithCode(dailycode) then
--                         -- Calcola la data di prossima disponibilità (giorni attuali + frequenza)
--                         SFQuest_Calendar.setWaitingOfDays(event.frequency)
--                         event.days = SFQuest_Calendar.getExpectedDateInSecond()
                        
--                         SF_MissionPanel.instance.needsBackup = true
--                         local commandTable = luautils.split(event.commands, ";")
--                         SF_MissionPanel.instance:readCommandTable(commandTable)
--                     end
--                 end
--             end
--         end
--     end
-- end

function SF_MissionPanel.DailyEventRerollExpand() -- da riscrivere con activity calendar lib di Lele xD 
    local player = getPlayer();
    if not player:getModData().missionProgress then return end
    local prog = player:getModData().missionProgress
    if player:getModData().missionProgress.DailyEvent and #player:getModData().missionProgress.DailyEvent > 0 then
        --print("SOUL QUEST SYSTEM - Player has daily events to check.");
        local t0 = SF_MissionPanel:getStartingHour(); --7
        local ageHours = getGameTime():getWorldAgeHours();
        local serverTime = ageHours + t0;
        local eventTable = player:getModData().missionProgress.DailyEvent
        for d = #eventTable, 1, -1 do
            local event = player:getModData().missionProgress.DailyEvent[d];
            local lastRoll = math.floor(serverTime / (24 * (event.frequency or 1)));
            if event.days ~= lastRoll then
                --print("SOUL QUEST SYSTEM - Time for rerolling this daily event.");
                if event.condition then
                    local conditionTable = luautils.split(event.condition, ";");
                    if conditionTable[1] == "notmaxedwithcode" then
                        local dailycode = conditionTable[2];
                        local maxed = tonumber(conditionTable[3]);
                        local active = SF_MissionPanel.instance:countActiveQuestsWithCode(dailycode);
                        if conditionTable[4] == "hasfactiontier" then
                            local faction = conditionTable[5];
                            local tier = tonumber(conditionTable[6]);
                            local playerTier = SF_MissionPanel.instance:getReputationTier(faction, player);
                            if active < maxed and tier <= playerTier then
                                if player:getModData().missionProgress.WorldEvent and SF_MissionPanel.instance:hasActiveWorldEventWithCode(dailycode) then
                                    print("SOUL QUEST SYSTEM - Active world event (dialogue) with code: " .. dailycode .. " already exists.");
                                else
                                    event.days = lastRoll;
                                    SF_MissionPanel.instance.needsBackup = true;
                                    print("SOUL QUEST SYSTEM - No active quests for daily code: " .. dailycode);
                                    local commandTable = luautils.split(event.commands, ";");
                                    SF_MissionPanel.instance:readCommandTable(commandTable);
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end

function SF_MissionPanel.EveryTenMinutesExpand()
    print("zSOUL QUEST SYSTEM - EveryTenMinutesExpand overwrite success");
    local player = getPlayer();
	if not player:getModData().missionProgress then return end
	if player:getModData().missionProgress.ActionEvent and #player:getModData().missionProgress.ActionEvent > 0 then
		local actionevent = player:getModData().missionProgress.ActionEvent;
        local isKillZombie = false -- check if killzombies actionevent exists, at least one (for the events)
		for a=#actionevent,1,-1 do
            local event = actionevent[a]
            local condition = event.condition
			if condition then
				local condition = luautils.split(condition, ";");
				if condition[1] == "enterroom" then
					local squareTable = luautils.split(condition[2], "x");
					local x, y, z = tonumber(squareTable[1]), tonumber(squareTable[2]), tonumber(squareTable[3]);
					local square = getCell():getGridSquare(x, y, z);
					if square then
						local room = square:getRoom();
						if player:getSquare():getRoom() == room then
							local commandTable = luautils.split(event.commands, ";");
							SF_MissionPanel.instance:readCommandTable(commandTable);
							table.remove(actionevent, a);
						end
					end	
                elseif condition[1] == "killzombies" then -- not sure, maybe should be in onCreatedPlayer. 
               
                    if not SF_MissionPanel.EventsRegistered then
                        Events.OnZombieDead.Add(SF_MissionPanel.Events.OnZombieDead);
                        SF_MissionPanel.EventsRegistered = true;
                    end
                    isKillZombie = true
                   
				elseif condition[1] == "enterdungeon" then
					local dungeonID = condition[2];
					if player:getModData().CurrentDungeon.dungeonId and player:getModData().CurrentDungeon.dungeonId == dungeonID then
						local commandTable = luautils.split(event.commands, ";");
						SF_MissionPanel.instance:readCommandTable(commandTable);
						table.remove(actionevent, a);					
					end
				elseif condition[1] == "readbook" then
					
				elseif condition[1] == "watchmedia" then
					local media = getZomboidRadio():getRecordedMedia():getMediaData(condition[2]);
					local watched = getZomboidRadio():getRecordedMedia():hasListenedToAll(player, media);
					if watched and event.commands then
						local commandTable = luautils.split(event.commands, ";");
						SF_MissionPanel.instance:readCommandTable(commandTable);
						table.remove(actionevent, a);
					end
				end
			end
		end
        if not isKillZombie and SF_MissionPanel.EventsRegistered then
            Events.OnZombieDead.Remove(SF_MissionPanel.Events.OnZombieDead);
            SF_MissionPanel.EventsRegistered = false;
        end
	end
	
	if player:getModData().missionProgress.Timers and #player:getModData().missionProgress.Timers > 0 then
		local timers = player:getModData().missionProgress.Timers;
		local ageHours = getGameTime():getWorldAgeHours();
		for i=#timers,1,-1 do
			if timers[i].timer and timers[i].timer < ageHours then
				if timers[i].command == "unlockQuest" then
					if timers[i].category then
						SF_MissionPanel.instance:addTaskToCategory(timers[i].guid, timers[i].category, timers[i].sound);
					else
						SF_MissionPanel.instance:unlockQuest(timers[i].guid, timers[i].sound);
					end
				end
				if timers[i].commands then
					local commandTable = luautils.split(timers[i].commands, ";");
					SF_MissionPanel.instance:readCommandTable(commandTable);		
				end
				table.remove(player:getModData().missionProgress.Timers, i);
				SF_MissionPanel.instance.needsBackup = true;
			end
		end
	end

	if player:getModData().missionProgress.WorldEvent then
		for k2,v2 in pairs(player:getModData().missionProgress.WorldEvent) do
			if not v2.marker then
				local squareTable = luautils.split(k2, "x");
				local x, y, z = tonumber(squareTable[1]), tonumber(squareTable[2]), tonumber(squareTable[3]);
				local square = getCell():getGridSquare(x, y, z);
                local marker = nil
				if square then
                    if string.find(string.lower(v2.dialoguecode), "complete") then
                        marker = getIsoMarkers():addIsoMarker({}, {"media/textures/Complete_Marker.png"}, square, 1, 1, 1, false, false);
                    else
					    marker = getIsoMarkers():addIsoMarker({}, {"media/textures/Test_Marker.png"}, square, 1, 1, 1, false, false);
                    end
					if marker then
						marker:setDoAlpha(false);
						marker:setAlphaMin(0.8);
						marker:setAlpha(1.0);
						v2.marker = marker;
					end
				end
			else
                v2.marker:setDoAlpha(false);
                v2.marker:setAlphaMin(0.8);
                v2.marker:setAlpha(1.0);
            end
		end
	end

    if player:getModData().missionProgress.ClickEvent then
        for k2,event in pairs(player:getModData().missionProgress.ClickEvent) do
            if not event.marker then
				local squareTable = luautils.split(event.square, "x");
				local x, y, z = tonumber(squareTable[1]), tonumber(squareTable[2]), tonumber(squareTable[3]);
				local square = getCell():getGridSquare(x, y, z);
                local marker
				if square then
					marker = getIsoMarkers():addIsoMarker({}, {"media/textures/worldclickevent.png"}, square, 1, 1, 1, false, false);
					if marker then
                        marker:setDoAlpha(false);
                        marker:setAlphaMin(0.8);
                        marker:setAlpha(1.0);
                        event.marker = marker;
                    end
					
				end
			else
                event.marker:setDoAlpha(false);
                event.marker:setAlphaMin(0.8);
                event.marker:setAlpha(1.0);
            end
        end
    end
	
	if SF_MissionPanel.instance.needsBackup == true then
        print("zSOUL QUEST SYSTEM - needBackup true, backup data init.");
		SF_MissionPanel.instance:backupData();
		SF_MissionPanel.instance.needsBackup = false;
	end
end

function SF_MissionPanel:hasActiveWorldEventWithCode(dailycode)
    local player = getPlayer();
    if player:getModData().missionProgress.WorldEvent then
        for k, v in pairs(player:getModData().missionProgress.WorldEvent) do
            if v.identity == dailycode then
                return true
            end
        end
    end
    return false
end

-- PredicateFullDrainable#Base.PropaneTank;2
function SF_MissionPanel:takeNeededItem(neededitem)
    local player = getPlayer();
    local needsTable = luautils.split(neededitem, ";"); -- Esempio: "TagPredicateFreshFood#Pot;1;4"
    local itemscript = needsTable[1];
    local quantity = tonumber(needsTable[2]) or 1;
    local items;
    local predicateValue;
    local isTag;
    local isPredicate;
    local isQuantity = SF_MissionPanel.instance:checkItemQuantity(neededitem);

    if not isQuantity then
        return false
    end

    -- Verifica se itemscript inizia con 'Tag' o 'Predicate' e imposta i booleani
    if luautils.stringStarts(itemscript, "Tag") then
        isTag = true;
        itemscript = luautils.split(itemscript, "#")[2];
        predicateValue = tonumber(needsTable[3]);
    end
    if luautils.stringStarts(itemscript, "Predicate") then
        isPredicate = true;
        itemscript = luautils.split(itemscript, "#")[2];
        predicateValue = tonumber(needsTable[3]);
    end
    if isTag then
        -- Gestione dei casi con 'Tag'
        if luautils.stringStarts(needsTable[1], "Tag#") then
                items = player:getInventory():getSomeTagRecurse(itemscript, quantity);
        elseif luautils.stringStarts(needsTable[1], "TagPredicateBigFish#") then
                items = player:getInventory():getSomeTagEvalRecurse(itemscript, SFQuest_Utils.predicateBigFish, quantity);        
        elseif luautils.stringStarts(needsTable[1], "TagPredicateCondition#") then
                items = player:getInventory():getSomeTagEvalArgRecurse(itemscript, SFQuest_Utils.predicateCondition, SFQuest_Utils.predicateValue, quantity);
        elseif luautils.stringStarts(needsTable[1], "TagPredicateFreshFood#") then    
                items = player:getInventory():getSomeTagEvalRecurse(itemscript, SFQuest_Utils.predicateFreshFood, quantity);
        elseif luautils.stringStarts(needsTable[1], "TagPredicateFullDrainable#") then    
                items = player:getInventory():getSomeTagEvalRecurse(itemscript, SFQuest_Utils.predicateFullDrainable, quantity);
        elseif luautils.stringStarts(needsTable[1], "TagPredicateDrainable#") then    
                items = player:getInventory():getSomeTagEvalArgRecurse(itemscript, SFQuest_Utils.predicateDrainable, SFQuest_Utils.predicateValue, quantity);
        elseif luautils.stringStarts(needsTable[1], "TagPredicateFoodWeight#") then
                items = player:getInventory():getSomeTagEvalArgRecurse(itemscript, SFQuest_Utils.predicateFoodWeight, SFQuest_Utils.predicateValue, quantity);
        elseif luautils.stringStarts(needsTable[1], "TagPredicateFoodHunger#") then
                items = player:getInventory():getSomeTagEvalArgRecurse(itemscript, SFQuest_Utils.predicateFoodHunger, SFQuest_Utils.predicateValue, quantity);
        elseif luautils.stringStarts(needsTable[1], "TagPredicateFoodCooked#") then
                items = player:getInventory():getSomeTagEvalRecurse(itemscript, SFQuest_Utils.predicateFoodCooked, quantity);
        end
    elseif isPredicate then
        -- Gestione dei casi senza 'Tag' (solo 'Predicate')
        if luautils.stringStarts(needsTable[1], "PredicateBigFish#") then
                items = player:getInventory():getSomeTypeEvalRecurse(itemscript, SFQuest_Utils.predicateBigFish, quantity);
        elseif luautils.stringStarts(needsTable[1], "PredicateCondition#") then
                items = player:getInventory():getSomeTypeEvalArgRecurse(itemscript, SFQuest_Utils.predicateCondition, SFQuest_Utils.predicateValue, quantity);    
        elseif luautils.stringStarts(needsTable[1], "PredicateFreshFood#") then    
                items = player:getInventory():getSomeTypeEvalRecurse(itemscript, SFQuest_Utils.predicateFreshFood, quantity);    
        elseif luautils.stringStarts(needsTable[1], "PredicateFullDrainable#") then    
                items = player:getInventory():getSomeTypeEvalRecurse(itemscript, SFQuest_Utils.predicateFullDrainable, quantity);
        elseif luautils.stringStarts(needsTable[1], "PredicateDrainable#") then    
                items = player:getInventory():getSomeTypeEvalArgRecurse(itemscript, SFQuest_Utils.predicateDrainable, SFQuest_Utils.predicateValue, quantity);
        elseif luautils.stringStarts(needsTable[1], "PredicateFoodWeight#") then
                items = player:getInventory():getSomeTypeEvalArgRecurse(itemscript, SFQuest_Utils.predicateFoodWeight, SFQuest_Utils.predicateValue, quantity);
        elseif luautils.stringStarts(needsTable[1], "PredicateFoodHunger#") then
                items = player:getInventory():getSomeTypeEvalArgRecurse(itemscript, SFQuest_Utils.predicateFoodHunger, SFQuest_Utils.predicateValue, quantity);
        elseif luautils.stringStarts(needsTable[1], "PredicateFoodCooked#") then
                items = player:getInventory():getSomeTypeEvalRecurse(itemscript, SFQuest_Utils.predicateFoodCooked, quantity);
        end
    else
        -- Caso di default (nessun 'Tag' o 'Predicate')
            items = player:getInventory():getSomeTypeRecurse(itemscript, quantity);
    end

    if items then
        for i=0, items:size()-1 do
            local item = items:get(i);
            local itemId = item:getID();
            if item:isEquipped() then
                item:getContainer():setDrawDirty(true);
                item:setJobDelta(0.0);
                player:removeWornItem(item)
        
                local hotbar = getPlayerHotbar(player:getPlayerNum())
                local fromHotbar = false;
                if hotbar then
                    fromHotbar = hotbar:isItemAttached(item);
                end
        
                if fromHotbar then
                    hotbar.chr:setAttachedItem(item:getAttachedToModel(), item);
                    player:resetEquippedHandsModels()
                end
        
                if item == player:getPrimaryHandItem() then
                    if (item:isTwoHandWeapon() or item:isRequiresEquippedBothHands()) and item == player:getSecondaryHandItem() then
                        player:setSecondaryHandItem(nil);
                    end
                    player:setPrimaryHandItem(nil);
                end
                if item == player:getSecondaryHandItem() then
                    if (item:isTwoHandWeapon() or item:isRequiresEquippedBothHands()) and item == player:getPrimaryHandItem() then
                        player:setPrimaryHandItem(nil);
                    end
                    player:setSecondaryHandItem(nil);
                end
            end
            player:getInventory():removeItemWithIDRecurse(itemId);
        end
        return true
    end
    return nil
end

function SF_MissionPanel:updateObjective(guid, index, status)
    local player = self.player or getPlayer()
    if not player:getModData().missionProgress.Category2 then return end

    local currentTasks = player:getModData().missionProgress.Category2

    -- Iterazione inversa con indici numerici
    for i = #currentTasks, 1, -1 do
        local task = currentTasks[i]
        if task then
            -- Controllo validità del GUID
            if not task.guid then
                print("Task senza GUID all'indice: " .. i)
            elseif task.guid == guid then
                -- Processo solo gli obiettivi validi
                if task.objectives and task.objectives[index] then
                    task.objectives[index].status = status
                    
                    -- Esecuzione comandi
                    local commands = 
                        (status == "Failed" and task.objectives[index].onfailed) or
                        (status == "Completed" and task.objectives[index].oncompleted) or
                        (status == "Obtained" and task.objectives[index].onobtained)
                    
                    if commands then
                        local commandTable = luautils.split(commands, ";")
                        self:readCommandTable(commandTable, task.text)
                    end
                    
                    -- Aggiornamento stato missione
                    self:checkTaskForCompletion(guid)
                    SF_MissionPanel.instance:triggerUpdate()
                    self.needsBackup = true
                end
                return -- Esco dopo aver trovato il task
            end
        else
            print("Task nullo all'indice: " .. i)
        end
    end
end


function SF_MissionPanel:forceBackupData()
	local player = self.player or getPlayer();
	local data = player:getModData().missionProgress;
    data.forceBackup = true;
	if not data then
		print("Player had no quest data for the backup.");
		return
	end
	if isClient() then
		print("****************SALVO CLIENT************************");
		sendClientCommand(player, 'SFQuest', 'saveData', data);
	else
		print("****************SALVO SERVER************************");
		SFQuest_Server.localBackup(player, data);
	end;
end

function SF_MissionPanel:removeReputation(faction, value)
	local player = SF_MissionPanel.instance.player or getPlayer();
	if player:getModData().missionProgress and player:getModData().missionProgress.Factions then
		local factions = player:getModData().missionProgress.Factions;
		
		local facIndex;
		local currentRep;
		local currentTier;
		local newTier;
		local maxTier;
		
		if #factions > 0 then
			for j=1,#factions do
				if factions[j].factioncode and factions[j].factioncode == faction then
					facIndex = j;
					currentRep = factions[j].reputation;
					currentTier = factions[j].tierlevel;
					--print("SOUL QUEST SYSTEM - Player has a proper faction to increase reputation: " .. factions[j].factioncode .. " and reputation was " .. tostring(currentRep));
					break
				end
			end
		end
		if facIndex then
			for i=1,#SFQuest_Database.FactionPool do
				if SFQuest_Database.FactionPool[i].factioncode and SFQuest_Database.FactionPool[i].factioncode == faction then
					if currentTier == 1 then
						player:getModData().missionProgress.Factions[facIndex].reputation = currentRep - value;
						if player:getModData().missionProgress.Factions[facIndex].reputation < 0 then
							player:getModData().missionProgress.Factions[facIndex].reputation = 0;
						end
					else
						player:getModData().missionProgress.Factions[facIndex].reputation = currentRep - value;		
						if player:getModData().missionProgress.Factions[facIndex].reputation < 0 then
							newTier = currentTier - 1;
							player:getModData().missionProgress.Factions[facIndex].tierlevel = newTier;
							if SFQuest_Database.FactionPool[i].tiers then
								local tier = SFQuest_Database.FactionPool[i].tiers[newTier];
								local newName = tier.tiername;
								local newMax = tier.minrep;
								local newColor = tier.barcolor;
								player:getModData().missionProgress.Factions[facIndex].tiername = newName;
								player:getModData().missionProgress.Factions[facIndex].repmax = newMax;
								player:getModData().missionProgress.Factions[facIndex].tiercolor = newColor;
							end
                            player:getModData().missionProgress.Factions[facIndex].reputation = player:getModData().missionProgress.Factions[facIndex].repmax + player:getModData().missionProgress.Factions[facIndex].reputation;
						end						
					end
				end
			end
			SF_MissionPanel.instance:triggerUpdate();
			SF_MissionPanel.instance.needsBackup = true;
		end
	end
end

function SF_MissionPanel.RemoveAllWorldMarkers()
    local player = getPlayer();
    if player:getModData().missionProgress and player:getModData().missionProgress.WorldEvent then
        for k2, v2 in pairs(player:getModData().missionProgress.WorldEvent) do
            print("SOUL QUEST SYSTEM - checking marker for: " .. v2.dialoguecode);
            if v2.marker then
                v2.marker:remove();
            end
        end
    end
end

function SF_MissionPanel.DebugEveryTenMinutes()
	local player = getPlayer();
	if not player:getModData().missionProgress then return end
	
	if player:getModData().missionProgress.ActionEvent and #player:getModData().missionProgress.ActionEvent > 0 then
        local actionevent = player:getModData().missionProgress.ActionEvent;
		for a=#actionevent,1,-1 do
            local condition = luautils.split(actionevent[a].condition, ";");
            if condition[1] == "killzombies" then
                    local kills = actionevent[a].kills;
                    local goal = actionevent[a].goal;
                    print("[SF_MissionPanel.EveryTenMinutes][DEBUG-KILLZOMBIES] >>> PLAYER: " .. player:getUsername() .. " Kills:" .. kills .. " | Goal:" .. goal .. " | COMMAND:" .. actionevent[a].commands .. " <<<");
            end
        end
    end
end

function SF_MissionPanel:completeQuest(player, guid)
	if player:getModData().missionProgress and player:getModData().missionProgress.Category2 then
		local currentTasks = player:getModData().missionProgress.Category2;
		local done = false
		if #currentTasks > 0 then
			for i=1,#currentTasks do
				local task = currentTasks[i];
				if task.guid and task.guid == guid then
					player:getModData().missionProgress.Category2[i].status = "Completed";
					if task.awardsitem then
						local count = 1;
						local rewardTable = luautils.split(task.awardsitem, ";");
						local quantity = 1;
						if rewardTable[count + 1] then
							quantity = tonumber(rewardTable[count + 1]);
						end
						player:getInventory():AddItems(rewardTable[1], quantity);
						count = 3;
						while rewardTable[count] do
							quantity = tonumber(rewardTable[count + 1]);
							player:getInventory():AddItems(rewardTable[count], quantity);
							count = count + 2;
						end
					end
					if task.awardslore then
						if task.lore then
							table.insert(task.lore, task.awardslore);
						else
							task.lore = {task.awardslore};
						end
					end
					if task.awardsrep then
						local repvalues = luautils.split(task.awardsrep, ";");
						print("This task awards " .. repvalues[2] .. " reputation for " .. repvalues[1]);
						SF_MissionPanel.instance:awardReputation(repvalues[1], tonumber(repvalues[2]));
                        local count = 3;
                        while repvalues[count] do
                            print("This task awards " .. repvalues[count + 1] .. " reputation for " .. repvalues[count]);
                            SF_MissionPanel.instance:awardReputation(repvalues[count], tonumber(repvalues[count + 1]));
                            count = count + 2;
                        end
					end
					if task.awardsworld then
						local entry = luautils.split(task.awardsworld, ";");
						SF_MissionPanel.instance:runCommand("unlockworldevent", entry[1], entry[2], entry[3]);				
					end
                    -- "task.ondone" not quite sure to put this here because it's already present in "updateQuestStatus" when status is setted to == "Completed" and "checkQuestForCompletionByType" too. So there is a possibility to trigger it twice or more. because if you update the quest status to "Complete" and there is "ondone" command, it will be executed and then will be executed again when "completequest" is called.
                    if task.ondone then
                        local commandTable = luautils.split(task.ondone, ";");
                        SF_MissionPanel.instance:readCommandTable(commandTable);
                    end
					if task.completesound then
						getSoundManager():playUISound(task.completesound);
						--player:getEmitter():playSound(task.completesound);
					end
					if task.guid == self.expanded then
						self.expanded = nil;
						self.loretitle = nil;
						self.lore = {};
						self.currentPage = 1;
						self.titleLabel:setVisible(false);
						self.pageLabel:setVisible(false);
						self.nextPage:setVisible(false);
						self.previousPage:setVisible(false);
						self.richText:setVisible(false);
					end
                    -- che sia questo a far sparire le action event dei killzombies? ma come?
                    -- if task.unlocks and luautils.stringStarts(task.unlocks, "actionevent") then
                    --     for i,v in ipairs(player:getModData().missionProgress.ActionEvent) do
                    --         local commands = luautils.split(v.commands, ";");
                    --         if luautils.stringStarts(task.guid, commands[2]) then
                    --             table.remove(player:getModData().missionProgress.ActionEvent, i);
                    --             break
                    --         end
                    --     end
                    -- end
                    -- only unlock eventually awarded quests after every check of the current quest completed
                    if task.awardstask then
						SF_MissionPanel:unlockQuest(task.awardstask);
					end
                    -- only save quests which are not daily events
                    if task.dailycode == nil then
                        table.insert(player:getModData().missionProgress.Category1, task);
                    end
                    -- inserire qui sendClientCommand per backup secondario delle quest completate? (diviso dal backup principale)
                    sendClientCommand(player, 'SFQuest', 'saveHistory', {guid = task.guid});

                    -- idea per Reroll Daily Event solo al completamento dell'ultima step di una daily
					table.remove(player:getModData().missionProgress.Category2, i);
                    if task.dailycode and not task.awardstask then
                        SF_MissionPanel.instance.DailyEventRerollExpand()
                        print("Daily Event Reroll triggered");
                    end
					done = true;
					SF_MissionPanel.instance:triggerUpdate()
					break
				end
			end
		end
		if #player:getModData().missionProgress.Delivery > 0 then
			for d=1,#player:getModData().missionProgress.Delivery do
				if player:getModData().missionProgress.Delivery[d] == guid then
					player:getModData().missionProgress.Delivery[d] = nil;
					break
				end
			end
		end
		self.needsBackup = true;
	end
end

function SF_MissionPanel:unlockQuest(guid, overrideAwardsItem)
	local player = self.player or getPlayer();
	local quest = SF_MissionPanel:getQuest(guid);
    if player and quest then
	    if player:getModData().missionProgress and player:getModData().missionProgress.Category2 then
	    	if guid then
	    		local hasTask = false
	    		local currentTasks = player:getModData().missionProgress.Category2
	    		if #currentTasks > 0 then
	    			for i=1,#currentTasks do
	    				if currentTasks[i].guid and currentTasks[i].guid == guid then
	    					hasTask = true
	    				end
	    			end
	    		end
	    		if quest.unique then --a unique quest will never be unlocked again, so we need to check the quest log too
	    			local questLog = player:getModData().missionProgress.Category1	
	    			if questLog and #questLog > 0 then
	    				for i=1,#questLog do
	    					if questLog[i].guid and questLog[i].guid == guid then
	    						hasTask = true
	    					end
	    				end
	    			end
	    		end
	    		if hasTask == true then
	    			print("SOUL QUEST SYSTEM - Player already had that quest unlocked.");
	    			return
	    		end
	    	end
	    	--quest should be unlocked for this player
	    	if quest.unlockedsound then
	    		getSoundManager():playUISound(quest.unlockedsound);
	    	end
	    	if quest.updates then
	    		local updatedQuest = SF_MissionPanel.instance:getActiveQuest(quest.updates);
	    		if updatedQuest then
	    			updatedQuest.awardsitem = quest.awardsitem or updatedQuest.awardsitem;
	    			updatedQuest.awardslore = quest.awardslore or updatedQuest.awardslore;
	    			updatedQuest.awardsrep = quest.awardsrep or updatedQuest.awardsrep;
	    			updatedQuest.awardstask = quest.awardstask or updatedQuest.awardstask;
	    			updatedQuest.awardsworld = quest.awardsworld or updatedQuest.awardsworld;
	    			updatedQuest.completesound = quest.completesound or updatedQuest.completesound;
	    			updatedQuest.needsitem = quest.needsitem or updatedQuest.needsitem;
	    			updatedQuest.onobtained = quest.onobtained or updatedQuest.onobtained;
	    			updatedQuest.text = quest.text or updatedQuest.text;
	    			updatedQuest.texture = quest.texture or updatedQuest.texture;
	    			updatedQuest.title = quest.title or updatedQuest.title;
	    			if (not updatedQuest.lore) and quest.lore then
	    				updatedQuest.lore = quest.lore;
	    			elseif updatedQuest.lore and quest.lore then
	    				for l=1, #quest.lore do
	    					local lore = quest.lore[l];
	    					table.insert(updatedQuest.lore, lore);
	    				end
	    			end
	    		else
	    			print("SOUL QUEST SYSTEM - Unlocked quest was an update to an existing quest that could not be found.");
	    		end
	    	else
	    		if quest.awardsitem and overrideAwardsItem then
	    			local newQuest = quest;
	    			newQuest.awardsitem = overrideAwardsItem;
	    			table.insert(player:getModData().missionProgress.Category2, newQuest);	
	    		elseif quest.awardsitem and luautils.stringStarts(quest.awardsitem, "Table:") then
	    			local tableKey = luautils.split(quest.awardsitem, ":")[2];
	    			local rewardTable = SFQuest_Database.RandomRewardItemPool[tableKey];
	    			local newQuest = quest;
	    			if rewardTable and #rewardTable > 0 then
	    				newQuest.awardsitem = rewardTable[ZombRand(1, #rewardTable + 1)]
	    			end
	    			table.insert(player:getModData().missionProgress.Category2, newQuest);			
	    		else
	    			table.insert(player:getModData().missionProgress.Category2, quest);	
	    		end
	    	end
	    	if quest.unlocks then
	    		local commandTable = luautils.split(quest.unlocks, ";");
	    		SF_MissionPanel.instance:readCommandTable(commandTable);
	    	end
            -- si potrebbe pensare di mettere un checkQuestForCompletionByType check qui allo sblocco della quest per fixare il problema anche dell'addItem
            SF_MissionPanel.instance:checkQuestForCompletionByType("item", nil, "Obtained");
            
	    	SF_MissionPanel.instance:triggerUpdate();
	    	SF_MissionPanel.instance.needsBackup = true;
	    	return
	    else
	    	print("Player did not have a list of current tasks. Unable to unlock a task.");
	    end
    else
        print("no quest found with guid: " .. guid);
    end
end

Events.OnGameBoot.Add(function()
    Events.EveryDays.Remove(SF_MissionPanel.DailyEventReroll);
    Events.EveryDays.Add(SF_MissionPanel.DailyEventRerollExpand)
    Events.EveryTenMinutes.Remove(SF_MissionPanel.EveryTenMinutes) 
    -- check sandbox option of time and set everyten or everyone minutes based on it?
    -- if SandboxVars.DayLength >= 5 then
        -- Events.EveryOneMinute.Add(SF_MissionPanel.EveryTenMinutesExpand)
    -- else 
        -- Events.EveryTenMinutes.Add(SF_MissionPanel.EveryTenMinutesExpand)
    -- end
    Events.OnGameStart.Remove(SF_MissionPanel.DailyEventReroll)
    Events.OnGameStart.Add(SF_MissionPanel.DailyEventRerollExpand)
    


    local original_EveryTenMinutes = SF_MissionPanel.EveryTenMinutes
    SF_MissionPanel.EveryTenMinutes = SF_MissionPanel.EveryTenMinutesExpand
    local original_fun = SF_MissionPanel.DailyEventReroll
    SF_MissionPanel.DailyEventReroll = SF_MissionPanel.DailyEventRerollExpand
end)

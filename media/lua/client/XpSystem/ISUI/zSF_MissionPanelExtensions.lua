require "XpSystem/ISUI/SFQuest_MissionPanel"
--[[ ]]
--SF_MissionPanel = SF_MissionPanel
SF_MissionPanel.Commands = SF_MissionPanel.Commands or {};
SF_MissionPanel.Events = {};
SF_MissionPanel.EventsRegistered = false
--------------------------------------------------------------------------------------------------------
-- Local functions, usually used to check certain items' conditions

local function predicateBigFish(item)
	local fullname =  item:getName():gsub(" ", "");
	print("SOUL QUEST SYSTEM - Fish name was: " .. fullname);
	local nameTable = luautils.split(fullname, "-");
	if not nameTable[2] then return false end
	local lengthstr = luautils.split(nameTable[2], "c")[1];
	print("SOUL QUEST SYSTEM - Fish length was: " .. lengthstr);
	local length = tonumber(lengthstr);
	return item:isFresh() and length and length >= 50
end

local function predicateCondition(item, condition)
	local percent = condition / 100;
	local matchcondition = item:getConditionMax() * percent;
	return instanceof(item, "HandWeapon") and item:getCondition() >= matchcondition
end

local function predicateFreshFood(item)
	return item:isFresh()
end

local function predicateFullDrainable(item)
	return item:getUsedDelta() == 1
end

function SF_MissionPanel.Events.OnZombieDead(zombie)
    local player = getPlayer()
    if not player:getModData().missionProgress.ActionEvent then
        Events.OnZombieDead.Remove(SF_MissionPanel.Events.OnZombieDead)
        SF_MissionPanel.EventsRegistered = false
        return
    end
    if player:getModData().missionProgress.ActionEvent and #player:getModData().missionProgress.ActionEvent == 0 then
        Events.OnZombieDead.Remove(SF_MissionPanel.Events.OnZombieDead)
        SF_MissionPanel.EventsRegistered = false
        return
    end
    local attackedBy = zombie:getAttackedBy()
    if player:isDriving() then return end
    if attackedBy ~= player then return end
    if not instanceof(attackedBy, "IsoPlayer") then return end

    local actionevent = player:getModData().missionProgress.ActionEvent;

    for i = #actionevent, 1, -1 do
        local eventData = actionevent[i]
        local condition = luautils.split(eventData.condition, ";")
        
        if condition[1] == "killzombies" then
            --temp fix for preWipe
            if not eventData.kills then eventData.kills = player:getZombieKills() end
            if not eventData.goal then eventData.goal = tonumber(condition[2]) end
            -- end temp fix
            eventData.kills = eventData.kills + 1
            if eventData.kills >= eventData.goal then
                local commandTable = luautils.split(eventData.commands, ";")
                SF_MissionPanel.instance:readCommandTable(commandTable)
                table.remove(actionevent, i)
            end
            SF_MissionPanel.instance.needsBackup = true
        end
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
	    local convertedCommands = commandslist:gsub(":", ";");
	    table.insert(player:getModData().missionProgress.ActionEvent, {
            kills = 0,
            goal = goal,
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

function SF_MissionPanel.Commands.removeitem(item, quantity)
    SF_MissionPanel.instance:takeNeededItem(item..";"..quantity) -- vabbe oh dai
end

function SF_MissionPanel.Commands.addserverpoints(points)
    local player = getPlayer();
    sendClientCommand("ServerPoints", "add", { player:getUsername(), points })
    --sendServerCommand("ServerPoints", "add", { player:getUsername(), points })
end

function SF_MissionPanel.Commands.addreputation(faction, reputation)
    SF_MissionPanel.instance:awardReputation(faction, reputation)
end

function SF_MissionPanel.Commands.unlockquest(questid)
    SF_MissionPanel.instance:unlockQuest(questid)
end

function SF_MissionPanel:checkDefaults()
    if not self.player:getModData().missionProgress then return end

    if self.player:getModData().missionProgress.DailyEvent then
        for k, v in pairs(self.player:getModData().missionProgress.Factions) do
            if v.factioncode == SFQuest_Database.FactionPool[k].factioncode then
                if v.tierlevel > 1 then
                    local tier = SFQuest_Database.FactionPool[k].tiers[v.tierlevel];
                    v.tiername = tier.tiername
                    v.tiercolor = tier.barcolor
                end
            end
        end
    end

    if self.player:getModData().missionProgress.DailyEvent then
        for k, v in pairs(self.player:getModData().missionProgress.DailyEvent) do
            if v.dailycode == SFQuest_Database.DailyEventPool[k].dailycode then
                v.condition = SFQuest_Database.DailyEventPool[k].condition
            end
        end
    end
end

-- override SF_MissionPanel:readCommandTable(commandtable) to add removeitem
local base_SF_MissionPanel_readCommandTable = SF_MissionPanel.readCommandTable;
function SF_MissionPanel:readCommandTable(commandTable)
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
            SF_MissionPanel.instance:runCommand("removeitem", commandTable[count + 1], tonumber(commandTable[count + 2]));
            count = count + 3;
        elseif commandTable[count] == "addreputation" then
            SF_MissionPanel.instance:runCommand("addreputation", commandTable[count + 1],
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
            -- if objective.status == "Completed" and commandTable[count + 3] == "Obtained" then return end;
            if player:getModData().missionProgress and player:getModData().missionProgress.Category2 then
                local currentTasks = player:getModData().missionProgress.Category2
                local status = commandTable[count + 3]
                if #currentTasks > 0 then
                    for i = 1, #currentTasks do
                        local task = currentTasks[i]
                        if task.guid and task.guid == guid then
                            if task.objectives and task.objectives[index] then
                                if status == "Obtained" and task.objectives[index].status == "Completed" then
                                    return
                                end
                            end
                        end
                    end
                end
            end
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
    if false then
        base_SF_MissionPanel_checkQuestForCompletionByType(self, type, entry, newStatus);
    end
    local status = newStatus or "Obtained";

    if self.player:getModData().missionProgress and self.player:getModData().missionProgress.Category2 then
        local currentTasks = self.player:getModData().missionProgress.Category2
        local done = false
        if #currentTasks > 0 then
            for i = 1, #currentTasks do
                local task = currentTasks[i];
                -- If there is no item script then it is a generic check for all possible items.
                if entry == nil then
                    if type == "item" and task.needsitem then
                        local quantitycheck = SF_MissionPanel.instance:checkItemQuantity(task.needsitem)
                        if quantitycheck then
                            task.status = status;
                            self.needsUpdate = true
                            if status == "Obtained" and task.onobtained then
                                local commandTable = luautils.split(task.onobtained, ";");
                                SF_MissionPanel.instance:readCommandTable(commandTable);
                            end
                            if status == "Completed" then
                                local guid = task.guid;
                                SF_MissionPanel.instance:completeQuest(getPlayer(), guid);
								if task.ondone then
									local commandTable = luautils.split(task.ondone, ";");
									SF_MissionPanel.instance:readCommandTable(commandTable);
								end
                            end
                        end
                    end
                    if type == "item" and task.objectives and #task.objectives > 0 then
                        for o = 1, #task.objectives do
                            local objective = task.objectives[o];
                            if objective.needsitem and objective.status ~= "Completed" then
                                local quantitycheck = SF_MissionPanel.instance:checkItemQuantity(objective.needsitem);
                                if quantitycheck then
                                    local guid = task.guid;
                                    SF_MissionPanel.instance:updateObjective(guid, o, status)
                                    self.needsUpdate = true
                                end
                            end
                        end
                    end
                else
                    if type == "item" and task.needsitem then
                        local needsTable = luautils.split(task.needsitem, ";");
                        local itemscript = needsTable[1];
                        local quantity = tonumber(needsTable[2]) or 1;
                        local isTag;
                        if luautils.stringStarts(needsTable[1], "Tag#") then
                            itemscript = luautils.split(itemscript, "#")[2];
                            isTag = true;
                        end
                        if itemscript == entry then
                            task.status = status;
                            self.needsUpdate = true
                            if status == "Completed" then
                                local guid = task.guid;
                                SF_MissionPanel.instance:completeQuest(getPlayer(), guid);
                            end
                        end
                    end
                end
            end
        end
    end
end

function SF_MissionPanel:checkItemQuantity(stringforcheck)
	local needsTable = luautils.split(stringforcheck, ";");
	local itemscript = needsTable[1];
	local quantity = tonumber(needsTable[2]) or 1;
	local carrying;
	local isTag;
	local predicateValue;
	if luautils.stringStarts(needsTable[1], "Tag#") then
		itemscript = luautils.split(itemscript, "#")[2];
		isTag = true;
		carrying = self.player:getInventory():getCountTag(itemscript);
	elseif luautils.stringStarts(needsTable[1], "TagPredicateBigFish#") then
		itemscript = luautils.split(itemscript, "#")[2];
		isTag = true;
		carrying = self.player:getInventory():getCountTagEval(itemscript, predicateBigFish);
	elseif luautils.stringStarts(needsTable[1], "TagPredicateCondition#") then
		itemscript = luautils.split(itemscript, "#")[2];
		isTag = true;
		predicateValue = tonumber(needsTable[3]);
		carrying = self.player:getInventory():getCountTagEvalArg(itemscript, predicateCondition, predicateValue);			
	elseif luautils.stringStarts(needsTable[1], "TagPredicateFreshFood#") then
		itemscript = luautils.split(itemscript, "#")[2];
		isTag = true;
		carrying = self.player:getInventory():getCountTagEval(itemscript, predicateFreshFood);	
	elseif luautils.stringStarts(needsTable[1], "TagPredicateFullDrainable#") then
		itemscript = luautils.split(itemscript, "#")[2];
		isTag = true;
		carrying = self.player:getInventory():getCountTagEval(itemscript, predicateFullDrainable);
	else
		carrying = self.player:getInventory():getItemCountRecurse(itemscript);
	end

	if quantity <= carrying then
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
	if player:getModData().missionProgress and player:getModData().missionProgress.Category2 then
		local currentTasks = player:getModData().missionProgress.Category2
		local done = false
		if #currentTasks > 0 then
			for i=1,#currentTasks do
				local task = currentTasks[i]
				if task.guid and task.guid == guid then
					task.status = status;
					if status == "Failed" and task.onfailed then
						local commandTable = luautils.split(task.onfailed, ";");
						SF_MissionPanel.instance:readCommandTable(commandTable);
					elseif status == "Completed" and task.ondone then	
						local commandTable = luautils.split(task.ondone, ";");
						SF_MissionPanel.instance:readCommandTable(commandTable);
					elseif status == "Obtained" and task.onobtained then	
						local commandTable = luautils.split(task.onobtained, ";");
						SF_MissionPanel.instance:readCommandTable(commandTable);							
					end			
					self.needsUpdate = true;
					self.needsBackup = true;			
				end
			end
		end
	end
end

function SF_MissionPanel.DailyEventRerollExpand()
    local player = getPlayer();
    if not player:getModData().missionProgress then return end
    local prog = player:getModData().missionProgress
    if player:getModData().missionProgress.DailyEvent and #player:getModData().missionProgress.DailyEvent > 0 then
        --print("SOUL QUEST SYSTEM - Player has daily events to check.");
        local t0 = SF_MissionPanel:getStartingHour();
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
	-- si potrebbe rimuovere killzombies ed inserirlo in un evento "OnCharacterDeath" o qualche evento che viene triggherato quando si uccide uno zombie?
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
						SF_MissionPanel.instance:addTaskToCategory(timers[i].guid, category, timers[i].sound);
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
                local marker
				if square then
                    if string.find(string.lower(v2.dialoguecode), "complete") then
                        marker = getIsoMarkers():addIsoMarker({}, {"media/textures/Complete_Marker.png"}, square, 1, 1, 1, false, false);
                    else
					    marker = getIsoMarkers():addIsoMarker({}, {"media/textures/Test_Marker.png"}, square, 1, 1, 1, false, false);
                    end
					marker:setDoAlpha(false);
					marker:setAlphaMin(0.8);
					marker:setAlpha(1.0);
					v2.marker = marker;
				end
			end
		end
	end

    if player:getModData().missionProgress.ClickEvent then
        for c=1,#player:getModData().missionProgress.ClickEvent do
            local event = player:getModData().missionProgress.ClickEvent[c];
            if not event.marker then
				local squareTable = luautils.split(event.square, "x");
				local x, y, z = tonumber(squareTable[1]), tonumber(squareTable[2]), tonumber(squareTable[3]);
				local square = getCell():getGridSquare(x, y, z);
                local marker
				if square then
					marker = getIsoMarkers():addIsoMarker({}, {"media/textures/worldclickevent.png"}, square, 1, 1, 1, false, false);
					marker:setDoAlpha(false);
					marker:setAlphaMin(0.8);
					marker:setAlpha(1.0);
					event.marker = marker;
				end
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

function SF_MissionPanel:takeNeededItem(neededitem)
	local player = getPlayer();
	local needsTable = luautils.split(neededitem, ";");
	local itemscript = needsTable[1];
	local quantity = tonumber(needsTable[2]) or 1;
	local carrying;
	local items;
	local predicateValue;
	if luautils.stringStarts(needsTable[1], "Tag#") then
		itemscript = luautils.split(itemscript, "#")[2];
		carrying = player:getInventory():getCountTag(itemscript);
		if quantity <= carrying then
			items = player:getInventory():getSomeTag(itemscript, quantity);
		end
	elseif luautils.stringStarts(needsTable[1], "TagPredicateBigFish#") then
		itemscript = luautils.split(itemscript, "#")[2];
		carrying = player:getInventory():getCountTagEval(itemscript, predicateBigFish);
		if quantity <= carrying then
			items = player:getInventory():getSomeTagEvalRecurse(itemscript, predicateBigFish, quantity);
		end		
	elseif luautils.stringStarts(needsTable[1], "TagPredicateCondition#") then
		itemscript = luautils.split(itemscript, "#")[2];
		predicateValue = tonumber(needsTable[3]);
		carrying = player:getInventory():getCountTagEvalArg(itemscript, predicateCondition, predicateValue);
		if quantity <= carrying then
			items = player:getInventory():getSomeTagEvalArgRecurse(itemscript, predicateCondition, predicateValue, quantity);
		end	
	elseif luautils.stringStarts(needsTable[1], "TagPredicateFreshFood#") then	
		itemscript = luautils.split(itemscript, "#")[2];
		carrying = player:getInventory():getCountTagEval(itemscript, predicateFreshFood);
		if quantity <= carrying then
			items = player:getInventory():getSomeTagEvalRecurse(itemscript, predicateFreshFood, quantity);
		end	
	elseif luautils.stringStarts(needsTable[1], "TagPredicateFullDrainable#") then	
		itemscript = luautils.split(itemscript, "#")[2];
		carrying = player:getInventory():getCountTagEval(itemscript, predicateFullDrainable);
		if quantity <= carrying then
			items = player:getInventory():getSomeTagEvalRecurse(itemscript, predicateFullDrainable, quantity);
		end	
	else
		carrying = player:getInventory():getNumberOfItem(itemscript, true, true);
		if quantity <= carrying then
			items = player:getInventory():getSomeTypeRecurse(itemscript, quantity);
		end	
	end

    if items then
        for i=0, items:size()-1 do
            local itemId = items:get(i):getID();
            player:getInventory():removeItemWithIDRecurse(itemId);
        end
        return true
    end
	return nil
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
			SF_MissionPanel.instance.needsUpdate = true;
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
                local kills = actionevent[a].kills or 0;
                local goal = actionevent[a].goal or condition[2];
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
                    -- con il nuovo metodo non serve più perché la rimuoviamo già nell'evento appena viene completata
                    -- if task.unlocks and luautils.stringStarts(task.unlocks, "actionevent") then
                    --     for k,v in pairs(player:getModData().missionProgress.ActionEvent) do
                    --         local commands = luautils.split(v.commands, ";");
                    --         if luautils.stringStarts(task.guid, commands[2]) then
                    --             table.remove(player:getModData().missionProgress.ActionEvent, k);
                    --             break
                    --         end
                    --     end
                    -- end

					if task.dailycode == nil then
						table.insert(player:getModData().missionProgress.Category1, task);
					end
                    -- only unlock eventually awarded quests after every check of the current quest completed
                    if task.awardstask then
						SF_MissionPanel:unlockQuest(task.awardstask);
					end
					table.remove(player:getModData().missionProgress.Category2, i);
					done = true;
					self.needsUpdate = true
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

Events.OnGameBoot.Add(function()
    Events.EveryDays.Remove(SF_MissionPanel.DailyEventReroll);
    Events.EveryDays.Add(SF_MissionPanel.DailyEventRerollExpand)
    Events.OnGameStart.Remove(SF_MissionPanel.DailyEventReroll)
    Events.OnGameStart.Add(SF_MissionPanel.DailyEventRerollExpand)
    Events.EveryTenMinutes.Add(SF_MissionPanel.DebugEveryTenMinutes
)
    Events.EveryTenMinutes.Remove(SF_MissionPanel.EveryTenMinutes)
    local original_EveryTenMinutes = SF_MissionPanel.EveryTenMinutes
    SF_MissionPanel.EveryTenMinutes = SF_MissionPanel.EveryTenMinutesExpand


    local original_fun = SF_MissionPanel.DailyEventReroll
    SF_MissionPanel.DailyEventReroll = SF_MissionPanel.DailyEventRerollExpand
end)

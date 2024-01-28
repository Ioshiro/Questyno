require "XpSystem/ISUI/SF_MissionPanel"
--[[ ]]
--SF_MissionPanel = SF_MissionPanel
--SF_MissionPanel.Commands = {};

function SF_MissionPanel.Commands.removeitem(item, quantity)
    SF_MissionPanel.instance:takeNeededItem(item..";"..quantity) -- vabbe oh dai
end

function SF_MissionPanel.Commands.addserverpoints(points)
    local player = getPlayer();
    sendClientCommand("ServerPoints", "add", { player:getUsername(), points })
    sendServerCommand("ServerPoints", "add", { player:getUsername(), points })
end

function SF_MissionPanel.Commands.addreputation(faction, reputation)
    SF_MissionPanel.instance:awardReputation(faction, reputation)
end

function SF_MissionPanel.Commands.unlockquest(questid)
    SF_MissionPanel.instance:unlockQuest(questid)
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
                                event.days = lastRoll;
                                SF_MissionPanel.instance.needsBackup = true;
                                print("SOUL QUEST SYSTEM - No active quests for daily code: " .. dailycode);
                                if player:getModData().missionProgress.WorldEvent then
                                    SF_MissionPanel.instance:removeWorldEventsWithCode(dailycode);
                                end
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
			local item = items:get(i):getFullType();
			player:getInventory():RemoveOneOf(item, true);
		end
		return true
	end
	return nil
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

Events.OnGameBoot.Add(function()
    Events.EveryDays.Remove(SF_MissionPanel.DailyEventReroll);
    Events.EveryDays.Add(SF_MissionPanel.DailyEventRerollExpand)
    Events.OnGameStart.Remove(SF_MissionPanel.DailyEventReroll)
    Events.OnGameStart.Add(SF_MissionPanel.DailyEventRerollExpand)

    local original_fun = SF_MissionPanel.DailyEventReroll
    SF_MissionPanel.DailyEventReroll = SF_MissionPanel.DailyEventRerollExpand
end)

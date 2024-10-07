require "XpSystem/ISUI/SFQuest_MissionPanel"
--[[ ]]
--SF_MissionPanel = SF_MissionPanel
--SF_MissionPanel.Commands = {};

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
	return item:isFresh() and not item:isPoison()
end

local function predicateFoodWeight(item, condition)
	if instanceof(item, "Food") then
		return item:isFresh() and item:getWeight() >= condition
	end
end
local function predicateFoodHunger(item, condition)
	if instanceof(item, "Food") then
		return item:isFresh() and item:getBaseHunger() >= condition
	end
end

local function predicateFullDrainable(item)
	return item:getUsedDelta() == 1
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
                                        for c=1,#player:getModData().missionProgress.ClickEvent do
                                            local event = player:getModData().missionProgress.ClickEvent[c];
                                            if event.address and event.address == removeClickEventValue then
                                                table.remove(player:getModData().missionProgress.ClickEvent, c);
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
                                        for c=1,#player:getModData().missionProgress.ClickEvent do
                                            local event = player:getModData().missionProgress.ClickEvent[c];
                                            if event.address and event.address == removeClickEventValue then
                                                table.remove(player:getModData().missionProgress.ClickEvent, c);
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
                                            for c=1,#player:getModData().missionProgress.ClickEvent do
                                                local event = player:getModData().missionProgress.ClickEvent[c];
                                                if event.address and event.address == removeClickEventValue then
                                                    table.remove(player:getModData().missionProgress.ClickEvent, c);
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
                                        for a=#actionevent,1,-1 do
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
                                    for c=1,#player:getModData().missionProgress.ClickEvent do
                                        local event = player:getModData().missionProgress.ClickEvent[c];
                                        if event.address and event.address == removeClickEventValue then
                                            table.remove(player:getModData().missionProgress.ClickEvent, c);
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
    SF_MissionPanel.instance.needsUpdate = true
    SF_MissionPanel.instance.needsBackup = true;
    end
end

function SF_MissionPanel.Commands.randomcodedworldfrompool(dailycode, tablename1, npcname)
	local poolTable = SFQuest_Database.RandomEventPool[tablename1][npcname];
    if not poolTable then
        print("zSOUL QUEST SYSTEM - Pool table not found: " .. tablename1);
        return
    end
	local random = ZombRand(1, #poolTable + 1);
	local randompick = luautils.split(poolTable[random], ";");
    local lastDailyCompleted = getPlayer():getModData().missionProgress.LastDailyCompleted;
    -- avoid last daily to be drawn again from the pool of quests of this dailycode
    -- randompick[3] is the guid of the quest
    -- lastDailyCompleted[dailycode] is the guid of the last daily quest of this dailycode
    -- se la poolTable ha solo 1 quest non darebbe più quest (tipo Lincoln Reed) quindi controlliamo che la poolTable è maggiore di 1
    if #poolTable > 1 and randompick[3] == lastDailyCompleted[dailycode] then
        print("zSOUL QUEST SYSTEM - Last daily quest already drawn from pool of quests of daily code: " .. dailycode);
        SF_MissionPanel.Commands.randomcodedworldfrompool(dailycode, tablename1, npcname)
        return
    else
        lastDailyCompleted[dailycode] = nil
    end
	SF_MissionPanel.instance:runCommand("unlockworldevent", randompick[1], randompick[2], randompick[3], dailycode)
end

function SF_MissionPanel:checkDefaults()
    if not self.player:getModData().missionProgress then return end

    if self.player:getModData().missionProgress.DailyEvent then
        for k, v in pairs(self.player:getModData().missionProgress.Factions) do
            -- ATTENZIONE: le due liste devono essere ordinate nello stesso ordine, ma in teoria dovrebbe essere così
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
                        else 
							if task.status == "Obtained" and task.onobtained then
								local onObtainedTable = luautils.split(task.onobtained, ";");
                                if #onObtainedTable > 0 then
                                    for j = 1, #onObtainedTable do
                                        if onObtainedTable[j] == "unlockworldevent" then
                                            local condition = onObtainedTable[j+2]
                                            if self.player:getModData().missionProgress.WorldEvent then
                                                for k, v in pairs(self.player:getModData().missionProgress.WorldEvent) do
                                                    if v.dialoguecode == condition then
                                                        if self.player:getModData().missionProgress.WorldEvent[k].marker then
                                                            self.player:getModData().missionProgress.WorldEvent[k].      marker:remove();
                                                        end
                                                        self.player:getModData().missionProgress.WorldEvent[k] = nil
                                                        task.status = nil
                                                        self.needsBackup = true
                                                        self.needsUpdate = true
                                                        break;
                                                    end
                                                end
                                            end
                                        end
                                    end
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
                        if luautils.stringStarts(needsTable[1], "Tag") or luautils.stringStarts(needsTable[1], "Predicate") then
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
    local isPredicate;
	local predicateValue;

     -- Verifica se itemscript inizia con 'Tag' o 'Predicate' e imposta i booleani
     if luautils.stringStarts(itemscript, "Tag") then
        itemscript = luautils.split(itemscript, "#")[2];
        predicateValue = tonumber(needsTable[3]);
        isTag = true
    end
    if luautils.stringStarts(itemscript, "Predicate") then
        itemscript = luautils.split(itemscript, "#")[2];
        predicateValue = tonumber(needsTable[3]);
        isPredicate = true
    end
    if isTag then
	    if luautils.stringStarts(needsTable[1], "Tag#") then
	    	isTag = true;
	    	carrying = self.player:getInventory():getCountTagRecurse(itemscript);
	    elseif luautils.stringStarts(needsTable[1], "TagPredicateBigFish#") then
	    	isTag = true;
	    	carrying = self.player:getInventory():getCountTagEvalRecurse(itemscript, predicateBigFish);
	    elseif luautils.stringStarts(needsTable[1], "TagPredicateCondition#") then
	    	isTag = true;
	    	carrying = self.player:getInventory():getCountTagEvalArgRecurse(itemscript, predicateCondition,    predicateValue);			
	    elseif luautils.stringStarts(needsTable[1], "TagPredicateFreshFood#") then
	    	isTag = true;
	    	carrying = self.player:getInventory():getCountTagEvalRecurse(itemscript, predicateFreshFood);	
	    elseif luautils.stringStarts(needsTable[1], "TagPredicateFullDrainable#") then
	    	isTag = true;
	    	carrying = self.player:getInventory():getCountTagEvalRecurse(itemscript, predicateFullDrainable);
        elseif luautils.stringStarts(needsTable[1], "TagPredicateFoodWeight") then
	    	isTag = true;
	    	carrying = self.player:getInventory():getCountTagEvalArgRecurse(itemscript, predicateFoodWeight, predicateValue);  --non va
        elseif luautils.stringStarts(needsTable[1], "TagPredicateFoodHunger") then
	    	isTag = true;
	    	carrying = self.player:getInventory():getCountTagEvalArgRecurse(itemscript, predicateFoodHunger, predicateValue);
        end
    elseif isPredicate then
        if luautils.stringStarts(needsTable[1], "PredicateBigFish#") then
            carrying = self.player:getInventory():getCountTypeEvalRecurse(itemscript, predicateBigFish);

        elseif luautils.stringStarts(needsTable[1], "PredicateCondition#") then
            carrying = self.player:getInventory():getCountTypeEvalArgRecurse(itemscript, predicateCondition,   predicateValue);            

        elseif luautils.stringStarts(needsTable[1], "PredicateFreshFood#") then
            carrying = self.player:getInventory():getCountTypeEvalRecurse(itemscript, predicateFreshFood);    

        elseif luautils.stringStarts(needsTable[1], "PredicateFullDrainable#") then
            carrying = self.player:getInventory():getCountTypeEvalRecurse(itemscript, predicateFullDrainable);

        elseif luautils.stringStarts(needsTable[1], "PredicateFoodWeight") then
            carrying = self.player:getInventory():getCountTypeEvalArgRecurse(itemscript, predicateFoodWeight, predicateValue);

        elseif luautils.stringStarts(needsTable[1], "PredicateFoodHunger") then
            carrying = self.player:getInventory():getCountTypeEvalArgRecurse(itemscript, predicateFoodHunger, predicateValue);
        end
    else
		carrying = self.player:getInventory():getItemCountRecurse(itemscript);
	end
	if quantity <= carrying then
		return true
	end
	return false
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
                items = player:getInventory():getSomeTagEvalRecurse(itemscript, predicateBigFish, quantity);        
        elseif luautils.stringStarts(needsTable[1], "TagPredicateCondition#") then
                items = player:getInventory():getSomeTagEvalArgRecurse(itemscript, predicateCondition, predicateValue, quantity);    
        elseif luautils.stringStarts(needsTable[1], "TagPredicateFreshFood#") then    
                items = player:getInventory():getSomeTagEvalRecurse(itemscript, predicateFreshFood, quantity);    
        elseif luautils.stringStarts(needsTable[1], "TagPredicateFullDrainable#") then    
                items = player:getInventory():getSomeTagEvalRecurse(itemscript, predicateFullDrainable, quantity);    
        elseif luautils.stringStarts(needsTable[1], "TagPredicateFoodWeight#") then
                items = player:getInventory():getSomeTagEvalArgRecurse(itemscript, predicateFoodWeight, predicateValue, quantity);
        elseif luautils.stringStarts(needsTable[1], "TagPredicateFoodHunger#") then
                items = player:getInventory():getSomeTagEvalArgRecurse(itemscript, predicateFoodHunger, predicateValue, quantity);
        end
    elseif isPredicate then
        -- Gestione dei casi senza 'Tag' (solo 'Predicate')
        if luautils.stringStarts(needsTable[1], "PredicateBigFish#") then
                items = player:getInventory():getSomeTypeEvalRecurse(itemscript, predicateBigFish, quantity);
        elseif luautils.stringStarts(needsTable[1], "PredicateCondition#") then
                items = player:getInventory():getSomeTypeEvalArgRecurse(itemscript, predicateCondition, predicateValue, quantity);    
        elseif luautils.stringStarts(needsTable[1], "PredicateFreshFood#") then    
                items = player:getInventory():getSomeTypeEvalRecurse(itemscript, predicateFreshFood, quantity);    
        elseif luautils.stringStarts(needsTable[1], "PredicateFullDrainable#") then    
                items = player:getInventory():getSomeTypeEvalRecurse(itemscript, predicateFullDrainable, quantity);    
        elseif luautils.stringStarts(needsTable[1], "PredicateFoodWeight#") then
                items = player:getInventory():getSomeTypeEvalArgRecurse(itemscript, predicateFoodWeight, predicateValue, quantity);
        elseif luautils.stringStarts(needsTable[1], "PredicateFoodHunger#") then
                items = player:getInventory():getSomeTypeEvalArgRecurse(itemscript, predicateFoodHunger, predicateValue, quantity);
        end
    else
        -- Caso di default (nessun 'Tag' o 'Predicate')
            items = player:getInventory():getSomeTypeRecurse(itemscript, quantity);
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
            if actionevent[a].condition then
				local condition = luautils.split(actionevent[a].condition, ";");
                if condition[1] == "killzombies" then
                    local currentkills = player:getZombieKills();
                    local goal = tonumber(condition[2]);
                    print("[SF_MissionPanel.EveryTenMinutes][DEBUG-KILLZOMBIES] >>> PLAYER: " .. player:getUsername() .. " CURRENT:" .. currentkills .. " | TARGET:" .. goal .. " | COMMAND:" .. actionevent[a].commands .. " <<<");
                end
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
                    -- potrebbe avere senso rimuovere preventivamente il marker del worldevent che era presente qui? un doppio check magari. prima che vengano sbloccate tutte le varie proprietà (che potrebbero far comparire altri marker di qualche worldevent nuovo che subentra)
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
                    if task.unlocks and luautils.stringStarts(task.unlocks, "actionevent") then
                        for k,v in pairs(player:getModData().missionProgress.ActionEvent) do
                            local commands = luautils.split(v.commands, ";");
                            if luautils.stringStarts(task.guid, commands[2]) then
                                table.remove(player:getModData().missionProgress.ActionEvent, k);
                                break
                            end
                        end
                    end
                    -- only save quests which are not daily events
					if task.dailycode == nil then
						table.insert(player:getModData().missionProgress.Category1, task);
                    else 
                        player:getModData().missionProgress.LastDailyCompleted[task.dailycode] = task.guid; 
                        --aggiunge la daily in una tabella temporanea che si assicura di non farla ripescare al prossimo giro
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
    Events.EveryTenMinutes.Add(SF_MissionPanel.DebugEveryTenMinutes)

    local original_fun = SF_MissionPanel.DailyEventReroll
    SF_MissionPanel.DailyEventReroll = SF_MissionPanel.DailyEventRerollExpand
end)

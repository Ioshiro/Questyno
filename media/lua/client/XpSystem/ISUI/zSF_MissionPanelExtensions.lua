require "XpSystem/ISUI/SF_MissionPanel"
--[[ ]]
--SF_MissionPanel = SF_MissionPanel
--SF_MissionPanel.Commands = {};

function SF_MissionPanel.Commands.removeitem(item, quantity)
    local inv = getPlayer():getInventory();
    for i = 1, quantity do
        inv:RemoveOneOf(item);
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
        elseif commandTable[count] == "removeitem" then
            SF_MissionPanel.instance:runCommand("removeitem", commandTable[count + 1], tonumber(commandTable[count + 2]));
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
        elseif commandTable[count] == "updateobjective" then
            -- if objective.status == "Completed" and commandTable[count + 3] == "Obtained" then return end;
            if player:getModData().missionProgress and player:getModData().missionProgress.Category2 then
                local currentTasks = player:getModData().missionProgress.Category2
                local status = commandTable[count + 3]
                if #currentTasks > 0 then
                    for i=1,#currentTasks do
                        local task = currentTasks[i]
                        if task.guid and task.guid == guid then
                            if task.objectives and  task.objectives[index] then
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
			for i=1,#currentTasks do
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
							end		
						end
					end
					if type == "item" and task.objectives and #task.objectives > 0 then
						for o=1,#task.objectives do
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

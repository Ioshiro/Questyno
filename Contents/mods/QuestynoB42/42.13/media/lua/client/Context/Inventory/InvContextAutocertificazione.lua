ISInventoryMenuElements = ISInventoryMenuElements or {};

function ISInventoryMenuElements.ContextAutocertificazione()
    local self 					= ISMenuElement.new();
    self.invMenu			    = ISContextManager.getInstance().getInventoryMenu();

    function self.init()
    end

    function self.createMenu( _item )
        if _item:getType() == "Autocertificazione" then
            if _item:getContainer() ~= self.invMenu.inventory then
                return;
			end

            local player = getPlayer()
            local currentTasks = player:getModData().missionProgress.Category2;
			local option = self.invMenu.context:addOption(getText("ContextMenu_Autocertifica"), player, nil, nil, nil);

            if not currentTasks or #currentTasks < 1 then
                option.notAvailable = true
                return;
            end

            local subMenuQuests = ISContextMenu:getNew(self.invMenu.context);
            self.invMenu.context:addSubMenu(option, subMenuQuests);
            for i=1,#currentTasks do
                local task = currentTasks[i];
                subMenuQuests:addOption(getText(task.text), player, self.completeQuest, task);
            end
        end
    end

    function self.completeQuest( _p, _q)
        local cert = self.invMenu.inventory:getItemFromType("LR.Autocertificazione")
		if cert == nil then return end
        if _q == nil then return end
        self.cleanQuestEvents(_p, _q)
        SF_MissionPanel:completeQuest(_p, _q.guid)
        if _q.awardstask then -- in caso sia una missione da 2 parti (_A)
            local nextTask = SF_MissionPanel:getActiveQuest(_q.awardstask);
            if nextTask == nil then print("no task found for " .. _q.guid .. " -> " .. _q.awardstask); return end
            self.cleanQuestEvents(_p, nextTask)
            SF_MissionPanel:completeQuest(_p, nextTask.guid);
            if nextTask.awardstask then -- in caso sia una missione da 3 parti (_B)
                local lastTask = SF_MissionPanel:getActiveQuest(nextTask.awardstask);
                if lastTask == nil then print("no task found for " .. nextTask.guid .. " -> " .. nextTask.awardstask); return end
                self.cleanQuestEvents(_p, lastTask)
                SF_MissionPanel:completeQuest(_p, lastTask.guid);
            end
        end
        _p:getInventory():Remove(cert)
	end

    function self.cleanQuestEvents(player, task)
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
                                if actionevent[a].condition == "killzombies" and commands[2] == task.guid then
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
    end
	return self;
end
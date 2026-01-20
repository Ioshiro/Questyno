require "ISUI/ISPanelJoypad"
local SFQuest_Utils = require "utils/SFQuest_Utils"
local SFQuest_Calendar = require("utils/SFQuest_Calendar")

---@class SF_MissionPanel : ISPanelJoypad
---@field player IsoPlayer
---@field playerNum number
---@field refreshNeeded boolean
---@field needsBackup boolean
---@field needsUpdate boolean
---@field bFemale boolean
---@field expanded string|nil
---@field lore table
---@field loretitle string
---@field currentPage number
---@field instance SF_MissionPanel
---@field Category1Label string|nil
---@field Category2Label string|nil
---@field Commands table
---@field Events table
---@field EventsRegistered boolean
SF_MissionPanel = SF_MissionPanel or ISPanelJoypad:derive("SF_MissionPanel");
SF_MissionPanel.Category1Label = nil;
SF_MissionPanel.Category2Label = nil;

local FONT_HGT_SMALL = getTextManager():getFontHeight(UIFont.Small);
local FONT_HGT_MEDIUM = getTextManager():getFontHeight(UIFont.Medium);


function SF_MissionPanel:initialise()
    ISPanelJoypad.initialise(self);
end

function SF_MissionPanel:createChildren()
    ISPanelJoypad.createChildren(self);

	local th = math.max(16, FONT_HGT_SMALL + 1);
		
	self.tabs = ISTabPanel:new(0, th, self.width, self.height - (th * 1.5))
	self.tabs:setAnchorRight(true)
	self.tabs:setAnchorTop(true)
	self.tabs:setEqualTabWidth(false)
	self:addChild(self.tabs)

	local prog = self.player:getModData().missionProgress
	local hasModData = prog ~= nil

	local tempTitle1 = getText("IGUI_XP_Quests_QuestLog");
	local tempGreyed = false;
	if hasModData and prog.Category1Label then
		tempTitle1 = getText(prog.Category1Label);
	end
	if hasModData and prog.Category1Greyed then
		tempGreyed = true;
	end

	local btnHgt2 = math.max(FONT_HGT_SMALL, 20)
		
	local btnX = self.width - ((btnHgt2 + 4) * 2);
	local btnY = (self.tabs.height / 2) + 4;
	self.nextPage = ISButton:new(btnX, btnY, btnHgt2, btnHgt2, ">", self, SF_MissionPanel.onClick);
	self.nextPage.internal = "NEXTPAGE";
	self.nextPage:initialise();
	self.nextPage:instantiate();
	self.nextPage.borderColor = {r=1, g=1, b=1, a=0.1};
	self.nextPage:setVisible(false);
	self:addChild(self.nextPage);
	btnX = btnX - btnHgt2 - 2;
	
	self.previousPage = ISButton:new(btnX, btnY, btnHgt2, btnHgt2, "<", self, SF_MissionPanel.onClick);
	self.previousPage.internal = "PREVIOUSPAGE";
	self.previousPage:initialise();
	self.previousPage:instantiate();
	self.previousPage.borderColor = {r=1, g=1, b=1, a=0.1};
	self.previousPage:setEnable(false);
	self.previousPage:setVisible(false);
	self:addChild(self.previousPage);
	btnX = btnX - btnHgt2 - 2;
	
	local labelText = getText("IGUI_Pages") .. tostring(self.currentPage) .. "/" .. tostring(#self.lore or 1);
	local stringWidth = getTextManager():MeasureStringX(self.font, labelText);
	self.pageLabel = ISLabel:new (btnX, btnY, FONT_HGT_SMALL, labelText, 1, 1, 1, 1, self.font, false);
	self.pageLabel:initialise();
	self.pageLabel:instantiate();
	self.pageLabel:setVisible(false);
	self:addChild(self.pageLabel);
	
	self.titleLabel = ISLabel:new (10, btnY, FONT_HGT_SMALL, self.loretitle, 1, 1, 1, 1, self.font, true);
	self.titleLabel:initialise();
	self.titleLabel:instantiate();
	self.titleLabel:setVisible(false);
	self:addChild(self.titleLabel);
	
	self.richText = MapSpawnSelectInfoPanel:new(0, btnY + 12, self.width - 26,150);
	self.richText.autosetheight = false;
	self.richText.clip = true
	self.richText:initialise();
	self.richText.background = false;
	self.richText:setAnchorTop(true);
	self.richText:setAnchorLeft(true);
	self.richText:setVisible(false);
	self.richText.backgroundColor  = {r=0, g=0, b=0, a=0.5};
	self:addChild(self.richText);
	self.richText:addScrollBars();
	
	local listbox1 = SFQuest_MissionLists:new(0, 0, self.tabs.width, self.tabs.height - self.tabs.tabHeight, self.player, true)
	listbox1:setAnchorRight(true)
	listbox1:setAnchorTop(true)
	listbox1:setFont(UIFont.Small, 2)
	listbox1.itemheight = math.max(32, FONT_HGT_SMALL) + 2 * 2
	self.tabs:addView(tempTitle1, listbox1)
	self.listbox1 = listbox1


	local listbox2 = SFQuest_MissionLists:new(0, 0, self.tabs.width, self.tabs.height - self.tabs.tabHeight, self.player, false)
	listbox2:setAnchorRight(true)
	listbox2:setAnchorTop(true)
	listbox2:setFont(UIFont.Small, 2)
	listbox2.itemheight = math.max(32, FONT_HGT_SMALL) + 2 * 2
	local tabtitle2 = getText("IGUI_XP_Quests_ActiveQuests");
	self.tabs:addView(tabtitle2, listbox2)
	self.listbox2 = listbox2
	
	local factionbox = SFQuest_FactionLists:new(0, 0, self.tabs.width, self.tabs.height - self.tabs.tabHeight, self.player, false)
	factionbox:setAnchorRight(true)
	factionbox:setAnchorBottom(true)
	factionbox:setFont(UIFont.Small, 2)
	factionbox.itemheight = math.max(32, FONT_HGT_SMALL) + 2 * 2
	local tabtitle3 = getText("IGUI_XP_Factions");
	self.tabs:addView(tabtitle3, factionbox)
	self.factionbox = factionbox

	self:setLists()
end

function SF_MissionPanel:setLists()
	local cat1 = {}
	local cat2 = {}
	local faction = {}
	local prog = self.player:getModData().missionProgress

	if prog and prog.Category1 then
		local cat1Table = prog.Category1;
		if #cat1Table > 0 then
			for i=1,#cat1Table do
				local item = cat1Table[i]
				table.insert(cat1, item)
			end
		end
	end

	if prog and prog.Category2 then
		local cat2Table = prog.Category2;
		if #cat2Table > 0 then
			for i=1,#cat2Table do
				local item = cat2Table[i]
				table.insert(cat2, item)
			end
		end
	end

	if prog and prog.Factions then
		local factTable = prog.Factions;
		if #factTable > 0 then
			for i=1,#factTable do
				local item = factTable[i]
				table.insert(faction, item)
			end
		end
	end

	if self.listbox1 then
		self.listbox1:clear()
	for _,item in ipairs(cat1) do
		self.listbox1:addItem(item.name, item)
	end
	end

	if self.listbox2 then
	self.listbox2:clear()
	for _,item in ipairs(cat2) do
		self.listbox2:addItem(item.name, item)
	end
	end
	
	if self.factionbox then
	self.factionbox:clear()
		for _,item in ipairs(faction) do
			self.factionbox:addItem(item.name, item)
		end
	end
end

function SF_MissionPanel:onClick(button)
    if button.internal == "NEXTPAGE" then
        self.currentPage = self.currentPage + 1;
		local text = getText(self.lore[self.currentPage]);
		self.richText.text = text;
        if self.currentPage == #self.lore then
            self.nextPage:setEnable(false);
        else
            self.nextPage:setEnable(true);
        end
        self.previousPage:setEnable(true);
    elseif button.internal == "PREVIOUSPAGE" then
        self.currentPage = self.currentPage - 1;
		local text = getText(self.lore[self.currentPage]);
		self.richText.text = text;
        if self.currentPage == 1 then
            self.previousPage:setEnable(false);
        else
            self.previousPage:setEnable(true);
        end
        self.nextPage:setEnable(true);
    end

    if self.pageLabel then
        self.pageLabel.name = getText("IGUI_Pages") .. self.currentPage .. "/" ..(#self.lore or 1);
    end
end

-------------------------------------------------------------------------------------------------------------------------------------

function SF_MissionPanel:addQuestToCategory(quest, category, sound)
	if not category then return end;
	local prog = self.player:getModData().missionProgress
	if prog and prog[category] then
		local timedQuest = quest;
		timedQuest.timetag = getGameTime():getWorldAgeHours();
		table.insert(prog[category], timedQuest);
		if sound then
			self.player:getEmitter():playSound(sound);
		end
		self.needsBackup = true;
	end
end

function SF_MissionPanel:backupData()
	local player = self.player or getPlayer();
	local data = player:getModData().missionProgress;
	if not data then
		print("Player had no quest data for the backup.");
		return
	end
	if isClient() then
		sendClientCommand(player, 'SFQuest', 'saveData', data);
	else
		SFQuest_Server.localBackup(player, data);
	end;
end


function SF_MissionPanel:checkObjectivesForCompletion(type, entry, newStatus)
	local status = newStatus or "Obtained";
	local prog = self.player:getModData().missionProgress

	if prog and prog.Category2 then
		local currentTasks = prog.Category2
		if #currentTasks > 0 then
			for i=1,#currentTasks do
				local task = currentTasks[i]
				if task.objectives and #task.objectives > 0 then
					for k=1,#task.objectives do
						local objective = task.objectives[k]
						if not objective.status then
							if type == "item" and objective.needsitem and objective.needsitem == entry then
								SF_MissionPanel.instance:updateObjective(task.guid, k, status)
							end
						end
					end
				end
			end
		end
	end
end


function SF_MissionPanel:countActiveQuestsWithCode(dailycode)
	local player = getPlayer();
	local prog = player:getModData().missionProgress
	if prog and prog.Category2 then
		local activeQuests = prog.Category2;
		local count = 0;
		for q=1,#activeQuests do
			if activeQuests[q].dailycode and activeQuests[q].dailycode == dailycode then
				count = count + 1;
			end
		end
		return count
	end
	return 0
end

function SF_MissionPanel:getActiveQuest(guid)
	local player = self.player or getPlayer();
	local prog = player:getModData().missionProgress
	if prog and prog.Category2 then
		local currentTasks = prog.Category2
		if #currentTasks > 0 then
			for i=1,#currentTasks do
				local task = currentTasks[i]
				if task.guid and task.guid == guid then
					return task;
				end
			end
		end
		print("SOUL QUEST SYSTEM - No quest with guid: " .. guid .. " in the list of active quests.")
	end
	return nil
end

function SF_MissionPanel:getDailyEvent(dailycode)
	for i=1,#SFQuest_Database.DailyEventPool do
		if SFQuest_Database.DailyEventPool[i].dailycode and SFQuest_Database.DailyEventPool[i].dailycode == dailycode then
			return SFQuest_Database.DailyEventPool[i];
		end
	end
	print("SOUL QUEST SYSTEM - No daily event with dailycode: " .. dailycode .. " in the pool of daily events.")
	return nil
end

function SF_MissionPanel:getQuest(guid)
	for i=1,#SFQuest_Database.QuestPool do
		if SFQuest_Database.QuestPool[i].guid and SFQuest_Database.QuestPool[i].guid == guid then
			return SFQuest_Database.QuestPool[i];
		end
	end
	print("SOUL QUEST SYSTEM - No quest with guid: " .. guid .. " in the pool of quests.")
	return nil
end

function SF_MissionPanel:getStartingHour()
	local timeofday = getGameTime():getStartTimeOfDay();
	local modifier = 0;
	if timeofday >= 7 then
		modifier = 7;
	else
		modifier = -17; -- 19 e 22 pra 2AM e 5AM
	end
	return modifier
end

function SF_MissionPanel:getTimer(guid)
	for i=1,#SFQuest_Database.TimerPool do
		if SFQuest_Database.TimerPool[i].guid and SFQuest_Database.TimerPool[i].guid == guid then
			return SFQuest_Database.TimerPool[i];
		end
	end
	print("SOUL QUEST SYSTEM - No Timer with guid: " .. guid .. " in the pool of timers.")
	return nil
end

function SF_MissionPanel:removeCallFromList(guid)
	local prog = self.player:getModData().missionProgress
	if prog and prog.Calls then
		local calls = prog.Calls;
		if #calls > 0 then
			for i=1,#calls do
				if calls[i] == guid then
					table.remove(calls, i);
					break
				end
			end
		end
	end
end

function SF_MissionPanel:returnAwardedItemsForEventWindow(awardeditem)
	local tab = luautils.split(awardeditem, ";");
	local scriptItem = getScriptManager():FindItem(tab[1])
	local itemName = scriptItem:getName();
	local finalstring = itemName
	if tab[2] then
		finalstring = itemName .. " X " .. tab[2];
		return finalstring;
	end
end

function SF_MissionPanel:unlockQuestsFromPager()
	local prog = self.player:getModData().missionProgress
	if prog and prog.CategoryPager then
		local pagerTasks = prog.CategoryPager;
		local currentTasks = prog.Category2;
		if #pagerTasks > 0 then
			for i=1,#pagerTasks do
				if not pagerTasks[i].update then
					local task = pagerTasks[i];
					table.insert(currentTasks, task);
					table.remove(pagerTasks, i);
					if task.unlocks then
						local commandTable = luautils.split(task.unlocks, ";");
						SF_MissionPanel.instance:readCommandTable(commandTable);
					end
				else
					local update = pagerTasks[i];
					if update.unlocks then
						local commandTable = luautils.split(update.unlocks, ";");
						SF_MissionPanel.instance:readCommandTable(commandTable);
					end
					for t=1,#currentTasks do
						local task = currentTasks[t]
						if task.guid == update.task then
							if update.index then --this is an update for one of the task's objectives
								local objective = currentTasks[t].objectives[update.index] or {}
								objective.status = update.status;
								if update.blockscompletion then
									objective.blockscompletion = update.blockscompletion;
								end
								if update.text then
									objective.text = update.text;
								end
								currentTasks[t].objectives[update.index] = objective;
							else -- this is an update for the task in general
								currentTasks[t].status = update.status;
								if update.text then
									currentTasks[t].text = update.text;
								end
							end
						end
					end
					table.remove(pagerTasks, i);
				end
				self.needsUpdate = true;
				self.needsBackup = true;
			end
		else
			print("pager list did not contain any tasks, unable to search for provided guid.")
			return
		end
	else
		print("Player does not have a pager list.");
		return
	end
end

function SF_MissionPanel:updateLore(guid, lore)
	local player = self.player or getPlayer();
	local prog = player:getModData().missionProgress
	if prog and prog.Category2 then
		local currentTasks = prog.Category2;
		if #currentTasks > 0 then
			for i=1,#currentTasks do
				local task = currentTasks[i]
				if task.guid and task.guid == guid then
					if not task.lore then
						task.lore = {};
					end
					for l=1, #lore do
						table.insert(task.lore, lore[l])
					end
					self.needsUpdate = true;
					self.needsBackup = true;
					break
				end
			end
		end
	end
end

--------------------------------------------------------------------------------------------------------
-- Faction-related functions

function SF_MissionPanel:awardReputation(faction, value)
	local player = self.player or getPlayer();
	local prog = player:getModData().missionProgress
	if prog and prog.Factions then
		local factions = prog.Factions;

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
					break
				end
			end
		end
		if facIndex then
			local playerFaction = factions[facIndex]
			for i=1,#SFQuest_Database.FactionPool do
				if SFQuest_Database.FactionPool[i].factioncode and SFQuest_Database.FactionPool[i].factioncode == faction then
					if SFQuest_Database.FactionPool[i].maxtier then maxTier = SFQuest_Database.FactionPool[i].maxtier end
					if currentTier == maxTier then
						playerFaction.reputation = currentRep + value;
						if playerFaction.reputation > playerFaction.repmax then
							playerFaction.reputation = playerFaction.repmax;
						end
					else
						playerFaction.reputation = currentRep + value;
						if playerFaction.reputation >= playerFaction.repmax then
							newTier = currentTier + 1;
							playerFaction.tierlevel = newTier;
							playerFaction.reputation = playerFaction.reputation - playerFaction.repmax;
							if SFQuest_Database.FactionPool[i].tiers then
								local tier = SFQuest_Database.FactionPool[i].tiers[newTier];
								if tier.unlocks then
									local commandTable = luautils.split(tier.unlocks, ";");
									SF_MissionPanel.instance:readCommandTable(commandTable);
								end
								playerFaction.tiername = tier.tiername;
								playerFaction.repmax = tier.minrep;
								playerFaction.tiercolor = tier.barcolor;
							end
						end
					end
				end
			end
			self.needsUpdate = true;
			self.needsBackup = true;
		end
	end
end

function SF_MissionPanel:getColor(color)
	return SFQuest_Database.ColorPool[color];
end

function SF_MissionPanel:getReputationTier(faction, player)
	local player = player or getPlayer();
	local prog = player:getModData().missionProgress
	if prog and prog.Factions then
		local factions = prog.Factions;
		if #factions > 0 then
			for j=1,#factions do
				if factions[j].factioncode and factions[j].factioncode == faction then
					local tier = factions[j].tierlevel or 1;
					return tier;
				end
			end
		end
	end
	print("Player is missing data for the requested faction's tier. Returning 1 as the tier to avoid errors.");
	return 1;
end

function SF_MissionPanel:getColorForFactionTier(faction, reputation)
	for i=1,#SFQuest_Database.FactionPool do
		if SFQuest_Database.FactionPool[i].factioncode and SFQuest_Database.FactionPool[i].factioncode == faction then
			print("Found the right faction, now seeking for the proper color!");
			if SFQuest_Database.FactionPool[i].tiers then
				local tiers = SFQuest_Database.FactionPool[i].tiers;
				if #tiers > 0 then
					for j=1,#tiers do
						if tiers[j].minrep and reputation > tiers[j].minrep then
							print("Tier's minimum reputation was " .. tostring(tiers[j].minrep) .. " so player has enough reputation for this tier.");
							local color = tiers[j].barcolor;
							print("Tier's color was " .. color);
							if color and SFQuest_Database.ColorPool[color] then
								print("Color " .. color .. " was found! Let's return it then.");
								local tab = SFQuest_Database.ColorPool[color];
								return tab;
							end
						end
					end
				end
			end
		end
	end
	return {1.0, 1.0, 1.0}
end

--------------------------------------------------------------------------------------------------------
-- World Event functions

function SF_MissionPanel:getDialogueInfo(code)
	for i=1,#SFQuest_Database.DialoguePool do
		if SFQuest_Database.DialoguePool[i].dialoguecode and SFQuest_Database.DialoguePool[i].dialoguecode == code then	
			return SFQuest_Database.DialoguePool[i];
		end
	end
	print("SOUL QUEST SYSTEM - Unable to find a Dialogue with dialoguecode: " .. code);
	return nil
end

function SF_MissionPanel:getWorldInfo(identity)
	for i=1,#SFQuest_Database.WorldPool do
		if SFQuest_Database.WorldPool[i].identity and SFQuest_Database.WorldPool[i].identity == identity then	
			return SFQuest_Database.WorldPool[i];
		end
	end
	print("SOUL QUEST SYSTEM - Unable to find a World Event with identity: " .. identity);
	return nil
end

-- Removes a Word Event from a player's list.
function SF_MissionPanel:removeWorldEvent(squaretag)
	local player = self.player or getPlayer();
	local prog = player:getModData().missionProgress
	if prog and prog.WorldEvent then
		local worldEvents = prog.WorldEvent
		if worldEvents[squaretag] and worldEvents[squaretag].marker then
			worldEvents[squaretag].marker:remove();
		end
		worldEvents[squaretag] = nil;
	end
end

-- Searches for world events that match the dailycode and remove them
function SF_MissionPanel:removeWorldEventsWithCode(dailycode)
	local player = self.player or getPlayer();
	local prog = player:getModData().missionProgress
	if prog and prog.WorldEvent then
		for k, v in ipairs(prog.WorldEvent) do
			if v.dailycode and v.dailycode == dailycode then
				SF_MissionPanel.instance:removeWorldEvent(k);
			end
		end
	end
end

---------------------------------------------------------------------------------------------------------
-- Mission Panel internal functions

function SF_MissionPanel:prerender()
    ISPanelJoypad.prerender(self);

	if self.needsUpdate == true then
		self:setLists();
		self.needsUpdate = false;
	end
end

function SF_MissionPanel:triggerUpdate()
	self.needsUpdate = true;
end

function SF_MissionPanel:render()
    ISPanelJoypad.render(self);

	if self.richText:getIsVisible() then
		self.richText:paginate();
	end
	
    self:setWidthAndParentWidth(400);
    self:setHeightAndParentHeight(self.height);
end

function SF_MissionPanel:update()
    ISPanelJoypad.update(self);
end

--[[
function SF_MissionPanel:setJoypadButtons()
    self:clearJoypadFocus()
    self.joypadButtonsY = {}
    self.joypadIndexY = 1
    self.joypadIndex = 1
    for _,ui in ipairs(self.viewButtons[self.currentViewID]) do
        self:insertNewLineOfButtons(ui)
    end
    self:insertNewLineOfButtons(self.toggleAdvBtn)
    self:restoreJoypadFocus()
end

function SF_MissionPanel:onGainJoypadFocus(joypadData)
    ISPanelJoypad.onGainJoypadFocus(self, joypadData)
    self:setJoypadButtons()
end

function SF_MissionPanel:onLoseJoypadFocus(joypadData)
    ISPanelJoypad.onLoseJoypadFocus(self, joypadData)
end
]]--
function SF_MissionPanel:onJoypadDown(button, joypadData)
    if button == Joypad.BButton then
        getPlayerInfoPanel(self.playerNum):toggleView(xpSystemText.clothingIns);
        setJoypadFocus(self.playerNum, nil);
        return;
    end
    if button == Joypad.LBumper then
        getPlayerInfoPanel(self.playerNum):onJoypadDown(button, joypadData);
        return;
    end
    if button == Joypad.RBumper then
        getPlayerInfoPanel(self.playerNum):onJoypadDown(button, joypadData);
        return;
    end
    ISPanelJoypad.onJoypadDown(self, button, joypadData);
end

---@param player IsoPlayer
---@param x number
---@param y number
---@param width number
---@param height number
---@return SF_MissionPanel
function SF_MissionPanel:new(player, x, y, width, height)
    local o = ISPanelJoypad:new(x, y, width, height) --[[@as SF_MissionPanel]]
    o:noBackground();
    setmetatable(o, self);
    self.__index = self;
    o.player = player;
    o.playerNum = player:getPlayerNum();
    o.refreshNeeded = true;
	o.needsBackup = false;
	o.needsUpdate = false;
    o.bFemale = o.player:isFemale();
    o.borderColor = {r=0.4, g=0.4, b=0.4, a=1};
    o.backgroundColor = {r=0, g=0, b=0, a=0.8};
	o.expanded = nil;
	o.lore = {};
	o.loretitle = "???";
	o.currentPage = 1;
	SF_MissionPanel.instance = o;
    return o;
end
require "ISUI/ISPanelJoypad"

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

---------------------------------------------------------------------------------------------------------
-- ISPanelJoypad Lifecycle

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

function SF_MissionPanel:prerender()
    ISPanelJoypad.prerender(self);

	if self.needsUpdate == true then
		self:setLists();
		self.needsUpdate = false;
	end
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

---------------------------------------------------------------------------------------------------------
-- UI Helpers

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

function SF_MissionPanel:triggerUpdate()
	self.needsUpdate = true;
end

---------------------------------------------------------------------------------------------------------
-- Constructor

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

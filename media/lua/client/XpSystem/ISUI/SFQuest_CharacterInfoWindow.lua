require "ISUI/ISCollapsableWindow"
require "ISUI/ISLayoutManager"
require "XpSystem/ISUI/ISCharacterInfoWindow"

print("zSOUL QUEST SYSTEM - Loading CharacterInfoWindow.lua");

local previous_ISCharacterInfoWindow_createChildren = ISCharacterInfoWindow.createChildren
function ISCharacterInfoWindow:createChildren()
	self.questView = SF_MissionPanel:new(getSpecificPlayer(self.playerNum), 0, 8, 420, 400)
	self.questView:initialise()
	self.questView.infoText = getTextOrNull("UI_QuestPanel");
	previous_ISCharacterInfoWindow_createChildren(self)
	xpSystemText.quest = getText("IGUI_XP_Quests");
	self.panel:addView(xpSystemText.quest, self.questView);
end

local previous_ISCharacterInfoWindow_onTabTornOff = ISCharacterInfoWindow.onTabTornOff
function ISCharacterInfoWindow:onTabTornOff(view, window)
    if self.playerNum == 0 and view == self.questView then
        ISLayoutManager.RegisterWindow('charinfowindow.quest', ISCollapsableWindow, window)
    end
    previous_ISCharacterInfoWindow_onTabTornOff(self, view, window)
	
end

-- Redefine RestoreLayout to include your 'quest' tab and fix the typo
local previous_ISCharacterInfoWindow_RestoreLayout = ISCharacterInfoWindow.RestoreLayout
function ISCharacterInfoWindow:RestoreLayout(name, layout)
	print("zSOUL QUEST SYSTEM - RestoreLayout original overwrite successful");
	previous_ISCharacterInfoWindow_RestoreLayout(self, name, layout)
	xpSystemText.quest = getText("IGUI_XP_Quests");
	-- ISLayoutManager.DefaultRestoreWindow(self, layout)
	-- if layout.pin == 'true' then
	--     ISCollapsableWindow.pin(self) -- don't call self:pin()
	-- elseif layout.pin == 'false' then
	--     self:collapse()
	--     self.isCollapsed = true
	--     self:setMaxDrawHeight(self:titleBarHeight())
	-- end
	-- fix the typo 'porotection' to 'protection'
	local floating = { protection = false, quest = true }
	if layout.tabs ~= nil then
	    local tabs = string.split(layout.tabs, ',')
	    for k,v in pairs(tabs) do
	        if v == 'quest' then
	            floating.quest = false
	        end
	    end
	else
	    floating.quest = false
	end
	
	-- Handle floating tabs for existing views
	-- if floating.info then
	--     self.panel:removeView(self.charScreen)
	--     local newWindow = ISCollapsableWindow:new(0, 0, self.charScreen:getWidth(), self.charScreen:getHeight())
	--     newWindow:initialise()
	--     newWindow:addToUIManager()
	--     newWindow:addView(self.charScreen)
	--     newWindow:setTitle(xpSystemText.info)
	--     self:onTabTornOff(self.charScreen, newWindow)
	-- end
	-- if floating.skills then
	--     self.panel:removeView(self.characterView)
	--     local width = self.characterView.txtLen + 180
	--     local height = (110 + PerkFactory.PerkList:size() * 20) + 8
	--     local newWindow = ISCollapsableWindow:new(0, 0, width, height)
	--     newWindow:initialise()
	--     newWindow:addToUIManager()
	--     newWindow:addView(self.characterView)
	--     newWindow:setTitle(xpSystemText.skills)
	--     self:onTabTornOff(self.characterView, newWindow)
	-- end
	-- if floating.health then
	--     self.panel:removeView(self.healthView)
	--     local width = self.healthView.healthPanel:getWidth()
	--     local height = self.healthView.healthPanel:getHeight() + 30
	--     local newWindow = ISCollapsableWindow:new(0, 0, width, height)
	--     newWindow:initialise()
	--     newWindow:addToUIManager()
	--     newWindow:addView(self.healthView)
	--     newWindow:setTitle(xpSystemText.health)
	--     self:onTabTornOff(self.healthView, newWindow)
	-- end
	-- if floating.clothingIns and false then
	--     self.panel:removeView(self.clothingView)
	--     local width = self.clothingView:getWidth()
	--     local height = self.clothingView:getHeight() + 30
	--     local newWindow = ISCollapsableWindow:new(0, 0, width, height)
	--     newWindow:initialise()
	--     newWindow:addToUIManager()
	--     newWindow:addView(self.clothingView)
	--     newWindow:setTitle(xpSystemText.clothingIns)
	--     self:onTabTornOff(self.clothingView)
	-- end
	if floating.protection then
	    self.panel:removeView(self.protectionView)
	    local newWindow = ISCollapsableWindow:new(0, 0, self.protectionView:getWidth(), self.protectionView:getHeight())
	    newWindow:initialise()
	    newWindow:addToUIManager()
	    newWindow:addView(self.protectionView)
	    newWindow:setTitle(xpSystemText.protection)
	    self:onTabTornOff(self.protectionView, newWindow)
	end

	if floating.quest then
	    self.panel:removeView(self.questView)
	    local newWindow = ISCollapsableWindow:new(0, 0, self.questView:getWidth(), self.questView:getHeight())
	    newWindow:initialise()
	    newWindow:addToUIManager()
	    newWindow:addView(self.questView)
	    newWindow:setTitle(xpSystemText.quest)
	    self:onTabTornOff(self.questView, newWindow)
	end
	
	-- Activate the current tab if it's not floating
	-- if layout.current and not floating[layout.current] then
	--     self.panel:activateView(xpSystemText[layout.current])
	-- end
end


local previous_ISCharacterInfoWindow_SaveLayout = ISCharacterInfoWindow.SaveLayout
function ISCharacterInfoWindow:SaveLayout(name, layout)
    previous_ISCharacterInfoWindow_SaveLayout(self, name, layout)
    local tabs = {}
    if layout.tabs and layout.tabs ~= '' then
        for tab in string.gmatch(layout.tabs, '([^,]+)') do
            table.insert(tabs, tab)
        end
    end
    if self.questView.parent == self.panel then
        table.insert(tabs, 'quest')
        if self.questView == self.panel:getActiveView() then
            layout.current = 'quest'
        end
    end
    layout.tabs = table.concat(tabs, ',')
end

-- local previous_ISCharacterInfoWindow_SaveLayout = ISCharacterInfoWindow.SaveLayout
-- function ISCharacterInfoWindow:SaveLayout(name, layout)
--     previous_ISCharacterInfoWindow_SaveLayout(self,name,layout)
--     local tabs = {}
--         if self.questView.parent == self.panel then
--             table.insert(tabs, "quest")
--             if self.questView == self.panel:getActiveView() then
--                 layout.current = "quest"
--             end
--         end
--         if not layout.tabs then layout.tabs = "" end
--         layout.tabs = layout.tabs .. table.concat(tabs, ',')
-- end

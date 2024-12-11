
local function loadTexture(id, icons)
    if id > -1 and id < icons:size() then
        return getTexture("Item_"..tostring(icons:get(id)));
    end
end

local function getRealTexture(scriptItem)
	local texture = scriptItem:getNormalTexture()
	if not texture then
		local obj = scriptItem:InstanceItem(nil)
		if obj then
			local icons = scriptItem:getIconsForTexture()
			if icons and icons:size() > 0 then
				texture = loadTexture(obj:getVisual():getBaseTexture(), icons) or loadTexture(obj:getVisual():getTextureChoice(), icons)
			else
				texture = obj:getTexture()
			end
		end
	end
	return texture
end

local original_SFQuest_WorldEventWindow_createChildren = SFQuest_WorldEventWindow.createChildren
function SFQuest_WorldEventWindow:createChildren()
	-- original_SFQuest_WorldEventWindow_createChildren(self)
	
	--original version
	ISCollapsableWindow.createChildren(self)
	self.richText = MapSpawnSelectInfoPanel:new(44, 10, 290,135);
	self.richText.autosetheight = false;
	self.richText.clip = true
	self.richText:initialise();
	self.richText.background = false;
	self.richText:setAnchorTop(true);
	self.richText:setAnchorLeft(true);
	self.richText:setVisible(false);
	self.richText.backgroundColor  = {r=0, g=0, b=0, a=0.5};
	self.richText.text = getText(self.dialogueinfo.text) or "...";
	self:addChild(self.richText);
	self.richText:addScrollBars()
	
	local btnHeight = self.height - 30;
    self.CloseBtn = ISButton:new(12, btnHeight, 100, 20, getText("IGUI_CraftUI_Close"), self, function(self, button) self:close() end);
    self.CloseBtn.internal = "CLOSE";
    self.CloseBtn:initialise();
    self.CloseBtn:instantiate();
    self.CloseBtn.borderColor = self.buttonBorderColor;
	self.CloseBtn:setVisible(false);
    self:addChild(self.CloseBtn);		
	
	if self.dialogueinfo.sound then
		self.playTalk = getSoundManager():PlaySound(self.dialogueinfo.sound.begin, false, 1.0);
	end
	if self.dialogueinfo.optional then
		self.DeclineBtn = ISButton:new(12, btnHeight, 100, 20, getText("IGUI_Decline"), self, SFQuest_WorldEventWindow.onOptionMouseDown);
		self.DeclineBtn.internal = "DECLINE";
		self.DeclineBtn:initialise();
		self.DeclineBtn:instantiate();
		self.DeclineBtn.borderColor = self.buttonBorderColor;
		self:addChild(self.DeclineBtn);	
		btnHeight = btnHeight - 24;
	end
	
	if self.command and self.command == "unlockquest" then
		self.AcceptBtn = ISButton:new(12, btnHeight, 100, 20, getText("IGUI_TradingUI_AcceptDeal"), self, SFQuest_WorldEventWindow.onOptionMouseDown);
		self.AcceptBtn.internal = "ACCEPT";
		self.AcceptBtn:initialise();
		self.AcceptBtn:instantiate();
		self.AcceptBtn.borderColor = self.buttonBorderColor;
		self:addChild(self.AcceptBtn);	
	end
	
	-- Not the ideal place to put this but I guess it works so what the hell
	if self.command and self.command == "completequest" then
		self.CloseBtn:setVisible(true);
		local neededStuffTaken = true;
		if self.quest.needsitem then
			neededStuffTaken = SF_MissionPanel.instance:takeNeededItem(self.quest.needsitem);
		end
		if neededStuffTaken then
			SF_MissionPanel.instance:removeWorldEvent(self.worldinfo.square);
			SF_MissionPanel.instance:completeQuest(self.character, self.questid);
		elseif not neededStuffTaken then
			SF_MissionPanel.instance:checkQuestForCompletionByType("item", nil, "Obtained");
			self.richText.text = getText("IGUI_FailCompleteQuest") or "...";
		end
	elseif self.command and self.command == "updateobjectivestatus" then
		self.CloseBtn:setVisible(true);
		local index = tonumber(self.commandparam2); 
		local neededStuffTaken = true;
		if self.quest.objectives and self.quest.objectives[index] and self.quest.objectives[index].needsitem then
			neededStuffTaken = SF_MissionPanel.instance:takeNeededItem(self.quest.objectives[index].needsitem);
		end
		if neededStuffTaken then
			SF_MissionPanel.instance:removeWorldEvent(self.worldinfo.square);
			SF_MissionPanel:updateObjective(self.questid, index, self.commandparam3);
		end		
	end
	if self.questid and self.dialogueinfo.lore then
		SF_MissionPanel.instance:updateLore(self.questid, self.dialogueinfo.lore);
	end
end

local original_SFQuest_WorldEventWindow_close = SFQuest_WorldEventWindow.close
function SFQuest_WorldEventWindow:close()
	original_SFQuest_WorldEventWindow_close(self)
	if self.playTalk then
		self.playTalk:stop()
	end
end

local original_SFQuest_WorldEventWindow_onOptionMouseDown = SFQuest_WorldEventWindow.onOptionMouseDown
function SFQuest_WorldEventWindow:onOptionMouseDown(button, x, y)
	if button.internal == "ACCEPT" then
		if self.playTalk then --added feature for dialogue sound
			self.playTalk:stop()
			if self.dialogueinfo.sound.accept then
				self.playTalk = getSoundManager():PlaySound(self.dialogueinfo.sound.accept, false, 1.0);
			end
		end
		self.richText.text = getText(self.dialogueinfo.textaccepted) or "...";
		self.AcceptBtn:setVisible(false);
		self.CloseBtn:setVisible(true);
		if self.DeclineBtn then
			self.DeclineBtn:setVisible(false);
		end
		SF_MissionPanel.instance:removeWorldEvent(self.worldinfo.square); -- fix, put this here and not after unlockQuest to avoid removing the new worldevent
		if self.overrideRewardItem then
			SF_MissionPanel.instance:unlockQuest(self.questid, self.overrideRewardItem);
		else
			SF_MissionPanel.instance:unlockQuest(self.questid);	
		end
    end
    if button.internal == "DECLINE" then
		if self.playTalk then --added feature for dialogue sound
			self.playTalk:stop()
			if self.dialogueinfo.sound.decline then
				self.playTalk = getSoundManager():PlaySound(self.dialogueinfo.sound.decline, false, 1.0);
			end
		end
		self.richText.text = getText(self.dialogueinfo.textdeclined) or "...";
		self.DeclineBtn:setVisible(false);
		self.AcceptBtn:setVisible(false);
		self.CloseBtn:setVisible(true);
    end
	-- original_SFQuest_WorldEventWindow_onOptionMouseDown(self, button, x, y)
end

local original_SFQuest_WorldEventWindow_render = SFQuest_WorldEventWindow.render
function SFQuest_WorldEventWindow:render()
	local picWidth = 100;
	if self.worldinfo.picture then
		texture = getTexture(self.worldinfo.picture);
		self:drawTexture(texture, 12, 28, 1, 1, 1, 1);
		self:drawRectBorder(12, 28, texture:getWidth(), texture:getHeight(), 0.5, 1, 1, 1);
		picWidth = texture:getWidth();
	end

	self.richText:setX(12 + picWidth)
	self.richText:setY(16)
	self.richText:setVisible(true);
	self.richText:paginate();
	
	local textX = 12 + picWidth + 36;
	local rewardHeight = self.height - self.fontHeight - 12
	local hasRewards = false;
	
	if self.quest and self.quest.awardsrep and not (self.command == "updateobjectivestatus") then
		local repTable = luautils.split(self.quest.awardsrep, ";");
		--local factionName = 
		local repBonus = repTable[2];
		local repStr = "+" .. repBonus .. " reputation";
		self:drawTextureScaledAspect(getTexture("media/textures/Item_PlusRep.png"), textX, rewardHeight, 20, 20, 1, 1, 1, 1);
		self:drawText(repStr, textX + 22, rewardHeight + 2, 1, 1, 1, 1, self.font);	
		rewardHeight = rewardHeight - 22;
		hasRewards = true;
	end
	
	if self.quest and self.quest.awardsitem and not (self.command == "updateobjectivestatus") then
		local rewardTable = luautils.split((self.overrideRewardItem or self.quest.awardsitem), ";")
		hasRewards = false
		local count = 1
	
		while rewardTable[count] do
			local scriptItem = getScriptManager():FindItem(rewardTable[count])
			if not scriptItem then
				local javaItem = getScriptManager():getItemsByType(rewardTable[count])
				if javaItem and javaItem:size() > 0 then
					scriptItem = javaItem:get(0)
				end
			end
	
			if scriptItem then
				local itemName = scriptItem:getDisplayName()
				local texture = getRealTexture(scriptItem)
				local quantity = rewardTable[count + 1] or "1"
				local rewardStr = itemName
	
				if quantity ~= "1" then
					rewardStr = itemName .. "  X " .. quantity
				end
	
				self:drawTextureScaledAspect(texture, textX, rewardHeight, 20, 20, 1, 1, 1, 1)
				self:drawText(rewardStr, textX + 22, rewardHeight + 2, 1, 1, 1, 1, self.font)
				hasRewards = true
				rewardHeight = rewardHeight - 22
			end
	
			count = count + 2
		end
	end
	if hasRewards then
		self:drawText(getText("IGUI_Rewards"), 12 + picWidth + 24, rewardHeight + 4, 1, 1, 1, 1, self.font);
	end
end

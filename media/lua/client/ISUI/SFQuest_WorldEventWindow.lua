SFQuest_WorldEventWindow = ISCollapsableWindow:derive("SFQuest_WorldEventWindow")
SFQuest_WorldEventWindow.tooltip = nil;

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

function SFQuest_WorldEventWindow:initialise()
	ISCollapsableWindow.initialise(self);
end

function SFQuest_WorldEventWindow:createChildren()
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
	elseif self.command and self.command == "completequest" then
		self.CloseBtn:setVisible(true);
		local isNeededStuff = true;
		if self.quest.needsitem then
			isNeededStuff = SF_MissionPanel.instance:checkItemQuantity(self.quest.needsitem);
		end
		if isNeededStuff then
			self.CompleteBtn = ISButton:new(12, btnHeight, 100, 20, "COMPLETE", self, SFQuest_WorldEventWindow.onOptionMouseDown);
			self.CompleteBtn.internal = "COMPLETE";
			self.CompleteBtn:initialise();
			self.CompleteBtn:instantiate();
			self.CompleteBtn.borderColor = self.buttonBorderColor;
			self:addChild(self.CompleteBtn);
		elseif not isNeededStuff then
			SF_MissionPanel.instance:checkQuestForCompletionByType("item", nil, "Obtained");
			self.richText.text = getText("IGUI_FailCompleteQuest") or "...";
		end
	end
	
	-- Not the ideal place to put this but I guess it works so what the hell
	if self.command and self.command == "updateobjectivestatus" then
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
	if button.internal == "COMPLETE" then
		if self.playTalk then --added feature for dialogue sound
			self.playTalk:stop()
			if self.dialogueinfo.sound.complete then
				self.playTalk = getSoundManager():PlaySound(self.dialogueinfo.sound.complete, false, 1.0);
			end
		end
		local neededStuffTaken = true;
		if self.quest.needsitem then
			neededStuffTaken = SF_MissionPanel.instance:takeNeededItem(self.quest.needsitem);
		end
		if neededStuffTaken then
			SF_MissionPanel.instance:removeWorldEvent(self.worldinfo.square);
			SF_MissionPanel.instance:completeQuest(self.character, self.questid);
			self:close()
		elseif not neededStuffTaken then
			SF_MissionPanel.instance:checkQuestForCompletionByType("item", nil, "Obtained");
			self.richText.text = getText("IGUI_FailCompleteQuest") or "...";
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
end

function SFQuest_WorldEventWindow:render()
	local picWidth = 100;
	if self.worldinfo.picture then
		local texture = getTexture(self.worldinfo.picture);
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

function SFQuest_WorldEventWindow:update()
	ISCollapsableWindow.update(self)
end

function SFQuest_WorldEventWindow:onJoypadDown(button)
	if button == Joypad.BButton then
		self:removeFromUIManager()
		setJoypadFocus(self.playerNum, nil)
	end
end

function SFQuest_WorldEventWindow:onGainJoypadFocus(joypadData)
	self.drawJoypadFocus = true
end

function SFQuest_WorldEventWindow:close()
	if self.playTalk then
		self.playTalk:stop()
	end
	self:removeFromUIManager()
end

function SFQuest_WorldEventWindow:new(x, y, character, square, worldinfo, dialogueinfo, questid)
	local width = 400
	local height = 240
	local o = ISCollapsableWindow:new(x, y, width, height)
	setmetatable(o, self)
	self.__index = self
	o.height = height;
	o.character = character
	o.playerNum = character:getPlayerNum()
	o.clearStentil = false;
	o.square = square
	o.worldinfo = worldinfo;
	o.dialogueinfo = dialogueinfo;
	local commandTable = luautils.split(dialogueinfo.command, ";");
	o.command = commandTable[1];
	o.commandparam = commandTable[2];
	o.commandparam2 = commandTable[3];
	o.commandparam3 = commandTable[4];
	o.questid = commandTable[2] or questid;
	if o.command == "completequest" or o.command == "updateobjectivestatus" then
		o.quest = SF_MissionPanel.instance:getActiveQuest(o.questid);
		-- semi fix/workaround for quest already completed where worldEvent is still active and player can still click on it
		if not o.quest then
			local x,y,z = tostring(square:getX()), tostring(square:getY()), tostring(square:getZ());
			local sqTag = x .. "x" .. y .. "x" .. z;
			SF_MissionPanel.instance:removeWorldEvent(sqTag);
			character:Say("This quest was already completed.");
			o:removeFromUIManager();
			o:close();
			SF_MissionPanel.instance.DailyEventRerollExpand()
			return nil;
		end
	elseif o.command == "unlockquest" then
		o.quest = SF_MissionPanel.instance:getQuest(o.questid);	
	end
	o.overrideRewardItem = nil;
	if o.quest.awardsitem and luautils.stringStarts(o.quest.awardsitem, "Table:") then
		local tableKey = luautils.split(o.quest.awardsitem, ":")[2];
		local randomTable = SFQuest_Database.RandomRewardItemPool[tableKey];
			if randomTable and #randomTable > 0 then
				o.overrideRewardItem = randomTable[ZombRand(1, #randomTable + 1)];
			end
	end
	o.title = getText(worldinfo.name);
	o.buttonBorderColor = {r=0.7, g=0.7, b=0.7, a=0.5};
	o:setResizable(false)
	o.deal = "open";
	o.fontHeight = getTextManager():getFontHeight(self.font)
	SFQuest_WorldEventWindow.instance = o;
	return o
end

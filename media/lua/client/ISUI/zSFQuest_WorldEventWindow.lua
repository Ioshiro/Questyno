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
	-- fix completequest command, sometimes the marker from the quest is not removed in time
	if self.command and self.command == "completequest" then
		self.CloseBtn:setVisible(true);
		local neededStuffTaken = true;
		if self.quest.needsitem then
			neededStuffTaken = SF_MissionPanel.instance:takeNeededItem(self.quest.needsitem);
		end
		if neededStuffTaken then
			SF_MissionPanel.instance:removeWorldEvent(self.worldinfo.square); -- this happen before, so why the marker remains after completeQuest?
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

-- local original_SFQuest_WorldEventWindow_onOptionMouseDown= SFQuest_WorldEventWindow.onOptionMouseDown
function SFQuest_WorldEventWindow:onOptionMouseDown(button, x, y)
	if button.internal == "ACCEPT" then
		if getPlayer():getModData().missionProgress.WorldEvent[self.worldinfo.square].marker then
			getPlayer():getModData().missionProgress.WorldEvent[self.worldinfo.square].marker:remove(); -- put this before removeWorldEvent just to double check the marker is removed
		end
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

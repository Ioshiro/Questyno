require "XpSystem/ISUI/SF_MissionLists"
SFQuest_QuestWindow = ISCollapsableWindow:derive("SFQuest_QuestWindow")
SFQuest_QuestWindow.tooltip = nil;

function SFQuest_QuestWindow:initialise()
	ISCollapsableWindow.initialise(self);
end

function SFQuest_QuestWindow:createChildren()
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
	self.richText.text = getText(self.dialogueinfo[1]) or "...";
	self:addChild(self.richText);
	self.richText:addScrollBars()
	
	local btnHeight = self.height - 30;
    self.CloseBtn = ISButton:new(12, btnHeight, 100, 20, getText("IGUI_CraftUI_Close"), self, function(self, button) self:close() end);
    self.CloseBtn.internal = "CLOSE";
    self.CloseBtn:initialise();
    self.CloseBtn:instantiate();
    self.CloseBtn.borderColor = self.buttonBorderColor;
	self.CloseBtn:setVisible(true);
    self:addChild(self.CloseBtn);		
end

function SFQuest_QuestWindow:render()
	local picWidth = 100;
	if self.picture then
		texture = getTexture(self.picture);
		self:drawTexture(texture, 12, 40, 1, 1, 1, 1);
		self:drawRectBorder(12, 40, texture:getWidth(), texture:getHeight(), 0.5, 1, 1, 1);
		picWidth = texture:getWidth();
	end

	self.richText:setX(12 + picWidth)
	self.richText:setY(28)
	self.richText:setVisible(true);
	self.richText:paginate();
	self:drawText(self.npcname, 12, 20, 1, 1, 1, 1, self.font);	


	local textX = 12 + picWidth + 36;
	local rewardHeight = self.height - self.fontHeight - 10
	local hasRewards = false;
	local hasNeeds = false;
	local hasObjs = false;
	-- sezione Rewards Reputazione
	if self.awardsrep  then
		local repTable = luautils.split(self.awardsrep, ";");
		local repBonus = repTable[2];
		local repStr = "+" .. repBonus .. " reputation";
		self:drawTextureScaledAspect(getTexture("media/textures/Item_PlusRep.png"), textX - 20, rewardHeight, 20, 20, 1, 1, 1, 1);
		self:drawText(repStr, textX, rewardHeight + 2, 1, 1, 1, 1, self.font);	
		rewardHeight = rewardHeight - 20;
		hasRewards = true;
	end
	-- sezione rewards Item
	if self.awardsitem  then
		local count = 1;
		local rewardTable = luautils.split(self.awardsitem, ";");
		local scriptItem = getScriptManager():FindItem(rewardTable[1]);
		local itemName = scriptItem:getDisplayName();

		local icon = scriptItem:getIcon()
		if scriptItem:getIconsForTexture() and not scriptItem:getIconsForTexture():isEmpty() then
			icon = scriptItem:getIconsForTexture():get(0)
		end
		if icon then
			texture = getTexture("Item_" .. icon)
			if texture then
				self:drawTextureScaledAspect(texture, textX - 20, rewardHeight, 20, 20, 1, 1, 1, 1);
			end
		end
		local rewardStr = itemName;
		if rewardTable[count + 1] and rewardTable[count + 1] ~= "1" then
			rewardStr = itemName .. "  X " .. rewardTable[count + 1];
		end		
		self:drawText(rewardStr, textX, rewardHeight + 2, 1, 1, 1, 1, self.font);
		hasRewards = true;
		count = 3;
		rewardHeight = rewardHeight - 20;
		while rewardTable[count] do
			scriptItem = getScriptManager():FindItem(rewardTable[count]);
			itemName = scriptItem:getDisplayName();
			icon = scriptItem:getIcon()
			if scriptItem:getIconsForTexture() and not scriptItem:getIconsForTexture():isEmpty() then
				icon = scriptItem:getIconsForTexture():get(0)
			end
			if icon then
				texture = getTexture("Item_" .. icon)
				if texture then
					self:drawTextureScaledAspect(texture, textX - 20, rewardHeight, 20, 20, 1, 1, 1, 1);
				end
			end
			rewardStr = itemName;
			if rewardTable[count + 1] and rewardTable[count + 1] ~= "1" then
				rewardStr = itemName .. "  X " .. rewardTable[count + 1];
			end	
			self:drawText(rewardStr, textX, rewardHeight + 2, 1, 1, 1, 1, self.font);
			count = count + 2;
			rewardHeight = rewardHeight - 20;
		end
	end
	if hasRewards then
		self:drawText(getText("IGUI_Rewards"), 12 + picWidth + 24, rewardHeight + 4, 1, 1, 1, 1, self.font);
	end
	-- sezione obiettivi missione
	local needsHeight = self.height - self.fontHeight - 10
	if self.needsitem  then
		local count = 1;
		local newString = self.needsitem:gsub("Tag#", "")
		local rewardTable = luautils.split(newString, ";");
		local scriptItem = getScriptManager():FindItem(rewardTable[1]);
		if scriptItem then
			local itemName = scriptItem:getDisplayName();
			local icon = scriptItem:getIcon()
			if scriptItem:getIconsForTexture() and not scriptItem:getIconsForTexture():isEmpty() then
				icon = scriptItem:getIconsForTexture():get(0)
			end
			if icon then
				texture = getTexture("Item_" .. icon)
				if texture then
					self:drawTextureScaledAspect(texture, textX + 110, needsHeight, 20, 20, 1, 1, 1, 1);
				end
			end
		
			local rewardStr = itemName;
			if rewardTable[count + 1] and rewardTable[count + 1] ~= "1" then
				rewardStr = itemName .. "  X " .. rewardTable[count + 1];
			end		
			self:drawText(rewardStr, textX + 130, needsHeight + 2, 1, 1, 1, 1, self.font);
			hasNeeds = true;
			count = 3;
			needsHeight = needsHeight - 20;
		
			while rewardTable[count] do

			
				scriptItem = getScriptManager():FindItem(rewardTable[count]);
				itemName = scriptItem:getDisplayName();
				icon = scriptItem:getIcon()
				if scriptItem:getIconsForTexture() and not scriptItem:getIconsForTexture():isEmpty() then
					icon = scriptItem:getIconsForTexture():get(0)
				end
				if icon then
					texture = getTexture("Item_" .. icon)
					if texture then
						self:drawTextureScaledAspect(texture, textX + 110, needsHeight, 20, 20, 1, 1, 1, 1);
					end
				end
				rewardStr = itemName;
				if rewardTable[count + 1] and rewardTable[count + 1] ~= "1" then
					rewardStr = itemName .. "  X " .. rewardTable[count + 1];
				end	
				self:drawText(rewardStr, textX + 130, needsHeight + 2, 1, 1, 1, 1, self.font);
				count = count + 2;
				needsHeight = needsHeight - 20;
			end
		end
	end
	if hasNeeds then
		self:drawText(getText("IGUI_Objectives"), textX + 120, needsHeight + 4, 1, 1, 1, 1, self.font);
	end
	-- inserimento eventuali obiettivi multipli (quest con più objectives quests)
	if self.objectives and #self.objectives > 0 then
		hasObjs = true;
		for i=1,#self.objectives do
			if not self.objectives[i].hidden then
				if self.objectives[i].needsitem then
					local newString = self.objectives[i].needsitem:gsub("Tag#", "")
					-- print("newString è: " .. newString);
					local needsTable = luautils.split(newString, ";");	
					local needItem = getScriptManager():FindItem(needsTable[1]);
					if needItem then
						-- print("needItem è: " .. needItem);
						local needItemIcon = needItem:getIcon()
						-- print("needItemIcon è: " .. needItemIcon);
						if needItem:getIconsForTexture() and not needItem:getIconsForTexture():isEmpty() then
							needItemIcon = needItem:getIconsForTexture():get(0)
						end
						if needItemIcon then
							local needItemTexture = getTexture("Item_" .. needItemIcon)
							if needItemTexture then
								self:drawTextureScaledAspect(needItemTexture, textX - 20, rewardHeight, 20, 20, 1, 1, 1, 1);
							end
						end	
					end
				end	

				local objtext = getText(self.objectives[i].text)
				r,g,b = 0.5,0.5,0.5;
				if not self.greyed then
				r,g,b = 1.0,1.0,1.0;
				end
				if self.objectives[i].status then
					objtext = getText("IGUI_XP_TaskStatus_" .. self.objectives[i].status) .. getText(self.objectives[i].text);
					if self.objectives[i].status == "Failed" then
						r,g,b = 1.0,0.25,0.25;
					elseif  self.objectives[i].status == "Delivered" then
							r,g,b = 0.5,0.5,0.5;
					end
				end
					self:drawText(objtext, textX +2, rewardHeight + 2, r, g, b, 1, self.font);
			end
				rewardHeight = rewardHeight - 20;
		end
	end
	if hasObjs then
		self:drawText(getText("IGUI_Objectives"), 12 + picWidth + 24, rewardHeight + 4, 1, 1, 1, 1, self.font);
	end
	


end

function SFQuest_QuestWindow:update()
	ISCollapsableWindow.update(self)
end

function SFQuest_QuestWindow:close()
	self:removeFromUIManager()
end

function SFQuest_QuestWindow:new(x, y, item)
	local width = 420
	local height = 240
	local o = ISCollapsableWindow:new(x, y, width, height)
	setmetatable(o, self)
	self.__index = self
	o.height = height;
	o.clearStentil = false;
	o.dialogueinfo = item.lore;
	local nuovaStringa = string.gsub(item.texture, 'Item', 'Picture')
	o.picture = nuovaStringa
	o.awardsrep = item.awardsrep
	o.awardsitem = item.awardsitem
	o.objectives = item.objectives
	o.needsitem = item.needsitem
	o.title = getText(item.text) or "????";
	if item.status then
		o.title = getText("IGUI_XP_TaskStatus_" .. item.status) .. getText(item.text);
	end
	o.npcname = getText(item.title) or "????";
	o.buttonBorderColor = {r=0.7, g=0.7, b=0.7, a=0.5};
	o:setResizable(false)
	o.deal = "open";
	o.fontHeight = getTextManager():getFontHeight(self.font)
	SFQuest_QuestWindow.instance = o;
	return o
end



function SFQuest_MissionLists:onMouseDown(x, y)
	local parent = SF_MissionPanel.instance;
	if #self.items == 0 then return end
	local row = self:rowAt(x, y)

	if row > #self.items then
		row = #self.items;
	end
	if row < 1 then
		row = 1;
	end

	self.selected = row;

            if self.items[row].guid == parent.expanded then
            	parent.expanded = nil;
				parent.loretitle = nil;
				parent.lore = {};
				parent.currentPage = 1;
				self:setHeight(self.originalheight);
				parent.titleLabel:setVisible(false);
				parent.pageLabel:setVisible(false);
				parent.nextPage:setVisible(false);
				parent.previousPage:setVisible(false);
				parent.richText:setVisible(false);
				getSoundManager():playUISound("UISelectListItem");
			elseif self.items[row].lore and #self.items[row].lore > 0 then
            	window = SFQuest_QuestWindow:new( 70,  50 , self.items[row]);
				window:initialise()
				window:addToUIManager()
				window:setVisible(true)
				window:addToUIManager()
				getSoundManager():playUISound("UISelectListItem");
            end
			SF_MissionPanel.instance:triggerUpdate();	

end

function SFQuest_MissionLists:new(x, y, width, height, character, greyed)
	local o = ISScrollingListBox.new(self, x, y, width, height)
	o.originalheight = height
	o.character = character
	o.greyed = greyed;
	return o
end
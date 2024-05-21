require "XpSystem/ISUI/SF_MissionLists"
SFQuest_QuestWindow = ISCollapsableWindow:derive("SFQuest_QuestWindow")
SFQuest_QuestWindow.tooltip = nil;

function SFQuest_QuestWindow:initialise()
	ISCollapsableWindow.initialise(self);
end

function SFQuest_QuestWindow:titleBarHeight(selected)
	return math.max(16, self.titleFontHgt + 1)
end


function SFQuest_QuestWindow:createChildren()
	ISCollapsableWindow.createChildren(self)
	local titleBarHeight = self:titleBarHeight()

	-- print("controllo loop in createchildren: " .. self.title)
	self.richText = ISRichTextPanel:new(35, 45, 305,120);
	self.richText.autosetheight = false;
	self.richText.clip = true
	self.richText:initialise();
	self.richText.background = false;
	self.richText:setAnchorTop(true);
	self.richText:setAnchorLeft(true);
	self.richText:setAnchorRight(true);
	-- self.richText:setAnchorBottom(true);
	self.richText:setVisible(false);
	self.richText.backgroundColor  = {r=0.5, g=0.5, b=0.5, a=0.1};
	self.richText.text = getText(self.dialogueinfo[1]) or "...";
	self.richText:addScrollBars()
    -- self.richText.vscroll.x + 5
	self:addChild(self.richText);
	

	if self.picture then
	self.Image = ISButton:new(12, 50, 100, 85, " ", nil, nil);
	self.picTexture = getTexture(self.picture)
	self.Image:setImage(self.picTexture)
    self.Image:setVisible(true);
	self.Image:setEnable(true);
	self:addChild(self.Image)
    end
	


	if self.unlocks and #self.unlocks > 0 then
		local convertedcondition = self.unlocks:gsub(":", ";");
		local unlocksTable = luautils.split(convertedcondition, ";");
		local player = getPlayer();
		if player and #unlocksTable > 0 then
		  	for j = 1, #unlocksTable do
				if unlocksTable[j] == "killzombies" then
					self.goal = tonumber(unlocksTable[j + 1]);
			  		if player:getModData().missionProgress.ActionEvent then 
			  			for k, v in pairs(player:getModData().missionProgress.ActionEvent) do
							local commands = luautils.split(v.commands, ";");
							for g = 1, #commands do
								if commands[g] == self.guid then
									self.tempGoal = tonumber(luautils.split(v.condition, ";")[2]);
									self.currentKills = player:getZombieKills()
									self.hasZombieCounter = true;
									print("tempGoal: " .. self.tempGoal)
									print("currentKills: " .. self.currentKills)
									print("goal: " .. self.goal)
									break; 
					  			end
							end
						end
			  		end
				end
		  	end
		end
	end

	local objectiveHeight  = 15
	if self.objectives and #self.objectives > 3 then
		self:setHeight(self.height + (objectiveHeight * (#self.objectives - 3)))
	end
	if self.awardsitem and self.awardsrep then
		self:setHeight(self.height + (objectiveHeight * 2))
	end

    -- raccolgo informazioni per gli obiettivi
    self.preprocessedObjectives = {}
    if self.objectives and #self.objectives > 0 then
        for i = 1, #self.objectives do
            print("Objective: " .. self.objectives[i].text)
            local objectiveData = {
                text = self.objectives[i].text,
                hidden = self.objectives[i].hidden
            }

            if self.objectives[i].needsitem then
                -- if self.objectives[i].icon then
                --     -- Acquisisce directory icon
                --     local iconPath = self.objectives[i].icon
                --     if iconPath then
                --         print("iconPath: " .. iconPath)
                --         local iconTexture = getTexture(iconPath)
                --         if iconTexture then
                --             objectiveData.iconTexture = iconTexture
                --         end
                --     end
                
                    local newString = self.objectives[i].needsitem:gsub("Tag#", ""):gsub("^[^.]+%.", "")
                    -- :gsub("Base%.", "")
                    local needsTable = luautils.split(newString, ";")
                    print("objNeedsItem: " .. needsTable[1])
                    local needItem = getScriptManager():FindItem(needsTable[1])
                    if needItem then
                        local needItemIcon = needItem:getIcon()
                        print("needItemIcon: " .. needItemIcon)
                        -- if needItem:getIconsForTexture() and not needItem:getIconsForTexture():isEmpty() then
                        --     needItemIcon = needItem:getIconsForTexture():get(0)
                        -- end
                        if needItemIcon then
                            local needItemTexture = getTexture("Item_" .. needItemIcon)
                            if needItemTexture then
                                print("needItemTexture esiste" )
                                objectiveData.iconTexture = needItemTexture
                            end
                        end
                    else
                        local allScriptItems = getScriptManager():getAllItems()
                        for j = 1, allScriptItems:size() do
                            local scriptItem = allScriptItems:get(j - 1)
                            if string.find(scriptItem:getName(), "^" .. needsTable[1]) then
                                local needItemIcon = scriptItem:getIcon()
                                if scriptItem:getIconsForTexture() and not scriptItem:getIconsForTexture():isEmpty() then
                                    needItemIcon = scriptItem:getIconsForTexture():get(0)
                                end
                                if needItemIcon then
                                    local needItemTexture = getTexture("Item_" .. needItemIcon)
                                    if needItemTexture then
                                        objectiveData.iconTexture = needItemTexture
                                    end
                                end
                                break
                            end
                        end
                    end
                -- end
            end
            
            table.insert(self.preprocessedObjectives, objectiveData)
        end
    end

    self.preprocessedNeedsItems = {}
    if self.needsitem then
        local newString = self.needsitem:gsub("Tag#", ""):gsub("^[^.]+%.", "")
        -- :gsub("Base%.", "")
        local needsTable = luautils.split(newString, ";")

        for i = 1, #needsTable, 2 do
            print("needsitem: " .. needsTable[i])
            local itemId = needsTable[i] -- ID dell'oggetto
            local itemCount = needsTable[i + 1] or "1" -- Quantità dell'oggetto, predefinito a "1" se mancante
            local needsItemData = {itemId = itemId, itemCount = itemCount}

            local scriptItem = getScriptManager():FindItem(itemId)
            if scriptItem then
                needsItemData.itemName = scriptItem:getDisplayName()
                local icon = scriptItem:getIcon()
                print("icon: " .. icon)
                -- if scriptItem:getIconsForTexture() and not scriptItem:getIconsForTexture():isEmpty() then
                --     icon = scriptItem:getIconsForTexture():get(0)
                -- end
                if icon then
                    local itemTexture = getTexture("Item_" .. icon)
                    if itemTexture then
                        print("itemTexture esiste" )
                        needsItemData.iconTexture = itemTexture
                    end
                end
            else
                local allScriptItems = getScriptManager():getAllItems()
                for j = 1, allScriptItems:size() do
                    local itemScript = allScriptItems:get(j - 1)
                    if string.find(itemScript:getName(), "^" .. itemId) then
                        needsItemData.itemName = itemScript:getDisplayName()
                        local needItemIcon = itemScript:getIcon()
                        if itemScript:getIconsForTexture() and not itemScript:getIconsForTexture():isEmpty() then
                            needItemIcon = itemScript:getIconsForTexture():get(0)
                        end
                        if needItemIcon then
                            local needItemTexture = getTexture("Item_" .. needItemIcon)
                            if needItemTexture then
                                needsItemData.iconTexture = needItemTexture
                            end
                        end
                        break
                    end
                end
            end

            table.insert(self.preprocessedNeedsItems, needsItemData)
        end
    end

    self.preprocessedRewards = {}
    if self.awardsrep then
        local repTable = luautils.split(self.awardsrep, ";")
        for i = 1, #repTable, 2 do
            local repBonus = repTable[i + 1]
            local repStr = "+" .. repBonus .. " reputation"
            table.insert(self.preprocessedRewards, {type = "reputation", text = repStr})
            break
        end
    end

    if self.awardsitem then
        local newString = self.awardsitem:gsub("Tag#", ""):gsub("^[^.]+%.", "")
        -- :gsub("Base%.", "")
        local rewardTable = luautils.split(newString, ";")

        for i = 1, #rewardTable, 2 do
            local itemId = rewardTable[i]
            local itemCount = rewardTable[i + 1] or "1"
            local rewardData = {itemId = itemId, itemCount = itemCount}

            local scriptItem = getScriptManager():FindItem(itemId)
            if scriptItem then
                rewardData.itemName = scriptItem:getDisplayName()
                local icon = scriptItem:getIcon()
                print("icon: " .. icon)
                if scriptItem:getIconsForTexture() and not scriptItem:getIconsForTexture():isEmpty() then
                    icon = scriptItem:getIconsForTexture():get(0)
                end
                if icon then
                    local itemTexture = getTexture("Item_" .. icon)
                    if itemTexture then
                        rewardData.iconTexture = itemTexture
                    end
                end
            else
                local allScriptItems = getScriptManager():getAllItems()
                for j = 1, allScriptItems:size() do
                    local itemScript = allScriptItems:get(j - 1)
                    if string.find(itemScript:getName(), "^" .. itemId) then
                        rewardData.itemName = itemScript:getDisplayName()
                        local needItemIcon = itemScript:getIcon()
                        if itemScript:getIconsForTexture() and not itemScript:getIconsForTexture():isEmpty() then
                            needItemIcon = itemScript:getIconsForTexture():get(0)
                        end
                        if needItemIcon then
                            local needItemTexture = getTexture("Item_" .. needItemIcon)
                            if needItemTexture then
                                rewardData.iconTexture = needItemTexture
                            end
                        end
                        break
                    end
                end
            end

            table.insert(self.preprocessedRewards, rewardData)
        end
    end
end
	




function SFQuest_QuestWindow:collapse()
    ISCollapsableWindow.collapse(self)
end

function SFQuest_QuestWindow:uncollapse()
    ISCollapsableWindow.uncollapse(self)
end




-- Funzioni helper
local function drawReputationReward(self, reward, textX, rewardHeight)
    self:drawTextureScaledAspect(getTexture("media/textures/Item_PlusRep.png"), textX - 20, rewardHeight, 20, 20, 1, 1, 1, 1)
    self:drawText(reward.text, textX, rewardHeight + 2, 1, 1, 1, 1, self.font)
    return rewardHeight - 20
end

local function drawItemRewards(self, reward, textX, rewardHeight)
    if reward.iconTexture then
        self:drawTextureScaledAspect(reward.iconTexture, textX - 20, rewardHeight, 20, 20, 1, 1, 1, 1)
    end
    local itemName = reward.itemName or reward.itemId
    self:drawText(itemName .. "  X " .. reward.itemCount, textX, rewardHeight + 2, 1, 1, 1, 1, UIFont.Normal)
    return rewardHeight - 20
end


local function drawRewards(self, rewards, textX, rewardHeight)
    local hasRewards = false
    for _, reward in ipairs(rewards) do
        if reward.type == "reputation" then
            rewardHeight = drawReputationReward(self, reward, textX, rewardHeight)
        else
            rewardHeight = drawItemRewards(self, reward, textX, rewardHeight)
        end
        hasRewards = true
    end
    return hasRewards, rewardHeight
end


local function drawNeededItems(self, needsItems, textX, needsHeight)
    for i = 1, #needsItems do
        local itemId = needsItems[i].itemId
        local itemCount = needsItems[i].itemCount
        local itemName = needsItems[i].itemName or itemId
        local iconTexture = needsItems[i].iconTexture

        if iconTexture then
            self:drawTextureScaledAspect(iconTexture, textX - 20, needsHeight, 20, 20, 1, 1, 1, 1)
        end
        self:drawText(itemName .. "  X " .. itemCount, textX + 5, needsHeight + 2, 1, 1, 1, 1, UIFont.Normal)
        needsHeight = needsHeight - 20
    end

    return needsHeight
end




local function drawObjectives(self, preprocessedObjectives, objectives, textX, needsHeight)
    for i = 1, #preprocessedObjectives do
        if not preprocessedObjectives[i].hidden then
            if preprocessedObjectives[i].iconTexture then
                self:drawTextureScaledAspect(preprocessedObjectives[i].iconTexture, textX-20, needsHeight, 20, 20, 1, 1, 1, 1)
            end

            local objtext = getText(preprocessedObjectives[i].text)
            local r, g, b = 0.5, 0.5, 0.5
            if not self.greyed then
                r, g, b = 1.0, 1.0, 1.0
            end
            if objectives[i].status then
                objtext = getText("IGUI_XP_TaskStatus_" .. objectives[i].status) .. getText(preprocessedObjectives[i].text)
                if objectives[i].status == "Failed" then
                    r, g, b = 1.0, 0.25, 0.25
                elseif objectives[i].status == "Delivered" then
                    r, g, b = 0.5, 0.5, 0.5
                end
            end
            self:drawText(objtext, textX + 5, needsHeight + 2, r, g, b, 1, UIFont.Normal)
        end
        needsHeight = needsHeight - 20
    end
    return needsHeight
end




-- Funzione render
function SFQuest_QuestWindow:render()
    ISCollapsableWindow.render(self)
	-- if self.status then
	-- 	self.title = getText("IGUI_XP_TaskStatus_" .. self.status) .. " " .. self.title
	-- end
    if self.isCollapsed then return end
    

    self.richText:setX(10 + self.picTexture:getWidth())
    self.richText:setY(40)
    self.richText:setVisible(true)
    self.richText:paginate()
    self:drawText(self.npcname, 12, 25, 1, 1, 1, 1, UIFont.Medium)

    local textX = 280
    local rewardHeight = self.height - self.fontHeight - 10
    local needsHeight = self.height - self.fontHeight - 10
    local fixPosX = 20
    local fixPosXImg = 20
    local hasRewards = false
    local hasNeeds = false
    local hasObjs = false

    if self.preprocessedRewards and #self.preprocessedRewards > 0 then
        hasRewards, rewardHeight = drawRewards(self, self.preprocessedRewards, textX-10, rewardHeight)
        if hasRewards then
            self:drawText(getText("IGUI_Rewards"), textX-10 , rewardHeight -5, 1, 1, 1, 1, UIFont.Medium)
        end
    end
    -- Disegna le ricompense di `rewardTask`
    -- if self.awardstask and not (self.awardsrep or self.awardsitem) then
    --     local rewardTask = SF_MissionPanel:getQuest(self.awardstask)
    --     if rewardTask.awardsrep or rewardTask.awardsitem then
    --         hasRewards, rewardHeight = drawRewards(self, rewardTask.awardsrep, rewardTask.awardsitem, textX-10, rewardHeight)
    --     end
    -- end


    -- Disegna gli oggetti necessari
    if self.preprocessedNeedsItems and #self.preprocessedNeedsItems > 0 then
        if self.awardsitem or self.awardsrep then
            needsHeight = rewardHeight + 20
        end
        needsHeight = drawNeededItems(self, self.preprocessedNeedsItems, fixPosX+5, needsHeight)
        hasNeeds = true
    end
    if hasNeeds then
        self:drawText(getText("IGUI_Objectives"), fixPosX + 10, needsHeight -5, 1, 1, 1, 1, UIFont.Medium)
    end


    -- Disegna gli obiettivi
    if self.preprocessedObjectives and #self.preprocessedObjectives > 0 then
        hasObjs = true
        if self.awardsitem or self.awardsrep then
            needsHeight = rewardHeight + 20
        end
        
        needsHeight = drawObjectives(self, self.preprocessedObjectives, self.objectives, fixPosX+5, needsHeight)
        if self.hasZombieCounter then
            self:drawText("Zombie: " .. tostring(self.currentKills - (self.tempGoal - self.goal)) .. "/" .. tostring(self.goal), fixPosX+10, needsHeight + 4, 1, 1, 1, 1, self.font)
            needsHeight = needsHeight - 20
        end
        if hasObjs then
            self:drawText(getText("IGUI_Objectives"), fixPosX + 10, needsHeight -5, 1, 1, 1, 1, UIFont.Medium)
        end
    end

    if self.hasZombieCounter then
        local player = getPlayer()
        if player then
            newCurrentKills = player:getZombieKills()
            if newCurrentKills > self.currentKills then
                self.currentKills = self.currentKills + (newCurrentKills - self.currentKills)
                if self.currentKills - (self.tempGoal - self.goal) >= self.goal then
                    self.hasZombieCounter = false
                else
                    self.hasZombieCounter = true
                end
            end
        end

        if not self.objectives then
            self:drawText(getText("IGUI_Objectives"),  fixPosX, needsHeight -20, 1, 1, 1, 1, UIFont.Medium)
            self:drawText("Zombie: " .. tostring(self.currentKills - (self.tempGoal - self.goal)) .. "/" .. tostring(self.goal),  fixPosX, needsHeight + 4, 1, 1, 1, 1, self.font)
        end
    end
end


function SFQuest_QuestWindow:update()
	ISCollapsableWindow.update(self)
end

function SFQuest_QuestWindow:close()
	self:removeFromUIManager()
end

function SFQuest_QuestWindow:new(x, y, item)
	-- print("controllo loop in new: " .. item.text)
	-- valori pannello
	local width = 420
	local height = 250
	local o = ISCollapsableWindow:new(x, y, width, height)
	setmetatable(o, self)
	self.__index = self
	o:setResizable(false);
	o.fontHeight = getTextManager():getFontHeight(self.font)
	o.isCollapsed = false
	-- o.clearStentil = false;

	-- valori quest
	o.dialogueinfo = item.lore;
	local nuovaStringa = string.gsub(item.texture, 'Item', 'Picture')
	o.picture = nuovaStringa
	o.awardsrep = item.awardsrep
	o.awardsitem = item.awardsitem
	o.awardstask = item.awardstask
	o.objectives = item.objectives
	o.needsitem = item.needsitem
	o.unlocks = item.unlocks
	-- sezione variabili zombiekills counters
	o.tempGoal = 0;
	o.goal = 0;
	o.currentKills = 0;
	o.hasZombieCounter = false;
	-- fine sezione
	o.guid = item.guid
	-- print("TESTANDO IL LOOP")
	o.title = getText(item.text) or "????";
	if item.status then
		o.title = getText("IGUI_XP_TaskStatus_" .. item.status) .. getText(item.text);
	end
	o.titleFont = UIFont.Medium
	o.titleFontHgt = getTextManager():getFontHeight(o.titleFont)
	o.npcname = getText(item.title)
	
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
				window.pin = true;
				window.resizable = true
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
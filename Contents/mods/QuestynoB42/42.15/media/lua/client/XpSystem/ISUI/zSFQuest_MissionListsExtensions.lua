require "XpSystem/ISUI/SF_MissionLists"
require "ISUI/ISButton"
SFQuest_QuestWindow = ISCollapsableWindow:derive("SFQuest_QuestWindow")
SFQuest_QuestWindow.tooltip = nil;
SFQuest_QuestWindow.instances = {}
local questyno2 = SF_MissionPanel.Events or false

function SFQuest_QuestWindow:initialise()
	ISCollapsableWindow.initialise(self);
end

local function getRealTexture(scriptItem)
	local texture = scriptItem:getNormalTexture()
	if texture then
		return texture
	end
	local icons = scriptItem:getIconsForTexture()
	if icons and not icons:isEmpty() then
		return getTexture("Item_" .. tostring(icons:get(0)))
	end
	local icon = scriptItem:getIcon()
	if icon then
		return getTexture("Item_" .. icon)
	end
	return nil
end

function SFQuest_QuestWindow:createChildren()
	ISCollapsableWindow.createChildren(self)
    
    -- Usa il fattore di scala memorizzato
    local scale = self.fontSizeScale -- Usa il valore memorizzato invece di richiamare getCore():getOptionFontSize()
    
    -- Calcola margini e spaziature in base alla scala
    local leftMargin = math.floor(25 * scale)
    local topMargin = math.floor(40 * scale)
    
    self.rewX = 0
    self.objX = 0
    
    -- Crea richText con dimensioni scalate
    self.richText = ISRichTextPanel:new(leftMargin, topMargin, self.width - math.floor(110 * scale), math.floor(100 * scale));
    self.richText.autosetheight = false;
    self.richText.clip = true
    self.richText:initialise();
    self.richText.background = false;
    self.richText:setAnchorTop(true);
    self.richText:setAnchorLeft(true);
    self.richText:setAnchorRight(true);
    self.richText.backgroundColor = {r=0.5, g=0.5, b=0.5, a=0.1};
    self.richText.text = getText(self.dialogueinfo[1]) or "...";
    self.richText:setMargins(math.floor(10 * scale), math.floor(10 * scale), math.floor(20 * scale), math.floor(10 * scale))
    self.richText:paginate()
    self.richText:addScrollBars()
    self:addChild(self.richText);
    
    self.originalTitle = self.title


	-- Gestione dell'immagine con dimensioni scalate
    if self.picture then
        self.picTexture = getTexture(self.picture)
        -- Scala la posizione di richText in base alla larghezza dell'immagine
        self.richText:setX(math.floor(10 * scale) + self.picTexture:getWidth() * scale)
    end
	
	
    -- check if quest has killzombies in actionevent
    local function checkQuestKillZombies(self)
        if not self.unlocks or not luautils.stringStarts(self.unlocks, "actionevent") then
            return
        end

        local unlocksTable = luautils.split(self.unlocks:gsub(":", ";"), ";")
        if unlocksTable[2] ~= "killzombies" then
            return
        end

        self.hasZombieCounter = true
        self.goal = tonumber(unlocksTable[3])

        -- O(1) lookup tramite indice ActionEventByQuestGuid
        local prog = getPlayer():getModData().missionProgress
        local idx = prog and prog.Indexes
        local v = idx and idx.ActionEventByQuestGuid and idx.ActionEventByQuestGuid[self.guid]

        if v then
            if questyno2 then
                self.index = v
                self.kills = v.kills
                if v.tierlevel then
                    self.tierlevel = v.tierlevel
                end
            else
                self.tempGoal = v.goal
                self.currentKills = getPlayer():getZombieKills()
            end
        else
            if questyno2 then
                self.kills = self.goal
            else
                self.tempGoal = self.goal
                self.currentKills = self.goal
            end
        end
    end
    checkQuestKillZombies(self)
    
    

	-- Aggiunta di un padding extra per gli obiettivi
    local objectiveHeight = math.floor(15 * scale)
    local extraPadding = math.floor(10 * scale)  -- Padding extra
    
    if self.objectives and #self.objectives > 3 then
        self:setHeight(self.height + (objectiveHeight * (#self.objectives - 3)) + extraPadding)
    end
    if self.awardsitem and self.awardsrep then
        self:setHeight(self.height + (objectiveHeight * 2) + extraPadding)
    end
    
    -- Per assicurarci che anche con pochi elementi ci sia spazio sufficiente
    if (self.preprocessedRewards and #self.preprocessedRewards > 0) or 
       (self.preprocessedNeedsItems and #self.preprocessedNeedsItems > 0) then
        self:setHeight(self.height + extraPadding)
    end
    

    -- gathering needsitem from objectives
    self.preprocessedObjectives = {}
    if self.objectives and #self.objectives > 0 then
        for i = 1, #self.objectives do
            -- print("Objective: " .. self.objectives[i].text)
            local objectiveData = {
                text = self.objectives[i].text,
                hidden = self.objectives[i].hidden
            }
            if not self.objectives[i].needsitem then 
                self.objX = math.max(self.objX, getTextManager():MeasureStringX(UIFont.Normal, objectiveData.text))
            end
            if self.objectives[i].needsitem then
                local needItem
                local newString = self.objectives[i].needsitem
                newString = newString:gsub("Tag.-#", ""):gsub("Predicate.-#", "")

                local needsTable = luautils.split(newString, ";")
                -- print("needsTable item: " .. needsTable[1])
                -- print("needsTable count: " .. needsTable[2])
                if luautils.stringStarts(self.objectives[i].needsitem, "Tag") then
                    local itemsArray = getScriptManager():getItemsTag(needsTable[1])
                    objectiveData.tag = true
                    objectiveData.tagItems = {}
                    local itemNamesSet = {}  -- To track existing item names
                    if itemsArray and itemsArray:size() > 0 then
                        local maxTextWidth = 0
                        for k = 0, itemsArray:size() - 1 do
                            local itemName = itemsArray:get(k):getDisplayName()
                            maxTextWidth = math.max(maxTextWidth, getTextManager():MeasureStringX(UIFont.Normal, itemName))
                            -- print("itemName: " .. itemName .. " maxTextWidth: " .. maxTextWidth)
                            local itemTexture = getRealTexture(itemsArray:get(k))
                            if not itemNamesSet[itemName] then
                                table.insert(objectiveData.tagItems, {itemName = itemName, itemTexture = itemTexture})
                                itemNamesSet[itemName] = true  -- Mark the itemName as added
                            end
                        end
                        objectiveData.maxTextWidth = maxTextWidth
                        needItem = itemsArray:get(0)
                    end
                else
                    needItem = getScriptManager():FindItem(needsTable[1])
                    if not needItem then
                        local javaItem = getScriptManager():getItemsByType(needsTable[1])
                        if javaItem and javaItem:size() > 0 then
                            needItem = javaItem:get(0)
                        end
                    end
                end
                if needItem then
                    -- print("needItem trovato in obj: " .. needItem:getDisplayName())
                    objectiveData.itemName = needItem:getDisplayName()
                    self.objX = math.max(self.objX, getTextManager():MeasureStringX(UIFont.Normal, objectiveData.itemName))
                    objectiveData.itemCount = needsTable[2] or "1"
                    local texture = getRealTexture(needItem)
                    if texture then
                        objectiveData.iconTexture = texture
                    end
                end
                if objectiveData.tag then
                    local buttonSize = math.floor(20 * scale)
                    self.tagsButton = ISButton:new(
                        self.width - buttonSize, 
                        self.height - buttonSize, 
                        buttonSize, 
                        buttonSize, 
                        "", nil, nil, nil, nil);
                    self.tagsButton:setEnable(true)
                    self.tagsButton:noBackground()
                    self.tagsButton:initialise();
                    self:addChild(self.tagsButton);
                end

            end
            table.insert(self.preprocessedObjectives, objectiveData)
        end
    end

    self.preprocessedNeedsItems = {}
    if self.needsitem then
        local scriptItem
        local newString = self.needsitem
        newString = newString:gsub("Tag.-#", ""):gsub("Predicate.-#", "")
        local needsTable = luautils.split(newString, ";")
        local itemId = needsTable[1]
        local itemCount = needsTable[2]
        local needsItemData = {itemId = itemId, itemCount = itemCount or "1"}
        if luautils.stringStarts(self.needsitem, "Tag") then
            local itemsArray = getScriptManager():getItemsTag(needsTable[1])
            needsItemData.tag = true
            needsItemData.tagItems = {}
            local itemNamesSet = {}  -- To track existing item names
            if itemsArray and itemsArray:size() > 0 then
                local maxTextWidth = 0
                for i = 0, itemsArray:size() - 1 do
                    local itemName = itemsArray:get(i):getDisplayName()
                    maxTextWidth = math.max(maxTextWidth, getTextManager():MeasureStringX(UIFont.Normal, itemName))
                    -- print("itemName: " .. itemName .. " maxTextWidth: " .. maxTextWidth)
                    local itemTexture = getRealTexture(itemsArray:get(i))
                    if not itemNamesSet[itemName] then
                        table.insert(needsItemData.tagItems, {itemName = itemName, itemTexture = itemTexture})
                        itemNamesSet[itemName] = true  -- Mark the itemName as added
                    end
                end
                needsItemData.maxTextWidth = maxTextWidth
                scriptItem = itemsArray:get(0)

            end
        else
            scriptItem = getScriptManager():FindItem(needsTable[1])
            if not scriptItem then
                local javaItem = getScriptManager():getItemsByType(needsTable[1])
                if javaItem and javaItem:size() > 0 then
                    scriptItem = javaItem:get(0)
                end
            end
        end
        
        if scriptItem then
            needsItemData.itemName = scriptItem:getDisplayName()
            self.objX = getTextManager():MeasureStringX(UIFont.Normal, needsItemData.itemName)
                -- print(textWidth)
                -- if self.objX > 123 then
                --     self:setWidth(self.width + self.objX-123)
                -- end
            local texture = getRealTexture(scriptItem)
            if texture then
                needsItemData.iconTexture = texture
            end
        end
        table.insert(self.preprocessedNeedsItems, needsItemData)
        if needsItemData.tag then
            local buttonSize = math.floor(20 * scale)
            self.tagsButton = ISButton:new(
                self.width - buttonSize, 
                self.height - buttonSize, 
                buttonSize, 
                buttonSize, 
                "", nil, nil, nil, nil);
            self.tagsButton:setEnable(true)
            self.tagsButton:noBackground()
            self.tagsButton:initialise();
            self:addChild(self.tagsButton);
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
        local count = 1
        local rewardTable = luautils.split(self.awardsitem, ";")

        while rewardTable[count] do
            local itemId = rewardTable[count]
            local itemCount = rewardTable[count+1] or "1"
            local rewardData = {itemId = itemId, itemCount = itemCount}


            local scriptItem = getScriptManager():FindItem(rewardTable[count])
			if not scriptItem then
				local javaItem = getScriptManager():getItemsByType(rewardTable[count])
				if javaItem and javaItem:size() > 0 then
					scriptItem = javaItem:get(0)
				end
			end
            if scriptItem then
                rewardData.itemName = scriptItem:getDisplayName()
                -- fix for panel width dimension issue
                self.rewX = math.max(self.rewX, getTextManager():MeasureStringX(UIFont.Normal, rewardData.itemName))+30 --+30 offset icona
                -- print("itemName: " .. rewardData.itemName .. " maxTextWidth: " .. self.rewX)
                -- print(textWidth)
                -- if self.rewX > 60 then
                --     self:setWidth(self.width+self.rewX-30)
                -- end
                -- fix for panel width dimension issue
                local texture = getRealTexture(scriptItem)
                if texture then
                    rewardData.iconTexture = texture
                end
            end
            table.insert(self.preprocessedRewards, rewardData)

            count = count + 2
        end
    end
    
    -- Imposta una larghezza massima assoluta per objX e rewX
    local maxObjX = math.floor(200 * scale)
    local maxRewX = math.floor(180 * scale)
    local minObjX = math.floor(120 * scale) -- Scala anche il valore minimo
    local minRewX = math.floor(100 * scale)

    self.objX = math.floor(self.objX * scale)
    if self.objX < minObjX then
        self.objX = minObjX
    elseif self.objX > maxObjX then
        self.objX = maxObjX -- Limita la larghezza massima degli obiettivi
    end
    
    self.rewX = math.floor(self.rewX * scale)
    if self.rewX < minRewX then
        self.rewX = minRewX
    elseif self.rewX > maxRewX then
        self.rewX = maxRewX -- Limita la larghezza massima delle ricompense
    end
    
    -- Regolazione finale della larghezza della finestra
    local rewX = self.objX + math.floor(60 * scale) + math.floor(50 * scale) + math.floor(20 * scale)
    
    -- Calcola la larghezza desiderata
    local desiredWidth = rewX + self.rewX
    
    -- Imposta una larghezza massima assoluta per la finestra
    local maxWindowWidth = math.floor(500 * scale)
    
    -- Limita la larghezza della finestra
    desiredWidth = math.min(desiredWidth, maxWindowWidth)
    
    -- Imposta la larghezza finale
    self:setWidth(desiredWidth)
    self.rewX = rewX
end

function SFQuest_QuestWindow:collapse()
    ISCollapsableWindow.collapse(self)
end

function SFQuest_QuestWindow:uncollapse()
    ISCollapsableWindow.uncollapse(self)
end

-- Funzioni helper

local function drawRewards(self, rewards, rewX, rewardHeight)
    local hasRewards = false
    local startHeight = rewardHeight
    
    for _, reward in ipairs(rewards) do
        if reward.type == "reputation" then
            self:drawTextureScaledAspect(getTexture("media/textures/Item_PlusRep.png"), 
                                      rewX - math.floor(16 * self.fontSizeScale), 
                                      rewardHeight, 
                                      math.floor(20 * self.fontSizeScale), 
                                      math.floor(20 * self.fontSizeScale), 
                                      1, 1, 1, 1)
            self:drawText(reward.text, 
                         rewX + math.floor(5 * self.fontSizeScale), 
                         rewardHeight + math.floor(2 * self.fontSizeScale), 
                         1, 1, 1, 1, 
                         self.font)
        else
            if reward.iconTexture then
                self:drawTextureScaledAspect(reward.iconTexture, 
                                          rewX - math.floor(16 * self.fontSizeScale), 
                                          rewardHeight, 
                                          math.floor(20 * self.fontSizeScale), 
                                          math.floor(20 * self.fontSizeScale), 
                                          1, 1, 1, 1)
            end
            local itemName = reward.itemName or reward.itemId
            self:drawText(itemName .. "  x " .. reward.itemCount, 
                         rewX + math.floor(5 * self.fontSizeScale), 
                         rewardHeight + math.floor(2 * self.fontSizeScale), 
                         1, 1, 1, 1, 
                         UIFont.Normal)
        end
        
        rewardHeight = rewardHeight + math.floor(22 * self.fontSizeScale)
        hasRewards = true
    end
    
    return hasRewards, rewardHeight
end


local function drawNeededItems(self, needsItems, status, objX, needsHeight)
    local scale = self.fontSizeScale
    local startHeight = needsHeight
    
    for i = 1, #needsItems do
        local itemData = needsItems[i]
        local itemName = itemData.itemName or itemData.itemId
        local itemCount = itemData.itemCount
        local iconTexture = itemData.iconTexture
        local isTag = itemData.tag
        local r, g, b = 1, 1, 1

        if status then
            local objstatus = getText("IGUI_XP_TaskStatus_" .. status)
            itemName = objstatus .. " " .. itemName
            if status == "Completed" then
                r, g, b = 0, 1, 0.5
            elseif status == "Obtained" then
                r, g, b = 1, 1, 0
            end
        end

        if isTag then
            -- Display with expand/collapse functionality
            local displayText = string.format("%s x %s", self.title, itemCount)
            self:drawText(displayText, 
                         objX + math.floor(5 * scale), 
                         needsHeight + math.floor(2 * scale), 
                         r, g, b, 1, 
                         UIFont.Normal)
            local titleWidth = getTextManager():MeasureStringX(UIFont.Normal, displayText)

            local btnWidth = getTextManager():MeasureStringX(UIFont.Normal, "LISTA")
            self.tagsButton:setTitle("LISTA")
            self.tagsButton.textColor = {r=r, g=g, b=b, a=1.0};
            self:drawTextureScaledAspect2(iconTexture, 
                                         objX - math.floor(16 * scale), 
                                         needsHeight + math.floor(2 * scale), 
                                         math.floor(16 * scale), 
                                         math.floor(16 * scale), 
                                         1, 1, 1, 1)
            self.tagsButton:setX(titleWidth + math.floor(16 * scale) + objX)
            self.tagsButton:setY(needsHeight)
            self.tagsButton:setWidth(btnWidth + math.floor(10 * scale))
            
            if self.tagsButton:isMouseOver() then
                self.tagsButton.textColor = {r=0, g=1.0, b=0, a=1.0};
                local tooltipHeight = self.tagsButton.height + math.floor(5 * scale)
                local tooltipTitle = "Lista Items Accettati:" -- TODO: create translation
                local rectWidthMax = math.max(itemData.maxTextWidth, getTextManager():MeasureStringX(UIFont.Large, tooltipTitle))
                self.tagsButton:drawRect(0, 
                                       self.tagsButton.height + math.floor(5 * scale), 
                                       rectWidthMax + math.floor(30 * scale), 
                                       math.floor(20 * scale) * #itemData.tagItems + tooltipHeight, 
                                       0.5, 0, 0, 0);
                self.tagsButton:drawRectBorder(0, 
                                             tooltipHeight, 
                                             rectWidthMax + math.floor(30 * scale), 
                                             math.floor(20 * scale) * #itemData.tagItems + tooltipHeight, 
                                             0.5, 1, 1, 1);
                self.tagsButton:drawText(tooltipTitle, 
                                       math.floor(25 * scale), 
                                       tooltipHeight + math.floor(2 * scale), 
                                       1, 1, 1, 1, 
                                       UIFont.Large)
                tooltipHeight = tooltipHeight + math.floor(20 * scale)
                for _, validItem in ipairs(itemData.tagItems) do
                    self.tagsButton:drawTextureScaledAspect(validItem.itemTexture, 
                                                         math.floor(5 * scale), 
                                                         tooltipHeight + math.floor(4 * scale), 
                                                         math.floor(16 * scale), 
                                                         math.floor(16 * scale), 
                                                         1, 1, 1, 1)
                    self.tagsButton:drawText(validItem.itemName, 
                                           math.floor(25 * scale), 
                                           tooltipHeight + math.floor(4 * scale), 
                                           1, 1, 1, 1, 
                                           UIFont.Normal)
                    tooltipHeight = tooltipHeight + math.floor(20 * scale)
                end 
            else
                self.tagsButton.textColor = {r=r, g=g, b=b, a=1.0};
            end
        else
            if iconTexture then
                self:drawTextureScaledAspect2(iconTexture, 
                                           objX - math.floor(16 * scale), 
                                           needsHeight, 
                                           math.floor(16 * scale), 
                                           math.floor(16 * scale), 
                                           1, 1, 1, 1)
            end
            self:drawText(itemName .. " x" .. itemCount, 
                         objX + math.floor(5 * scale), 
                         needsHeight + math.floor(2 * scale), 
                         r, g, b, 1, 
                         UIFont.Normal)
        end

        needsHeight = needsHeight + math.floor(22 * scale)
    end

    return needsHeight
end

local function drawObjectives(self, preprocessedObjectives, objectives, objX, needsHeight)
    local scale = self.fontSizeScale
    
    for i = 1, #preprocessedObjectives do
        local objective = preprocessedObjectives[i]
        local isTag = objective.tag
        local objName = getText(objective.text)
        local objstatus

        if not objective.hidden then
            if not objective.iconTexture then
                objective.iconTexture = getTexture("media/textures/clickevent.png")
            end

            local r, g, b = 1, 1, 1

            -- Handle status coloring and text
            if objectives[i].status then
                objstatus = getText("IGUI_XP_TaskStatus_" .. objectives[i].status)
                objName = objstatus .. " " .. (objName or "...")
                if objectives[i].status == "Completed" then
                    r, g, b = 0, 1, 0.5
                    
                elseif objectives[i].status == "Obtained" then
                    r, g, b = 1, 1, 0
                end
            end

            if objectives[i] and objectives[i].needsitem then
                local itemCount = objective.itemCount
                if not objective.itemName or not objective.itemCount then
                    local needsitemTable = luautils.split(objectives[i].needsitem, ";")
                    objName = (needsitemTable[1] .. " X " .. needsitemTable[2] )
                else
                    objName = (objective.itemName .. " X " .. objective.itemCount )
                end
                if objectives[i].status then
                    local objstatus = getText("IGUI_XP_TaskStatus_" .. objectives[i].status)
                    objName = objstatus .. " " .. (objName or "...")
                end

                if isTag then
                    local displayText = string.format("%s x %s", getText(objective.text), itemCount)
                    local titleWidth = getTextManager():MeasureStringX(UIFont.Normal, displayText)

                    local btnWidth = getTextManager():MeasureStringX(UIFont.Normal, "LISTA")
                    -- Ensure self.tagsButton is initialized elsewhere in your code
                    self.tagsButton:setTitle("LISTA")
                    self.tagsButton.textColor = { r = r, g = g, b = b, a = 1.0 }
                    self:drawTextureScaledAspect2(objective.iconTexture, 
                                               objX - math.floor(16 * scale), 
                                               needsHeight + math.floor(2 * scale), 
                                               math.floor(16 * scale), 
                                               math.floor(16 * scale), 
                                               1, 1, 1, 1)
                    self.tagsButton:setX(titleWidth + math.floor(16 * scale) + math.floor(20 * scale) + objX)
                    self.tagsButton:setY(needsHeight)
                    self.tagsButton:setWidth(btnWidth + math.floor(10 * scale))

                    -- Tooltip display when hovering over the button
                    if self.tagsButton:isMouseOver() then
                        self.tagsButton.textColor = { r = 0, g = 1.0, b = 0, a = 1.0 }
                        local tooltipHeight = self.tagsButton.height + math.floor(5 * scale)
                        local tooltipTitle = "Lista Items Accettati"
                        local rectWidthMax = math.max(objective.maxTextWidth, getTextManager():MeasureStringX(UIFont.Large, tooltipTitle))
                        self.tagsButton:drawRect(0, 
                                              tooltipHeight, 
                                              rectWidthMax + math.floor(40 * scale), 
                                              math.floor(20 * scale) * #objective.tagItems + tooltipHeight, 
                                              0.5, 0, 0, 0)
                        self.tagsButton:drawRectBorder(0, 
                                                    tooltipHeight, 
                                                    rectWidthMax + math.floor(40 * scale), 
                                                    math.floor(20 * scale) * #objective.tagItems + tooltipHeight, 
                                                    0.5, 1, 1, 1)
                        self.tagsButton:drawText(tooltipTitle, 
                                              math.floor(25 * scale), 
                                              tooltipHeight + math.floor(2 * scale), 
                                              1, 1, 1, 1, 
                                              UIFont.Large)
                        tooltipHeight = tooltipHeight + math.floor(20 * scale)

                        for _, validItem in ipairs(objective.tagItems) do
                            self.tagsButton:drawTextureScaledAspect(validItem.itemTexture, 
                                                                math.floor(5 * scale), 
                                                                tooltipHeight + math.floor(4 * scale), 
                                                                math.floor(16 * scale), 
                                                                math.floor(16 * scale), 
                                                                1, 1, 1, 1)
                            self.tagsButton:drawText(validItem.itemName, 
                                                  math.floor(25 * scale), 
                                                  tooltipHeight + math.floor(4 * scale), 
                                                  1, 1, 1, 1, 
                                                  UIFont.Normal)
                            tooltipHeight = tooltipHeight + math.floor(20 * scale)
                        end
                    else
                        self.tagsButton.textColor = { r = r, g = g, b = b, a = 1.0 }
                    end
                end
            end
            if objective.iconTexture then
                self:drawTextureScaledAspect2(objective.iconTexture, 
                                           objX - math.floor(16 * scale), 
                                           needsHeight, 
                                           math.floor(16 * scale), 
                                           math.floor(16 * scale), 
                                           1, 1, 1, 1)
            end
            
            self:drawText(objName, 
                         objX + math.floor(5 * scale), 
                         needsHeight + math.floor(2 * scale), 
                         r, g, b, 1, 
                         UIFont.Normal)

            needsHeight = needsHeight + math.floor(22 * scale)
        end
    end
    return needsHeight
end

-- Funzione render
function SFQuest_QuestWindow:render()
    ISCollapsableWindow.render(self)

    local scale = self.fontSizeScale
    local objX = math.floor(20 * scale)


    if self.task.status then
        self:setTitle(getText("IGUI_XP_TaskStatus_" .. self.task.status) .. " " .. self.originalTitle)
    else 
        self:setTitle(self.originalTitle)
    end
    if self.isCollapsed then
        if self.hasZombieCounter then
            self:drawText(self.title, 
                         math.floor(25 * scale), 
                         1, 
                         1, 1, 1, 1, 
                         self.titleBarFont)
            self:setTitle("")
            if not questyno2 then
                local newCurrentKills = getPlayer():getZombieKills()
                local killsRemaining = self.tempGoal - newCurrentKills
                if killsRemaining <= 0 then
                    -- Quest completed
                    self.currentKills = self.goal
                    killsRemaining = 0  -- Prevent negative kills remaining
                else
                    -- Quest not yet completed
                    self.currentKills = self.goal - killsRemaining  -- Adjust current kills relative to quest start
                end
            else
                if self.kills >= self.goal then
                    self.kills = self.goal
                else
                    self.kills = self.index and self.index.kills or self.kills
                end
            end
            -- Scaling per il counter zombie
            local titleText = "Zombie: " .. tostring(questyno2 and self.kills or self.currentKills) .. "/" .. tostring(self.goal)
            local titlewidth = getTextManager():MeasureStringX(UIFont.Medium, titleText)
            self:drawTextureScaledAspect2(self.zombieTexture, 
                                         self:getWidth() - titlewidth - math.floor(20 * scale), 
                                         math.floor(2 * scale), 
                                         math.floor(16 * scale), 
                                         math.floor(16 * scale), 
                                         1, 1, 1, 1)
            self:drawText(titleText, 
                         self:getWidth() - titlewidth, 
                         math.floor(3 * scale), 
                         1, 1, 1, 1, 
                         self.font)
        end
        return
    end
    


    self.richText:setVisible(true)

    self:drawText(self.npcname, 
                  math.floor(12 * scale), 
                  math.floor(25 * scale), 
                  1, 1, 1, 1, 
                  UIFont.Medium)
    
    -- Disegna l'immagine con scala
    local pictureBottom = math.floor(70  * scale) -- Posizione Y di base
    if self.picTexture then
        local picX = math.floor(12 * scale)
        local picY = math.floor(50 * scale)
        local picWidth = math.floor(self.picTexture:getWidth() * scale)
        local picHeight = math.floor(self.picTexture:getHeight() * scale)
        
        self:drawTextureScaledAspect(self.picTexture, picX, picY, picWidth, picHeight, 1, 1, 1, 1);
        self:drawRectBorder(picX, picY, picWidth, picHeight, 0.5, 1, 1, 1);
        pictureBottom = picY + picHeight + math.floor(10 * scale) -- Aggiorna la posizione sotto l'immagine
    end


    -- ----------------------
    -- FASE 1: Precalcola quali sezioni sono visibili
    -- ----------------------
    
    -- Controlla se ci sono ricompense
    local hasRewards = false
    if self.preprocessedRewards and #self.preprocessedRewards > 0 then
        hasRewards = true
    end
    
    -- Controlla se ci sono oggetti necessari
    local hasNeeds = false
    if self.preprocessedNeedsItems and #self.preprocessedNeedsItems > 0 then
        hasNeeds = true
    end
    
    -- Controlla se ci sono obiettivi
    local hasObjs = false
    if self.preprocessedObjectives and #self.preprocessedObjectives > 0 then
        local visibleObjectives = 0
        for i = 1, #self.preprocessedObjectives do
            if not self.preprocessedObjectives[i].hidden then
                visibleObjectives = visibleObjectives + 1
            end
        end
        
        if visibleObjectives > 0 then
            hasObjs = true
        end
    end
    
    -- Controllo se c'è almeno un tipo di obiettivo
    local hasAnyObjectives = hasNeeds or hasObjs or self.hasZombieCounter
    
     -- ----------------------
    -- FASE 2: Calcola le posizioni iniziali e disegna le intestazioni
    -- ----------------------
    
    -- Calcola l'altezza iniziale delle sezioni (inizia sotto l'immagine/nome)
    local startY = math.max(math.floor(100 * scale), pictureBottom)
    local headerY = startY -- Altezza delle intestazioni (uguale per entrambe)
    
    -- Disegna le intestazioni allo stesso livello orizzontale
    if hasRewards then
        self:drawText(getText("IGUI_Rewards"), 
                     self.rewX, 
                     headerY, 
                     1, 1, 1, 1, 
                     UIFont.Medium)
    end
    
    if hasAnyObjectives then
        self:drawText(getText("IGUI_Objectives"), 
                     objX, 
                     headerY, 
                     1, 1, 1, 1, 
                     UIFont.Medium)
    end
    
    -- ----------------------
    -- FASE 3: Disegna contenuti
    -- ----------------------

    -- Posizione iniziale dei contenuti (sotto le intestazioni)
    local contentY = headerY + math.floor(20 * scale)
    local rewardsY = contentY -- Posizione per disegnare le ricompense
    local objectivesY = contentY -- Posizione per disegnare gli obiettivi
    
    -- Massima posizione Y raggiunta (per ridimensionare la finestra)
    local maxY = contentY
    
    -- Disegna ricompense
    if hasRewards then
        local _, updatedRewardsY = drawRewards(self, self.preprocessedRewards, self.rewX, rewardsY)
        maxY = math.max(maxY, updatedRewardsY)
    end
    
    -- Disegna obiettivi
    if hasAnyObjectives then
        -- Disegna oggetti necessari
        if hasNeeds then
            objectivesY = drawNeededItems(self, self.preprocessedNeedsItems, self.task.status, objX, objectivesY)
            maxY = math.max(maxY, objectivesY)
        end
        
        -- Gestione contatore zombie
        local r, g, b = 1, 1, 1
        local zombieStatus = ""
        
        if self.hasZombieCounter then
            -- Calcola stato zombie
            if questyno2 then
                if self.kills >= self.goal then
                    self.kills = self.goal
                    r, g, b = 0, 1, 0.5
                    zombieStatus = getText("IGUI_XP_TaskStatus_Completed")
                else
                    self.kills = self.index and self.index.kills or self.kills
                end
            else
                local newCurrentKills = getPlayer():getZombieKills()
                local killsRemaining = self.tempGoal - newCurrentKills
                if killsRemaining <= 0 then
                    self.currentKills = self.goal
                    r, g, b = 0, 1, 0.5
                    zombieStatus = getText("IGUI_XP_TaskStatus_Completed")
                    killsRemaining = 0
                else
                    self.currentKills = self.goal - killsRemaining
                end
            end
            
            -- Disegna il contatore zombie solo se non ci sono obiettivi
            if not hasObjs then
                self:drawTextureScaledAspect2(self.zombieTexture, 
                                            objX - math.floor(16 * scale), 
                                            objectivesY, 
                                            math.floor(16 * scale), 
                                            math.floor(16 * scale), 
                                            1, 1, 1, 1)

                local testTierLvl = self.tierlevel and (" - TIER: " .. tostring(self.tierlevel).."+") or ""
                self:drawText(zombieStatus .. "Zombie: " .. tostring(questyno2 and self.kills or self.currentKills) .. "/" .. tostring(self.goal) .. testTierLvl, 
                             objX + math.floor(5 * scale), 
                             objectivesY + math.floor(2 * scale), 
                             r, g, b, 1, 
                             self.font)
                             
                objectivesY = objectivesY + math.floor(22 * scale)
                maxY = math.max(maxY, objectivesY)
            end
        end
        
        -- Disegna obiettivi normali
        if hasObjs then
            objectivesY = drawObjectives(self, self.preprocessedObjectives, self.objectives, objX, objectivesY)
            maxY = math.max(maxY, objectivesY)
            
            -- Disegna il contatore zombie dopo gli obiettivi
            if self.hasZombieCounter then
                self:drawTextureScaledAspect2(self.zombieTexture, 
                                            objX - math.floor(16 * scale), 
                                            objectivesY, 
                                            math.floor(16 * scale), 
                                            math.floor(16 * scale), 
                                            1, 1, 1, 1)
                                            
                local testTierLvl = self.tierlevel and (" - TIER: " .. tostring(self.tierlevel).."+") or ""
                                            
                self:drawText(zombieStatus .. "Zombie: " .. tostring(questyno2 and self.kills or self.currentKills) .. "/" .. tostring(self.goal) .. testTierLvl, 
                             objX + math.floor(5 * scale), 
                             objectivesY + math.floor(2 * scale), 
                             r, g, b, 1, 
                             self.font)
                             
                objectivesY = objectivesY + math.floor(22 * scale)
                maxY = math.max(maxY, objectivesY)
            end
        end
    end
    
    -- ----------------------
    -- FASE 4: Verifica se è necessario ridimensionare la finestra
    -- ----------------------
    
    -- Assicuriamoci che tutto il contenuto sia visibile
    local contentBottom = maxY + math.floor(10 * scale)
    if contentBottom > self.height then
        -- Se il contenuto va oltre l'altezza attuale, ridimensioniamo la finestra
        self:setHeight(contentBottom)
    end
end

function SFQuest_QuestWindow:update()
	ISCollapsableWindow.update(self)
end

function SFQuest_QuestWindow:close()
	self:removeFromUIManager()
	if self.guid then
		SFQuest_QuestWindow.instances[self.guid] = nil
	end
end

function SFQuest_QuestWindow:new(x, y, item)

	-- print("controllo loop in new: " .. item.text)
    -- this will be much more easy if we can get from the task the npc's identity, so we can use SF_MissionPanel.instance:getWorldInfo(identity);
    local fontSizeValue  = getCore():getOptionFontSize()
    -- Mappa il valore di font size a un fattore di scala più appropriato
    local fontSizeScale
    if fontSizeValue == 1 then      -- Default
        fontSizeScale = 1.0
    elseif fontSizeValue == 2 then  -- 1x
        fontSizeScale = 1.4
    elseif fontSizeValue == 3 then  -- 2x
        fontSizeScale = 1.8
    elseif fontSizeValue == 4 then  -- 3x
        fontSizeScale = 2.2
    else                           -- 4x o superiore
        fontSizeScale = 2.6
    end

    local baseWidth = 420
    local baseHeight = 200
    local width = math.floor(baseWidth * fontSizeScale)
    local height = math.floor(baseHeight * fontSizeScale)
	local o = ISCollapsableWindow:new(x, y, width, height)
    setmetatable(o, self)
    self.__index = self
    o:setResizable(false);
    o.fontHeight = getTextManager():getFontHeight(self.font)
    o.isCollapsed = false
    
    -- Salva i valori base per future ricalcolazioni
    o.baseWidth = baseWidth
    o.baseHeight = baseHeight
    o.fontSizeScale = fontSizeScale
    
    -- Valori quest
    o.dialogueinfo = item.lore;
    local pictureConversion = string.gsub(item.texture, 'Item', 'Picture')
    if not pictureConversion then
        pictureConversion = "media/textures/Picture_Default.png"
    end
    o.picture = pictureConversion
    o.awardsrep = item.awardsrep and ((luautils.split(item.awardsrep, ";")[1]) == getPlayer():getModData().missionProgress.Factions[1].factioncode) and item.awardsrep or nil
    o.awardsitem = item.awardsitem
    o.awardstask = item.awardstask
    o.objectives = item.objectives
    o.needsitem = item.needsitem
    o.unlocks = item.unlocks
    
    -- Sezione variabili zombiekills counters
    o.tempGoal = 0;
    o.goal = 0;
    o.currentKills = 0;
    o.hasZombieCounter = false;
    o.zombieTexture = getTexture("media/ui/Moodle_Icon_Zombie.png")
    
    o.guid = item.guid
    o.title = getText(item.text) or "????";
    o.status = item.status or nil
    o.titleFont = UIFont.Medium
    o.titleFontHgt = getTextManager():getFontHeight(o.titleFont)
    o.npcname = getText(item.title)
    o.task = item
    SFQuest_QuestWindow.instances[o.guid] = o
    return o
end

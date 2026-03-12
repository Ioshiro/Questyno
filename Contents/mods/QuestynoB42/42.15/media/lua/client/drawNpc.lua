require "ISUI/ISPanel"
require "SFQuest_Database"

-- SFQuest_Database.WorldPool use this table of npcs
-- example:
-- SFQuest_Database.WorldPool, {
--     identity = "Questyno_Grif",
--     square = "9331x8640x0",
--     name = "IGUI_SFQuest_Questyno_Grif_Name",
--     faction = "LaResistenza",
--     picture = "media/textures/Picture_Grif.png",
-- } 
-- we can use getText(name)

-- temp.WorldEvent['8353x8579x1']={}
-- temp.WorldEvent['8353x8579x1'].identity='Questyno_RonaldPerez';
-- temp.WorldEvent['8353x8579x1'].dialoguecode='SFQuest_Questyno_RonaldPerez_Begin';
-- temp.WorldEvent['8353x8579x1'].quest='Questyno_RonaldPerez';


-- temp.ClickEvent[1]={}
-- temp.ClickEvent[1].square='8757x6545x0';
-- temp.ClickEvent[1].address='EventoAngelicaStella13';
-- temp.ClickEvent[1].actiondata='time;50;anim;loot';
-- temp.ClickEvent[1].commands='updateobjective;Questyno_AngelicaStella13;1;Completed';

--we can improve this database with more proprieties like the npc role (benzinaio)

local fontSizeValue  = getCore():getOptionFontSize()
-- Mappa il valore di font size a un fattore di scala più appropriato
local fontSizeScale
if fontSizeValue == 1 then      -- Default
    fontSizeScale = 1.0
elseif fontSizeValue == 2 then  -- 1x
    fontSizeScale = 1.5
elseif fontSizeValue == 3 then  -- 2x
    fontSizeScale = 2.0
elseif fontSizeValue == 4 then  -- 3x
    fontSizeScale = 2.5
else                           -- 4x o superiore
    fontSizeScale = 3
end

fontSizeScale = fontSizeScale * 0.8

local originalISWorldMap_render = ISWorldMap.render;
local originalISWorldMap_createChildren = ISWorldMap.createChildren;
ISWorldMap.showQuestGiver = true  
ISWorldMap.showQuestItem = true  

local npcWorldDb = SFQuest_Database.WorldPool



-- Lista degli NPC con le loro coordinate

local getQuest = getTexture("media/textures/esclamativo.png")
local completeQuest = getTexture("media/textures/interrogativo.png")
local benzinagive = getTexture("media/textures/benzinagive.png")
local benzinatake = getTexture("media/textures/benzinatake.png")
local clickevent = getTexture("media/textures/clickevent.png")
local hidequest = getTexture("media/textures/hide-quest.png")
local hidequestitem = getTexture("media/textures/hide-quest-star.png")

-- local npcToDraw = {}



function ISWorldMap:handleQuestGiver(button)
    self.showQuestGiver = not self.showQuestGiver
    button:setImage(self.showQuestGiver and hidequest or getQuest)
end
function ISWorldMap:handleQuestItem(button)
    self.showQuestItem = not self.showQuestItem
    button:setImage(self.showQuestItem and hidequestitem or completeQuest)
end




local function getWorldEventProgress()
    local tempWorldEvent = {}
    local player = getPlayer()
    if player:getModData().missionProgress and player:getModData().missionProgress.WorldEvent then
        for k2,v2 in pairs(player:getModData().missionProgress.WorldEvent) do
            local squareTable = luautils.split(k2, "x");
            local x, y, z = tonumber(squareTable[1]), tonumber(squareTable[2]), tonumber(squareTable[3]);
            local completed = v2.dialoguecode and v2.dialoguecode:find("Complete") and true or false
            local npcName = v2.identity
            -- print("WorldEvent: ", k2, npcName)
            local gas_station_attendant = false

            local npcData = SFQuest_Database.Indexes.WorldByIdentity[npcName]
            if npcData then
                npcName = getText(npcData.name)
                if npcData.occupation == "gas_station_attendant" then
                    gas_station_attendant = true
                end
            end

            table.insert(tempWorldEvent, {
                x = x,
                y = y,
                name = npcName,
                completed = completed,
                gas_station_attendant = gas_station_attendant
            })
            -- print("tempWorldEvent inserito in tabella con nome: ", npcName)
        end
    end
    return tempWorldEvent
end

local function getClickEventProgress()
    local tempClickEvent = {}
    local player = getPlayer()
    if player:getModData().missionProgress and player:getModData().missionProgress.ClickEvent then
        for k2, v2 in pairs(player:getModData().missionProgress.ClickEvent) do
            local squareTable = luautils.split(v2.square, "x");
            local x, y, z = tonumber(squareTable[1]), tonumber(squareTable[2]), tonumber(squareTable[3]);
            -- dal commands del ClickEvent acquisisco il guid della quest attiva (category2)
            local commands = luautils.split(v2.commands, ";");
            local questId = commands[2]
            -- print("clickevent per questId: ", questId)
            local clickEventName = ""
            local prog = player:getModData().missionProgress
            local idx = prog and prog.Indexes
            local quest = idx and idx.ActiveQuestByGuid and idx.ActiveQuestByGuid[questId]
            if quest then
                clickEventName = getText(quest.text)
            end

            table.insert(tempClickEvent, {
                x = x,
                y = y,
                name = clickEventName
            })
            -- print("tempClickEvent inserito in tabella con nome: ", clickEventName)
        end
    end
    return tempClickEvent
end

local worldEventDb = {}
local clickEventDb = {}

local originalISWorldMap_ShowWorldMap = ISWorldMap.ShowWorldMap
function ISWorldMap.ShowWorldMap(...)
    originalISWorldMap_ShowWorldMap(...)
    worldEventDb = getWorldEventProgress()
    clickEventDb = getClickEventProgress()
    print("dentro ShowWorldMap")
end

local originalISWorldMap_close = ISWorldMap.close
function ISWorldMap:close()
    originalISWorldMap_close(self)
    worldEventDb = {}
    clickEventDb = {}
end

function ISWorldMap:createChildren()
    originalISWorldMap_createChildren(self)

    
    local btnSize = self.texViewIsometric and self.texViewIsometric:getWidth() or 48
    local buttons = self.buttonPanel.joypadButtons
    local spacing = 20

    
    self.questGiverBtn = ISButton:new(0, 0, btnSize, btnSize, "", self, ISWorldMap.handleQuestGiver)
    self.questGiverBtn:forceImageSize(btnSize-5, btnSize-5)
    self.questGiverBtn:setImage(self.showQuestGiver and getQuest or hidequest)
    self.questGiverBtn:setVisible(true)
    self.buttonPanel:addChild(self.questGiverBtn)
    table.insert(buttons,1, self.questGiverBtn)
    
    self.questItemBtn = ISButton:new(0, 0, btnSize, btnSize, "", self, ISWorldMap.handleQuestItem)
    self.questItemBtn:forceImageSize(btnSize-5, btnSize-5)
    self.questItemBtn:setImage(self.showQuestItem and clickevent or hidequestitem)
    self.questItemBtn:setVisible(true)
    self.buttonPanel:addChild(self.questItemBtn)
    table.insert(buttons,1, self.questItemBtn)
    
    for i, btn in ipairs(buttons) do
        btn:setX((i - 1) * (btnSize + spacing))
    end

    -- Update the buttonPanel's list of buttons
    
    local btnCount = #buttons
    self.buttonPanel:setWidth(btnSize * btnCount + spacing * (btnCount - 1))
    self.buttonPanel:setX(self.width - spacing - self.buttonPanel:getWidth())
    
    self.buttonPanel:insertNewListOfButtons(buttons)
end


function ISWorldMap:render()
    originalISWorldMap_render(self)
    
    -- self.questItemBtn:setImage(self.showQuestItem and clickevent or hidequestitem)
    -- self.questGiverBtn:setImage(self.showQuestGiver and getQuest or hidequest)

    if worldEventDb and #worldEventDb > 0 and self.showQuestGiver then
        -- print("dentro render worldEventDb")
        for i, v in ipairs(worldEventDb) do    
            local x = math.floor(self.mapAPI:worldToUIX(v.x, v.y))
            local y = math.floor(self.mapAPI:worldToUIY(v.x, v.y))
            local iconWidth = 32*fontSizeScale
            local iconHeight = 32*fontSizeScale
            local completed = v.completed
        
            if v.gas_station_attendant then
                if completed then
                    self:drawTextureScaledAspect(benzinagive, x, y, iconWidth, iconHeight, 1, 1, 1, 1)
                else
                    self:drawTextureScaledAspect(benzinatake, x, y, iconWidth, iconHeight, 1, 1, 1, 1)
                end
            else
                if completed then
                    self:drawTextureScaledAspect(completeQuest, x, y, iconWidth, iconHeight, 1, 1, 1, 1)
                else
                    self:drawTextureScaledAspect(getQuest, x, y, iconWidth, iconHeight, 1, 1, 1, 1)
                end
            end
        
            local name = v.name
            local nameWidth = getTextManager():MeasureStringX(UIFont.Small, name)
            local iconCenterX = x + iconWidth / 2
            local textX = iconCenterX - nameWidth / 2
            -- Ottieni il livello di zoom corrente
            local currentZoom = self.mapAPI:getZoomF() --from UIWorldMapV1 java --max zoom = 11; min zoom = 24
            -- print("currentZoom: ", currentZoom)
            -- Disegna il testo solo se il livello di zoom Ã¨ sufficientemente alto
            if currentZoom >= 14 then
                self:drawText(name, textX, y + iconHeight, 0, 0, 0, 1, UIFont.Small)
            end
        end
    end
    if clickEventDb and #clickEventDb > 0 and self.showQuestItem then
        -- print("dentro render clickEventDb")
        for i, v in ipairs(clickEventDb) do    
            local x = math.floor(self.mapAPI:worldToUIX(v.x, v.y))
            local y = math.floor(self.mapAPI:worldToUIY(v.x, v.y))
            
            self:drawTextureScaledAspect(clickevent, x, y, 32, 32, 1, 1, 1, 1)
            local iconWidth = 32*fontSizeScale
            local iconHeight = 32*fontSizeScale
            local name = v.name
            local nameWidth = getTextManager():MeasureStringX(UIFont.Small, name)
            local iconCenterX = x + iconWidth / 2
            local textX = iconCenterX - nameWidth / 2
            -- Ottieni il livello di zoom corrente
            local currentZoom = self.mapAPI:getZoomF() --max zoom = 11; min zoom = 24

            -- Disegna il testo solo se il livello di zoom Ã¨ sufficientemente alto
            if currentZoom >= 14 then
                self:drawText(name, textX, y + iconHeight, 0, 0, 0, 1, UIFont.Small)
            end
        end
    end
end
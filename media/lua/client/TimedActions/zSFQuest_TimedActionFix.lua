-- require "TimedActions/ISCraftAction" -- already present in SQS
-- require "TimedActions/ISInventoryTransferAction" - questo forse va messo?
-- require "TimedActions/ISDropItemAction"
-- require "TimedActions/ISDropWorldItemAction"
-- require "TimedActions/ISAddItemInRecipe"
-- require "TimedActions/ISConsolidateDrainableAll"
-- require "TimedActions/ISConsolidateDrainable"
-- require "TimedActions/ISDrinkFromBottle"
-- require "TimedActions/ISEatFoodAction"
-- require "Foraging/ISForageAction";



local function postAddItem()
    SF_MissionPanel.instance:checkQuestForCompletionByType("item", nil, "Obtained");
    -- print("additem Successful overwrite again");
end

local tickAdditem = 50
local function delayAddItem()
    if tickAdditem <= 0 then
        Events.OnTick.Remove(delayAddItem)
        postAddItem()
        tickAdditem = 50
        return
    end
    tickAdditem = tickAdditem - 1
end

-- local oldAdditem = SF_MissionPanel.Commands.additem
local function additemOverWrite(item, quantity)
    local inv = getPlayer():getInventory();
	inv:AddItems(item, quantity);
    -- if not getPlayerInventory(0):getIsVisible() and not getPlayerLoot(0):getIsVisible() then
        Events.OnTick.Add(delayAddItem)
    -- end
end


Events.OnGameStart.Add(
    function()
        SF_MissionPanel.Commands["additem"] = additemOverWrite;
    end
) 

local ISInventoryTransferActionVanilla = ISInventoryTransferAction.perform
function ISInventoryTransferAction:perform()
	ISInventoryTransferActionVanilla(self)
    print("ISInventoryTransferAction Successful overwrite")
    -- if not getPlayerInventory(0):getIsVisible() and not getPlayerLoot(0):getIsVisible() then
	    SF_MissionPanel.instance:checkQuestForCompletionByType("item", nil, "Obtained");
    -- end
end


local oldISDropItemAction_perform = ISDropItemAction.perform
function ISDropItemAction:perform()
	oldISDropItemAction_perform(self)
    print("ISDropItemAction Successful overwrite")
	SF_MissionPanel.instance:checkQuestForCompletionByType("item", nil, "Obtained");
end

local oldISDropWorldItemAction_perform = ISDropWorldItemAction.perform
function ISDropWorldItemAction:perform()
	oldISDropWorldItemAction_perform(self)
    print("ISDropWorldItemAction Successful overwrite")
	SF_MissionPanel.instance:checkQuestForCompletionByType("item", nil, "Obtained");
end

local oldISAddItemInRecipe_perform = ISAddItemInRecipe.perform
function ISAddItemInRecipe:perform()
	oldISAddItemInRecipe_perform(self)
    print("ISAddItemInRecipe Successful overwrite")
	SF_MissionPanel.instance:checkQuestForCompletionByType("item", nil, "Obtained");
end

local ISConsolidateDrainableAll_perform = ISConsolidateDrainableAll.perform
function ISConsolidateDrainableAll:perform()
	ISConsolidateDrainableAll_perform(self)
	print("ISConsolidateDrainableAll_perform")
	SF_MissionPanel.instance:checkQuestForCompletionByType("item", nil, "Obtained");
end

local ISConsolidateDrainable_perform = ISConsolidateDrainable.perform
function ISConsolidateDrainable:perform()
	ISConsolidateDrainable_perform(self)
	print("ISConsolidateDrainable_perform")
	SF_MissionPanel.instance:checkQuestForCompletionByType("item", nil, "Obtained");
end

local oldISDrinkFromBottle_perform = ISDrinkFromBottle.perform
function ISDrinkFromBottle:perform()
    oldISDrinkFromBottle_perform(self)
    print("ISDrinkFromBottle Successful overwrite")
    SF_MissionPanel.instance:checkQuestForCompletionByType("item", nil, "Obtained");
end

local oldISEatFoodAction_perform = ISEatFoodAction.perform
function ISEatFoodAction:perform()
    oldISEatFoodAction_perform(self)
    print("ISEatFoodAction Successful overwrite")
    SF_MissionPanel.instance:checkQuestForCompletionByType("item", nil, "Obtained");
end

local origin_ISForageAction_perform = ISForageAction.perform
function ISForageAction:perform()
    origin_ISForageAction_perform(self)
    print("ISForageAction Successful overwrite")
    -- if not getPlayerInventory(0):getIsVisible() and not getPlayerLoot(0):getIsVisible() then
        SF_MissionPanel.instance:checkQuestForCompletionByType("item", nil, "Obtained");
    -- end
end

local origin_ShopBuyAction_perform = ShopBuyAction.perform
function ShopBuyAction:perform()
    origin_ShopBuyAction_perform(self)
    print("ShopBuyAction Successful overwrite")
    -- if not getPlayerInventory(0):getIsVisible() and not getPlayerLoot(0):getIsVisible() then
        SF_MissionPanel.instance:checkQuestForCompletionByType("item", nil, "Obtained");
    -- end
end

local origin_ISDumpWaterAction_perform = ISDumpWaterAction.perform
function ISDumpWaterAction:perform()
    origin_ISDumpWaterAction_perform(self)
    print("ISDumpWaterAction Successful overwrite")
    SF_MissionPanel.instance:checkQuestForCompletionByType("item", nil, "Obtained");
end

local originISInventoryPage_OnContainerUpdate = ISInventoryPage.OnContainerUpdate
function ISInventoryPage.OnContainerUpdateNew()
    originISInventoryPage_OnContainerUpdate()
    print("ISInventoryPage:OnContainerUpdate Successful overwrite")
    SF_MissionPanel.instance:checkQuestForCompletionByType("item", nil, "Obtained");
end

Events.OnGameBoot.Add(
    function()
        Events.OnContainerUpdate.Remove(ISInventoryPage.OnContainerUpdate)
        Events.OnContainerUpdate.Add(ISInventoryPage.OnContainerUpdateNew)
    end
)



-- TESTONE
-- Events.OnGameStart.Add(
--     function()
--         local function applyToInventory(ISInventoryPage, step)
--             if step == "end" and ISInventoryPage.inventory == getPlayer():getInventory() then
--                 print("zSOUL QUEST SYSTEM - Added quest: Obtained, applyToInventory");
--                 SF_MissionPanel.instance:checkQuestForCompletionByType("item", nil, "Obtained");
--             end
--         end
    
--         Events.OnRefreshInventoryWindowContainers.Add(applyToInventory)
--     end
-- )

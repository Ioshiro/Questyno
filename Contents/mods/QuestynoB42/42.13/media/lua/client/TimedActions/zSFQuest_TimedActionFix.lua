require "TimedActions/ISCraftAction"
require "TimedActions/ISInventoryTransferAction"
require "TimedActions/ISDropItemAction"
require "TimedActions/ISGrabItemAction"
require "TimedActions/ISDropWorldItemAction"
require "TimedActions/ISAddItemInRecipe"
require "TimedActions/ISConsolidateDrainableAll"
require "TimedActions/ISConsolidateDrainable"
require "TimedActions/ISDrinkFromBottle"
require "TimedActions/ISEatFoodAction"
require "TimedActions/ISTakeGenerator"
require "Foraging/ISForageAction"


local ISCraftActionVanilla = ISCraftAction.perform;
function ISCraftAction:perform()
    ISCraftActionVanilla(self);
    SF_MissionPanel.instance:checkQuestForCompletionByType("item", nil, "Obtained");
end


local ISInventoryTransferActionVanilla = ISInventoryTransferAction.perform
function ISInventoryTransferAction:perform()
	ISInventoryTransferActionVanilla(self)
    print("ISInventoryTransferAction Successful overwrite") 
	SF_MissionPanel.instance:checkQuestForCompletionByType("item", nil, "Obtained");
end


-- Drop item (seems not working, it triggers ISInventoryTransferAction instead?)
-- local oldISDropItemAction_perform = ISDropItemAction.perform
-- function ISDropItemAction:perform()
-- 	oldISDropItemAction_perform(self)
--     print("ISDropItemAction Successful overwrite")
-- 	SF_MissionPanel.instance:checkQuestForCompletionByType("item", nil, "Obtained");
-- end

-- Place item in the world
local oldISDropWorldItemAction_perform = ISDropWorldItemAction.perform
function ISDropWorldItemAction:perform()
	oldISDropWorldItemAction_perform(self)
    print("ISDropWorldItemAction Successful overwrite")
	SF_MissionPanel.instance:checkQuestForCompletionByType("item", nil, "Obtained");
end

-- Grab item
local oldISGrabItemAction_perform = ISGrabItemAction.perform
function ISGrabItemAction:perform()
    oldISGrabItemAction_perform(self)
    print("ISGrabItemAction Successful overwrite")
    SF_MissionPanel.instance:checkQuestForCompletionByType("item", nil, "Obtained");
end

local oldISAddItemInRecipe_perform = ISAddItemInRecipe.perform
function ISAddItemInRecipe:perform()
	oldISAddItemInRecipe_perform(self)
    print("ISAddItemInRecipe Successful overwrite")
	SF_MissionPanel.instance:checkQuestForCompletionByType("item", nil, "Obtained");
end

-- local ISConsolidateDrainableAll_perform = ISConsolidateDrainableAll.perform
-- function ISConsolidateDrainableAll:perform()
-- 	ISConsolidateDrainableAll_perform(self)
-- 	print("ISConsolidateDrainableAll_perform")
-- 	SF_MissionPanel.instance:checkQuestForCompletionByType("item", nil, "Obtained");
-- end

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

if getActivatedMods():contains("\\nshopsb42") then
    -- require "TimedActions/ShopBuyAction"
    local origin_ShopBuyAction_perform = ShopBuyAction.perform
    function ShopBuyAction:perform()
        origin_ShopBuyAction_perform(self)
        print("ShopBuyAction Successful overwrite")
        -- if not getPlayerInventory(0):getIsVisible() and not getPlayerLoot(0):getIsVisible() then
            SF_MissionPanel.instance:checkQuestForCompletionByType("item", nil, "Obtained");
        -- end
    end
    local original_PlayerShopBuyAction_perform = PlayerShopBuyAction.perform
    function PlayerShopBuyAction:perform()
        original_PlayerShopBuyAction_perform(self)
        print("PlayerShopBuyAction Successful overwrite")
        SF_MissionPanel.instance:checkQuestForCompletionByType("item", nil, "Obtained");
    end
end

local origin_ISDumpWaterAction_perform = ISDumpWaterAction.perform
function ISDumpWaterAction:perform()
    origin_ISDumpWaterAction_perform(self)
    print("ISDumpWaterAction Successful overwrite")
    SF_MissionPanel.instance:checkQuestForCompletionByType("item", nil, "Obtained");
end

local originISInventoryPage_OnContainerUpdate = ISInventoryPage.OnContainerUpdate
-- this event is triggers when a food get an updateAge()
function ISInventoryPage.OnContainerUpdateNew()
    originISInventoryPage_OnContainerUpdate()
    print("ISInventoryPage:OnContainerUpdate Successful overwrite")
    SF_MissionPanel.instance:checkQuestForCompletionByType("item", nil, "Obtained");
end

local originalISTakeGenerator_perform = ISTakeGenerator.perform
function ISTakeGenerator:perform()
    originalISTakeGenerator_perform(self)
    print("ISTakeGenerator Successful overwrite")
    SF_MissionPanel.instance:checkQuestForCompletionByType("item", nil, "Obtained");
end

Events.OnGameBoot.Add(
    function()
        Events.OnContainerUpdate.Remove(ISInventoryPage.OnContainerUpdate)
        Events.OnContainerUpdate.Add(ISInventoryPage.OnContainerUpdateNew)
    end
)
-- require "TimedActions/ISCraftAction"
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

local tickAdditem = 20
local function delayAddItem()
    if tickAdditem <= 0 then
        Events.OnTick.Remove(delayAddItem)
        postAddItem()
        return
    end
    tickAdditem = tickAdditem - 1
end

-- local oldAdditem = SF_MissionPanel.Commands.additem
local function additemOverWrite(item, quantity)
    local inv = getPlayer():getInventory();
	inv:AddItems(item, quantity);
    Events.OnTick.Add(delayAddItem)
end


Events.OnGameStart.Add(
    function()
        SF_MissionPanel.Commands["additem"] = additemOverWrite;
    end
) 

-- local untouched = ISCraftAction.perform;
-- function ISCraftAction:perform()
--     untouched(self);
--     SF_MissionPanel.instance:checkQuestForCompletionByType("item", nil, "Obtained");
--     print("ISCraftAction Successful overwrite");
-- end

local ISInventoryTransferActionVanilla = ISInventoryTransferAction.perform
function ISInventoryTransferAction:perform()
	ISInventoryTransferActionVanilla(self)
    print("ISInventoryTransferAction Successful overwrite")
	SF_MissionPanel.instance:checkQuestForCompletionByType("item", nil, "Obtained");
end


-- local oldISDropItemAction_perform = ISDropItemAction.perform
-- function ISDropItemAction:perform()
-- 	oldISDropItemAction_perform(self)
-- 	SF_MissionPanel.instance:checkQuestForCompletionByType("item", nil, "Obtained");
-- end

-- local oldISDropWorldItemAction_perform = ISDropWorldItemAction.perform
-- function ISDropWorldItemAction:perform()
-- 	oldISDropWorldItemAction_perform(self)
-- 	SF_MissionPanel.instance:checkQuestForCompletionByType("item", nil, "Obtained");
-- end

-- local oldISAddItemInRecipe_perform = ISAddItemInRecipe.perform
-- function ISAddItemInRecipe:perform()
-- 	oldISAddItemInRecipe_perform(self)
-- 	SF_MissionPanel.instance:checkQuestForCompletionByType("item", nil, "Obtained");
-- end

-- local ISConsolidateDrainableAll_perform = ISConsolidateDrainableAll.perform
-- function ISConsolidateDrainableAll:perform()
-- 	ISConsolidateDrainableAll_perform(self)
-- 	print("ISConsolidateDrainableAll_perform")
-- 	SF_MissionPanel.instance:checkQuestForCompletionByType("item", nil, "Obtained");
-- end

-- local ISConsolidateDrainable_perform = ISConsolidateDrainable.perform
-- function ISConsolidateDrainable:perform()
-- 	ISConsolidateDrainable_perform(self)
-- 	print("ISConsolidateDrainable_perform")
-- 	SF_MissionPanel.instance:checkQuestForCompletionByType("item", nil, "Obtained");
-- end

-- local oldISDrinkFromBottle_perform = ISDrinkFromBottle.perform
-- function ISDrinkFromBottle:perform()
--     oldISDrinkFromBottle_perform(self)
--     SF_MissionPanel.instance:checkQuestForCompletionByType("item", nil, "Obtained");
-- end

-- local oldISEatFoodAction_perform = ISEatFoodAction.perform
-- function ISEatFoodAction:perform()
--     oldISEatFoodAction_perform(self)
--     SF_MissionPanel.instance:checkQuestForCompletionByType("item", nil, "Obtained");
-- end

local origin_ISForageAction_perform = ISForageAction.perform
function ISForageAction:perform()
    origin_ISForageAction_perform(self)
    print("ISForageAction Successful overwrite")
    SF_MissionPanel.instance:checkQuestForCompletionByType("item", nil, "Obtained");
end


-- TESTONE
Events.OnGameStart.Add(
    function()
        local function applyToInventory(ISInventoryPage, step)
            if step == "end" and getPlayer():getInventory() == ISInventoryPage.inventory then
                print("zSOUL QUEST SYSTEM - Added quest: Obtained");
                SF_MissionPanel.instance:checkQuestForCompletionByType("item", nil, "Obtained");
            end
        end
    
        Events.OnRefreshInventoryWindowContainers.Add(applyToInventory)
    end
)


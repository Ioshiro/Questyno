require "TimedActions/ISCraftAction"

local untouched = ISCraftAction.perform;
function ISCraftAction:perform()
    untouched(self);
    SF_MissionPanel.instance:checkQuestForCompletionByType("item", nil, "Obtained");
    print("ISCraftAction Successful overwrite");
end

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


local oldISDropWorldItemAction_perform = ISDropWorldItemAction.perform
function ISDropWorldItemAction:perform()
    oldISDropWorldItemAction_perform(self);
    SF_MissionPanel.instance:checkQuestForCompletionByType("item", nil, "Obtained");
    -- print("ISDropWorldItemAction Successful overwrite");
end

local untouched = ISCraftAction.perform;
function ISCraftAction:perform()
    untouched(self);
    SF_MissionPanel.instance:checkQuestForCompletionByType("item", nil, "Obtained");
    print("ISCraftAction Successful overwrite");
end


function additemOverWrite(item, quantity)
    local inv = getPlayer():getInventory();
    inv:AddItems(item, quantity);
    SF_MissionPanel.instance:checkQuestForCompletionByType("item", nil, "Obtained");
    print("additem Successful overwrite");
end

Events.OnGameStart.Add(
    function()
        SF_MissionPanel.Commands["additem"] = additemOverWrite;
    end
) 

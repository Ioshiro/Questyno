-- require "TimedActions/ISGrabItemAction"

local oldISGrabItemAction_perform = ISGrabItemAction.perform
function ISGrabItemAction:perform()
	oldISGrabItemAction_perform(self)
    print("ISGrabItemAction Successful overwrite")
	-- if not getPlayerInventory(0):getIsVisible() and not getPlayerLoot(0):getIsVisible() then
		SF_MissionPanel.instance:checkQuestForCompletionByType("item", nil, "Obtained");
	-- end
end


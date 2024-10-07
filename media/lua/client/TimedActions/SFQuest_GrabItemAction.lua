-- require "TimedActions/ISGrabItemAction"

local oldISGrabItemAction_perform = ISGrabItemAction.perform
function ISGrabItemAction:perform()
	oldISGrabItemAction_perform(self)
    print("ISGrabItemAction Successful overwrite")
	SF_MissionPanel.instance:checkQuestForCompletionByType("item", nil, "Obtained");
end


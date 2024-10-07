require "TimedActions/ISGrabItemAction"

local oldISGrabItemAction_perform = ISGrabItemAction.perform
function ISGrabItemAction:perform()
	oldISGrabItemAction_perform(self)
	SF_MissionPanel.instance:checkQuestForCompletionByType("item", nil, "Obtained");
end


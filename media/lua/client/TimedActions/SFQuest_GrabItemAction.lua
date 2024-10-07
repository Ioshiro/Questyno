require "TimedActions/ISInventoryTransferAction"
require "TimedActions/ISDropItemAction"
require "TimedActions/ISDropWorldItemAction"
require "TimedActions/ISGrabItemAction"

local ISInventoryTransferActionVanilla = ISInventoryTransferAction.perform
function ISInventoryTransferAction:perform()
	ISInventoryTransferActionVanilla(self)
	SF_MissionPanel.instance:checkQuestForCompletionByType("item", nil, "Obtained");
end


local oldISDropItemAction_perform = ISDropItemAction.perform
function ISDropItemAction:perform()
	oldISDropItemAction_perform(self)
	SF_MissionPanel.instance:checkQuestForCompletionByType("item", nil, "Obtained");
end

local oldISDropWorldItemAction_perform = ISDropWorldItemAction.perform
function ISDropWorldItemAction:perform()
	oldISDropWorldItemAction_perform(self)
	SF_MissionPanel.instance:checkQuestForCompletionByType("item", nil, "Obtained");
end

local oldISGrabItemAction_perform = ISGrabItemAction.perform
function ISGrabItemAction:perform()
	oldISGrabItemAction_perform(self)
	SF_MissionPanel.instance:checkQuestForCompletionByType("item", nil, "Obtained");
end
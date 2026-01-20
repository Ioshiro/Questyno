--***********************************************************
--**                    THE SOUL FILCHER                   **
--***********************************************************

require "TimedActions/ISBaseTimedAction"

SFQuestDeliverItem = ISBaseTimedAction:derive("SFQuestDeliverItem");

function SFQuestDeliverItem:isValid()
	return true;
end

function SFQuestDeliverItem:waitToStart()
	self.character:facePosition(self.square:getX(), self.square:getY());
	return self.character:shouldBeTurning()
end

function SFQuestDeliverItem:update()
	self.character:facePosition(self.square:getX(), self.square:getY());
end

function SFQuestDeliverItem:start()
	self:setActionAnim("Loot");
	self.character:SetVariable("LootPosition", "Low");
end

function SFQuestDeliverItem:stop()
    ISBaseTimedAction.stop(self);
end

function SFQuestDeliverItem:perform()
	local playerInv = self.character:getInventory();
	playerInv:Remove(self.item);
	local task = SF_MissionPanel.instance:getActiveQuest(self.guid)
	if self.index then
		SF_MissionPanel.instance:updateObjective(self.guid, self.index, "Delivered");
	end

    -- needed to remove from queue / start next.
	ISBaseTimedAction.perform(self);
end

function SFQuestDeliverItem:new(character, square, item, guid, index)
	local o = ISBaseTimedAction.new(self, character)
	o.character = character;
	o.body = body;
	o.square = square;
	o.item = item;
	o.guid = guid;
	o.index = index;
	o.stopOnWalk = true;
	o.stopOnRun = true;
	o.maxTime = 40
	return o;
end

--***********************************************************
--**                    THE SOUL FILCHER                   **
--***********************************************************

require "TimedActions/ISBaseTimedAction"

---@class SFQuestDeliverItem : ISBaseTimedAction
---@field character IsoPlayer The character performing the follow action
---@field square IsoGridSquare The current square of the clicked player
---@field guid string
---@field index string
---@field item InventoryItem
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

function SFQuestDeliverItem:complete()
	-- Server-authoritative: remove item from inventory
	local playerInv = self.character:getInventory();
	playerInv:Remove(self.item);
	sendRemoveItemFromContainer(playerInv, self.item);
	return true;
end

function SFQuestDeliverItem:perform()
	-- Client-side: update quest objective (runs after server confirms)
	if SF_MissionPanel and SF_MissionPanel.instance then
		if self.index then
			SF_MissionPanel.instance:updateObjective(self.guid, self.index, "Delivered");
		end
	end

    -- needed to remove from queue / start next.
	ISBaseTimedAction.perform(self);
end

function SFQuestDeliverItem:new(character, square, item, guid, index)
	local o = ISBaseTimedAction.new(self, character) --[[@as SFQuestDeliverItem]]
	o.character = character;
	o.square = square;
	o.item = item;
	o.guid = guid;
	o.index = index;
	o.stopOnWalk = true;
	o.stopOnRun = true;
	o.maxTime = 40
	return o;
end

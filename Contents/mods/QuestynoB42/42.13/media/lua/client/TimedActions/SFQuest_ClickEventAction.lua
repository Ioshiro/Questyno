--***********************************************************
--**                    THE SOUL FILCHER                   **
--***********************************************************

require "TimedActions/ISBaseTimedAction"

---@class SFQuest_ClickEventAction : ISBaseTimedAction
---@field character IsoPlayer The character performing the follow action
---@field square IsoGridSquare The current square of the clicked player
---@field anim string|CharacterActionAnims
---@field address string
---@field animvar1 string
---@field animvar2 string
---@field prop1 InventoryItem 
---@field prop2 InventoryItem
---@field commands string
SFQuest_ClickEventAction = ISBaseTimedAction:derive("SFQuest_ClickEventAction");

function SFQuest_ClickEventAction:isValid()
	return true;
end

function SFQuest_ClickEventAction:waitToStart()
	self.character:facePosition(self.square:getX(), self.square:getY());
	return self.character:shouldBeTurning()
end

function SFQuest_ClickEventAction:update()
	self.character:facePosition(self.square:getX(), self.square:getY());
end

function SFQuest_ClickEventAction:start()
	if self.anim then
		self:setActionAnim(self.anim);
	end
	if self.animvar1 and self.animvar2 then
		self:setAnimVariable(self.animvar1, self.animvar2);
	end
	self:setOverrideHandModels(self.prop1, self.prop2);
end

function SFQuest_ClickEventAction:stop()
    ISBaseTimedAction.stop(self);
end

function SFQuest_ClickEventAction:perform()
	if self.commands then
		local commandTable = luautils.split(self.commands, ";");
		SF_MissionPanel.instance:readCommandTable(commandTable);
	end

    -- needed to remove from queue / start next.
	ISBaseTimedAction.perform(self);
end

function SFQuest_ClickEventAction:new(character, square, address, time, anim, prop1, prop2, commands, animvar1, animvar2)
	local o = ISBaseTimedAction.new(self, character) --[[@as SFQuest_ClickEventAction]]
	o.character = character;
	o.square = square;
	o.address = address;
	o.stopOnWalk = true;
	o.stopOnRun = true;
	o.maxTime = time;
	o.anim = anim;
	o.animvar1 = animvar1;
	o.animvar2 = animvar2;
	o.prop1 = prop1;
	o.prop2 = prop2;
	o.commands = commands;
	return o;
end

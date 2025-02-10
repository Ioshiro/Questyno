require "TimedActions/ISBaseTimedAction"
require "ISUI/ISLayoutManager"

SFQuest_WorldEventCheck = ISBaseTimedAction:derive("SFQuest_WorldEventCheck")

function SFQuest_WorldEventCheck:isValid()
	return true
end

function SFQuest_WorldEventCheck:perform()

		local x = getPlayerScreenLeft(self.playerNum)
		local y = getPlayerScreenTop(self.playerNum)
		local window = SFQuest_WorldEventWindow:new(x + 70, y + 50, self.character, self.square, self.worldinfo, self.dialogueinfo, self.questid);
		if window then
			window:initialise()
			window:addToUIManager()
			window:setVisible(true)
			window:addToUIManager()	
			local joypadData = JoypadState.players[self.playerNum+1]
			if joypadData then
				joypadData.focus = window
			end
			-- needed to remove from queue / start next.
		end
		ISBaseTimedAction.perform(self)
end

function SFQuest_WorldEventCheck:new(character, square, worldinfo, dialogueinfo, questid)
	local o = {}
	setmetatable(o, self)
	self.__index = self
	o.maxTime = 0;
	o.stopOnWalk = true;
	o.stopOnRun = true;
	o.character = character;
	o.playerNum = character:getPlayerNum();
	o.square = square;
	o.worldinfo = worldinfo;
	o.dialogueinfo = dialogueinfo;
	o.questid = questid;
	return o
end

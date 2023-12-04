require 'SFQuest_Database'
--[[ SECTION 8 : TIMERS

	WORK IN PROGRESS, MOVED FROM THE STALKER PACK

--Inserting timers, these make something happen when they expire.
--Timers can have a random countdown length between timermin and timermax values, for a set duration use the same value for both.
-- guid = a unique string among all timers used to identify them, it would be a good practice to include your mod's name in it
-- sound = can be used to play a sound when expiring.
-- command = A simpler version of commans (seebelow), it accepts a string that must be one valid command that usually does something related to the timer's guid value. Example: "unlockQuest" will unlock the quest that shares the same guid of this timer.
-- commands = a string including everything the timer does when it expires. Each command is separated from its parameters by semicolons.
	timermin = Timers can have a random countdown length between timermin and timermax values, for a set duration use the same value for both. Measured in hours.
	timermax =

table.insert(SFQuest_Database.TimerPool, {guid = "DucksQuestTimerExample", command = "unlockQuest", timermin = 1, timermax = 2, sound = "doublebeep"});
table.insert(SFQuest_Database.TimerPool, {guid = "PondStalker_BanditsInit", commands = "randomcodedworldfrompool;PondStalker_Bandits;ThePondStalker;Bandits", timermin = 0.15, timermax = 0.15});
]]--
table.insert(SFQuest_Database.TimerPool, {guid = "Questyno_MoneyInit", commands = "randomcodedworldfrompool;Questyno_Money;Questyno;Money", timermin = 0.15, timermax = 0.15});

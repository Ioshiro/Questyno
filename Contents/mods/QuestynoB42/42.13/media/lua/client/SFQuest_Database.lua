--[[
	This file handles the basic lists of factions, quests and timers, as well as initializing a newly created character.
	Quest can be listed in other tables as needed.
]]--

SFQuest_Database = {};

--This is a list of RGB values used by the UI.
--Feel free to insert your own colors here to be used by your mod but please refrain from changing existing colors.
SFQuest_Database.ColorPool = {
	blue = {0.0, 0.0, 1.0},
	cyan = {0.0, 1.0, 1.0},
	green = {0.0, 1.0, 0.0},
	magenta = {1.0, 0.0, 1.0},
	orange = {1.0, 0.5, 0.0},
	red = {1.0, 0.0, 0.0},
	yellow = {1.0, 1.0, 0.0},
}

-- Insert here tables that will be checked every new day
-- dailycode = a unique string to identify your daily event.
-- condition = a condition to be met in order to execute the commands.
-- commands = a string containing a variety of commands to be executed, parameters are separated by ;
-- frequency = the number of in-game days that must pass so this event will check conditions and try to execute. When the daily event is added it will start at zero.
SFQuest_Database.DailyEventPool = {
	--{ dailycode = "uniquedailycode", condition = "", commands = "", frequency = 1},
}


-- These are preset NPC dialogue that can be called, most usually through World Events (see below).
-- dialoguecode = This is a unique string used to find this exact dialogue entry, do not give the same code to more than one entry.
-- context = This is the text that will be displayed as the right click option.
-- command = What exactly happens when the player closes the dialogue box. For example: unlockQuest, unlockRandomQuest
-- text = The text to be displayed in the dialogue box, if there is a proper text set for the reputation tier (see below) that will be used instead.
-- tiers = A table that holds certain values for each faction's reputation tier. The exact faction is informed by the World Event itself (see below). For example: text.
SFQuest_Database.DialoguePool = {
	
}

--This is a template for a faction's reputation tiers, if you don't want to cuztomize your faction's tiers (see below) you can simply set tiers = SFQuest_Database.tiersTemplate
SFQuest_Database.tiersTemplate = { {tiername = "IGUI_Factions_Template_Tier1", minrep = 1000, barcolor = "red"}, {tiername = "IGUI_Factions_Template_Tier2", minrep = 1250, barcolor = "orange"}, {tiername = "IGUI_Factions_Template_Tier3", minrep = 1750, barcolor = "yellow"}, {tiername = "IGUI_Factions_Template_Tier4", minrep = 2500, barcolor = "green"} };

--This is the pool of factions that will be added to the character upon creation.
--Reputation tiers must always be listed from the lowest to the highest tier.
SFQuest_Database.FactionPool = {
	--{factioncode = "RubberDucks", name = "IGUI_Factions_RubberDucks", startrep = 0, minrep = 0, maxtier = 5, tiers = SFQuest_Database.tiersTemplate},
}

--This is a pool for mannequins that will be spawned automatically by the system
--They can be used for the world event "NPCs" but are not really linked to each other
--Only one can exist by square tag. A square tag is a atring formed by the square's x, y and z coordinates, i.e. 1200x500x0
SFQuest_Database.MannequinPool = {
	--1500x200x0 = {sprite = "", oufit = ""},
}


-- This table holds all quest to be used by the game.
-- Create your own quest pools by inserting a new key value, for example SFQuest_Database.QuestPool["RandomDailyQuests"] = {}

SFQuest_Database.QuestPool = {
	{guid = "SawLog", completesound = "levelup", lore = {"IGUI_Quest_SawLogLore"}, text = "IGUI_Quest_SawLog", texture = "Item_Logs", needsitem = "Plank", awardsitem = "Base.Burger", awardsrep = "RubberDucks;50", awardstask = "SturdyStick"},
	{guid = "SturdyStick", completesound = "levelup", lore = {"IGUI_Quest_SturdyStickLore"}, text = "IGUI_Quest_SturdyStick", texture = "Item_Plank", needsitem = "WoodenStick", awardsrep = "TESTRubberDucks;1000", awardstask = "ThankYouTester"},
	{guid = "ThankYouTester", text = "IGUI_Quest_ThankYouTester", texture = "Item_PlushSpiffo"},
}

--
SFQuest_Database.RandomEventPool = {}


-- This table is used to hold other tables for random reward items
-- These tables can be used in a quest's awardsitem as "Table:YourTableName"
SFQuest_Database.RandomRewardItemPool = {}

-- This table contains additions to the character when created. It can include quests, timers, world events and so on.
-- condition = A condition that must be met for this entry to be added to the character, for example a profession "profession;metalworker" or a trait "trait;Handy" These must match the internal names used by the game.
-- quest = A guid value for a quest to be added.
-- timer = A guid value for a timer to be added. 
-- world = world event plus dialogue to be added and quest. For example "TESTnpc;FirstTalk".
SFQuest_Database.StartingPool = {
	--{world = "TESTNPC;TESTstart;SawLog"},
}

-- All possinle timers should be inserted here.
-- Timers make something happen after a set period (timer value) or randomzied period (between timermin and timermax values).
-- command = Times can have a variety of commands that tell what they do when they expire, for example: unlockQuest.
-- A timer's guid should match the guid for quest that will be affected by it.
SFQuest_Database.TimerPool = {
	--{guid = "QuestExample", command = "unlockQuest", commands = "", timermin = 1, timermax = 2, sound = "doublebeep"},
}

-- World events are static NPCs or other methods of unlocking a quest when a player right-clicks on it in the game world.
-- These are added to a player's WorldEvent table along with extra info about what exactly will happen, for example unlocking or updating a quest.
-- identity = a unique string used to identify this starter, do not use the same value for more than one starter.
-- square = The square this starter is on, a string value composed of the square's x, y and z. Example: "10625x9652x0"
-- name = is a string pointing to a translation entry that will be used in case there is no proper value set for the player's reputation tier (see tiers below).
-- faction = refers to the unique factioncode value (see factions), if not set this world event will not be affected by reputation tiers.
-- tiers = certain values can be set for each reputation tier a player has achieved with that faction. For example: name and quest-specific text.
SFQuest_Database.WorldPool = {
	--{identity = "TESTNPC", square = "10625x9652x0", name = "IGUI_WorldEventName_TEST", faction = "TESTRubberDucks", picture = "media/textures/Picture_Test.png", tiers = { {name = "IGUI_WorldEventName_TEST1"}, {name = "IGUI_WorldEventName_TEST2"}, {name = "IGUI_WorldEventName_TEST3"}, {name = "IGUI_WorldEventName_TEST4"}, {name = "IGUI_WorldEventName_TEST5"} } },
}
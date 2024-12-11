--------------------------------------------------------------------------------------------------------------------------------------------------
--[[

	This is a basic guide for the main file you have to add to your mod,
	what each type of table does and info on most of their values.
	
	I will try to improve it as I receive feedback from modders.
	
	--------------------------------------------------------------------
	
	Your file should be placed inside media/lua/client.
	Now let's get it started.

]]--

-- This is the first line you need:
--require 'SFQuest_Database'


--------------------------------------------------------------------------------------------------------------------------------------------------
--[[ SECTION 1 : QUESTS

	Before a quest can be given to a character it needs to be created
	and inserted into the system. Let's see how that is done and what
	the values mean.

	A quest will be a local table that includes several values:
	local yourTable = { guid = "examplequest", completesound = "levelup", lore = {"IGUI_QuestLore_examplequest"}, needsitem = "Base.Nails;5", unlockedsound = "QuestUnlocked", text = "IGUI_Quest_examplequest", texture = "Item_Nails", title = "IGUI_QuestTitle_examplequest", awardsitem = "Money;20", awardsrep = "TestFaction;100" }
	
	Here is a list of values that go inside the quest table and what they do.
	They can be added to the table in any order, I usually add guid first and
	then try to list them alphabetically.
	
	awardsitem = (OPTIONAL) One or more item types that will be given to the player when the quest is completed, 
							followed by the quantity and separated by a semicolon. These are displayed in an NPC's dialogue for accepting 
							the quest (See more on that in the dialogue section). It accepts an item "Base.Burger", 
							item and quantity "Base.Burger;2" or multiple items and their quantities "Base.Fries;2;Base.Burger;1".
	awardslore = (OPTIONAL) The quest will receive one more text page in its lore UI, it accepts a string containing a translation entry. 
							If the quest had no text pages and could not be clicked it will be clickable when this new page is added.
	awardsrep = (OPTIONAL) Reputation points that will be given when the quest is completed. Accepts factioncode (see the faction section) 
							plus reputation amount, for example: "TestFaction;50".
	awardstask = (OPTIONAL) Unlocks another quest when this quest is completed, it accepts a string that must be a valid, 
							unique quest guid (see guid in this list).
	awardsworld = (OPTIONAL) Unlocks an NPC dialogue when this quest is completed, It accepts a string that must be a valid, 
							unique dialoguecode (see the dialogue section). -> BUGIA FUNZIONA COME UNLOCKWORLDEVENT
	completesound = (OPTIONAL) Links to a sound ID that will be played when the quest is completed, 
							I use the old level up sound "levelup" for my quests.
	dailycode = (OPTIONAL) A string used to identify quests from the same daily pool. When it is time to re-roll and give a new quest 
							from a pool the system checks if the character already has one.
	guid = (REQUIRED) This is a unique string used to identify your quest among all quests added by all mods, so make it really unique 
							like "YourModName_UniqueQuestName".
	lore = (OPTIONAL) This is a table with translation entries, these entries should contain text that players can read if they click the quest,
						if no lore table is included clicking on the quest will not open the lore UI.
	needsitem = (OPTIONAL) Adding this means your quest needs one or more item to progress, it can be an item ID, or an item tag, 
							followed by the quantity and separated by a semicolon. Examples: "Base.Nails;5", or one of the tag options:
							There are a few options when checking for tags:
							Tag# accepts any item that has the tag. Example: "Tag#Egg;12".
							TagPredicateBigFish# accepts fresh fish above a certain length (>=50cm).
							TagPredicateCondition# accepts weapons above a certain condition.
							TagPredicateFreshFood# accepts food items that are currently fresh.
							TagPredicateFullDrainable# it will only accept full drainable items.
							TagPredicateFoodWeight# it will only accept food that are above a certain weight.
							TagPredicateFoodHunger# it will only accept food that are above a certain amount of hunger.
							TagPredicateFoodCooked# it will only accept cooked food.
							you can also use this check for just a item type:
							PredicateBigFish# accepts fresh fish above a certain length (>=50cm).
							PredicateCondition# accepts weapons above a certain condition.
							PredicateFreshFood# accepts food items that are currently fresh.
							PredicateFullDrainable# it will only accept full drainable items.
							PredicateFoodWeight# it will only accept food that are above a certain weight.
							PredicateFoodHunger# it will only accept food that are above a certain amount of hunger.
							PredicateFoodCooked# it will only accept cooked food.
	objectives = (OPTIONAL) A table containing one table for each objective. Objectives display their own text and can have their own separate 
							progress status. It is usually required to complete all objectives before being able to complete a quest but 
							not necessarily in the order they are presented. Example: A quest could require talking to 4 other NPCs.
	ondone = (OPTIONAL)  A string containing a list of commands what will be executed when the quest or objective is marked as done 
						(see the commands section).
	onobtained = (OPTIONAL) A string containing a list of commands what will be executed when the quest or objective is marked as obtained 
						(see the commands section).
	text = (REQUIRED) The text that will be displayed in the list of quests, should be short and descriptive.
	texture = (OPTIONAL) The icon that will be displayed in the list of quests. If using an item icon from the game you must add the "Item_" 
							preffix, if it is a modded icon the complete path and file must be provived. 
							Example: "Item_Nails", "media/textures/Item_MyOwnIcon.png".
	title = (OPTIONAL) A translation entry with the title that is displayed in the lore UI. Example: "IGUI_QuestTitle_examplequest".
	unique = (OPTIONAL) Makes a quest unique so a character can't unlock it more than once. Parameter: TRUE.
	unlockedsound = (OPTIONAL) Links to a sound ID that will be played when the quest is given to a character, 
					I provide a new sound "QuestUnlocked" that I use for my quests.
	unlocks - (OPTIONAL) A string containing a list of commands that will be executed 
						when the player receives this quest (see the commands section).

	updates = (OPTIONAL) It means this quest is actually an update for another active quest and will not be added to the active list. 
						It must be a valid, unique quest guid and that quest must be in the list of active quests at the momment of unlocking 
						this update. Most values listed here can be used to change that quest for the character. 
						Examples: texture, text, title.
	
	--------------------------------------------------------------------	
	
	This is the line that inserts a new quest into the system:
	table.insert(SFQuest_Database.QuestPool, yourTable);
	
	Or you could do it in a single line like this:
	table.insert(SFQuest_Database.QuestPool, { guid = "examplequest", completesound = "levelup", lore = {"IGUI_QuestLore_examplequest"}, needsitem = "Base.Nails;5", unlockedsound = "QuestUnlocked", text = "IGUI_Quest_examplequest", texture = "Item_Nails", title = "IGUI_QuestTitle_examplequest", awardsitem = "Money;20", awardsrep = "TestFaction;100" });
	
	--------------------------------------------------------------------
	SECTION 1.1 : OBJECTIVES
	
	hidden = (OPTIONAL) If set to true the objective is not displayed in the quest tab. It still functions like any other objective and can be displayed if it is updated to remove the hidden value.
	oncompleted = (OPTIONAL) A string of commands that will run when that objective is marked as completed (see the commands section).
	
]]--


--------------------------------------------------------------------------------------------------------------------------------------------------
--[[ SECTION 2 : COMMANDS

	Quests, timers or other mechanics in this system can execute 
	a variety of commands, these are included in strings followed
	by their parameters if any. A single string can contain many
	commands that will all be executed at the same time.
	
	Here is the list of commands and the parameters they need:
	
	actionevent - Adds a specific condition that will be checked every 10 minutes, when the condition is met a list of commands will be given. Parameters: Condition and list of commands.
					Possible conditions: "killzombies", followed by the quantity, separated by : "killzombies:25".
					Commands: Any commands and their parameters, but with : instead of ;
	addmannequin - Adds a mannequin to the world. Keep in mind that the mannequin must have been inserted 
					into the list of mannequins for this to work. 
					Parameter: A squaretag (string composed of the square's x, y and z).
	additem - Adds an item to the player's inventory. Parameters: Item ID followed by quantity.
	clickevent - Adds a right click event at a specific square (see right click event section). 
				Parameters: A "squaretag" and a unique string for the click event separated by : 
				(Example: "12000x7500x0:MyUniqueClickEvent", values for the timed action separated by : 
				(example: "time:50:anim:loot"), and a list of commands that will run when the action is performed. 
				Each parameter separated by a semicolon ;
	completequest - Completes a quest. Parameters: A quest guid.
	lore    - Adds a new lore entry to a quest. Parameters: Quest guid followed by a translation entry.
	playersay - Displays a text line over the character's head, does not create real sound to attract zombies. Parameters: translation entry.
	randomcodedworldfrompool - Picks a random world event/dialogue from a pool and runs unlockworldevent. Parameters: A dailycode (see quests section), outer table's name, inner table's name.
	removeclickevent - Removes the click event from the character. Parameter: A click event's unique name (see right click events section).
	removemannequin - Removes a mannequin from the world. Parameter: A string containing the square's x, y and z coordinates, separated by x (example: 5000x800x0)
	revealobjective - Reveals an objective that is currently hidden (see quests section, objectives sub section). Parameters: Quest guid followed by the objective's index in the list (starting from 1).
	timer - Adds a specific timer to that character. Parameters: A timer's guid.
	updatequeststatus - Updates the quest status, can use a variety of strings such as 
		completed, done, obtained, . Parameters: A quest guid followed by a status.
	updateobjective - Updates a quest's objective status, much like the previous command. 
		Parameters: Quest guid, objective's index and status.
	updateobjectivetext - Changes the text displayed for a certain objective. 
		Paramters: Quest guid, objective's index and a translation entry.
	unlockroom - Enables the character to receive a list of commands when entering a certain room in the map. 
			Parameters: A squaretag followed by a commands list (with : instead of ;).
	unlocktimer - Same as timer.
	unlockworldevent - Gives the ability to right click one of the pre-existing "NPCs" and start a specific dialogue. Parameters: 
						(identity, dialoguecode, questid, dailycode) -> dailycode is optional
	worldevent - Same as unlockworldevent.
	
	
	
]]--


--------------------------------------------------------------------------------------------------------------------------------------------------
--[[ SECTION 3 : DIALOGUES

	A common method of unlocking quests is by talking to an NPC.
	For that we need to create dialogues.

	Here we insert all needed dialogues, they are very specific
	in what they do so it is possible a mod will need a lot of them.
	
	This is how you insert a dialogue into the system:
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "YourMod_UniqueDialogueName", 
											context = "ContextMenu_WorldEvent_TalkTo", 
											command = "unlockquest;examplequest", 
											optional = true, 
											text = "IGUI_Dialogue_examplequest_unlock", 
											textaccepted = "IGUI_Dialogue_examplequest_accepted", 
											textdeclined = "IGUI_Dialogue_examplequest_declined"});

	dialoguecode = (REQUIRED) A unique string used to identify your dialogue among all dialogues added by all mods.
	context = (REQUIRED) A translation entry that will be displayed when right clicking the square. For "NPCs" I suggest "ContextMenu_WorldEvent_TalkTo".
	command = (REUIRED) A string with what this dialogue does. The options are:
						completequest - Used to complete an active quest, followed by a quest guid. "completequest;YourQuestGuid"
						unlockquest - Used to unlock quests, followed by the quest guid. "unlockquest;YourQuestGuid"
						updateobjectivestatus - Used to updated a specific objective status for an active quest, followed by quest guid, objective's index and status. "updateobjectivestatus;YourQuestGuid;1;Completed"
	optional = (OPTIONAL) Only used if the dialogue unlocks a quest. If set to true the character can decline the deal and come back later.
	text = (REQUIRED) A translation entry with text that will be displayed in the dialogue window.
	textaccepted = Only used if the dialogue unlocks a quest. Text will be displayed after accepting the deal.
	textdeclined = Only used if the dialogue unlocks a quest. Text will be displayed after declining the deal.
	
	So if the idea is to unlock and complete a quest by talking no an NPCs
	we need to add 2 separate dialogues and only give the one for completion
	when the player has met the requirements. For example acquiring an item.
	
]]--


-------------------------------------------------------------------------------------------------------------------------------------------------- 
--[[ SECTION 4 : WORLD EVENTS (AKA NPCs)

	To fully implement a dialogue we need
	an "NPC" in that square. It will
	contain information that is needed for
	other mechanics that don't need to be
	included in each dialogue. These are
	called 'World Events' internally.
	
	This is how a world event is inserted:
table.insert(SFQuest_Database.WorldPool, {identity = "YourMod_Survivor", square = "12000x7000x0", name = "IGUI_WorldEventName_Survivor", faction = "TestFaction", picture = "media/textures/Picture_SurvivorFace.png"});

	identity = (REQUIRED) A unique string that identifies it among all world events added by all mods. It would be a good practice to include your mod's name in it or some other kind of unique preffix.
	square = (REQUIRED) A string composed of the square's x, y and z values, separated by an "x". Example: "8000x5000x0". Make sure players can reach that square.
	name = (REQUIRED) A string pointing to a translation entry containing the event's name, if no entry is provived for the current faction's tier attained by the player.
	faction = (OPTIONAL) The faction this NPC belongs to, when awarding reputation points for quests this is the faction that will be used. In theory it isn't required but don't try awarding reputation points if you don't include a valid factioncode.
	picture = (OPTIONAL) A png file that should be no larger than 100 pixels wide and 140 pixels tall. If not included no portrait will be displayed in dialogue windows.

]]--


--------------------------------------------------------------------------------------------------------------------------------------------------
--[[ SECTION 5 : MANNEQUINS

	Mannequins can be used to represent static NPCs but they are optional
	and the world event/dialogue mechanic works without them. Make sure
	their square matches an existing world event (see world events section).

	Inserting the mannequin table here, to be used by the world event "NPCs"
	Only one can be placed in a square by design.
	Get the square's x, y and z values, separated by an "x".
	
SFQuest_Database.MannequinPool["8000x5000x0"] = {sprite = "location_shop_mall_01_68", 
											direction = "S", beard = "", hair = "Bald", outfit = "Farmer"};

	sprite = (REQUIRED) A string with one of the available mannequin's sprites, 
	location_shop_mall_01_65 to 70 and from 73 to 78.
	direction = A string with the direction this mannequin will face, must be one of these: "N", "W", "E" or "S".
	beard = (OPTIONAL) A string with the beard model's ID, 
	if not included will use a random model according to outfit definitions. "" means no beard.
	beardcolor = (OPTIONAL) A string containing r, g, b values ranging from 0 to 1, separated by comma. Example: "0.5,0.1,0.1". If not included it will use a random hair color based on outfit definitions.
	hair = (OPTIONAL) A string with hair model's ID, if not included will use a random model according to outfit definitions. "Bald" means no hair.
	haircolor = (OPTIONAL) A string containing r, g, b values ranging from 0 to 1, separated by comma. Example: "0.5,0.1,0.1". If not included it will use a random hair color based on outfit definitions.
	outfit = (OPTIONAL) A string with any valid outfit from clothing.xml, keep in mind that outfits are either male or female, so pick one that matches your chosen mannequin. This system provides a few outfits that include random skin color, using outfits from the base game will result in mannequin white appearance instead.

]]--


--------------------------------------------------------------------------------------------------------------------------------------------------
--[[ SECTION 6 : FACTIONS

	All factions from all enabled quest mods are displayed
	in the Quests tab. These can be used by modders but
	provide no functionality on their own.
	
	Quests can give reputation points that unlock tiers.

	This is how a faction is inserted into the system:
table.insert(SFQuest_Database.FactionPool, {factioncode = "ExampleFaction", name = "IGUI_Factions_ExampleFaction", startrep = 0, minrep = 0, maxtier = 5, tiers = ExampleTiersTemplate});

	factioncode = (REQUIRED) A unique string used to identify your faction among all factions added by all mods. It is referenced for example when a quest includes reputation rewards. 
	name = (REQUIRED) A string for a translation entry. Example: "IGUI_Factions_ExampleFaction".
	startrep = (REQUIRED) The starting reputation points for that faction.
	minrep = (REQUIRED) The minimum points any character can have, in case there are plans to remove points.
	maxtier = (REQUIRED) The maximum tier a character can unlock for the faction. No reputation points will be awarded once that tier is unlocked.
	tiers = (REQUIRED) A table containing 1 table for each tier. It is suggested to create a separate table to be used as a template if all factions are going to work the same way.
		
	--------------------------------------------------------------------
	
	This is a template example:	
ExampleTiersTemplate = { {tiername = "IGUI_Factions_Template_Tier1", minrep = 700, barcolor = "red"}, {tiername = "IGUI_Factions_Template_Tier2", minrep = 1400, barcolor = "orange"}, {tiername = "IGUI_Factions_Template_Tier3", minrep = 2100, barcolor = "yellow"}, {tiername = "IGUI_Factions_Template_Tier4", minrep = 2800, barcolor = "green"} };

	Each tier's table will include the following:
	
	barcolor = A string with the color that will be used for the progress bar (see the last part of this section).
	minrep = The reputation points that must be reached to unlock the tier
	tiername = The name that will be displayed for that tier.
	unlocks = (OPTIONAL) A string that is a list of commands (see commands section), it triggers when the tier is reached.
	
	--------------------------------------------------------------------
	
	Colors used in a faction's progress bar link to a simple table provided
	by the system. The standard options are "blue", "cyan", "green", "magenta",
	"orange", "red" and yellow". But new colors can easily be added.
	The table must include 3 values (r, g, b) that range from 0.0 to 1.0
	
SFQuest_Database.ColorPool.Purple = {0.5, 0.0, 1.0}
	
	]]--


	--------------------------------------------------------------------------------------------------------------------------------------------------
--[[ SECTION 7 : STARTING POOLS

	Starting pools are a list of things that will be given to characters
	when they are created. For example if you want the character to be able
	to talk to an NPC right from the start that option must be given here.
	
	Some mechanics have some issues when given directly like that, so it is
	also possible to give a short timer that will then be used to unlock 
	the feature (see timers section).

table.insert(SFQuest_Database.StartingPool, {condition = "profession;Carpenter", 
											world = "YourMod_Survivor;YourMod_UniqueDialogueName;examplequest"});

	condition = (OPTIONAL) The list in this specific starting pool will only be given if the character fulfills the requirement. Examples: "profession;Carpenter" or traits like "trait;Handy".
	click = (OPTIONAL) A string composed of the parameters for a right click event (see commands and right click events sections).
	daily = (OPTIONAL) A pool of daily quests that are given from a specific NPC (see daily events section).
	quest = (OPTIONAL) A quest guid. The quest will be added to the list of active quests.
	timer = (OPTIONAL) A string containing a timer's unique guid (see timers section).
	world = (OPTIONAL) A string composed of a world event's identity, a dialoguecode and a quest guid, separated by ;
	
	
	So in that example only carpenter characters would be able to talk to
	the NPC and unlock that quest.
	
]]--


--------------------------------------------------------------------------------------------------------------------------------------------------
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


--------------------------------------------------------------------------------------------------------------------------------------------------
--[[ SECTION 9 : RIGHT CLICK EVENTS

	To avoid the need for a million different timed actions for each specific need,
	the quest system includes a timed action that can receive values from the mods
	adding quests, making it possible to perform customized actions that have unique
	results when they are performed.
	
	Each right click event is tied to a specific square on the map, but more than one
	event can be active for a square at the same time. 
	
	Right click events can be given to a character using the "clickevent" command
	(see the commands section) or through a starting pool (see starting pool section).
	Each paramter is separated from the next by a semicolon ;
	
	--------------------------------------------------------------------
	The first paramater includes the square tag and a unique name for that click event
	so it can be identified later, for example when you want to remove it for a player.
	
	Example: "8000x6000x0:MyOwnEvent"
	
	
	--------------------------------------------------------------------
	The second parameter includes data for the timed action, separated by :
	
	anim: (OPTIONAL) Sets the animation used by the action, animations have internal names (example: anim:Loot).
	animvar: (OPTIONAL) Sets a variable for certain animations that can be used used by the action. Parameters: 2 strings (example: animvar:LootPosition:Low for the Loot animation).
				LootPosition:Low (Loot animation) Used when a character is grabbing items from the ground.
	time: (REQUIRED) Sets the duration time for the action (example: time:50).

	So that would be "anim:Loot:time:50"
		
	--------------------------------------------------------------------
	The third parameter is a list of commands that will run when the action
	is fully performed. Since it is included as part of a larger string
	here the usual semicolon ; that separates commands and their parameters
	is replaced by : Don't worry the system will revert that back to a 
	semicolon internally and it will work just like a standard list of commands.

]]--


--------------------------------------------------------------------------------------------------------------------------------------------------
--[[ SECTION 10 : RANDOM EVENT POOLS

	These are tables used to randomize world events (see world events
	section). They include string with the "WorldEvent;Dialoguecode,Questguid"
	format.
	
	When using the randomcodedworldfrompool command (see commands section) the last
	2 parameters will be ExamplePool and Pool1 or Pool2 in this example:

ExamplePool = {
	Pool1 = {
	"PondStalker_Bandits;ThePondStalker_AmmoBox_Bandits;ThePondStalker_AmmoBox_Bandits",
	"PondStalker_Bandits;ThePondStalker_Animal_Bandits;ThePondStalker_Animal_Bandits",
	"PondStalker_Bandits;ThePondStalker_Artifact_Bandits;ThePondStalker_Artifact_Bandits",
	"PondStalker_Bandits;ThePondStalker_BigFish_Bandits;ThePondStalker_BigFish_Bandits",
	"PondStalker_Bandits;ThePondStalker_CannedFood_Bandits;ThePondStalker_CannedFood_Bandits",
	"PondStalker_Bandits;ThePondStalker_Fish_Bandits;ThePondStalker_Fish_Bandits",
	"PondStalker_Bandits;ThePondStalker_ForagedFood_Bandits;ThePondStalker_ForagedFood_Bandits",
	"PondStalker_Bandits;ThePondStalker_Medicine_Bandits;ThePondStalker_Medicine_Bandits",
	"PondStalker_Bandits;ThePondStalker_Patches_Bandits;ThePondStalker_Patches_Bandits",
	"PondStalker_Bandits;ThePondStalker_Pistol_Bandits;ThePondStalker_Pistol_Bandits",
	"PondStalker_Bandits;ThePondStalker_Rifle_Bandits;ThePondStalker_Rifle_Bandits",
	"PondStalker_Bandits;ThePondStalker_Shotgun_Bandits;ThePondStalker_Shotgun_Bandits",
	"PondStalker_Bandits;ThePondStalker_SkillBook_Bandits;ThePondStalker_SkillBook_Bandits",
	"PondStalker_Bandits;ThePondStalker_Zombies_Bandits;ThePondStalker_Zombies_Bandits",
	},
	Pool2 = {
	"PondStalker_ClearSky;ThePondStalker_AmmoBox_ClearSky;ThePondStalker_AmmoBox_ClearSky",
	"PondStalker_ClearSky;ThePondStalker_Animal_ClearSky;ThePondStalker_Animal_ClearSky",
	"PondStalker_ClearSky;ThePondStalker_Artifact_ClearSky;ThePondStalker_Artifact_ClearSky",
	"PondStalker_ClearSky;ThePondStalker_BigFish_ClearSky;ThePondStalker_BigFish_ClearSky",
	"PondStalker_ClearSky;ThePondStalker_CannedFood_ClearSky;ThePondStalker_CannedFood_ClearSky",
	"PondStalker_ClearSky;ThePondStalker_Fish_ClearSky;ThePondStalker_Fish_ClearSky",
	"PondStalker_ClearSky;ThePondStalker_ForagedFood_ClearSky;ThePondStalker_ForagedFood_ClearSky",
	"PondStalker_ClearSky;ThePondStalker_Medicine_ClearSky;ThePondStalker_Medicine_ClearSky",
	"PondStalker_ClearSky;ThePondStalker_Pistol_ClearSky;ThePondStalker_Pistol_ClearSky",
	"PondStalker_ClearSky;ThePondStalker_Rifle_ClearSky;ThePondStalker_Rifle_ClearSky",
	"PondStalker_ClearSky;ThePondStalker_Shotgun_ClearSky;ThePondStalker_Shotgun_ClearSky",
	"PondStalker_ClearSky;ThePondStalker_SkillBook_ClearSky;ThePondStalker_SkillBook_ClearSky",
	"PondStalker_ClearSky;ThePondStalker_Zombies_ClearSky;ThePondStalker_Zombies_ClearSky",
	},
}

SFQuest_Database.RandomEventPool.ExamplePool = ExamplePool;

]]--


--------------------------------------------------------------------------------------------------------------------------------------------------
--[[ SECTION : DAILY EVENTS

	WORK IN PROGRESS

	This is how you insert a daily event:
table.insert(SFQuest_Database.DailyEventPool, { 
	dailycode = "Example_DailyCode", 
	condition = "notmaxedwithcode;QuestDailyCodeForThisPool;1", 
	commands = "randomcodedworldfrompool;PondStalker_Bandits;ThePondStalker;Bandits", 
	days = 0, frequency = 12});

]]--
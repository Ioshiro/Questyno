SFQuest_PlayerHandler = {};

SFQuest_PlayerHandler.startingPlayerStats = {
	Category1 = {},
	label = "IGUI_XP_Quests",
	Category1Greyed = true,
	Category1Label = "IGUI_XP_Quests_QuestLog",
	Category2 = {},
	Category2Label = "IGUI_XP_Quests_ActiveQuests",
	ActionEvent = {},
	ClickEvent = {},
	DailyEvent = {},
	Timers = {},
	Factions = {},
	Delivery = {},
	WorldEvent = {},
	LastDailyCompleted = {},
	-- O(1) Lookup Indexes (rebuilt on load, not persisted)
	Indexes = {
		ActiveQuestByGuid = {},      -- Category2 indexed by guid
		ActiveQuestsByDailyCode = {}, -- Category2 indexed by dailycode (array per code)
		ActionEventByQuestGuid = {}, -- ActionEvent indexed by questGuid
		WorldEventByDialogue = {},   -- WorldEvent indexed by dialoguecode
		ClickEventByAddress = {},    -- ClickEvent indexed by address
		FactionByCode = {},          -- Factions indexed by factioncode
		PlayerDailyEventByCode = {}, -- DailyEvent (player unlocked) indexed by dailycode
	},
};

SFQuest_PlayerHandler.imDeath = false

-- Rebuild all player progress indexes from existing data
-- Call this on game load to restore O(1) lookups
function SFQuest_PlayerHandler.rebuildPlayerIndexes(player)
	local prog = player:getModData().missionProgress
	if not prog then return end

	-- Ensure Indexes structure exists (for backward compatibility)
	if not prog.Indexes then
		prog.Indexes = {
			ActiveQuestByGuid = {},
			ActiveQuestsByDailyCode = {},
			ActionEventByQuestGuid = {},
			WorldEventByDialogue = {},
			ClickEventByAddress = {},
			FactionByCode = {},
			PlayerDailyEventByCode = {},
		}
	end

	local idx = prog.Indexes

	-- Clear all indexes
	idx.ActiveQuestByGuid = {}
	idx.ActiveQuestsByDailyCode = {}
	idx.ActionEventByQuestGuid = {}
	idx.WorldEventByDialogue = {}
	idx.ClickEventByAddress = {}
	idx.FactionByCode = {}
	idx.PlayerDailyEventByCode = {}

	-- Index active quests (Category2) by guid and dailycode
	if prog.Category2 then
		for i, quest in ipairs(prog.Category2) do
			if quest.guid then
				idx.ActiveQuestByGuid[quest.guid] = quest
			end
			if quest.dailycode then
				idx.ActiveQuestsByDailyCode[quest.dailycode] = idx.ActiveQuestsByDailyCode[quest.dailycode] or {}
				table.insert(idx.ActiveQuestsByDailyCode[quest.dailycode], quest)
			end
		end
	end

	-- Index ActionEvent by questGuid (extracted from commands)
	if prog.ActionEvent then
		for i, event in ipairs(prog.ActionEvent) do
			-- Check if event has direct questGuid (new format)
			if event.questGuid then
				idx.ActionEventByQuestGuid[event.questGuid] = event
			elseif event.commands then
				-- Legacy format: extract questGuid from commands string
				local commands = luautils.split(event.commands, ";")
				if commands[2] then
					idx.ActionEventByQuestGuid[commands[2]] = event
				end
			end
		end
	end

	-- Index WorldEvent by dialoguecode
	if prog.WorldEvent then
		for squaretag, event in pairs(prog.WorldEvent) do
			if event.dialoguecode then
				idx.WorldEventByDialogue[event.dialoguecode] = {
					squaretag = squaretag,
					event = event
				}
			end
		end
	end

	-- Index ClickEvent by address
	if prog.ClickEvent then
		for squaretag, event in pairs(prog.ClickEvent) do
			if event.address then
				idx.ClickEventByAddress[event.address] = {
					squaretag = squaretag,
					event = event
				}
			end
		end
	end

	-- Index Factions by factioncode
	if prog.Factions then
		for i, faction in ipairs(prog.Factions) do
			if faction.factioncode then
				idx.FactionByCode[faction.factioncode] = faction
			end
		end
	end

	-- Index DailyEvent by dailycode
	if prog.DailyEvent then
		for i, daily in ipairs(prog.DailyEvent) do
			if daily.dailycode then
				idx.PlayerDailyEventByCode[daily.dailycode] = daily
			end
		end
	end

	-- Log rebuild results
	local counts = {
		ActiveQuestByGuid = 0,
		ActionEventByQuestGuid = 0,
		WorldEventByDialogue = 0,
		ClickEventByAddress = 0,
		FactionByCode = 0,
		PlayerDailyEventByCode = 0,
	}
	for k, v in pairs(idx.ActiveQuestByGuid) do counts.ActiveQuestByGuid = counts.ActiveQuestByGuid + 1 end
	for k, v in pairs(idx.ActionEventByQuestGuid) do counts.ActionEventByQuestGuid = counts.ActionEventByQuestGuid + 1 end
	for k, v in pairs(idx.WorldEventByDialogue) do counts.WorldEventByDialogue = counts.WorldEventByDialogue + 1 end
	for k, v in pairs(idx.ClickEventByAddress) do counts.ClickEventByAddress = counts.ClickEventByAddress + 1 end
	for k, v in pairs(idx.FactionByCode) do counts.FactionByCode = counts.FactionByCode + 1 end
	for k, v in pairs(idx.PlayerDailyEventByCode) do counts.PlayerDailyEventByCode = counts.PlayerDailyEventByCode + 1 end

	print("[SFQuest] Player Indexes rebuilt: " ..
		"ActiveQuests=" .. counts.ActiveQuestByGuid .. ", " ..
		"ActionEvents=" .. counts.ActionEventByQuestGuid .. ", " ..
		"WorldEvents=" .. counts.WorldEventByDialogue .. ", " ..
		"ClickEvents=" .. counts.ClickEventByAddress .. ", " ..
		"Factions=" .. counts.FactionByCode .. ", " ..
		"DailyEvents=" .. counts.PlayerDailyEventByCode)
end

function SFQuest_PlayerHandler.StartPlayer()

	local player = getPlayer();

	-- if player has died then we have to start from zero the character but we have to be careful because if the player died and we close the game we lost our modData inside "SFQuest_PlayerHandler.startingPlayerStats" table and so we have to restore it from server backup (if exists), if not exists mean that the player is new in the server and never complete first 2  quest of Pyno xD
	if not player:getModData().missionProgress then
		-- here we know only if the player is a new player created 
		print("zSOUL QUEST SYSTEM - Starting player from zero.");

		-- here there was the big problem, this fucking line make me crazy because if the player is new but is a player created after death (without closing the game) we have SFQuest_PlayerHandler.startingPlayerStats already fill with data from pre-death and so when we restore it with this line we already restored last backup from the game itself and if we continue inside this function we will produce a lot of bug because we are going to readd FactionPool, DailyEvent eccecc.
		player:getModData().missionProgress = SFQuest_PlayerHandler.startingPlayerStats;

		-- so after this line we have to check if startngPlayerStats is empty or not (or maybe as a second check if imDeath is true or not). imDeath is true when the player died and we didn't close the game.
		-- imDeath is false when we enter the game first time and never died. So we never fill the SFQuest_PlayerHandler.startingPlayerStats table.
		-- imDeath is true when we die and we create a new player without closing the game. So we already fill the SFQuest_PlayerHandler.startingPlayerStats table.

		if not SFQuest_PlayerHandler.imDeath then
			-- we enter here only if we DIE and we did close the game (or if is our first time in the server), in this case we have to restore startingPlayerStats from zero and if the player had a backup on server this will be restored. 
			--inserting factions from Database here
			local tempFaction = {};
			for i,v in ipairs(SFQuest_Database.FactionPool) do
				local factionTable = {};
				factionTable.factioncode = v.factioncode;
				factionTable.name = v.name;
				factionTable.reputation = v.startrep;
				factionTable.repmax = v.tiers[1].minrep;
				factionTable.tierlevel = 1;
				factionTable.tiername = v.tiers[1].tiername;
				factionTable.tiercolor = v.tiers[1].barcolor;
				table.insert(tempFaction, factionTable);
			end

			player:getModData().missionProgress.Factions = tempFaction;

			for i,u in ipairs(SFQuest_Database.StartingPool) do
				local hasCondition = true;
				if u.condition then
					local condition = luautils.split(u.condition, ";");
					if condition[1] == "profession" and player:getDescriptor() and player:getDescriptor():getProfession() ~= condition[2] then
						hasCondition = false;
					elseif condition[1] == "trait" and not player:HasTrait(condition[2]) then
						hasCondition = false;
					end
				end
				if hasCondition == true then
					if u.click then
						local commandTable = luautils.split(u.click, ";");
						SF_MissionPanel.instance:runCommand("clickevent",  commandTable[1], commandTable[2], commandTable[3]);
					end
					if u.daily then
						local daily = SF_MissionPanel.instance:getDailyEvent(u.daily);
						SF_MissionPanel.instance:runCommand("unlockdaily", daily);
					end
					if u.quest then
						SF_MissionPanel.instance:unlockQuest(u.quest); -- questo unlock non va stranamente se si muore dopo l'avvio
					end
					if u.timer then
						SF_MissionPanel.instance:runCommand("unlocktimer", u.timer);
					end
					if u.randomworldfrompool then
						local entry = luautils.split(u.randomworldfrompool, ";");
						SF_MissionPanel.instance:runCommand("randomcodedworldfrompool", entry[1], entry[2], entry[3]);
					end
					if u.world then
						local entry = luautils.split(u.world, ";");
						SF_MissionPanel.instance:runCommand("unlockworldevent", entry[1], entry[2], entry[3]);
					end
				end
			end
			-- here we can check if the new player has a backup to be restored
			if isClient() then
				-- check backup to restore
				print("zSOUL QUEST SYSTEM - Requesting backup quest data.");
				local id = player:getUsername();
				sendClientCommand(player, 'SFQuest', 'sendData', {id = id});
			else
				print("zSOUL QUEST SYSTEM - Loading backup quest data server side FROM PlayerHandler.");
				local id = player:getUsername();	
				local filepath = "/Backup/SFQuest_" .. id .. ".txt";
				local filereader = getFileReader(filepath, false);
				if not filereader then return nil end;
				local temp = {}
				local line = filereader:readLine();
				while line ~= nil do
					assert(loadstring(line));
					line = filereader:readLine();
				end
				filereader:close();		
				player:getModData().missionProgress = temp;
			end
		else
			print("zSOUL QUEST SYSTEM - Player already has missionProgress because we died and we did not closed the game.");
		end
	else
		print("zSOUL QUEST SYSTEM - Player already has missionProgress.");
		-- if we already have moddata mission progress we have to put it in the SFQuest_PlayerHandler.startingPlayerStats table
		SFQuest_PlayerHandler.startingPlayerStats = player:getModData().missionProgress;
		--temporary fix for new feature LastDailyCompleted
		if not player:getModData().missionProgress.LastDailyCompleted then
			player:getModData().missionProgress.LastDailyCompleted = {};
		end
	end
	SFQuest_PlayerHandler.imDeath = false --in caso si rimuove di nuovo nella stessa partita (due o più volte volte di fila)
	Events.EveryOneMinute.Add(SF_MissionPanel.EveryTenMinutesExpand)
	Events.EveryOneMinute.Add(SF_MissionPanel.DebugEveryTenMinutes)
	-- Rebuild player indexes AFTER missionProgress is populated
	SFQuest_PlayerHandler.rebuildPlayerIndexes(player)
	SF_MissionPanel.instance:triggerUpdate(); -- qui errore dell'istanza?
end
-- check for faction members based on reputation
-- local factions = Faction.getFactions()
-- for i = 1, factions:size() do
-- 	local faction = factions:get(i - 1);
-- 	if (faction:isOwner(username) or faction:isMember(username)) then
-- 		return faction:getName()
-- 	end
-- end
-- factionExist(string)
-- getPlayerFaction(player)
-- getPlayerFaction(string)
-- getFaction(string)
-- isMember(string)
-- local tierLevel = player:getModData().missionProgress.Factions[1].tierlevel
-- if tierLevel < 6 then

-- end




local tickDelay = 50
local function CreateDelay()
    if tickDelay <= 0 then
		 -- Call your custom functions after delay
		 SFQuest_PlayerHandler.StartPlayer()
		 -- Remove this function from the OnTick event to stop it from running
		 Events.OnTick.Remove(CreateDelay)
		 tickDelay = 50
    	return
    end
    tickDelay = tickDelay - 1
end

local function onCreatedPlayer(playerIndex, player)
    Events.OnTick.Add(CreateDelay)
end

function SFQuest_PlayerHandler.OnPlayerDeath(player)
	print("zSOUL QUEST SYSTEM - Player " .. player:getUsername() .. " died.")
	Events.EveryOneMinute.Remove(SF_MissionPanel.EveryTenMinutesExpand)
	Events.EveryOneMinute.Remove(SF_MissionPanel.DebugEveryTenMinutes)
	-- if not player:getModData().missionProgress and not player:getModData().missionProgress.ActionEvent then print("[OnPlayerDeath][DEBUG-KILLZOMBIES] - Player has no missionProgress data."); return end;
	-- SF_MissionPanel.instance.needsBackup = true;
	if SF_MissionPanel.instance.needsBackup == true then
		SF_MissionPanel.instance:backupData();
		SF_MissionPanel.instance.needsBackup = false;
		print("[OnPlayerDeath][DEBUG-KILLZOMBIES] - Backup data updated.");
	else
		print("[OnPlayerDeath][DEBUG-KILLZOMBIES] - No need to update backup data.");
	end
	-- we set imDeath to true for create a flag to know that the player died and we're still in the same game session
	SFQuest_PlayerHandler.imDeath = true

end

function SFQuest_PlayerHandler.OnGameStart()
	SF_MissionPanel.instance:triggerUpdate();

	local player = getPlayer();

	-- NOTE: rebuildPlayerIndexes() is now called in StartPlayer() after missionProgress is populated

	if player:getModData().missionProgress then
		if  player:getModData().missionProgress.WorldEvent then
			for k2,v2 in pairs(player:getModData().missionProgress.WorldEvent) do
				if not v2.marker then
					local squareTable = luautils.split(k2, "x");
					local x, y, z = tonumber(squareTable[1]), tonumber(squareTable[2]), tonumber(squareTable[3]);
					local square = getCell():getGridSquare(x, y, z);
					local marker = nil
					if square then
        	    	    if string.find(string.lower(v2.dialoguecode), "complete") then
        	    	        marker = getIsoMarkers():addIsoMarker({"media/textures/Complete_Marker.png"}, square, 1, 1, 1, 1.0);
        	    	    else
						    marker = getIsoMarkers():addIsoMarker({"media/textures/Test_Marker.png"}, square, 1, 1, 1, 1.0);
        	    	    end
						if marker then
							v2.marker = marker;
						end
					end
				else
					v2.marker:setAlpha(1.0);
				end
			end
		end
		if player:getModData().missionProgress.ClickEvent then
			for k2,event in pairs(player:getModData().missionProgress.ClickEvent) do
				if not event.marker then
					local squareTable = luautils.split(event.square, "x");
					local x, y, z = tonumber(squareTable[1]), tonumber(squareTable[2]), tonumber(squareTable[3]);
					local square = getCell():getGridSquare(x, y, z);
					local marker = nil
					if square then
						marker = getIsoMarkers():addIsoMarker({"media/textures/clickevent.png"}, square, 1, 1, 1, 1.0);
						if marker then
							event.marker = marker;
						end
					end
				else
					event.marker:setAlpha(1.0);
				end
			end
		end
	end
end


Events.OnCreatePlayer.Add(onCreatedPlayer);
Events.OnGameStart.Add(SFQuest_PlayerHandler.OnGameStart);
Events.OnPlayerDeath.Add(SFQuest_PlayerHandler.OnPlayerDeath)

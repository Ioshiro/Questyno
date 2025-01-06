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
};

ImDeath = false

function SFQuest_PlayerHandler.StartPlayer()

	local player = getPlayer();

	-- if player has died then we have to start from zero the character but we have to be careful because if the player died and we close the game we lost our modData inside "SFQuest_PlayerHandler.startingPlayerStats" table and so we have to restore it from server backup (if exists), if not exists mean that the player is new in the server and never complete first 2  quest of Pyno xD
	if not player:getModData().missionProgress then
		-- here we know only if the player is a new player created 
		print("zSOUL QUEST SYSTEM - Starting player from zero.");

		-- this is an idea for another test (resetting startingPlayerStats), but is useless because if the game is new and the player is new is already empty
		-- and if the player is new and startingPlayerStats is already fill with last backup from pre-death (because we didn't close the game yet), why would we delete it?
		-- so I think it's a stupid idea. but I'll keep it for now here just in case.

		-- SFQuest_PlayerHandler.startingPlayerStats = {
		-- 	Category1 = {},
		-- label = "IGUI_XP_Quests",
		-- Category1Greyed = true,
		-- Category1Label = "IGUI_XP_Quests_QuestLog",
		-- Category2 = {},
		-- Category2Label = "IGUI_XP_Quests_ActiveQuests",
		-- ActionEvent = {},
		-- ClickEvent = {},
		-- DailyEvent = {},
		-- Timers = {},
		-- Factions = {},
		-- Delivery = {},
		-- WorldEvent = {},};

		-- here there was the big problem, this fucking line make me crazy because if the player is new but is a player created after death (without closing the game) we have SFQuest_PlayerHandler.startingPlayerStats already fill with data from pre-death and so when we restore it with this line we already restored last backup from the game itself and if we continue inside this function we will produce a lot of bug because we are going to readd FactionPool, DailyEvent eccecc.
		player:getModData().missionProgress = SFQuest_PlayerHandler.startingPlayerStats;

		-- so after this line we have to check if startngPlayerStats is empty or not (or maybe as a second check if ImDeath is true or not). ImDeath is true when the player died and we didn't close the game.
		-- ImDeath is false when we enter the game first time and never died. So we never fill the SFQuest_PlayerHandler.startingPlayerStats table.
		-- ImDeath is true when we die and we create a new player without closing the game. So we already fill the SFQuest_PlayerHandler.startingPlayerStats table.

		if not ImDeath then
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
	Events.EveryOneMinute.Add(SF_MissionPanel.EveryTenMinutesExpand)
	SF_MissionPanel.instance:triggerUpdate();
end




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

local function OnPlayerDeath(player)
	Events.EveryOneMinute.Remove(SF_MissionPanel.EveryTenMinutesExpand)

	-- if not player:getModData().missionProgress and not player:getModData().missionProgress.ActionEvent then print("[OnPlayerDeath][DEBUG-KILLZOMBIES] - Player has no missionProgress data."); return end;
	-- local needUpdate = false;
	-- for i,v in ipairs(player:getModData().missionProgress.ActionEvent) do
	-- 	local condition = luautils.split(v.condition, ";");
	-- 	if condition[1] == "killzombies" then
	-- 		local newcount = 0
	-- 		if tonumber(condition[2]) > player:getZombieKills() then
	-- 			newcount = tonumber(condition[2]) - player:getZombieKills();
	-- 		end
	-- 		player:getModData().missionProgress.ActionEvent[i].condition = condition[1] .. ";" .. newcount;
	-- 		needUpdate = true;
	-- 		print("[OnPlayerDeath][DEBUG-KILLZOMBIES] - Updated killzombies condition from " .. condition[2] .. " to " .. newcount);
	-- 	end
	-- end
	-- if needUpdate == true then
	-- 	SF_MissionPanel.instance:backupData();
	-- 	print("[OnPlayerDeath][DEBUG-KILLZOMBIES] - Backup data updated.");
	-- else
	-- 	print("[OnPlayerDeath][DEBUG-KILLZOMBIES] - No need to update backup data.");
	-- end
	-- we set ImDeath to true for create a flag to know that the player died and we're still in the same game session
	ImDeath = true

end

function SFQuest_PlayerHandler.OnGameStart()
	SF_MissionPanel.instance:triggerUpdate();
	
	local player = getPlayer();
	if player:getModData().missionProgress and player:getModData().missionProgress.WorldEvent then
		for k2,v2 in pairs(player:getModData().missionProgress.WorldEvent) do
			local squareTable = luautils.split(k2, "x");
			local x, y, z = tonumber(squareTable[1]), tonumber(squareTable[2]), tonumber(squareTable[3]);
			local square = getCell():getGridSquare(x, y, z);
			local marker
				if square then
                    if string.find(string.lower(v2.dialoguecode), "complete") then
                        marker = getIsoMarkers():addIsoMarker({}, {"media/textures/Complete_Marker.png"}, square, 1, 1, 1, false, false);
                    else
					    marker = getIsoMarkers():addIsoMarker({}, {"media/textures/Test_Marker.png"}, square, 1, 1, 1, false, false);
                    end
				marker:setDoAlpha(false);
				marker:setAlphaMin(0.8);
				marker:setAlpha(1.0);
				v2.marker = marker;
			end
		end
	end
end



Events.OnCreatePlayer.Add(onCreatedPlayer);
Events.OnGameStart.Add(SFQuest_PlayerHandler.OnGameStart);
Events.OnPlayerDeath.Add(OnPlayerDeath)
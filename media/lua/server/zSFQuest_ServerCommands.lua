require("SFQuest_ServerCommands")
local Commands = {}

function Commands.saveData(player, args)
	if not isClient() or not args then return end
	local id = player:getUsername();

	--print("Parsing data table for ID " .. id);
	--Write the text file
	local filepath = "/Backup/SFQuest_" .. id .. ".txt";
	--print("File path is: " .. filepath);
	-- check if file has more lines than the current progress
	local filereader = getFileReader(filepath, false);
	local temp = {};
	if filereader then
		print("zSOUL QUEST SYSTEM - Located backup file player " .. id);
		local line = filereader:readLine();
		while line ~= nil do
			table.insert(temp, line);
			line = filereader:readLine();
		end
		filereader:close();
	end
	local tempsize = #temp;
	if tempsize > #args.data then
		print("zSOUL QUEST SYSTEM - Backup file has more lines than current progress, aborting backup. (TEMP SIZE: " .. tempsize .. " PROGRESS SIZE: " .. progresssize .. ")");
		return
	end
	local filewriter = getFileWriter(filepath, true, false);
	SFQuest_Server.parseTable(args, filewriter, "temp");
	print("zSOUL QUEST SYSTEM - Saved quest data for ID: " .. id);
end

function Commands.sendData(player, args)
    --if false then
        --base_Commands_saveData(player, args);
    --end
	local id = args.id;
	print("zSOUL QUEST SYSTEM - Server received a request for quest data. Player ID: " .. id);
	local filepath = "/Backup/SFQuest_" .. id .. ".txt";
	local filereader = getFileReader(filepath, false);
	if filereader then
		print("zSOUL QUEST SYSTEM - Located backup file player " .. id);
		local temp = {};
		local line = filereader:readLine();
		while line ~= nil do
			table.insert(temp, line);
			line = filereader:readLine();
		end
		filereader:close();
		local newargs = { id = id , data = temp };
		print("zSOUL QUEST SYSTEM - Requested quest data for player " .. id .. " sent.");
		sendServerCommand('SFQuest', "setProgress", newargs);
	end;
end

Events.OnPlayerDeath.Add(Commands.saveData);
Events.OnClientCommand.Add(function(module, command, player, args)
	if module == 'SFQuest' and Commands[command] then
		args = args or {}
		Commands[command](player, args)
	end
end)


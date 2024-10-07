local json = require("dkjson")

local Commands = {}

function Commands.saveData(player, args)
    if isClient() or not args then return end
    local id = player:getUsername()

    -- Evita di salvare i dati se nessuna quest è stata completata o se le fazioni sono > 42 (bug duplicato)
    if not args.Category1 or #args.Category1 < 2 then 
        print("[Commands.saveData] zSOUL QUEST SYSTEM - No quests completed, skipping save for ID " .. id)
        return 
    end
    if #args.Factions > 42 then 
        print("[Commands.saveData] zSOUL QUEST SYSTEM - Too many factions, skipping save for ID " .. id)
        return 
    end

    local filepathJson = "/Backup/SFQuest_" .. id .. ".json"

	
    local serializedData = json.encode(args, { indent = true })

    local filewriter = getFileWriter(filepathJson, false, false) -- Sovrascrive il file
    if filewriter then
        filewriter:write(serializedData)
        filewriter:close()
        print("[Commands.saveData] zSOUL QUEST SYSTEM - Saved quest data for ID: " .. id)
    else
        print("Unable to open file for writing.")
    end
end



function Commands.sendDataTxt(player, args)
    --if false then
        --base_Commands_saveData(player, args);
    --end
	local id = args.id;
	print("[Commands.sendData] zSOUL QUEST SYSTEM - Server received a TXT request for quest data. Player ID: " .. id);
	local filepath = "/Backup/SFQuest_" .. id .. ".txt";
	local filereader = getFileReader(filepath, false);
	if filereader then
		print("[Commands.sendData] zSOUL QUEST SYSTEM - Located backup file player " .. id);
		local temp = {};
		local line = filereader:readLine();
		while line ~= nil do
			table.insert(temp, line);
			line = filereader:readLine();
		end
		filereader:close();
		local newargs = { id = id , data = temp };
		print("[Commands.sendData] zSOUL QUEST SYSTEM - Requested quest data TXT for player " .. id .. " sent.");
		sendServerCommand(player,'SFQuest', "setProgress", newargs);
	else
        print("[Commands.sendData] zSOUL QUEST SYSTEM - Unable to locate txt backup file for player " .. id);
    end
end

function Commands.sendData(player, args)
    local id = args.id;
    print("[Commands.sendData] zSOUL QUEST SYSTEM - Server received a request for quest data. Player ID: " .. id);
    local filepath = "/Backup/SFQuest_" .. id .. ".json";
    local filereader = getFileReader(filepath, false);
    if filereader then
        print("[Commands.sendData] zSOUL QUEST SYSTEM - Located backup file for player " .. id);
        local content = "";
        local line = filereader:readLine();
        while line ~= nil do
            content = content .. line .. "\n";
            line = filereader:readLine();
        end
        filereader:close();


        -- Decodifica il contenuto JSON in una tabella Lua
        local data, pos, err = json.decode(content)
        if err then
            print("[Commands.sendData] Error parsing JSON: " .. err)
            return
        end

        local newargs = { id = id , data = data, checkDefaults = true };
        print("[Commands.sendData] zSOUL QUEST SYSTEM - Requested quest data for player " .. id .. " sent.");
        sendServerCommand(player, 'SFQuest', "setProgress", newargs);
    else
        -- check if .txt version exists
        print("[Commands.sendData] zSOUL QUEST SYSTEM - No JSON backup file found for player " .. id);
        Commands.sendDataTxt(player, args);
    end
end


function Commands.addserverpoints(player, args)
	sendServerCommand(player,"ServerPoints", "add", args)
end

--Events.OnPlayerDeath.Add(Commands.saveData); -- todo: magari rifarla decentemente, con gli args ecc
Events.OnClientCommand.Add(function(module, command, player, args)
	if module == 'SFQuest' and Commands[command] then
		args = args or {}
		Commands[command](player, args)
	end
end)
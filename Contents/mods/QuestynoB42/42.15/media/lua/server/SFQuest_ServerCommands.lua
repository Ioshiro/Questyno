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
    --if #args.Factions > 42 then 
    --    print("[Commands.saveData] zSOUL QUEST SYSTEM - Too many factions, skipping save for ID " .. id)
    --    return 
    --end

    local filepathJson = "/Backup/SFQuest/SFQuest_" .. id .. ".json"

	
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
	print("[Commands.sendDataTxt] zSOUL QUEST SYSTEM - Server received a TXT request for quest data. Player ID: " .. id);
	local filepath = "/Backup/SFQuest/SFQuest_" .. id .. ".txt";
	local filereader = getFileReader(filepath, false);
	if filereader then
		print("[Commands.sendDataTxt] zSOUL QUEST SYSTEM - Located backup file player " .. id);
		local temp = {};
		local line = filereader:readLine();
		while line ~= nil do
			table.insert(temp, line);
			line = filereader:readLine();
		end
		filereader:close();
		local newargs = { id = id , data = temp };
		print("[Commands.sendDataTxt] zSOUL QUEST SYSTEM - Requested quest data TXT for player " .. id .. " sent.");
		sendServerCommand(player,'SFQuest', "setProgressTxt", newargs);
	else
        print("[Commands.sendDataTxt] zSOUL QUEST SYSTEM - Unable to locate txt backup file for player " .. id);
    end
end

function Commands.sendData(player, args)
    local id = args.id;
    print("[Commands.sendData] zSOUL QUEST SYSTEM - Server received a request for quest data. Player ID: " .. id);
    local filepath = "/Backup/SFQuest/SFQuest_" .. id .. ".json";
    local filereader = getFileReader(filepath, false);
    if filereader then
        print("[Commands.sendData] zSOUL QUEST SYSTEM - Located backup file for player " .. id);
        local lines = {};
        local line = filereader:readLine();
        while line ~= nil do
            table.insert(lines, line);
            line = filereader:readLine();
        end
        filereader:close();

        local content = table.concat(lines, "\n");



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

function Commands.saveHistory(player, args)
    if isClient() or not args or not args.guid then return end
    
    local id = player:getUsername()
    local filepathTxt = "/Backup/SFQuest/History/SFQuest_" .. id .. "_History.txt"

    -- Ottieni data e ora correnti, ad esempio in formato YYYY-MM-DD HH:MM:SS
    local currentTime = os.date("%Y-%m-%d %H:%M:%S")

    local filewriter = getFileWriter(filepathTxt, true, true)
    if filewriter then
        -- Scrivi la quest completata con data e ora
        filewriter:write(currentTime .. " - " .. args.guid .. "\n")
        filewriter:close()
        print("[Commands.saveHistory] zSOUL QUEST SYSTEM - Saved quest data for ID: " .. id .. " at " .. currentTime)
    else
        print("Unable to open file for writing.")
    end
end

-- B42 server-side inventory operations (called via sendClientCommand from client)

function Commands.addItem(player, args)
    if not args or not args.itemType or not args.quantity then return end
    local inv = player:getInventory()
    local items = inv:AddItems(args.itemType, tonumber(args.quantity))
    if items then
        for i = 0, items:size() - 1 do
            items:get(i):setFavorite(true)
        end
        sendAddItemsToContainer(inv, items)
    end
end

function Commands.removeItem(player, args)
    if not args or not args.item or not args.quantity then return end
    local itemSpec = args.item
    local quantity = tonumber(args.quantity)
    local inv = player:getInventory()

    -- Set predicate value for eval-arg predicates
    SFQuest_Utils.predicateValue = tonumber(args.predicateValue) or 0

    -- Quantity check (prevent partial removal - getSome*Recurse returns partial results)
    local needsTable = luautils.split(itemSpec .. ";" .. quantity, ";")
    local itemscript = needsTable[1]
    local carrying = 0

    if luautils.stringStarts(itemscript, "Tag") then
        local tag = SFQuest_Utils.getItemTag(luautils.split(itemscript, "#")[2])
        if luautils.stringStarts(itemscript, "Tag#") then
            carrying = inv:getCountTagRecurse(tag)
        elseif luautils.stringStarts(itemscript, "TagPredicateBigFish#") then
            carrying = inv:getCountTagEvalRecurse(tag, SFQuest_Utils.predicateBigFish)
        elseif luautils.stringStarts(itemscript, "TagPredicateCondition#") then
            carrying = inv:getCountTagEvalArgRecurse(tag, SFQuest_Utils.predicateCondition, SFQuest_Utils.predicateValue)
        elseif luautils.stringStarts(itemscript, "TagPredicateFreshFood#") then
            carrying = inv:getCountTagEvalRecurse(tag, SFQuest_Utils.predicateFreshFood)
        elseif luautils.stringStarts(itemscript, "TagPredicateFullDrainable#") then
            carrying = inv:getCountTagEvalRecurse(tag, SFQuest_Utils.predicateFullDrainable)
        elseif luautils.stringStarts(itemscript, "TagPredicateDrainable#") then
            carrying = inv:getCountTagEvalArgRecurse(tag, SFQuest_Utils.predicateDrainable, SFQuest_Utils.predicateValue)
        elseif luautils.stringStarts(itemscript, "TagPredicateFoodWeight#") then
            carrying = inv:getCountTagEvalArgRecurse(tag, SFQuest_Utils.predicateFoodWeight, SFQuest_Utils.predicateValue)
        elseif luautils.stringStarts(itemscript, "TagPredicateFoodHunger#") then
            carrying = inv:getCountTagEvalArgRecurse(tag, SFQuest_Utils.predicateFoodHunger, SFQuest_Utils.predicateValue)
        elseif luautils.stringStarts(itemscript, "TagPredicateFoodCooked#") then
            carrying = inv:getCountTagEvalRecurse(tag, SFQuest_Utils.predicateFoodCooked)
        end
    elseif luautils.stringStarts(itemscript, "Predicate") then
        local typeScript = luautils.split(itemscript, "#")[2]
        if luautils.stringStarts(itemscript, "PredicateBigFish#") then
            carrying = inv:getCountTypeEvalRecurse(typeScript, SFQuest_Utils.predicateBigFish)
        elseif luautils.stringStarts(itemscript, "PredicateCondition#") then
            carrying = inv:getCountTypeEvalArgRecurse(typeScript, SFQuest_Utils.predicateCondition, SFQuest_Utils.predicateValue)
        elseif luautils.stringStarts(itemscript, "PredicateFreshFood#") then
            carrying = inv:getCountTypeEvalRecurse(typeScript, SFQuest_Utils.predicateFreshFood)
        elseif luautils.stringStarts(itemscript, "PredicateFullDrainable#") then
            carrying = inv:getCountTypeEvalRecurse(typeScript, SFQuest_Utils.predicateFullDrainable)
        elseif luautils.stringStarts(itemscript, "PredicateDrainable#") then
            carrying = inv:getCountTypeEvalArgRecurse(typeScript, SFQuest_Utils.predicateDrainable, SFQuest_Utils.predicateValue)
        elseif luautils.stringStarts(itemscript, "PredicateFoodWeight#") then
            carrying = inv:getCountTypeEvalArgRecurse(typeScript, SFQuest_Utils.predicateFoodWeight, SFQuest_Utils.predicateValue)
        elseif luautils.stringStarts(itemscript, "PredicateFoodHunger#") then
            carrying = inv:getCountTypeEvalArgRecurse(typeScript, SFQuest_Utils.predicateFoodHunger, SFQuest_Utils.predicateValue)
        elseif luautils.stringStarts(itemscript, "PredicateFoodCooked#") then
            carrying = inv:getCountTypeEvalRecurse(typeScript, SFQuest_Utils.predicateFoodCooked)
        end
    else
        carrying = inv:getItemCountRecurse(itemscript)
    end

    if carrying < quantity then
        if args.questName then
            sendServerCommand(player, 'SFQuest', 'haloText', {
                type = "bad",
                key = "IGUI_SFQuest_Questyno_ItemRemoveFailed",
                args = { args.questName }
            })
        end
        return
    end

    -- Actual removal (quantity check passed)
    local items

    if luautils.stringStarts(itemscript, "Tag") then
        local tag = SFQuest_Utils.getItemTag(luautils.split(itemscript, "#")[2])
        if luautils.stringStarts(itemscript, "Tag#") then
            items = inv:getSomeTagRecurse(tag, quantity)
        elseif luautils.stringStarts(itemscript, "TagPredicateBigFish#") then
            items = inv:getSomeTagEvalRecurse(tag, SFQuest_Utils.predicateBigFish, quantity)
        elseif luautils.stringStarts(itemscript, "TagPredicateCondition#") then
            items = inv:getSomeTagEvalArgRecurse(tag, SFQuest_Utils.predicateCondition, SFQuest_Utils.predicateValue, quantity)
        elseif luautils.stringStarts(itemscript, "TagPredicateFreshFood#") then
            items = inv:getSomeTagEvalRecurse(tag, SFQuest_Utils.predicateFreshFood, quantity)
        elseif luautils.stringStarts(itemscript, "TagPredicateFullDrainable#") then
            items = inv:getSomeTagEvalRecurse(tag, SFQuest_Utils.predicateFullDrainable, quantity)
        elseif luautils.stringStarts(itemscript, "TagPredicateDrainable#") then
            items = inv:getSomeTagEvalArgRecurse(tag, SFQuest_Utils.predicateDrainable, SFQuest_Utils.predicateValue, quantity)
        elseif luautils.stringStarts(itemscript, "TagPredicateFoodWeight#") then
            items = inv:getSomeTagEvalArgRecurse(tag, SFQuest_Utils.predicateFoodWeight, SFQuest_Utils.predicateValue, quantity)
        elseif luautils.stringStarts(itemscript, "TagPredicateFoodHunger#") then
            items = inv:getSomeTagEvalArgRecurse(tag, SFQuest_Utils.predicateFoodHunger, SFQuest_Utils.predicateValue, quantity)
        elseif luautils.stringStarts(itemscript, "TagPredicateFoodCooked#") then
            items = inv:getSomeTagEvalRecurse(tag, SFQuest_Utils.predicateFoodCooked, quantity)
        end
    elseif luautils.stringStarts(itemscript, "Predicate") then
        local typeScript = luautils.split(itemscript, "#")[2]
        if luautils.stringStarts(itemscript, "PredicateBigFish#") then
            items = inv:getSomeTypeEvalRecurse(typeScript, SFQuest_Utils.predicateBigFish, quantity)
        elseif luautils.stringStarts(itemscript, "PredicateCondition#") then
            items = inv:getSomeTypeEvalArgRecurse(typeScript, SFQuest_Utils.predicateCondition, SFQuest_Utils.predicateValue, quantity)
        elseif luautils.stringStarts(itemscript, "PredicateFreshFood#") then
            items = inv:getSomeTypeEvalRecurse(typeScript, SFQuest_Utils.predicateFreshFood, quantity)
        elseif luautils.stringStarts(itemscript, "PredicateFullDrainable#") then
            items = inv:getSomeTypeEvalRecurse(typeScript, SFQuest_Utils.predicateFullDrainable, quantity)
        elseif luautils.stringStarts(itemscript, "PredicateDrainable#") then
            items = inv:getSomeTypeEvalArgRecurse(typeScript, SFQuest_Utils.predicateDrainable, SFQuest_Utils.predicateValue, quantity)
        elseif luautils.stringStarts(itemscript, "PredicateFoodWeight#") then
            items = inv:getSomeTypeEvalArgRecurse(typeScript, SFQuest_Utils.predicateFoodWeight, SFQuest_Utils.predicateValue, quantity)
        elseif luautils.stringStarts(itemscript, "PredicateFoodHunger#") then
            items = inv:getSomeTypeEvalArgRecurse(typeScript, SFQuest_Utils.predicateFoodHunger, SFQuest_Utils.predicateValue, quantity)
        elseif luautils.stringStarts(itemscript, "PredicateFoodCooked#") then
            items = inv:getSomeTypeEvalRecurse(typeScript, SFQuest_Utils.predicateFoodCooked, quantity)
        end
    else
        items = inv:getSomeTypeRecurse(itemscript, quantity)
    end

    if items then
        for i = 0, items:size() - 1 do
            local item = items:get(i)
            sendRemoveItemFromContainer(inv, item)
            inv:removeItemWithIDRecurse(item:getID())
        end
        -- HaloText feedback via client-side localization
        if args.questName then
            local newString = itemSpec:gsub("Tag.-#", ""):gsub("Predicate.-#", "")
            sendServerCommand(player, 'SFQuest', 'haloText', {
                type = "good",
                key = "IGUI_SFQuest_Questyno_ItemRemoved",
                args = { tostring(quantity), newString, args.questName },
                itemIcon = newString
            })
        end
    else
        if args.questName then
            sendServerCommand(player, 'SFQuest', 'haloText', {
                type = "bad",
                key = "IGUI_SFQuest_Questyno_ItemRemoveFailed",
                args = { args.questName }
            })
        end
    end
end

--Events.OnPlayerDeath.Add(Commands.saveData); -- todo: magari rifarla decentemente, con gli args ecc
Events.OnClientCommand.Add(function(module, command, player, args)
	if module == 'SFQuest' and Commands[command] then
		args = args or {}
		Commands[command](player, args)
	end
end)
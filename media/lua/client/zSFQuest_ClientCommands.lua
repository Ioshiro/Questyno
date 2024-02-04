local Commands = {}
temp = {}
function Commands.setProgress(args)
	local player = getPlayer();
	local id = player:getUsername();
	if id ~= args.id then
		return
	end

	print("zSOUL QUEST SYSTEM - Backup data received from server, recovering quest progress.");
	local lastnum = 0;
	temp = {};
	for a, b in ipairs(args.data) do
		lastnum = lastnum + 1;
		local line = b;
		if b == nil then
			print("zSOUL QUEST SYSTEM - LINEA" .. lastnum .. " NULLA, SKIPPATA. (LINEA: " .. line .. ")");
		else
            local chunk = loadstring(line)
            if chunk then               
				chunk();
            else
                print("zSOUL QUEST SYSTEM - Errore nel caricamento della riga " .. lastnum)
            end
		end
	end
	if not temp.Delivery then
		print("zSOUL QUEST SYSTEM - Data transformation likely to be corrupted, aborting backup. LOOK @" .. lastnum);
		return
	end
	print("zSOUL QUEST SYSTEM - Data transformation successful, applying " ..lastnum.." lines of backup.");
	player:getModData().missionProgress = temp;
	SF_MissionPanel.instance:triggerUpdate();
end

Events.OnServerCommand.Add(function(module, command, args)
	if not isClient() then return end
	if module == "SFQuest" and Commands[command] then
		args = args or {}
		Commands[command](args)
	end
end)
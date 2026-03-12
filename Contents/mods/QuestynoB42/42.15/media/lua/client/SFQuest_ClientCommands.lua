local Commands = {}
temp = {}
function Commands.setProgressTxt(args)
	local player = getPlayer();
	local id = player:getUsername();
	if id ~= args.id then
		return
	end
	
	print("zSOUL QUEST SYSTEM - Txt Backup data received from server, recovering quest progress.");
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
	print("zSOUL QUEST SYSTEM - Data transformation successful, applying " .. lastnum .. " lines of backup.");
	
	SF_MissionPanel.instance.RemoveAllWorldMarkers()
	
	player:getModData().missionProgress = {}
	print("zSOUL QUEST SYSTEM - missionProgress reset for backup");
	player:getModData().missionProgress = temp;
	print("zSOUL QUEST SYSTEM - backup data recovered");
	-- impostiamo startingPlayerStats uguale al nuovo missionProgress del backup per sicurezza (realmente necessario?)
	SFQuest_PlayerHandler.startingPlayerStats = player:getModData().missionProgress;
	if args.checkDefaults then
		SF_MissionPanel.instance:checkDefaults();
	end
	-- Rebuild player indexes after backup data is applied
	SFQuest_PlayerHandler.rebuildPlayerIndexes(player)
	SF_MissionPanel.instance:triggerUpdate();
end

function Commands.setProgress(args)
	local player = getPlayer();
	local id = player:getUsername();
	if id ~= args.id then
		return
	end
	
	print("zSOUL QUEST SYSTEM - Json Backup data received from server, recovering quest progress.");
	local bkp = args.data
	
	--fix brutale per rimuovere punto esclamativo di Pyno post restore del backup
	-- prima del restore del backup andrebbero eliminati tutti i world events se no rimarranno i marker sopra gli npc fino al riavvio del gioco
	-- fare un for loop e un removeWorldEvent per ognuno
	SF_MissionPanel.instance:RemoveAllWorldMarkers()
	-- SF_MissionPanel:removeWorldEvent("9332x8605x0")
	-- per non hardcodare la posizione dell'npc di pyno si potrebbe fetchare il SFQuest_Database.StartingPool e rimuovere tutte le quest
	-- che vengono sbloccate allo start del player e relativi marker prima del restore del backup
	-- SF_MissionPanel.instance:removeWorldEventsWithCode(dailycode);
	-- player:getModData().missionProgress.WorldEvent["9332x8605x0"].marker:remove();
	---------------------------------------------------------
	-- resettiamo prima tutto?
	player:getModData().missionProgress = {}
	print("zSOUL QUEST SYSTEM - missionProgress reset for backup");
	player:getModData().missionProgress = bkp;
	print("zSOUL QUEST SYSTEM - backup data recovered");
	-- impostiamo startingPlayerStats uguale al nuovo missionProgress del backup per sicurezza
	SFQuest_PlayerHandler.startingPlayerStats = player:getModData().missionProgress;
	if args.checkDefaults then
		SF_MissionPanel.instance:checkDefaults();
	end
	-- Rebuild player indexes after backup data is applied
	SFQuest_PlayerHandler.rebuildPlayerIndexes(player)
	SF_MissionPanel.instance:triggerUpdate();
end

function Commands.haloText(args)
	local player = getPlayer()
	if not player then return end

	-- Resolve args: translation keys (IGUI_), item fullTypes (Base.X), or plain strings
	local resolvedArgs = {}
	for i, v in ipairs(args.args or {}) do
		if type(v) == "string" and v:match("^IGUI_") then
			resolvedArgs[i] = getText(v)
		elseif type(v) == "string" and v:match("^%u%a+%.") then
			resolvedArgs[i] = getItemText(v)
		else
			resolvedArgs[i] = v
		end
	end

	local text = getText(args.key, unpack(resolvedArgs))

	-- BBCode [img=] must be OUTSIDE [col=]...[/] blocks because PZ's TextDrawObject
	-- parser ignores nested tags when hasOpened=true (an open [col=] suppresses [img=])
	if args.itemIcon then
		local iconName = args.itemIcon
		local script = ScriptManager.instance:getItem(args.itemIcon)
		if script then
			iconName = script:getIcon()
		end
		local imgTag = "[img=" .. iconName .. "] "
		if args.type == "good" then
			local ci = Core.getInstance():getGoodHighlitedColor()
			local r, g, b = math.floor(ci:getR() * 255), math.floor(ci:getG() * 255), math.floor(ci:getB() * 255)
			HaloTextHelper.addText(player, imgTag .. "[col=" .. r .. "," .. g .. "," .. b .. "]" .. text .. "[/]")
		elseif args.type == "bad" then
			local ci = Core.getInstance():getBadHighlitedColor()
			local r, g, b = math.floor(ci:getR() * 255), math.floor(ci:getG() * 255), math.floor(ci:getB() * 255)
			HaloTextHelper.addText(player, imgTag .. "[col=" .. r .. "," .. g .. "," .. b .. "]" .. text .. "[/]")
		else
			HaloTextHelper.addText(player, imgTag .. text)
		end
	else
		if args.type == "good" then
			HaloTextHelper.addGoodText(player, text)
		elseif args.type == "bad" then
			HaloTextHelper.addBadText(player, text)
		else
			HaloTextHelper.addText(player, text)
		end
	end
end

Events.OnServerCommand.Add(function(module, command, args)
	if not isClient() then return end
	if module == "SFQuest" and Commands[command] then
		args = args or {}
		Commands[command](args)
	end
end)

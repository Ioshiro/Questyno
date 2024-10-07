SFQuest_WorldEventMenu = function(player, context, worldobjects, test)

	local playerObj = getSpecificPlayer(player)
	if test then return ISWorldObjectContextMenu.setTest() end
	if not playerObj:getModData().missionProgress.WorldEvent then return end

	local square;
	
	for i,v in ipairs(worldobjects) do
		square = v:getSquare();
		break;
	end

	local x,y,z = tostring(square:getX()), tostring(square:getY()), tostring(square:getZ());
	local sqTag = x .. "x" .. y .. "x" .. z;
	--print("Clicked square was " .. sqTag);
	if playerObj:getModData().missionProgress.WorldEvent[sqTag] then
		local event = playerObj:getModData().missionProgress.WorldEvent[sqTag];
		local worldinfo = SF_MissionPanel.instance:getWorldInfo(event.identity);
		local dialogueinfo = SF_MissionPanel.instance:getDialogueInfo(event.dialoguecode);
		local questid = event.quest;
		local name = getText(worldinfo.name);
		local faction = worldinfo.faction;
		local tier;
		if faction then
			tier = SF_MissionPanel.instance:getReputationTier(faction, playerObj);
		end
		if tier and worldinfo.tiers and worldinfo.tiers[tier] and worldinfo.tiers[tier].name then
			name = getText(worldinfo.tiers[tier].name);
		end
		local contextWords = getText(dialogueinfo.context, name);

        	local worldOption = context:addOptionOnTop(contextWords, worldobjects, onInteraction2, playerObj, square, worldinfo, dialogueinfo, questid);
			worldOption.iconTexture = getTexture(worldinfo.picture);
	end
end

onInteraction2 = function(worldobjects, playerObj, square, worldinfo, dialogueinfo, questid)
	if luautils.walkAdj(playerObj, square) then
		ISTimedActionQueue.add(SFQuest_WorldEventCheck:new(playerObj, square, worldinfo, dialogueinfo, questid));
	end
end

Events.OnFillWorldObjectContextMenu.Add(SFQuest_WorldEventMenu);
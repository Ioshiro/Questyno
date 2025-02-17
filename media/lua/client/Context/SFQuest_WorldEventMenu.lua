local function onInteraction2(worldobjects, playerObj, square, worldinfo, dialogueinfo, questid)
	if luautils.walkAdj(playerObj, square) then
		ISTimedActionQueue.add(SFQuest_WorldEventCheck:new(playerObj, square, worldinfo, dialogueinfo, questid));
	end
end

 local function SFQuest_WorldEventMenu(player, context, worldobjects, test)

	local playerObj = getSpecificPlayer(player)
	if test then return ISWorldObjectContextMenu.setTest() end
	if not playerObj:getModData().missionProgress.WorldEvent then return end

	local square = worldobjects[1]:getSquare();

	local startingX,startingY,startingZ = square:getX(), square:getY(), square:getZ();
	local x1, y1, x2, y2 = startingX-1, startingY-1, startingX+1, startingY+1
	for i = x1, x2 do
        for j = y1, y2 do
            local sqTag = tostring(i).."x"..tostring(j).."x"..tostring(startingZ);
			if playerObj:getModData().missionProgress.WorldEvent[sqTag] then
				local square = getCell():getGridSquare(i, j, startingZ);
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
				break
			end
        end
    end
end

Events.OnFillWorldObjectContextMenu.Add(SFQuest_WorldEventMenu);
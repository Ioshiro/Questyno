local function onClickEvent(worldobjects, playerObj, square, address, actiondata, commands)
	local dataTable = luautils.split(actiondata, ";");
	local count = 1;
	local time;
	local anim;
	local animvar1;
	local animvar2;
	local prop1;
	local prop2;
	while dataTable[count] do
		if dataTable[count] == "time" then
			time = dataTable[count + 1];
			count = count + 2;
		elseif dataTable[count] == "anim" then
			anim = dataTable[count + 1];
			count = count + 2;
		elseif dataTable[count] == "animvar" then
			animvar1 = dataTable[count + 1];
			animvar2 = dataTable[count + 2];
			count = count + 3;
		elseif dataTable[count] == "prop1" then
			prop1 = dataTable[count + 1];
			count = count + 2;
		elseif dataTable[count] == "prop2" then
			prop2 = dataTable[count + 1];
			count = count + 2;
		else
			print("SOUL QUEST SYSTEM - Unrecognized right click action data: " .. dataTable[count]);
			count = count + 100;
		end
	end
	if luautils.walkAdj(playerObj, square) then
		ISTimedActionQueue.add(SFQuest_ClickEventAction:new(playerObj, square, address, time, anim, prop1, prop2, commands, animvar1, animvar2));
	end
end

local function SFQuest_ClickEventMenu(player, context, worldobjects, test)

	local playerObj = getSpecificPlayer(player)
	if test then return ISWorldObjectContextMenu.setTest() end
	if not playerObj:getModData().missionProgress.ClickEvent then return end

	local square = worldobjects[1]:getSquare();

	local startingX,startingY,startingZ = square:getX(), square:getY(), square:getZ();
	local x1, y1, x2, y2 = startingX-1, startingY-1, startingX+1, startingY+1
	for i = x1, x2 do
        for j = y1, y2 do
			local sqTag = tostring(i).."x"..tostring(j).."x"..tostring(startingZ);
			local event = playerObj:getModData().missionProgress.ClickEvent[sqTag];
			if event then
				local square = getCell():getGridSquare(i, j, startingZ);
				local event = playerObj:getModData().missionProgress.ClickEvent[sqTag]
    			local clickOption = context:addOptionOnTop(getText("ContextMenu_InvestigateCorpse"), worldobjects, onClickEvent, playerObj, square, event.address, event.actiondata, event.commands);
				clickOption.iconTexture = getTexture("media/textures/clickevent.png");
				break
			end
		end
	end
end

Events.OnFillWorldObjectContextMenu.Add(SFQuest_ClickEventMenu);
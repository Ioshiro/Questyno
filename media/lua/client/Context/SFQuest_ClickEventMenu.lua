SFQuest_ClickEventMenu = function(player, context, worldobjects, test)

	local playerObj = getSpecificPlayer(player)
	if test then return ISWorldObjectContextMenu.setTest() end
	if not playerObj:getModData().missionProgress.ClickEvent then return end
	if #playerObj:getModData().missionProgress.ClickEvent == 0 then return end

	local square;
	
	for i,v in ipairs(worldobjects) do
		square = v:getSquare();
		break;
	end

	local x,y,z = tostring(square:getX()), tostring(square:getY()), tostring(square:getZ());
	local sqTag = x .. "x" .. y .. "x" .. z;
	--print("Clicked square was " .. sqTag);
	for c=1,#playerObj:getModData().missionProgress.ClickEvent do
		local event = playerObj:getModData().missionProgress.ClickEvent[c];
		if event.square and event.square == sqTag then
        		local clickOption = context:addOptionOnTop(getText("ContextMenu_InvestigateCorpse"), worldobjects, onClickEvent, playerObj, square, event.address, event.actiondata, event.commands);
				clickOption.iconTexture = getTexture("media/textures/clickevent.png");
		end
	end
end

onClickEvent = function(worldobjects, playerObj, square, address, actiondata, commands)
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

Events.OnFillWorldObjectContextMenu.Add(SFQuest_ClickEventMenu);
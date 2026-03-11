require "SFQuest_Utils"
local onDelivery = function(worldobjects, playerObj, square, item, guid, index)
	if luautils.walkAdj(playerObj, square) then
		ISTimedActionQueue.add(SFQuestDeliverItem:new(playerObj, square, item, guid, index));
	end
end

SFQuest_DeliveryMenu = function(player, context, worldobjects, test)

	local playerObj = getSpecificPlayer(player)
	if test then return ISWorldObjectContextMenu.setTest() end
	if not playerObj:getModData().missionProgress.Delivery then return end

	local square;
	
	for i,v in ipairs(worldobjects) do
		square = v:getSquare();
		break;
	end

	local x,y,z = tostring(square:getX()), tostring(square:getY()), tostring(square:getZ());
	local sqTag = SFQuest_Utils.squaretag(x,y,z)
	--print("Clicked square was " .. sqTag);
	if playerObj:getModData().missionProgress.Delivery[sqTag] then
		local guid = playerObj:getModData().missionProgress.Delivery[sqTag];
		local task = SF_MissionPanel.instance:getActiveQuest(guid);
		if not task or not task.objectives then return end
		local keepMenu = false;
		for o=1,#task.objectives do
			local obj = task.objectives[o];
			if obj.needsitem and obj.status == "Obtained" then
				keepMenu = true;
			end
		end	
		if not keepMenu then return end;	
        	local deliveryOption = context:addOption(getText("ContextMenu_HideItem"), worldobjects, nil);
		local subMenu = ISContextMenu:getNew(context);
		context:addSubMenu(deliveryOption, subMenu)
		for o=1,#task.objectives do
			local obj = task.objectives[o];
			if obj.needsitem and obj.status == "Obtained" then
				local itemName = getItemNameFromFullType(obj.needsitem);
				local item;
				local inv = playerObj:getInventory();
				if inv:containsTypeRecurse(obj.needsitem) then
					for i=0,inv:getItems():size() - 1 do
						local currentItem = inv:getItems():get(i);
						if currentItem:getFullType() == obj.needsitem and not currentItem:getModData().guid then
							item = currentItem;
						elseif currentItem:getFullType() == obj.needsitem and currentItem:getModData().guid == guid then
							item = currentItem;
							itemName = currentItem:getName();
						end
					end
				end
				local suboption = subMenu:addOption(itemName, worldobjects, onDelivery, playerObj, square, item, guid, o);
				if not item then suboption.notAvailable = true end;
			end
		end
	end
end



Events.OnFillWorldObjectContextMenu.Add(SFQuest_DeliveryMenu);
SFQuestMannequinScriptname = function(sprite)
	if sprite == "location_shop_mall_01_65" then
		return "FemaleWhite01"
	elseif sprite == "location_shop_mall_01_66" then
		return "FemaleWhite02"
	elseif sprite == "location_shop_mall_01_67" then
		return "FemaleWhite03"
	elseif sprite == "location_shop_mall_01_68" then
		return "MaleWhite01"
	elseif sprite == "location_shop_mall_01_69" then
		return "MaleWhite02"
	elseif sprite == "location_shop_mall_01_70" then
		return "MaleWhite03"
	elseif sprite == "location_shop_mall_01_73" then
		return "FemaleBlack01"
	elseif sprite == "location_shop_mall_01_74" then
		return "FemaleBlack02"
	elseif sprite == "location_shop_mall_01_75" then
		return "FemaleBlack03"
	elseif sprite == "location_shop_mall_01_76" then
		return "MaleBlack01"
	elseif sprite == "location_shop_mall_01_77" then
		return "MaleBlack02"
	elseif sprite == "location_shop_mall_01_78" then
		return "MaleBlack03"
	else
		return "MaleWhite01"
	end
end

SFQuestMannequinSpawner = function(square)
	local x, y, z = square:getX(), square:getY(), square:getZ();
	local squaretag = tostring(x) .. "x" .. tostring(y) .. "x" .. tostring(z);
	if not SFQuest_Database.MannequinPool[squaretag] then
		return
	end
	
	local objects = square:getObjects();
    for i=0, objects:size()-1 do
		object = objects:get(i);
		local name = object:getObjectName();
		if name and name == "Mannequin" then
			if SFQuest_Database.MannequinPool[squaretag].removed then
				if isClient() then
					sledgeDestroy(object);
				else
					square:transmitRemoveItemFromSquare(object)
				end
				return
			else
				object:getContainer():setAcceptItemFunction("AcceptItemFunction.None");
				return
			end
		end
	end
	if SFQuest_Database.MannequinPool[squaretag].removed then
		return
	end

	local sprite = SFQuest_Database.MannequinPool[squaretag].sprite
	local outfit = SFQuest_Database.MannequinPool[squaretag].outfit
	local direction = SFQuest_Database.MannequinPool[squaretag].direction
	local hair = SFQuest_Database.MannequinPool[squaretag].hair
	local beard = SFQuest_Database.MannequinPool[squaretag].beard
	local haircolor = SFQuest_Database.MannequinPool[squaretag].haircolor
	local beardcolor = SFQuest_Database.MannequinPool[squaretag].beardcolor
	local mannequin = IsoMannequin.new(getCell(), square, sprite);
	mannequin:setSquare(square);
	local scriptName = SFQuestMannequinScriptname(sprite);
	mannequin:setMannequinScriptName(scriptName);
	local dir = IsoDirections[direction]
	mannequin:setDir(dir);
	mannequin:createContainersFromSpriteProperties();
	mannequin:getContainer():emptyIt();
	mannequin:getContainer():setAcceptItemFunction("AcceptItemFunction.None");
	local visuals = mannequin:getHumanVisual();
	visuals:clear();
	visuals:dressInNamedOutfit(outfit, visuals:getBodyVisuals());
	visuals:synchWithOutfit(visuals:getOutfit());
	if hair then
		visuals:setHairModel(hair);
	end
	if haircolor then
		local tempTable = luautils.split(haircolor, ",");
		local hR, hG, hB = tonumber(tempTable[1]), tonumber(tempTable[2]), tonumber(tempTable[3]);
		local hcolor = ImmutableColor.new(hR, hG, hB);
		visuals:setHairColor(hcolor);
	end
	if beard then
		if beard == "null" or beard == "none" then
			visuals:setBeardModel("");
		else
			visuals:setBeardModel(beard);		
		end
	end
	if beardcolor then
		local tempTable = luautils.split(beardcolor, ",")
		local bR, bG, bB = tonumber(tempTable[1]), tonumber(tempTable[2]), tonumber(tempTable[3]);
		local bcolor = ImmutableColor.new(bR, bG, bB);
		visuals:setBeardColor(bcolor);		
	end
	mannequin:setNoPicking(true);
	mannequin:transmitCompleteItemToServer();
	mannequin:transmitCompleteItemToClients();
	square:getObjects():add(mannequin);
	square:RecalcProperties();
end

Events.LoadGridsquare.Add(SFQuestMannequinSpawner);
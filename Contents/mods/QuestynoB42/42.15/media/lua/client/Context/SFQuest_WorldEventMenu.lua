require "SFQuest_Utils"
require "SFQuest_Database"

local useIsoNpc = (type(NpcPool) == "table")

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
	local npcsFounds = {}

	if useIsoNpc and isBot then
		-- Bot mode: scan for IsoPlayer bots in 3x3 area
		local foundIdentities = {}
		for x = startingX - 1, startingX + 1 do
			for y = startingY - 1, startingY + 1 do
				local sq = getCell():getGridSquare(x, y, startingZ)
				if sq then
					local movingObjects = sq:getMovingObjects()
					for i = 0, movingObjects:size() - 1 do
						local obj = movingObjects:get(i)
						if instanceof(obj, "IsoPlayer") and isBot(obj) then
							local botIdentity = obj:getVariableString("botIdentity")
							if botIdentity and not foundIdentities[botIdentity] then
								foundIdentities[botIdentity] = true
								local worldPoolEntry = SFQuest_Database.Indexes.WorldByIdentity[botIdentity]
								if worldPoolEntry then
									local sqTag = worldPoolEntry.square
									local event = playerObj:getModData().missionProgress.WorldEvent[sqTag]
									if event then
										local targetSquare = obj:getSquare()
										local worldinfo = SF_MissionPanel.instance:getWorldInfo(event.identity)
										local dialogueinfo = SF_MissionPanel.instance:getDialogueInfo(event.dialoguecode)
										table.insert(npcsFounds, {square = targetSquare, worldinfo = worldinfo, dialogueinfo = dialogueinfo})
									end
								end
							end
						end
					end
				end
			end
		end
	else
		-- Mannequin fallback: squaretag-based
		for i = startingX - 1, startingX + 1 do
			for j = startingY - 1, startingY + 1 do
				local sqTag = SFQuest_Utils.squaretag(i,j,startingZ)
				if playerObj:getModData().missionProgress.WorldEvent[sqTag] then
					local sq = getCell():getGridSquare(i, j, startingZ);
					local event = playerObj:getModData().missionProgress.WorldEvent[sqTag];
					local worldinfo = SF_MissionPanel.instance:getWorldInfo(event.identity);
					local dialogueinfo = SF_MissionPanel.instance:getDialogueInfo(event.dialoguecode);
					table.insert(npcsFounds, {square = sq, worldinfo = worldinfo, dialogueinfo = dialogueinfo});
				end
			end
		end
	end

	if #npcsFounds == 0 then return end
	local newOption = context:addOptionOnTop(getText("ContextMenu_WorldEvent"), worldobjects, nil);
	newOption.iconTexture = getTexture("media/textures/esclamativo.png");
	local subMenu = ISContextMenu:getNew(context)
	context:addSubMenu(newOption, subMenu)
	for _, npcFound in ipairs(npcsFounds) do
		local square = npcFound.square;
		local event = npcFound.worldinfo;
		local worldinfo = npcFound.worldinfo;
		local dialogueinfo = npcFound.dialogueinfo;
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

		local worldOption = subMenu:addOption(contextWords, worldobjects, onInteraction2, playerObj, square, worldinfo, dialogueinfo, questid);
		worldOption.iconTexture = getTexture(worldinfo.picture);
	end
end

Events.OnFillWorldObjectContextMenu.Add(SFQuest_WorldEventMenu);

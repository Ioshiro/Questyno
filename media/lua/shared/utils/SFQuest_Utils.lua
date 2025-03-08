local SFQuest_Utils = {}

function SFQuest_Utils.SFQuest_Utils.isPartiallyEaten(item)
    local baseHunger = math.abs(item:getBaseHunger() * 100) + 0.001
    local hungerChange = math.abs(item:getHungerChange() * 100) + 0.001
    return hungerChange < baseHunger
end

function SFQuest_Utils.SFQuest_Utils.isPoisonFood(item)
    local poisonPower = item:getPoisonPower()
    return poisonPower > 0
end

function SFQuest_Utils.predicateBigFish(item)
	local fullname =  item:getName():gsub(" ", "");
	print("SOUL QUEST SYSTEM - Fish name was: " .. fullname);
	local nameTable = luautils.split(fullname, "-");
	if not nameTable[2] then return false end
	local lengthstr = luautils.split(nameTable[2], "c")[1];
	print("SOUL QUEST SYSTEM - Fish length was: " .. lengthstr);
	local length = tonumber(lengthstr);
	return item:isFresh() and length and length >= 50
end

function SFQuest_Utils.predicateCondition(item, condition)
	local percent = condition / 100;
	local matchcondition = item:getConditionMax() * percent;
	return instanceof(item, "HandWeapon") and item:getCondition() >= matchcondition
end

function SFQuest_Utils.predicateFreshFood(item)
    if item:IsFood() then
        if item:getHungChange() < 0 then
            -- Il cibo è mangiabile, controlla se è intero
            return not SFQuest_Utils.isPartiallyEaten(item) and item:isFresh() and not SFQuest_Utils.isPoisonFood(item)
        else
            -- Il cibo non è mangiabile, controlla solo freschezza e tossicità
            return item:isFresh() and not SFQuest_Utils.isPoisonFood(item)
        end
    end
end

function SFQuest_Utils.predicateFoodWeight(item, condition)
	if item:IsFood() then
        if item:getHungChange() < 0 then
            return not SFQuest_Utils.isPartiallyEaten(item) and item:isFresh() and not SFQuest_Utils.isPoisonFood(item) and item:getWeight() >= condition
        else
            return item:isFresh() and not SFQuest_Utils.isPoisonFood(item) and item:getWeight() >= condition
        end
	end
end

function SFQuest_Utils.predicateFoodHunger(item, condition)
	if item:IsFood() then
        if item:getHungChange() < 0 then
            return not SFQuest_Utils.isPartiallyEaten(item) and item:isFresh() and not SFQuest_Utils.isPoisonFood(item) and item:getBaseHunger() >= condition
        else
		    return item:isFresh() and not SFQuest_Utils.isPoisonFood(item) and item:getBaseHunger() >= condition
        end
	end
end

function SFQuest_Utils.predicateFoodCooked(item)
    if item:IsFood() then
        if item:getHungChange() < 0 then
            return not SFQuest_Utils.isPartiallyEaten(item) and item:isFresh() and item:isCooked() and not SFQuest_Utils.isPoisonFood(item)
        else
            return item:isFresh() and item:isCooked() and not SFQuest_Utils.isPoisonFood(item)
        end
    end
end

function SFQuest_Utils.predicateFullDrainable(item)
	return item:getUsedDelta() == 1
end

function SFQuest_Utils.predicateDrainable(item, condition)
	return item:getUsedDelta() >= condition
end





return SFQuest_Utils
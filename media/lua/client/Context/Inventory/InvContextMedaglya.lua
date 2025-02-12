ISInventoryMenuElements = ISInventoryMenuElements or {};

function ISInventoryMenuElements.ContextMedaglya()
    local self 					= ISMenuElement.new();
    self.invMenu			    = ISContextManager.getInstance().getInventoryMenu();

    function self.init()
    end

    function self.createMenu( _item ) -- if starts with Medaglya
        if string.sub(_item:getType(), 1, 8) == "Medaglya" then
            if _item:getContainer() ~= self.invMenu.inventory then
                return;
			end
            local player = getPlayer()
			local subOption= self.invMenu.context:addOption(getText("ContextMenu_TakeReputation"), player, self.awardReputation, _item);
        end
    end

    function self.awardReputation( _p, _i)
        local rep = 0
        if _i:getType() == "MedaglyaBronzo" then
            rep = 350
        elseif _i:getType() == "MedaglyaArgento" then
            rep = 1000
        elseif _i:getType() == "MedaglyaOro" then
            rep = 3000
        elseif _i:getType() == "MedaglyaPlatino" then
            rep = 10000
        elseif _i:getType() == "MedaglyaDiamante" then
            rep = 50000
        end
        SF_MissionPanel:awardReputation("LaResistenza", rep)

        _p:getInventory():Remove(_i)
	end
	return self;
end
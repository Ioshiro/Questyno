ISInventoryMenuElements = ISInventoryMenuElements or {};

function ISInventoryMenuElements.ContextBikeKey()
    local self 					= ISMenuElement.new();
    self.invMenu			    = ISContextManager.getInstance().getInventoryMenu();

    function self.init()
    end

    function self.createMenu( _item )
        if string.contains(_item:getType(), "ChiaveMacchinyno") then
            if _item:getContainer() ~= self.invMenu.inventory then
                return;
			end
            local player = getPlayer()
            local fullType = _item:getFullType()
            local vehicle;
            if fullType == "LR.ChiaveMacchinyno1" then
                vehicle = "Base.CarLuxury";
            elseif fullType == "LR.ChiaveMacchinyno2" then
                vehicle = "Base.SmallCar";
            elseif fullType == "LR.ChiaveMacchinyno3" then
                vehicle = "Base.OffRoad";
            elseif fullType == "LR.ChiaveMacchinyno4" then
                vehicle = "Base.SmallCar02";
            else
                return;
            end
            
			local subOption= self.invMenu.context:addOption(getText("ContextMenu_ChiaveMacchinyno"), player, self.spawnMacchinyno, vehicle, fullType);
            subOption.notAvailable = not player:isOutside()
            local tooltip = ISToolTip:new();
            tooltip:initialise();
            tooltip:setVisible(true);
            
            if subOption.notAvailable then
                tooltip.description = getText("ContextMenu_BikeKey_ToolTipOutside")
            else
                tooltip.description = getText("ContextMenu_ChiaveMacchinyno_ToolTip")
            end
            
            subOption.toolTip = tooltip
        end
    end

    function self.spawnMacchinyno( _p, _v, _i)
        local key = self.invMenu.inventory:getItemFromType(_i)
		if key == nil then return end
			if isClient() then
                sendClientCommand(_p,'BicyclesRedux', 'addVehicle', {vehicle=_v, dir=_p:getDir()})
			else
				local vehicle = addVehicleDebug(_v, _p:getDir(), nil, _p:getSquare())
                vehicle:repair()
			end
            _p:getInventory():Remove(key)
	end
	return self;
end
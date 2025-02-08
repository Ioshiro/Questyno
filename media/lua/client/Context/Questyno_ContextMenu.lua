ISInventoryMenuElements = ISInventoryMenuElements or {};

function ISInventoryMenuElements.ContextBikeKey()
    local self 					= ISMenuElement.new();
    self.invMenu			    = ISContextManager.getInstance().getInventoryMenu();

    function self.init()
    end

    function self.createMenu( _item )
        if _item:getType() == "ChiaveBicicletta" then
            if _item:getContainer() ~= self.invMenu.inventory then
                return;
			end
            local player = getPlayer()
			local subOption= self.invMenu.context:addOption(getText("ContextMenu_BikeKey"), player, self.spawnBike);
        end
    end

    function self.spawnBike( _p)
        local key = self.invMenu.inventory:getItemFromType("LR.ChiaveBicicletta")
		if key == nil then return end
			if isClient() then
				-- local command = "/addvehicle Base.BicycleMTB"
				-- SendCommandToServer(command)
                sendClientCommand(_p,'SFQuest', 'addVehicle', {vehicle="Base.BicycleMTB"})

			else
				local vehicle = addVehicleDebug("Base.BicycleMTB", _p:getDir(), nil, _p:getSquare())
                vehicle:repair()
			end
	end
	return self;
end

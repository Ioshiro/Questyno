local FONT_HGT_SMALL = getTextManager():getFontHeight(UIFont.Small)
local FONT_HGT_MEDIUM = getTextManager():getFontHeight(UIFont.Medium)
local max = math.max
local format = string.format
local tostring = tostring 

function ISCharacterScreen:render()

  if self:traitsChanged() then
    self:loadTraits();
  end
  self:loadProfession();
	self:loadBeardAndHairStyle();
	
	ISCharacterScreen.loadFavouriteWeapon(self);
	
	local z = 25;

	local nameText = self.char:getDescriptor():getForename().." "..self.char:getDescriptor():getSurname()
	local nameX = self.avatarX + self.avatarWidth + 25
	local nameWid = getTextManager():MeasureStringX(UIFont.Medium, nameText)
	self:drawText(nameText, nameX, z, 1,1,1,1, UIFont.Medium);

	local professionWid = self.profImage:getWidth()
    if not self.professionTexture then
		professionWid = max(professionWid, getTextManager():MeasureStringX(UIFont.Small, self.profession))
        self:drawText(self.profession, self.width - 20 - professionWid, z, 1,1,1,1,UIFont.Small);
        self.profImage:setVisible(false);
    else
        self.profImage:setVisible(true);
        self.profImage:setMouseOverText(self.profession);
        self.profImage.texture = self.professionTexture;
    end

	local hairWidth = getTextManager():MeasureStringX(UIFont.Small, self.hairStyle)
	local beardWidth = self.char:isFemale() and 0 or getTextManager():MeasureStringX(UIFont.Small, self.beardStyle)
	local hairBeardButtonX = self.xOffset + 10 + max(hairWidth, beardWidth) + 10

	local panelWidth = self.avatarX + self.avatarWidth + 25 + nameWid + 20 + professionWid + 20
	panelWidth = max(panelWidth, nameX + nameWid + 40 + self.profImage.width + 20)
	panelWidth = max(panelWidth, hairBeardButtonX + self.hairButton.width + 20)
	self:setWidthAndParentWidth(panelWidth)

	self.profImage:setX(panelWidth - 20 - self.profImage.width)

	z = z + FONT_HGT_MEDIUM;
	self:drawRect(nameX, z, nameWid + 2, 1, self.borderColor.a, self.borderColor.r, self.borderColor.g, self.borderColor.b);

	z = z + 10;

	local smallFontHgt = getTextManager():getFontFromEnum(UIFont.Small):getLineHeight()

	z = z + smallFontHgt;
	self:drawTextRight(getText("IGUI_char_Sex"), self.xOffset, z, 1,1,1,1, UIFont.Small);
	self:drawText(self.sexText, self.xOffset + 10, z, 1,1,1,0.5, UIFont.Small);

    z = z + smallFontHgt;
--    self:drawTextRight("Cal", self.xOffset, z, 1,1,1,1, UIFont.Small);
--    self:drawText(round(self.char:getNutrition():getCalories(), 2) .. "", self.xOffset + 10, z, 1,1,1,0.5, UIFont.Small);
    self:drawTextRight(getText("IGUI_char_Weight"), self.xOffset, z, 1,1,1,1, UIFont.Small);
    local weightStr = tostring(round(self.char:getNutrition():getWeight(), 0))
    self:drawText(weightStr, self.xOffset + 10, z, 1,1,1,0.5, UIFont.Small);
		--[[ 
		-- compatible RealAge mod
		if SandboxVars.Character.EnablePlayerAge then
			z = z + smallFontHgt;
			self:drawTextRight(getText('IGUI_char_Age'), self.xOffset, z, 1, 1, 1, 1, UIFont.Small)
			self:drawText(self.char:getModData().Age .. '', self.xOffset + 10, z, 1, 1, 1, 0.5, UIFont.Small)
		end ]]
	if self.char:getNutrition():isIncWeight() or self.char:getNutrition():isIncWeightLot() or self.char:getNutrition():isDecWeight() then
		local nutritionWidth = getTextManager():MeasureStringX(UIFont.Small, weightStr) + 13;
		if self.char:getNutrition():isIncWeight() and not self.char:getNutrition():isIncWeightLot() then
			self:drawTexture(self.weightIncTexture, self.xOffset + nutritionWidth, z + 3, 1, 0.8, 0.8, 0.8)
		end
		if self.char:getNutrition():isIncWeightLot() then
			self:drawTexture(self.weightIncLotTexture, self.xOffset + nutritionWidth, z, 1, 0.8, 0.8, 0.8)
		end
		if self.char:getNutrition():isDecWeight() then
			self:drawTexture(self.weightDecTexture, self.xOffset + nutritionWidth, z + 3, 1, 0.8, 0.8, 0.8)
		end
	end

	z = z + smallFontHgt;
	local traitBottom = z
	local finalY = z + (max(FONT_HGT_SMALL, 18) - 18) / 2 + 2;
	if #self.traits > 0 then
		self:drawTextRight(getText("IGUI_char_Traits"), self.xOffset, z, 1,1,1,1, UIFont.Small);
		local x = self.xOffset + 10;
		local y = z + (max(FONT_HGT_SMALL, 18) - 18) / 2 + 2
		for i,v in ipairs(self.traits) do
			v:setY(y);
			v:setX(x);
            v:setVisible(true);
			traitBottom = y + v:getTexture():getHeightOrig() + 2
			x = x + v:getTexture():getWidthOrig() + 6;
			if (i < #self.traits) and (x + v:getTexture():getWidthOrig() > self:getWidth() - 20) then
				x = self.xOffset + 10
				y = y + v:getTexture():getHeightOrig() + 2
			end
		end
		finalY = y + self.traits[1]:getTexture():getHeightOrig();
	end

	finalY = finalY + 20;

	self:drawTextRight(getText("IGUI_char_HairStyle"), self.xOffset, finalY, 1,1,1,1, UIFont.Small);
	self:drawText(self.hairStyle, self.xOffset + 10, finalY, 1,1,1,0.5, UIFont.Small);
	self.hairButton:setVisible(true);
	self.hairButton:setX(hairBeardButtonX);
	self.hairButton:setY(finalY);
	self.hairButton.enable = true;
	self.hairButton.tooltip = nil;
	
	if not isDebugEnabled() then
		local currentHairStyle = getHairStylesInstance():FindMaleStyle(self.char:getHumanVisual():getHairModel())
		if self.char:isFemale() then
			currentHairStyle = getHairStylesInstance():FindFemaleStyle(self.char:getHumanVisual():getHairModel())
		end
		if not currentHairStyle or currentHairStyle:getLevel() <= 0 then
			self.hairButton.enable = false;
			self.hairButton.tooltip = getText("Tooltip_NoHair");
		end
	end

	finalY = finalY + smallFontHgt + 4;

	if not self.char:isFemale() then
		self:drawTextRight(getText("IGUI_char_BeardStyle"), self.xOffset, finalY, 1,1,1,1, UIFont.Small);
		self:drawText(self.beardStyle, self.xOffset + 10, finalY, 1,1,1,0.5, UIFont.Small);
		self.beardButton:setVisible(true);
		self.beardButton:setX(hairBeardButtonX);
		self.beardButton:setY(finalY);
		self.beardButton.enable = true;
		self.beardButton.tooltip = nil;
	
		local currentBeardStyle = getBeardStylesInstance():FindStyle(self.char:getHumanVisual():getBeardModel())
		if not isDebugEnabled() then
			if not currentBeardStyle or currentBeardStyle:getLevel() <= 0 then
				self.beardButton.enable = false;
				self.beardButton.tooltip = getText("Tooltip_NoBeard");
			end
		end

		finalY = finalY + smallFontHgt + 4;
	end

	self.literatureButton:setY(finalY + 16);
	self.literatureButton:setX(nameX);
	z = self.literatureButton:getBottom();

	z = max(z + 16, traitBottom);
	z = max(z, self.avatarY + self.avatarHeight + 25)
	local textWid1 = getTextManager():MeasureStringX(UIFont.Small, getText("IGUI_char_Favourite_Weapon"))
	local textWid2 = getTextManager():MeasureStringX(UIFont.Small, getText("IGUI_char_Zombies_Killed"))
	local textWid3 = getTextManager():MeasureStringX(UIFont.Small, getText("IGUI_char_Survived_For"))
	local x = 20 + max(textWid1, max(textWid2, textWid3))
	
	if self.favouriteWeapon then
		self:drawTextRight(getText("IGUI_char_Favourite_Weapon"), x, z, 1,1,1,1, UIFont.Small);
		self:drawText(self.favouriteWeapon, x + 10, z, 1,1,1,0.5, UIFont.Small);
		z = z + smallFontHgt;
	end
	self:drawTextRight(getText("IGUI_char_Zombies_Killed"), x, z, 1,1,1,1, UIFont.Small);
	self:drawText(self.char:getZombieKills() .. "", x + 10, z, 1,1,1,0.5, UIFont.Small);
	z = z + smallFontHgt;
	
	self:drawTextRight(getText('IGUI_Reputation'), x, z, 0.7, 0.5, 0.1, 1, UIFont.Small)
    local tiername = getText('IGUI_Factions_Resistenza_Tier'.. self.char:getModData().missionProgress.Factions[1].tierlevel )
	self:drawText(format('%d%% (%s)', (self.char:getModData().missionProgress.Factions[1].reputation/ self.char:getModData().missionProgress.Factions[1].repmax) * 100, tiername), x + 10, z, 1, 1, 1, 0.5, UIFont.Small)
	
	z = z + smallFontHgt;
	local clock = UIManager.getClock()
	if instanceof(self.char, 'IsoPlayer') and clock and clock:isDateVisible() then
		self:drawTextRight(getText("IGUI_char_Survived_For"), x, z, 1,1,1,1, UIFont.Small);
		self:drawText(self.char:getTimeSurvived(), x + 10, z, 1,1,1,0.5, UIFont.Small);
	end
	
	z = z + smallFontHgt + 10

	self:setHeightAndParentHeight(z)
end

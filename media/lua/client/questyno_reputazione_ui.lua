    require "fazyoni.lua"

    local originalISCharacterScreen_render = ISCharacterScreen.render
    function ISCharacterScreen:render()
        originalISCharacterScreen_render(self)
    
        if getPlayer():getModData().missionProgress and getPlayer():getModData().missionProgress.Factions and getPlayer():getModData().missionProgress.Factions[1] then
            local textWid1 = getTextManager():MeasureStringX(UIFont.Small, getText("IGUI_char_Favourite_Weapon"))
            local textWid2 = getTextManager():MeasureStringX(UIFont.Small, getText("IGUI_char_Zombies_Killed"))
            local textWid3 = getTextManager():MeasureStringX(UIFont.Small, getText("IGUI_char_Survived_For"))
            local x = 20 + math.max(textWid1, math.max(textWid2, textWid3))
            local smallFontHgt = getTextManager():getFontFromEnum(UIFont.Small):getLineHeight()
            
            local z = self.height - 10
            
            -- FACTIONS QUEST
            self:drawTextRight(getText('IGUI_Reputation'), x, z, 0.7, 0.5, 0.1, 1, UIFont.Small)
            local tiername = getText('IGUI_Factions_Resistenza_Tier'.. self.char:getModData().missionProgress.Factions[1].tierlevel )
            local totalrep = self.char:getModData().missionProgress.Factions[1].reputation
            for k,v in pairs(LaResistenzaTiersTemplate) do
                if k < self.char:getModData().missionProgress.Factions[1].tierlevel then
                    totalrep = totalrep + v.minrep
                end
            end
            local repPercentage = (self.char:getModData().missionProgress.Factions[1].reputation / self.char:getModData().missionProgress.Factions[1].  repmax) * 100
            self:drawText(string.format('%d (%d%% - %s)', totalrep, repPercentage, tiername), x + 10, z, 1, 1, 1, 0.5, UIFont.Small)
            z = z + smallFontHgt + 10
            self:setHeightAndParentHeight(z)
            -- END FACTIONS QUEST
        end
    end
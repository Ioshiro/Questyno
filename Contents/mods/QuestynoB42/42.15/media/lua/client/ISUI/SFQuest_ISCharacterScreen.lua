    require "globals_questyno"
    
    local textWid1 = getTextManager():MeasureStringX(UIFont.Small, getText("IGUI_char_Favourite_Weapon"))
    local textWid2 = getTextManager():MeasureStringX(UIFont.Small, getText("IGUI_char_Zombies_Killed"))
    local textWid3 = getTextManager():MeasureStringX(UIFont.Small, getText("IGUI_char_Survived_For"))
    local x = 20 + math.max(textWid1, math.max(textWid2, textWid3))
    local smallFontHgt = getTextManager():getFontFromEnum(UIFont.Small):getLineHeight()
    local reputationText = getText("IGUI_Reputation")
    local originalISCharacterScreen_render = ISCharacterScreen.render
    function ISCharacterScreen:render()
        originalISCharacterScreen_render(self)
        local prog = self.char:getModData().missionProgress
        if prog and prog.Factions and prog.Factions[1] then
            
            local z = self.height - 10
            
            -- FACTIONS QUEST
            self:drawTextRight(reputationText, x, z, 0.7, 0.5, 0.1, 1, UIFont.Small)
            local tiername = getText('IGUI_Factions_Resistenza_Tier'.. prog.Factions[1].tierlevel )
            local totalrep = prog.Factions[1].reputation
            for i,v in ipairs(LaResistenzaTiersTemplate) do
                if i < prog.Factions[1].tierlevel then
                    totalrep = totalrep + v.minrep
                end
            end
            local repPercentage = (prog.Factions[1].reputation / prog.Factions[1].  repmax) * 100
            self:drawText(string.format('%d (%d%% - %s)', totalrep, repPercentage, tiername), x + 10, z, 1, 1, 1, 0.5, UIFont.Small)
            z = z + smallFontHgt + 10
            self:setHeightAndParentHeight(z)
            -- END FACTIONS QUEST
        end
    end
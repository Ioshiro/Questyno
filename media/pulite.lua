-- patern 3
table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_[NomeCognomeNumero]",
    
    awardstask = "Questyno_[NomeCognomeNumero]_A",
    dailycode = "Questyno_[NomeCognome]",
    lore = { "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_Lore" },                                                        
    objectives = { {
        guid = "Questyno_[NomeCognomeNumero]_A",
        text = "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_A",
        hidden = false,
        needsitem = "[NomeRichiesto1];[NumeroRichiesto1]",
        onobtained = "updateobjective;Questyno_[NomeCognomeNumero]:1:Completed;removeitem;[NomeRichiesto1];[NumeroRichiesto1]"
    }, {
        guid = "Questyno_[NomeCognomeNumero]_B",
        text = "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_B",
        hidden = false,
        needsitem = "[NomeRichiesto2];[NumeroRichiesto2]",
        onobtained = "updateobjective;Questyno_[NomeCognomeNumero]:2:Completed;removeitem;[NomeRichiesto2];[NumeroRichiesto2]"
    } },
    text = "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_Text",
    texture = "Item_[NomeIcona]",
    title = "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_Title",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_[NomeCognomeNumero]_A",
    
    awardsrep = "LaResistenza;[NumeroReputazione]",
    awardsitem = "[NomeRicompensa];[NumeroRicompensa]",
    awardsworld = "Questyno_[NomeCognome];SFQuest_Questyno_[NomeCognomeNumero+1]_Begin;Questyno_[NomeCognomeNumero+1]",
    completesound = "levelup",
    dailycode = "Questyno_[NomeCognome]",
    lore = { "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_Lore" },
    unlocks = "unlockworldevent;Questyno_[NomeCognome];SFQuest_Questyno_[NomeCognomeNumero]_Complete",
    text = "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_A_Text",
    texture = "Item_[NomeIcona]",
    title = "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_Title",
})

--pattern 4

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_[NomeCognomeNumero]",
    
    awardstask = "Questyno_[NomeCognomeNumero]_A",
    dailycode = "Questyno_[NomeCognome]",
    lore = { "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_Lore" },
    objectives = { {
        guid = "Questyno_[NomeCognomeNumero]_A",
        text = "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_A",
        hidden = false,
        oncompleted = "removeclickevent;Evento[NomeCognomeNumero];additem;[NomeRichiesto];[NumeroRichiesto]",
    } },
    text = "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_Text",
    texture = "Item_[NomeIcona]",
    title = "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_Title",
    unlocks = "clickevent;[Coordinate]:Evento[NomeCognomeNumero];time:50:anim:loot;updateobjective:Questyno_[NomeCognomeNumero]:1:Completed",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_[NomeCognomeNumero]_A",
    
    awardsrep = "LaResistenza;[NumeroReputazione]",
    awardsitem = "[NomeRicompensa];[NumeroRicompensa]",
    awardsworld = "Questyno_[NomeCognome];SFQuest_Questyno_[NomeCognomeNumero+1]_Begin;Questyno_[NomeCognomeNumero+1]",
    completesound = "levelup",
    dailycode = "Questyno_[NomeCognome]",
    lore = { "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_Lore" },
    needsitem = "[NomeRichiesto];[NumeroRichiesto]",
    onobtained = "unlockworldevent;Questyno_[NomeCognome];SFQuest_Questyno_[NomeCognomeNumero]_Complete",
    text = "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_A_Text",
    texture = "Item_[NomeIcona]",
    title = "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_Title",
})
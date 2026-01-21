require 'SFQuest_Database'

-- Quest per GarrettKing
table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_GarrettKing",
    awardstask = "Questyno_GarrettKing_A",
    dailycode = "Questyno_GarrettKing",
    lore = { "IGUI_SFQuest_Questyno_GarrettKing_Lore" },
    objectives = { {
        guid = "Questyno_GarrettKing_A",
        text = "IGUI_SFQuest_Questyno_GarrettKing_A",
        hidden = false,
        needsitem = "EmptyCAN6;1",
        onobtained = "updateobjective;Questyno_GarrettKing;1;Completed;removeitem;EmptyCAN6;1",
    }, {
        guid = "Questyno_GarrettKing_B",
        text = "IGUI_SFQuest_Questyno_GarrettKing_B",
        hidden = false,
        needsitem = "MoneyToXP.Rotolo;2",
        onobtained = "updateobjective;Questyno_GarrettKing;2;Completed;removeitem;MoneyToXP.Rotolo;2",
    } },
    text = "IGUI_SFQuest_Questyno_GarrettKing_Text",
    texture = "media/textures/Item_GarrettKing.png",
    title = "IGUI_SFQuest_Questyno_GarrettKing_Title",
    unlockedsound = "QuestUnlocked",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_GarrettKing_A",
    awardsitem = "GasCAN6;1",
    awardsrep = "LaResistenza;10",
    completesound = "levelup",
    dailycode = "Questyno_GarrettKing",
    lore = { "IGUI_SFQuest_Questyno_GarrettKing_Lore" },
    text = "IGUI_SFQuest_Questyno_GarrettKing_Text",
    texture = "media/textures/Item_GarrettKing.png",
    title = "IGUI_SFQuest_Questyno_GarrettKing_Title",
    unlocks = "unlockworldevent;Questyno_GarrettKing;SFQuest_Questyno_GarrettKing_Complete"
});



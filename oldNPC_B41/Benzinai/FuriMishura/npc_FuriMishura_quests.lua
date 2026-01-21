require 'SFQuest_Database'

-- Quest per FuriMishura
table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_FuriMishura",
    awardstask = "Questyno_FuriMishura_A",
    dailycode = "Questyno_FuriMishura",
    lore = { "IGUI_SFQuest_Questyno_FuriMishura_Lore" },
    objectives = { {
        guid = "Questyno_FuriMishura_A",
        text = "IGUI_SFQuest_Questyno_FuriMishura_A",
        hidden = false,
        needsitem = "EmptyCAN6;1",
        onobtained = "updateobjective;Questyno_FuriMishura;1;Completed;removeitem;EmptyCAN6;1",
    }, {
        guid = "Questyno_FuriMishura_B",
        text = "IGUI_SFQuest_Questyno_FuriMishura_B",
        hidden = false,
        needsitem = "MoneyToXP.Rotolo;2",
        onobtained = "updateobjective;Questyno_FuriMishura;2;Completed;removeitem;MoneyToXP.Rotolo;2",
    } },
    text = "IGUI_SFQuest_Questyno_FuriMishura_Text",
    texture = "media/textures/Item_FuriMishura.png",
    title = "IGUI_SFQuest_Questyno_FuriMishura_Title",
    unlockedsound = "QuestUnlocked",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_FuriMishura_A",
    awardsitem = "GasCAN6;1",
    awardsrep = "LaResistenza;10",
    completesound = "levelup",
    dailycode = "Questyno_FuriMishura",
    lore = { "IGUI_SFQuest_Questyno_FuriMishura_Lore" },
    text = "IGUI_SFQuest_Questyno_FuriMishura_Text",
    texture = "media/textures/Item_FuriMishura.png",
    title = "IGUI_SFQuest_Questyno_FuriMishura_Title",
    unlocks = "unlockworldevent;Questyno_FuriMishura;SFQuest_Questyno_FuriMishura_Complete"
});



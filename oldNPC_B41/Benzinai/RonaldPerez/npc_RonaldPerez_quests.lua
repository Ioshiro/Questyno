require 'SFQuest_Database'

-- Quest per RonaldPerez
table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RonaldPerez",
    awardstask = "Questyno_RonaldPerez_A",
    dailycode = "Questyno_RonaldPerez",
    lore = { "IGUI_SFQuest_Questyno_RonaldPerez_Lore" },
    objectives = { {
        guid = "Questyno_RonaldPerez_A",
        text = "IGUI_SFQuest_Questyno_RonaldPerez_A",
        hidden = false,
        needsitem = "EmptyCAN6;1",
        onobtained = "updateobjective;Questyno_RonaldPerez;1;Completed;removeitem;EmptyCAN6;1",
    }, {
        guid = "Questyno_RonaldPerez_B",
        text = "IGUI_SFQuest_Questyno_RonaldPerez_B",
        hidden = false,
        needsitem = "MoneyToXP.Rotolo;2",
        onobtained = "updateobjective;Questyno_RonaldPerez;2;Completed;removeitem;MoneyToXP.Rotolo;2",
    } },
    text = "IGUI_SFQuest_Questyno_RonaldPerez_Text",
    texture = "media/textures/Item_RonaldPerez.png",
    title = "IGUI_SFQuest_Questyno_RonaldPerez_Title",
    unlockedsound = "QuestUnlocked",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RonaldPerez_A",
    awardsitem = "GasCAN6;1",
    awardsrep = "LaResistenza;10",
    completesound = "levelup",
    dailycode = "Questyno_RonaldPerez",
    lore = { "IGUI_SFQuest_Questyno_RonaldPerez_Lore" },
    text = "IGUI_SFQuest_Questyno_RonaldPerez_Text",
    texture = "media/textures/Item_RonaldPerez.png",
    title = "IGUI_SFQuest_Questyno_RonaldPerez_Title",
    unlocks = "unlockworldevent;Questyno_RonaldPerez;SFQuest_Questyno_RonaldPerez_Complete"
});



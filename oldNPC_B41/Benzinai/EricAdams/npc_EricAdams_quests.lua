require 'SFQuest_Database'

-- Quest per EricAdams
table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_EricAdams",
    awardstask = "Questyno_EricAdams_A",
    dailycode = "Questyno_EricAdams",
    lore = { "IGUI_SFQuest_Questyno_EricAdams_Lore" },
    objectives = { {
        guid = "Questyno_EricAdams_A",
        text = "IGUI_SFQuest_Questyno_EricAdams_A",
        hidden = false,
        needsitem = "EmptyCAN6;1",
        onobtained = "updateobjective;Questyno_EricAdams;1;Completed;removeitem;EmptyCAN6;1",
    }, {
        guid = "Questyno_EricAdams_B",
        text = "IGUI_SFQuest_Questyno_EricAdams_B",
        hidden = false,
        needsitem = "MoneyToXP.Rotolo;2",
        onobtained = "updateobjective;Questyno_EricAdams;2;Completed;removeitem;MoneyToXP.Rotolo;2",
    } },
    text = "IGUI_SFQuest_Questyno_EricAdams_Text",
    texture = "media/textures/Item_EricAdams.png",
    title = "IGUI_SFQuest_Questyno_EricAdams_Title",
    unlockedsound = "QuestUnlocked",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_EricAdams_A",
    awardsitem = "GasCAN6;1",
    awardsrep = "LaResistenza;10",
    completesound = "levelup",
    dailycode = "Questyno_EricAdams",
    lore = { "IGUI_SFQuest_Questyno_EricAdams_Lore" },
    text = "IGUI_SFQuest_Questyno_EricAdams_Text",
    texture = "media/textures/Item_EricAdams.png",
    title = "IGUI_SFQuest_Questyno_EricAdams_Title",
    unlocks = "unlockworldevent;Questyno_EricAdams;SFQuest_Questyno_EricAdams_Complete"
});



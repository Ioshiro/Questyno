require 'SFQuest_Database'

-- Quest per KarenTaylor
table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_KarenTaylor",
    awardstask = "Questyno_KarenTaylor_A",
    dailycode = "Questyno_KarenTaylor",
    lore = { "IGUI_SFQuest_Questyno_KarenTaylor_Lore" },
    objectives = { {
        guid = "Questyno_KarenTaylor_A",
        text = "IGUI_SFQuest_Questyno_KarenTaylor_A",
        hidden = false,
        needsitem = "EmptyCAN6;1",
        onobtained = "updateobjective;Questyno_KarenTaylor;1;Completed;removeitem;EmptyCAN6;1",
    }, {
        guid = "Questyno_KarenTaylor_B",
        text = "IGUI_SFQuest_Questyno_KarenTaylor_B",
        hidden = false,
        needsitem = "MoneyToXP.Rotolo;2",
        onobtained = "updateobjective;Questyno_KarenTaylor;2;Completed;removeitem;MoneyToXP.Rotolo;2",
    } },
    text = "IGUI_SFQuest_Questyno_KarenTaylor_Text",
    texture = "media/textures/Item_KarenTaylor.png",
    title = "IGUI_SFQuest_Questyno_KarenTaylor_Title",
    unlockedsound = "QuestUnlocked",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_KarenTaylor_A",
    awardsitem = "GasCAN6;1",
    awardsrep = "LaResistenza;10",
    completesound = "levelup",
    dailycode = "Questyno_KarenTaylor",
    lore = { "IGUI_SFQuest_Questyno_KarenTaylor_Lore" },
    text = "IGUI_SFQuest_Questyno_KarenTaylor_Text",
    texture = "media/textures/Item_KarenTaylor.png",
    title = "IGUI_SFQuest_Questyno_KarenTaylor_Title",
    unlocks = "unlockworldevent;Questyno_KarenTaylor;SFQuest_Questyno_KarenTaylor_Complete"
});



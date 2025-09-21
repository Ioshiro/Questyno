require 'SFQuest_Database'

-- Quest per JuanBaker
table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JuanBaker",
    awardstask = "Questyno_JuanBaker_A",
    dailycode = "Questyno_JuanBaker",
    lore = { "IGUI_SFQuest_Questyno_JuanBaker_Lore" },
    objectives = { {
        guid = "Questyno_JuanBaker_A",
        text = "IGUI_SFQuest_Questyno_JuanBaker_A",
        hidden = false,
        needsitem = "EmptyCAN6;1",
        onobtained = "updateobjective;Questyno_JuanBaker;1;Completed;removeitem;EmptyCAN6;1",
    }, {
        guid = "Questyno_JuanBaker_B",
        text = "IGUI_SFQuest_Questyno_JuanBaker_B",
        hidden = false,
        needsitem = "MoneyToXP.Rotolo;2",
        onobtained = "updateobjective;Questyno_JuanBaker;2;Completed;removeitem;MoneyToXP.Rotolo;2",
    } },
    text = "IGUI_SFQuest_Questyno_JuanBaker_Text",
    texture = "media/textures/Item_JuanBaker.png",
    title = "IGUI_SFQuest_Questyno_JuanBaker_Title",
    unlockedsound = "QuestUnlocked",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JuanBaker_A",
    awardsitem = "GasCAN6;1",
    awardsrep = "LaResistenza;10",
    completesound = "levelup",
    dailycode = "Questyno_JuanBaker",
    lore = { "IGUI_SFQuest_Questyno_JuanBaker_Lore" },
    text = "IGUI_SFQuest_Questyno_JuanBaker_Text",
    texture = "media/textures/Item_JuanBaker.png",
    title = "IGUI_SFQuest_Questyno_JuanBaker_Title",
    unlocks = "unlockworldevent;Questyno_JuanBaker;SFQuest_Questyno_JuanBaker_Complete"
});



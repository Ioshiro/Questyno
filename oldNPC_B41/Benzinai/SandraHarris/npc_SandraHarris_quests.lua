require 'SFQuest_Database'

-- Quest per SandraHarris
table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SandraHarris",
    awardstask = "Questyno_SandraHarris_A",
    dailycode = "Questyno_SandraHarris",
    lore = { "IGUI_SFQuest_Questyno_SandraHarris_Lore" },
    objectives = { {
        guid = "Questyno_SandraHarris_A",
        text = "IGUI_SFQuest_Questyno_SandraHarris_A",
        hidden = false,
        needsitem = "EmptyCAN6;1",
        onobtained = "updateobjective;Questyno_SandraHarris;1;Completed;removeitem;EmptyCAN6;1",
    }, {
        guid = "Questyno_SandraHarris_B",
        text = "IGUI_SFQuest_Questyno_SandraHarris_B",
        hidden = false,
        needsitem = "MoneyToXP.Rotolo;2",
        onobtained = "updateobjective;Questyno_SandraHarris;2;Completed;removeitem;MoneyToXP.Rotolo;2",
    } },
    text = "IGUI_SFQuest_Questyno_SandraHarris_Text",
    texture = "media/textures/Item_SandraHarris.png",
    title = "IGUI_SFQuest_Questyno_SandraHarris_Title",
    unlockedsound = "QuestUnlocked",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SandraHarris_A",
    awardsitem = "GasCAN6;1",
    awardsrep = "LaResistenza;10",
    completesound = "levelup",
    dailycode = "Questyno_SandraHarris",
    lore = { "IGUI_SFQuest_Questyno_SandraHarris_Lore" },
    text = "IGUI_SFQuest_Questyno_SandraHarris_Text",
    texture = "media/textures/Item_SandraHarris.png",
    title = "IGUI_SFQuest_Questyno_SandraHarris_Title",
    unlocks = "unlockworldevent;Questyno_SandraHarris;SFQuest_Questyno_SandraHarris_Complete"
});



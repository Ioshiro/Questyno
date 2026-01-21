require 'SFQuest_Database'

-- Quest per MarvinPerry
table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MarvinPerry",
    dailycode = "Questyno_MarvinPerry",
    awardstask = "Questyno_MarvinPerry_A",
    lore = { "IGUI_SFQuest_Questyno_MarvinPerry_Lore" },
    objectives = { {
        guid = "Questyno_MarvinPerry_A",
        text = "IGUI_SFQuest_Questyno_MarvinPerry_A",
        hidden = false,
        needsitem = "EmptyCAN6;1",
        onobtained = "updateobjective;Questyno_MarvinPerry;1;Completed;removeitem;EmptyCAN6;1",
    }, {
        guid = "Questyno_MarvinPerry_B",
        text = "IGUI_SFQuest_Questyno_MarvinPerry_B",
        hidden = false,
        needsitem = "MoneyToXP.Rotolo;2",
        onobtained = "updateobjective;Questyno_MarvinPerry;2;Completed;removeitem;MoneyToXP.Rotolo;2",
    } },
    text = "IGUI_SFQuest_Questyno_MarvinPerry_Text",
    texture = "media/textures/Item_MarvinPerry.png",
    title = "IGUI_SFQuest_Questyno_MarvinPerry_Title",
    unlockedsound = "QuestUnlocked",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MarvinPerry_A",
    awardsitem = "GasCAN6;1",
    awardsrep = "LaResistenza;10",
    completesound = "levelup",
    dailycode = "Questyno_MarvinPerry",
    lore = { "IGUI_SFQuest_Questyno_MarvinPerry_Lore" },
    text = "IGUI_SFQuest_Questyno_MarvinPerry_Text",
    texture = "media/textures/Item_MarvinPerry.png",
    title = "IGUI_SFQuest_Questyno_MarvinPerry_Title",
    unlocks = "unlockworldevent;Questyno_MarvinPerry;SFQuest_Questyno_MarvinPerry_Complete"
});



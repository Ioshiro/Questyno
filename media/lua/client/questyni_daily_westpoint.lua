table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso3",
    awardstask = "Questyno_RafaelPrezioso3_A",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso3_Lore" },
    objectives = { {
        guid = "Questyno_RafaelPrezioso3_A",
        text = "IGUI_SFQuest_Questyno_RafaelPrezioso3_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoRafaelPrezioso3;additem;Base.Trumpet;1",
    } },
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso3_Text",
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso3_Title",
    -- TODO : Non conosco le coordinate della città di Muldraugh
    unlocks = "clickevent;10837x10184x0:EventoRafaelPrezioso3;time:50:anim:loot;updateobjective:Questyno_RafaelPrezioso3:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso3_A",
    awardsrep = "LaResistenza;35",
    completesound = "levelup",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso3_Lore" },
    needsitem = "Base.Trumpet;1",
    onobtained = "unlockworldevent;Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso3_Complete",
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso3_A_Text",
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso3_Title",
});

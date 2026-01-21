require 'SFQuest_Database'

-- Quest per CharlesDavis
table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_CharlesDavis",
    awardstask = "Questyno_CharlesDavis_A",
    dailycode = "Questyno_CharlesDavis",
    lore = { "IGUI_SFQuest_Questyno_CharlesDavis_Lore" },
    objectives = { {
        guid = "Questyno_CharlesDavis_A",
        text = "IGUI_SFQuest_Questyno_CharlesDavis_A",
        hidden = false,
        needsitem = "EmptyPetrolCan;1",
        onobtained = "updateobjective;Questyno_CharlesDavis;1;Completed;removeitem;EmptyPetrolCan;1",
    }, {
        guid = "Questyno_CharlesDavis_B",
        text = "IGUI_SFQuest_Questyno_CharlesDavis_B",
        hidden = false,
        needsitem = "Money;30",
        onobtained = "updateobjective;Questyno_CharlesDavis;2;Completed;removeitem;Money;30",
    } },
    text = "IGUI_SFQuest_Questyno_CharlesDavis_Text",
    texture = "media/textures/Item_CharlesDavis.png",
    title = "IGUI_SFQuest_Questyno_CharlesDavis_Title",
    unlockedsound = "QuestUnlocked",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_CharlesDavis_A",
    awardsitem = "PetrolCan;1",
    awardsrep = "LaResistenza;10",
    completesound = "levelup",
    dailycode = "Questyno_CharlesDavis",
    lore = { "IGUI_SFQuest_Questyno_CharlesDavis_Lore" },
    text = "IGUI_SFQuest_Questyno_CharlesDavis_Text",
    texture = "media/textures/Item_CharlesDavis.png",
    title = "IGUI_SFQuest_Questyno_CharlesDavis_Title",
    unlocks = "unlockworldevent;Questyno_CharlesDavis;SFQuest_Questyno_CharlesDavis_Complete"
});



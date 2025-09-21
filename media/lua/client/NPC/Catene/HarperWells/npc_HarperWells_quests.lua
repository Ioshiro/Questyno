require 'SFQuest_Database'

-- Quest per HarperWells
table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_HarperWells_Intro",

    awardsrep = "HarperWells;100", -- REP REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_HarperWells_Intro_Lore" },
    text = "IGUI_SFQuest_Questyno_HarperWells_Intro_Text",
    texture = "media/textures/Item_HarperWells.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_HarperWells;SFQuest_Questyno_HarperWells_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_HarperWells_Intro_Title",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_HarperWells1",
    awardstask = "Questyno_HarperWells1_A",
    dailycode = "Questyno_HarperWells",
    lore = { "IGUI_SFQuest_Questyno_HarperWells1_Lore" },
    objectives = {{
        guid = "Questyno_HarperWells1_A",
        text = "IGUI_SFQuest_Questyno_HarperWells1_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoHarperWells1;additem;LR.Lore1;1"
    },{
        guid = "Questyno_HarperWells1_B",
        text = "IGUI_SFQuest_Questyno_HarperWells1_B",
        hidden = false,
    }},
    text = "IGUI_SFQuest_Questyno_HarperWells1_Text",
    texture = "media/textures/Item_HarperWells.png",
    title = "IGUI_SFQuest_Questyno_HarperWells1_Title",
    unlocks = "actionevent;killzombies:200;updateobjective:Questyno_HarperWells1:2:Completed;clickevent;3314x11268x0:EventoHarperWells1;time:50:anim:loot;updateobjective:Questyno_HarperWells1:1:Completed", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_HarperWells1_A",
    awardsrep = "LaResistenza;2500", -- REP REWARD
    awardsitem = "Money;120;LabItems.CmpSyringeWithCure;1",
    completesound = "levelup",
    dailycode = "Questyno_HarperWells",
    lore = { "IGUI_SFQuest_Questyno_HarperWells1_A_Lore" },
    needsitem = "LR.Lore1;1",
    onobtained = "unlockworldevent;Questyno_HarperWells;SFQuest_Questyno_HarperWells1_Complete",
    text = "IGUI_SFQuest_Questyno_HarperWells1_A_Text",
    texture = "media/textures/Item_HarperWells.png",
    title = "IGUI_SFQuest_Questyno_HarperWells1_A_Title",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_HarperWells2",
    awardstask = "Questyno_HarperWells2_A",
    dailycode = "Questyno_HarperWells",
    lore = { "IGUI_SFQuest_Questyno_HarperWells2_Lore" },
    objectives = {{
        guid = "Questyno_HarperWells2_A",
        text = "IGUI_SFQuest_Questyno_HarperWells2_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoHarperWells2;additem;LR.Lore2;1"
    },{
        guid = "Questyno_HarperWells2_B",
        text = "IGUI_SFQuest_Questyno_HarperWells2_B",
        hidden = false,
    }},
    text = "IGUI_SFQuest_Questyno_HarperWells2_Text",
    texture = "media/textures/Item_HarperWells.png",
    title = "IGUI_SFQuest_Questyno_HarperWells2_Title",
    unlocks = "actionevent;killzombies:200;updateobjective:Questyno_HarperWells2:2:Completed;clickevent;3386x12287x0:EventoHarperWells2;time:50:anim:loot;updateobjective:Questyno_HarperWells2:1:Completed", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_HarperWells2_A",
    awardsrep = "LaResistenza;2500", -- REP REWARD
    awardsitem = "Money;120;LabItems.CmpSyringeWithCure;1",
    completesound = "levelup",
    dailycode = "Questyno_HarperWells",
    lore = { "IGUI_SFQuest_Questyno_HarperWells2_A_Lore" },
    needsitem = "LR.Lore2;1",
    onobtained = "unlockworldevent;Questyno_HarperWells;SFQuest_Questyno_HarperWells2_Complete",
    text = "IGUI_SFQuest_Questyno_HarperWells2_A_Text",
    texture = "media/textures/Item_HarperWells.png",
    title = "IGUI_SFQuest_Questyno_HarperWells2_A_Title",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_HarperWells3",
    awardstask = "Questyno_HarperWells3_A",
    dailycode = "Questyno_HarperWells",
    lore = { "IGUI_SFQuest_Questyno_HarperWells3_Lore" },
    objectives = {{
        guid = "Questyno_HarperWells3_A",
        text = "IGUI_SFQuest_Questyno_HarperWells3_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoHarperWells3;additem;LR.Lore3;1"
    },{
        guid = "Questyno_HarperWells3_B",
        text = "IGUI_SFQuest_Questyno_HarperWells3_B",
        hidden = false,
    }},
    text = "IGUI_SFQuest_Questyno_HarperWells3_Text",
    texture = "media/textures/Item_HarperWells.png",
    title = "IGUI_SFQuest_Questyno_HarperWells3_Title",
    unlocks = "actionevent;killzombies:200;updateobjective:Questyno_HarperWells3:2:Completed;clickevent;3607x11924x2:EventoHarperWells3;time:50:anim:loot;updateobjective:Questyno_HarperWells3:1:Completed", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_HarperWells3_A",
    awardsrep = "LaResistenza;3000", -- REP REWARD
    awardsitem = "Money;120;LabItems.CmpSyringeWithCure;1",
    completesound = "levelup",
    dailycode = "Questyno_HarperWells",
    lore = { "IGUI_SFQuest_Questyno_HarperWells3_A_Lore" },
    needsitem = "LR.Lore3;1",
    onobtained = "unlockworldevent;Questyno_HarperWells;SFQuest_Questyno_HarperWells3_Complete",
    text = "IGUI_SFQuest_Questyno_HarperWells3_A_Text",
    texture = "media/textures/Item_HarperWells.png",
    title = "IGUI_SFQuest_Questyno_HarperWells3_A_Title",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_HarperWells4",
    awardstask = "Questyno_HarperWells4_A",
    dailycode = "Questyno_HarperWells",
    lore = { "IGUI_SFQuest_Questyno_HarperWells4_Lore" },
    objectives = {{
        guid = "Questyno_HarperWells4_A",
        text = "IGUI_SFQuest_Questyno_HarperWells4_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoHarperWells4;additem;LR.Lore4;1"
    },{
        guid = "Questyno_HarperWells4_B",
        text = "IGUI_SFQuest_Questyno_HarperWells4_B",
        hidden = false,
    }},
    text = "IGUI_SFQuest_Questyno_HarperWells4_Text",
    texture = "media/textures/Item_HarperWells.png",
    title = "IGUI_SFQuest_Questyno_HarperWells4_Title",
    unlocks = "actionevent;killzombies:200;updateobjective:Questyno_HarperWells4:2:Completed;clickevent;3603x11382x3:EventoHarperWells4;time:50:anim:loot;updateobjective:Questyno_HarperWells4:1:Completed", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_HarperWells4_A",
    awardsrep = "LaResistenza;3500", -- REP REWARD
    awardsitem = "Money;120;LabItems.CmpSyringeWithCure;1",
    completesound = "levelup",
    dailycode = "Questyno_HarperWells",
    lore = { "IGUI_SFQuest_Questyno_HarperWells4_A_Lore" },
    needsitem = "LR.Lore4;1",
    onobtained = "unlockworldevent;Questyno_HarperWells;SFQuest_Questyno_HarperWells4_Complete",
    text = "IGUI_SFQuest_Questyno_HarperWells4_A_Text",
    texture = "media/textures/Item_HarperWells.png",
    title = "IGUI_SFQuest_Questyno_HarperWells4_A_Title",
});



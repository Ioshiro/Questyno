require 'SFQuest_Database'

-- Quest per JacobTurner
table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JacobTurner_Intro",

    awardsrep = "JacobTurner;100", -- REP REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_JacobTurner_Intro_Lore" },
    text = "IGUI_SFQuest_Questyno_JacobTurner_Intro_Text",
    texture = "media/textures/Item_JacobTurner.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_JacobTurner;SFQuest_Questyno_JacobTurner_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_JacobTurner_Intro_Title",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JacobTurner1",

    awardstask = "Questyno_JacobTurner1_A", -- TASK REWARD
    dailycode = "Questyno_JacobTurner",
    lore = { "IGUI_SFQuest_Questyno_JacobTurner1_Lore" },
    objectives = { {
        guid = "Questyno_JacobTurner1_A",
        text = "IGUI_SFQuest_Questyno_JacobTurner1_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoJacobTurner1;additem;LabItems.InfectedBrain;1"
    } },
    text = "IGUI_SFQuest_Questyno_JacobTurner1_Text",
    texture = "media/textures/Item_JacobTurner.png",
    title = "IGUI_SFQuest_Questyno_JacobTurner1_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;3772x12352x0:EventoJacobTurner1;anim:loot:time:50;updateobjective:Questyno_JacobTurner1:1:Completed"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JacobTurner1_A",

    awardsrep = "LaResistenza;2500", -- REP REWARD
    awardsitem = "Money;150", -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_JacobTurner",
    lore = { "IGUI_SFQuest_Questyno_JacobTurner1_Lore" },
    needsitem = "LabItems.InfectedBrain;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_JacobTurner;SFQuest_Questyno_JacobTurner1_Complete",
    text = "IGUI_SFQuest_Questyno_JacobTurner1_A_Text",
    texture = "media/textures/Item_JacobTurner.png",
    title = "IGUI_SFQuest_Questyno_JacobTurner1_Title",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JacobTurner2",

    awardstask = "Questyno_JacobTurner2_A", -- TASK REWARD
    dailycode = "Questyno_JacobTurner",
    lore = { "IGUI_SFQuest_Questyno_JacobTurner2_Lore" },
    objectives = { {
        guid = "Questyno_JacobTurner2_A",
        text = "IGUI_SFQuest_Questyno_JacobTurner2_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoJacobTurner2;additem;LabItems.InfectedBrain;1"
    } },
    text = "IGUI_SFQuest_Questyno_JacobTurner2_Text",
    texture = "media/textures/Item_JacobTurner.png",
    title = "IGUI_SFQuest_Questyno_JacobTurner2_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;14048x10612x0:EventoJacobTurner2;anim:loot:time:50;updateobjective:Questyno_JacobTurner2:1:Completed"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JacobTurner2_A",

    awardsrep = "LaResistenza;2000", -- REP REWARD
    awardsitem = "Money;100", -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_JacobTurner",
    lore = { "IGUI_SFQuest_Questyno_JacobTurner2_Lore" },
    needsitem = "LabItems.InfectedBrain;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_JacobTurner;SFQuest_Questyno_JacobTurner2_Complete",
    text = "IGUI_SFQuest_Questyno_JacobTurner2_A_Text",
    texture = "media/textures/Item_JacobTurner.png",
    title = "IGUI_SFQuest_Questyno_JacobTurner2_Title",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JacobTurner3",

    awardstask = "Questyno_JacobTurner3_A", -- TASK REWARD
    dailycode = "Questyno_JacobTurner",
    lore = { "IGUI_SFQuest_Questyno_JacobTurner3_Lore" },
    objectives = { {
        guid = "Questyno_JacobTurner3_A",
        text = "IGUI_SFQuest_Questyno_JacobTurner3_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoJacobTurner3;additem;LabItems.InfectedBrain;1"
    } },
    text = "IGUI_SFQuest_Questyno_JacobTurner3_Text",
    texture = "media/textures/Item_JacobTurner.png",
    title = "IGUI_SFQuest_Questyno_JacobTurner3_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;13297x1480x0:EventoJacobTurner3;anim:loot:time:50;updateobjective:Questyno_JacobTurner3:1:Completed"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JacobTurner3_A",

    awardsrep = "LaResistenza;3500", -- REP REWARD
    awardsitem = "Money;180", -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_JacobTurner",
    lore = { "IGUI_SFQuest_Questyno_JacobTurner3_Lore" },
    needsitem = "LabItems.InfectedBrain;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_JacobTurner;SFQuest_Questyno_JacobTurner3_Complete",
    text = "IGUI_SFQuest_Questyno_JacobTurner3_A_Text",
    texture = "media/textures/Item_JacobTurner.png",
    title = "IGUI_SFQuest_Questyno_JacobTurner3_Title",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JacobTurner4",

    awardstask = "Questyno_JacobTurner4_A", -- TASK REWARD
    dailycode = "Questyno_JacobTurner",
    lore = { "IGUI_SFQuest_Questyno_JacobTurner4_Lore" },
    objectives = { {
        guid = "Questyno_JacobTurner4_A",
        text = "IGUI_SFQuest_Questyno_JacobTurner4_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoJacobTurner4;additem;LabItems.InfectedBrain;1"
    } },
    text = "IGUI_SFQuest_Questyno_JacobTurner4_Text",
    texture = "media/textures/Item_JacobTurner.png",
    title = "IGUI_SFQuest_Questyno_JacobTurner4_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;3570x11270x0:EventoJacobTurner4;anim:loot:time:50;updateobjective:Questyno_JacobTurner4:1:Completed"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JacobTurner4_A",

    awardsrep = "LaResistenza;2500", -- REP REWARD
    awardsitem = "Money;150", -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_JacobTurner",
    lore = { "IGUI_SFQuest_Questyno_JacobTurner4_Lore" },
    needsitem = "LabItems.InfectedBrain;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_JacobTurner;SFQuest_Questyno_JacobTurner4_Complete",
    text = "IGUI_SFQuest_Questyno_JacobTurner4_A_Text",
    texture = "media/textures/Item_JacobTurner.png",
    title = "IGUI_SFQuest_Questyno_JacobTurner4_Title",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JacobTurner5",

    awardstask = "Questyno_JacobTurner5_A", -- TASK REWARD
    dailycode = "Questyno_JacobTurner",
    lore = { "IGUI_SFQuest_Questyno_JacobTurner5_Lore" },
    objectives = { {
        guid = "Questyno_JacobTurner5_A",
        text = "IGUI_SFQuest_Questyno_JacobTurner5_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoJacobTurner5;additem;LabItems.InfectedBrain;1"
    } },
    text = "IGUI_SFQuest_Questyno_JacobTurner5_Text",
    texture = "media/textures/Item_JacobTurner.png",
    title = "IGUI_SFQuest_Questyno_JacobTurner5_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;12984x1143x0:EventoJacobTurner5;anim:loot:time:50;updateobjective:Questyno_JacobTurner5:1:Completed"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JacobTurner5_A",

    awardsrep = "LaResistenza;3000", -- REP REWARD
    awardsitem = "Money;200", -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_JacobTurner",
    lore = { "IGUI_SFQuest_Questyno_JacobTurner5_Lore" },
    needsitem = "LabItems.InfectedBrain;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_JacobTurner;SFQuest_Questyno_JacobTurner5_Complete",
    text = "IGUI_SFQuest_Questyno_JacobTurner5_A_Text",
    texture = "media/textures/Item_JacobTurner.png",
    title = "IGUI_SFQuest_Questyno_JacobTurner5_Title",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JacobTurner6",

    awardstask = "Questyno_JacobTurner6_A", -- TASK REWARD
    dailycode = "Questyno_JacobTurner",
    lore = { "IGUI_SFQuest_Questyno_JacobTurner6_Lore" },
    objectives = { {
        guid = "Questyno_JacobTurner6_A",
        text = "IGUI_SFQuest_Questyno_JacobTurner6_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoJacobTurner6;additem;LabItems.InfectedBrain;1"
    } },
    text = "IGUI_SFQuest_Questyno_JacobTurner6_Text",
    texture = "media/textures/Item_JacobTurner.png",
    title = "IGUI_SFQuest_Questyno_JacobTurner6_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;12426x1990x0:EventoJacobTurner6;anim:loot:time:50;updateobjective:Questyno_JacobTurner6:1:Completed"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JacobTurner6_A",

    awardsrep = "LaResistenza;2800", -- REP REWARD
    awardsitem = "Money;200", -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_JacobTurner",
    lore = { "IGUI_SFQuest_Questyno_JacobTurner6_Lore" },
    needsitem = "LabItems.InfectedBrain;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_JacobTurner;SFQuest_Questyno_JacobTurner6_Complete",
    text = "IGUI_SFQuest_Questyno_JacobTurner6_A_Text",
    texture = "media/textures/Item_JacobTurner.png",
    title = "IGUI_SFQuest_Questyno_JacobTurner6_Title",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JacobTurner7",

    awardstask = "Questyno_JacobTurner7_A", -- TASK REWARD
    dailycode = "Questyno_JacobTurner",
    lore = { "IGUI_SFQuest_Questyno_JacobTurner7_Lore" },
    objectives = { {
        guid = "Questyno_JacobTurner7_A",
        text = "IGUI_SFQuest_Questyno_JacobTurner7_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoJacobTurner7;additem;LabItems.InfectedBrain;1"
    } },
    text = "IGUI_SFQuest_Questyno_JacobTurner7_Text",
    texture = "media/textures/Item_JacobTurner.png",
    title = "IGUI_SFQuest_Questyno_JacobTurner7_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;3164x11163x0:EventoJacobTurner7;anim:loot:time:50;updateobjective:Questyno_JacobTurner7:1:Completed"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JacobTurner7_A",

    awardsrep = "LaResistenza;2000", -- REP REWARD
    awardsitem = "Money;150", -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_JacobTurner",
    lore = { "IGUI_SFQuest_Questyno_JacobTurner7_Lore" },
    needsitem = "LabItems.InfectedBrain;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_JacobTurner;SFQuest_Questyno_JacobTurner7_Complete",
    text = "IGUI_SFQuest_Questyno_JacobTurner7_A_Text",
    texture = "media/textures/Item_JacobTurner.png",
    title = "IGUI_SFQuest_Questyno_JacobTurner7_Title",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JacobTurner8",

    awardstask = "Questyno_JacobTurner8_A", -- TASK REWARD
    dailycode = "Questyno_JacobTurner",
    lore = { "IGUI_SFQuest_Questyno_JacobTurner8_Lore" },
    objectives = { {
        guid = "Questyno_JacobTurner8_A",
        text = "IGUI_SFQuest_Questyno_JacobTurner8_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoJacobTurner8;additem;LabItems.InfectedBrain;1"
    } },
    text = "IGUI_SFQuest_Questyno_JacobTurner8_Text",
    texture = "media/textures/Item_JacobTurner.png",
    title = "IGUI_SFQuest_Questyno_JacobTurner8_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;3381x11426x0:EventoJacobTurner8;anim:loot:time:50;updateobjective:Questyno_JacobTurner8:1:Completed"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JacobTurner8_A",

    awardsrep = "LaResistenza;2500", -- REP REWARD
    awardsitem = "Money;150", -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_JacobTurner",
    lore = { "IGUI_SFQuest_Questyno_JacobTurner8_Lore" },
    needsitem = "LabItems.InfectedBrain;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_JacobTurner;SFQuest_Questyno_JacobTurner8_Complete",
    text = "IGUI_SFQuest_Questyno_JacobTurner8_A_Text",
    texture = "media/textures/Item_JacobTurner.png",
    title = "IGUI_SFQuest_Questyno_JacobTurner8_Title",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JacobTurner9",

    awardstask = "Questyno_JacobTurner9_A", -- TASK REWARD
    dailycode = "Questyno_JacobTurner",
    lore = { "IGUI_SFQuest_Questyno_JacobTurner9_Lore" },
    objectives = { {
        guid = "Questyno_JacobTurner9_A",
        text = "IGUI_SFQuest_Questyno_JacobTurner9_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoJacobTurner9;additem;LabItems.InfectedBrain;1"
    } },
    text = "IGUI_SFQuest_Questyno_JacobTurner9_Text",
    texture = "media/textures/Item_JacobTurner.png",
    title = "IGUI_SFQuest_Questyno_JacobTurner9_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;3730x11221x0:EventoJacobTurner9;anim:loot:time:50;updateobjective:Questyno_JacobTurner9:1:Completed"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JacobTurner9_A",

    awardsrep = "LaResistenza;2500", -- REP REWARD
    awardsitem = "Money;150", -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_JacobTurner",
    lore = { "IGUI_SFQuest_Questyno_JacobTurner9_Lore" },
    needsitem = "LabItems.InfectedBrain;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_JacobTurner;SFQuest_Questyno_JacobTurner9_Complete",
    text = "IGUI_SFQuest_Questyno_JacobTurner9_A_Text",
    texture = "media/textures/Item_JacobTurner.png",
    title = "IGUI_SFQuest_Questyno_JacobTurner9_Title",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JacobTurner10",

    awardstask = "Questyno_JacobTurner10_A", -- TASK REWARD
    dailycode = "Questyno_JacobTurner",
    lore = { "IGUI_SFQuest_Questyno_JacobTurner10_Lore" },
    objectives = { {
        guid = "Questyno_JacobTurner10_A",
        text = "IGUI_SFQuest_Questyno_JacobTurner10_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoJacobTurner10;additem;LabItems.InfectedBrain;1"
    } },
    text = "IGUI_SFQuest_Questyno_JacobTurner10_Text",
    texture = "media/textures/Item_JacobTurner.png",
    title = "IGUI_SFQuest_Questyno_JacobTurner10_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;13789x1969x0:EventoJacobTurner10;anim:loot:time:50;updateobjective:Questyno_JacobTurner10:1:Completed"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JacobTurner10_A",

    awardsrep = "LaResistenza;3000", -- REP REWARD
    awardsitem = "Money;200", -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_JacobTurner",
    lore = { "IGUI_SFQuest_Questyno_JacobTurner10_Lore" },
    needsitem = "LabItems.InfectedBrain;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_JacobTurner;SFQuest_Questyno_JacobTurner10_Complete",
    text = "IGUI_SFQuest_Questyno_JacobTurner10_A_Text",
    texture = "media/textures/Item_JacobTurner.png",
    title = "IGUI_SFQuest_Questyno_JacobTurner10_Title",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JacobTurner11",

    awardstask = "Questyno_JacobTurner11_A", -- TASK REWARD
    dailycode = "Questyno_JacobTurner",
    lore = { "IGUI_SFQuest_Questyno_JacobTurner11_Lore" },
    objectives = { {
        guid = "Questyno_JacobTurner11_A",
        text = "IGUI_SFQuest_Questyno_JacobTurner11_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoJacobTurner11;additem;LabItems.InfectedBrain;1"
    } },
    text = "IGUI_SFQuest_Questyno_JacobTurner11_Text",
    texture = "media/textures/Item_JacobTurner.png",
    title = "IGUI_SFQuest_Questyno_JacobTurner11_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;13209x3020x0:EventoJacobTurner11;anim:loot:time:50;updateobjective:Questyno_JacobTurner11:1:Completed"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JacobTurner11_A",

    awardsrep = "LaResistenza;3500", -- REP REWARD
    awardsitem = "Money;160", -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_JacobTurner",
    lore = { "IGUI_SFQuest_Questyno_JacobTurner11_Lore" },
    needsitem = "LabItems.InfectedBrain;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_JacobTurner;SFQuest_Questyno_JacobTurner11_Complete",
    text = "IGUI_SFQuest_Questyno_JacobTurner11_A_Text",
    texture = "media/textures/Item_JacobTurner.png",
    title = "IGUI_SFQuest_Questyno_JacobTurner11_Title",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JacobTurner12",

    awardstask = "Questyno_JacobTurner12_A", -- TASK REWARD
    dailycode = "Questyno_JacobTurner",
    lore = { "IGUI_SFQuest_Questyno_JacobTurner12_Lore" },
    objectives = { {
        guid = "Questyno_JacobTurner12_A",
        text = "IGUI_SFQuest_Questyno_JacobTurner12_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoJacobTurner12;additem;LabItems.InfectedBrain;1"
    } },
    text = "IGUI_SFQuest_Questyno_JacobTurner12_Text",
    texture = "media/textures/Item_JacobTurner.png",
    title = "IGUI_SFQuest_Questyno_JacobTurner12_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;13527x2112x0:EventoJacobTurner12;anim:loot:time:50;updateobjective:Questyno_JacobTurner12:1:Completed"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JacobTurner12_A",

    awardsrep = "LaResistenza;3600", -- REP REWARD
    awardsitem = "Money;160", -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_JacobTurner",
    lore = { "IGUI_SFQuest_Questyno_JacobTurner12_Lore" },
    needsitem = "LabItems.InfectedBrain;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_JacobTurner;SFQuest_Questyno_JacobTurner12_Complete",
    text = "IGUI_SFQuest_Questyno_JacobTurner12_A_Text",
    texture = "media/textures/Item_JacobTurner.png",
    title = "IGUI_SFQuest_Questyno_JacobTurner12_Title",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JacobTurner13",

    awardstask = "Questyno_JacobTurner13_A", -- TASK REWARD
    dailycode = "Questyno_JacobTurner",
    lore = { "IGUI_SFQuest_Questyno_JacobTurner13_Lore" },
    objectives = { {
        guid = "Questyno_JacobTurner13_A",
        text = "IGUI_SFQuest_Questyno_JacobTurner13_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoJacobTurner13;additem;LabItems.InfectedBrain;1"
    } },
    text = "IGUI_SFQuest_Questyno_JacobTurner13_Text",
    texture = "media/textures/Item_JacobTurner.png",
    title = "IGUI_SFQuest_Questyno_JacobTurner13_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;13722x10352x0:EventoJacobTurner13;anim:loot:time:50;updateobjective:Questyno_JacobTurner13:1:Completed"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JacobTurner13_A",

    awardsrep = "LaResistenza;1650", -- REP REWARD
    awardsitem = "Money;120", -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_JacobTurner",
    lore = { "IGUI_SFQuest_Questyno_JacobTurner13_Lore" },
    needsitem = "LabItems.InfectedBrain;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_JacobTurner;SFQuest_Questyno_JacobTurner13_Complete",
    text = "IGUI_SFQuest_Questyno_JacobTurner13_A_Text",
    texture = "media/textures/Item_JacobTurner.png",
    title = "IGUI_SFQuest_Questyno_JacobTurner13_Title",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JacobTurner14",

    awardstask = "Questyno_JacobTurner14_A", -- TASK REWARD
    dailycode = "Questyno_JacobTurner",
    lore = { "IGUI_SFQuest_Questyno_JacobTurner14_Lore" },
    objectives = { {
        guid = "Questyno_JacobTurner14_A",
        text = "IGUI_SFQuest_Questyno_JacobTurner14_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoJacobTurner14;additem;LabItems.InfectedBrain;1"
    } },
    text = "IGUI_SFQuest_Questyno_JacobTurner14_Text",
    texture = "media/textures/Item_JacobTurner.png",
    title = "IGUI_SFQuest_Questyno_JacobTurner14_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;13541x10910x0:EventoJacobTurner14;anim:loot:time:50;updateobjective:Questyno_JacobTurner14:1:Completed"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JacobTurner14_A",

    awardsrep = "LaResistenza;2250", -- REP REWARD
    awardsitem = "Money;150", -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_JacobTurner",
    lore = { "IGUI_SFQuest_Questyno_JacobTurner14_Lore" },
    needsitem = "LabItems.InfectedBrain;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_JacobTurner;SFQuest_Questyno_JacobTurner14_Complete",
    text = "IGUI_SFQuest_Questyno_JacobTurner14_A_Text",
    texture = "media/textures/Item_JacobTurner.png",
    title = "IGUI_SFQuest_Questyno_JacobTurner14_Title",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JacobTurner15",

    awardstask = "Questyno_JacobTurner15_A", -- TASK REWARD
    dailycode = "Questyno_JacobTurner",
    lore = { "IGUI_SFQuest_Questyno_JacobTurner15_Lore" },
    objectives = { {
        guid = "Questyno_JacobTurner15_A",
        text = "IGUI_SFQuest_Questyno_JacobTurner15_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoJacobTurner15;additem;LabItems.InfectedBrain;1"
    } },
    text = "IGUI_SFQuest_Questyno_JacobTurner15_Text",
    texture = "media/textures/Item_JacobTurner.png",
    title = "IGUI_SFQuest_Questyno_JacobTurner15_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;13830x10792x0:EventoJacobTurner15;anim:loot:time:50;updateobjective:Questyno_JacobTurner15:1:Completed"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JacobTurner15_A",

    awardsrep = "LaResistenza;2250", -- REP REWARD
    awardsitem = "Money;150", -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_JacobTurner",
    lore = { "IGUI_SFQuest_Questyno_JacobTurner15_Lore" },
    needsitem = "LabItems.InfectedBrain;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_JacobTurner;SFQuest_Questyno_JacobTurner15_Complete",
    text = "IGUI_SFQuest_Questyno_JacobTurner15_A_Text",
    texture = "media/textures/Item_JacobTurner.png",
    title = "IGUI_SFQuest_Questyno_JacobTurner15_Title",
});



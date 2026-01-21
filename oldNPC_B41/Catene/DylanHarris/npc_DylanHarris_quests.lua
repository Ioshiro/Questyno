require 'SFQuest_Database'

-- Quest per DylanHarris
table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DylanHarris_Intro",

    awardsrep = "DylanHarris;100",
    completesound = "levelup",
    dailycode = "Questyno_DylanHarris",
    lore = { "IGUI_SFQuest_Questyno_DylanHarris_Intro_Lore" },
    text = "IGUI_SFQuest_Questyno_DylanHarris_Intro_Text",
    texture = "media/textures/Item_DylanHarris.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_DylanHarris;SFQuest_Questyno_DylanHarris_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_DylanHarris_Intro_Title",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DylanHarris1",

    awardstask = "Questyno_DylanHarris1_A",
    dailycode = "Questyno_DylanHarris",
    lore = { "IGUI_SFQuest_Questyno_DylanHarris1_Lore" },
    needsitem = "Money;100",
    onobtained = "unlockworldevent;Questyno_DylanHarris;SFQuest_Questyno_DylanHarris1_Complete",
    text = "IGUI_SFQuest_Questyno_DylanHarris1_Text",
    texture = "media/textures/Item_DylanHarris.png",
    title = "IGUI_SFQuest_Questyno_DylanHarris1_Title",
    unlockedsound = "QuestUnlocked",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DylanHarris1_A",

    awardsrep = "LaResistenza;350",
    awardsitem = "MoneyToXP.Droga4;1",
    completesound = "levelup",
    dailycode = "Questyno_DylanHarris",
    lore = { "IGUI_SFQuest_Questyno_DylanHarris1_A_Lore" },
    objectives = {{
        guid = "Questyno_DylanHarris1_A",
        text = "IGUI_SFQuest_Questyno_DylanHarris1_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoDylanHarris1",
    }},
    text = "IGUI_SFQuest_Questyno_DylanHarris1_A_Text",
    texture = "media/textures/Item_DylanHarris.png",
    title = "IGUI_SFQuest_Questyno_DylanHarris1_Title",
    unlocks = "clickevent;13591x10970x0:EventoDylanHarris1;time:50:anim:loot;updateobjective:Questyno_DylanHarris1_A:1:Completed",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DylanHarris2",

    awardstask = "Questyno_DylanHarris2_A",
    dailycode = "Questyno_DylanHarris",
    lore = { "IGUI_SFQuest_Questyno_DylanHarris2_Lore" },
    needsitem = "Money;100",
    onobtained = "unlockworldevent;Questyno_DylanHarris;SFQuest_Questyno_DylanHarris2_Complete",
    text = "IGUI_SFQuest_Questyno_DylanHarris2_Text",
    texture = "media/textures/Item_DylanHarris.png",
    title = "IGUI_SFQuest_Questyno_DylanHarris2_Title",
    unlockedsound = "QuestUnlocked",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DylanHarris2_A",

    awardsrep = "LaResistenza;550",
    awardsitem = "MoneyToXP.Droga4;1",
    completesound = "levelup",
    dailycode = "Questyno_DylanHarris",
    lore = { "IGUI_SFQuest_Questyno_DylanHarris2_A_Lore" },
    objectives = {{
        guid = "Questyno_DylanHarris2_A",
        text = "IGUI_SFQuest_Questyno_DylanHarris2_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoDylanHarris2",
    }},
    text = "IGUI_SFQuest_Questyno_DylanHarris2_A_Text",
    texture = "media/textures/Item_DylanHarris.png",
    title = "IGUI_SFQuest_Questyno_DylanHarris2_Title",
    unlocks = "clickevent;12740x11934x0:EventoDylanHarris2;time:50:anim:loot;updateobjective:Questyno_DylanHarris2_A:1:Completed",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DylanHarris3",

    awardstask = "Questyno_DylanHarris3_A",
    dailycode = "Questyno_DylanHarris",
    lore = { "IGUI_SFQuest_Questyno_DylanHarris3_Lore" },
    needsitem = "Money;100",
    onobtained = "unlockworldevent;Questyno_DylanHarris;SFQuest_Questyno_DylanHarris3_Complete",
    text = "IGUI_SFQuest_Questyno_DylanHarris3_Text",
    texture = "media/textures/Item_DylanHarris.png",
    title = "IGUI_SFQuest_Questyno_DylanHarris3_Title",
    unlockedsound = "QuestUnlocked",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DylanHarris3_A",

    awardsrep = "LaResistenza;550",
    awardsitem = "MoneyToXP.Droga4;1",
    completesound = "levelup",
    dailycode = "Questyno_DylanHarris",
    lore = { "IGUI_SFQuest_Questyno_DylanHarris3_A_Lore" },
    objectives = {{
        guid = "Questyno_DylanHarris3_A",
        text = "IGUI_SFQuest_Questyno_DylanHarris3_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoDylanHarris3",
    }},
    text = "IGUI_SFQuest_Questyno_DylanHarris3_A_Text",
    texture = "media/textures/Item_DylanHarris.png",
    title = "IGUI_SFQuest_Questyno_DylanHarris3_Title",
    unlocks = "clickevent;3431x11262x1:EventoDylanHarris3;time:50:anim:loot;updateobjective:Questyno_DylanHarris3_A:1:Completed",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DylanHarris4",

    awardstask = "Questyno_DylanHarris4_A",
    dailycode = "Questyno_DylanHarris",
    lore = { "IGUI_SFQuest_Questyno_DylanHarris4_Lore" },
    needsitem = "Money;100",
    onobtained = "unlockworldevent;Questyno_DylanHarris;SFQuest_Questyno_DylanHarris4_Complete",
    text = "IGUI_SFQuest_Questyno_DylanHarris4_Text",
    texture = "media/textures/Item_DylanHarris.png",
    title = "IGUI_SFQuest_Questyno_DylanHarris4_Title",
    unlockedsound = "QuestUnlocked",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DylanHarris4_A",

    awardsrep = "LaResistenza;550",
    awardsitem = "MoneyToXP.Droga4;1",
    completesound = "levelup",
    dailycode = "Questyno_DylanHarris",
    lore = { "IGUI_SFQuest_Questyno_DylanHarris4_A_Lore" },
    objectives = {{
        guid = "Questyno_DylanHarris4_A",
        text = "IGUI_SFQuest_Questyno_DylanHarris4_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoDylanHarris4",
    }},
    text = "IGUI_SFQuest_Questyno_DylanHarris4_A_Text",
    texture = "media/textures/Item_DylanHarris.png",
    title = "IGUI_SFQuest_Questyno_DylanHarris4_Title",
    unlocks = "clickevent;7209x11221x1:EventoDylanHarris4;time:50:anim:loot;updateobjective:Questyno_DylanHarris4_A:1:Completed",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DylanHarris5",

    awardstask = "Questyno_DylanHarris5_A",
    dailycode = "Questyno_DylanHarris",
    lore = { "IGUI_SFQuest_Questyno_DylanHarris5_Lore" },
    needsitem = "Money;100",
    onobtained = "unlockworldevent;Questyno_DylanHarris;SFQuest_Questyno_DylanHarris5_Complete",
    text = "IGUI_SFQuest_Questyno_DylanHarris5_Text",
    texture = "media/textures/Item_DylanHarris.png",
    title = "IGUI_SFQuest_Questyno_DylanHarris5_Title",
    unlockedsound = "QuestUnlocked",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DylanHarris5_A",

    awardsrep = "LaResistenza;750",
    awardsitem = "MoneyToXP.Droga4;1",
    completesound = "levelup",
    dailycode = "Questyno_DylanHarris",
    lore = { "IGUI_SFQuest_Questyno_DylanHarris5_A_Lore" },
    objectives = {{
        guid = "Questyno_DylanHarris5_A",
        text = "IGUI_SFQuest_Questyno_DylanHarris5_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoDylanHarris5",
    }},
    text = "IGUI_SFQuest_Questyno_DylanHarris5_A_Text",
    texture = "media/textures/Item_DylanHarris.png",
    title = "IGUI_SFQuest_Questyno_DylanHarris5_Title",
    unlocks = "clickevent;4109x11776x1:EventoDylanHarris5;time:50:anim:loot;updateobjective:Questyno_DylanHarris5_A:1:Completed",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DylanHarris6",

    awardstask = "Questyno_DylanHarris6_A",
    dailycode = "Questyno_DylanHarris",
    lore = { "IGUI_SFQuest_Questyno_DylanHarris6_Lore" },
    needsitem = "Money;100",
    onobtained = "unlockworldevent;Questyno_DylanHarris;SFQuest_Questyno_DylanHarris6_Complete",
    text = "IGUI_SFQuest_Questyno_DylanHarris6_Text",
    texture = "media/textures/Item_DylanHarris.png",
    title = "IGUI_SFQuest_Questyno_DylanHarris6_Title",
    unlockedsound = "QuestUnlocked",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DylanHarris6_A",

    awardsrep = "LaResistenza;750",
    awardsitem = "MoneyToXP.Droga4;1",
    completesound = "levelup",
    dailycode = "Questyno_DylanHarris",
    lore = { "IGUI_SFQuest_Questyno_DylanHarris6_A_Lore" },
    objectives = {{
        guid = "Questyno_DylanHarris6_A",
        text = "IGUI_SFQuest_Questyno_DylanHarris6_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoDylanHarris6",
    }},
    text = "IGUI_SFQuest_Questyno_DylanHarris6_A_Text",
    texture = "media/textures/Item_DylanHarris.png",
    title = "IGUI_SFQuest_Questyno_DylanHarris6_Title",
    unlocks = "clickevent;7417x6657x0:EventoDylanHarris6;time:50:anim:loot;updateobjective:Questyno_DylanHarris6_A:1:Completed",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DylanHarris7",

    awardstask = "Questyno_DylanHarris7_A",
    dailycode = "Questyno_DylanHarris",
    lore = { "IGUI_SFQuest_Questyno_DylanHarris7_Lore" },
    needsitem = "Money;200",
    onobtained = "unlockworldevent;Questyno_DylanHarris;SFQuest_Questyno_DylanHarris7_Complete",
    text = "IGUI_SFQuest_Questyno_DylanHarris7_Text",
    texture = "media/textures/Item_DylanHarris.png",
    title = "IGUI_SFQuest_Questyno_DylanHarris7_Title",
    unlockedsound = "QuestUnlocked",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DylanHarris7_A",

    awardsrep = "LaResistenza;1550",
    awardsitem = "MoneyToXP.Droga5;1",
    completesound = "levelup",
    dailycode = "Questyno_DylanHarris",
    lore = { "IGUI_SFQuest_Questyno_DylanHarris7_A_Lore" },
    objectives = {{
        guid = "Questyno_DylanHarris7_A",
        text = "IGUI_SFQuest_Questyno_DylanHarris7_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoDylanHarris7",
    }},
    text = "IGUI_SFQuest_Questyno_DylanHarris7_A_Text",
    texture = "media/textures/Item_DylanHarris.png",
    title = "IGUI_SFQuest_Questyno_DylanHarris7_Title",
    unlocks = "clickevent;13080x1248x0:EventoDylanHarris7;time:50:anim:loot;updateobjective:Questyno_DylanHarris7_A:1:Completed",
});



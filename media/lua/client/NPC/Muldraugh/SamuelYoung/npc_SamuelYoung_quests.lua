require 'SFQuest_Database'

-- Quest per SamuelYoung
table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_SamuelYoung_Intro",

    awardsrep = "SamuelYoung;100", -- REP REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_SamuelYoung_Intro_Lore" },
    ondone = "randomcodedworldfrompool;Questyno_SamuelYoung;Questyno;SamuelYoung",
    text = "IGUI_SFQuest_Questyno_SamuelYoung_Intro_Text",
    texture = "media/textures/Item_SamuelYoung.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_SamuelYoung_Intro_Title",
});


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_SamuelYoung1",

    awardsrep = "LaResistenza;500", -- REP REWARD
    needsitem = "PredicateFreshFood#DeadRabbit;4", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_SamuelYoung",
    lore = { "IGUI_SFQuest_Questyno_SamuelYoung1_Lore" },
    text = "IGUI_SFQuest_Questyno_SamuelYoung1_Text",
    texture = "media/textures/Item_SamuelYoung.png",
    onobtained = "unlockworldevent;Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung1_Complete",
    title = "IGUI_SFQuest_Questyno_SamuelYoung1_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_SamuelYoung2",

    awardsrep = "LaResistenza;250", -- REP REWARD
    needsitem = "PredicateFreshFood#DeadRabbit;2", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_SamuelYoung",
    lore = { "IGUI_SFQuest_Questyno_SamuelYoung2_Lore" },
    text = "IGUI_SFQuest_Questyno_SamuelYoung2_Text",
    texture = "media/textures/Item_SamuelYoung.png",
    onobtained = "unlockworldevent;Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung2_Complete",
    title = "IGUI_SFQuest_Questyno_SamuelYoung2_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_SamuelYoung3",

    awardsrep = "LaResistenza;200", -- REP REWARD
    awardsitem = "Base.Twine;1", -- ITEM REWARD
    needsitem = "TrapCrate;10", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_SamuelYoung",
    lore = { "IGUI_SFQuest_Questyno_SamuelYoung3_Lore" },
    text = "IGUI_SFQuest_Questyno_SamuelYoung3_Text",
    texture = "media/textures/Item_SamuelYoung.png",
    onobtained = "unlockworldevent;Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung3_Complete",
    title = "IGUI_SFQuest_Questyno_SamuelYoung3_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_SamuelYoung4",

    awardsrep = "LaResistenza;200", -- REP REWARD
    awardsitem = "Money;30", -- ITEM REWARD
    needsitem = "TrapBox;15", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_SamuelYoung",
    lore = { "IGUI_SFQuest_Questyno_SamuelYoung4_Lore" },
    text = "IGUI_SFQuest_Questyno_SamuelYoung4_Text",
    texture = "media/textures/Item_SamuelYoung.png",
    onobtained = "unlockworldevent;Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung4_Complete",
    title = "IGUI_SFQuest_Questyno_SamuelYoung4_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_SamuelYoung5",

    awardsrep = "LaResistenza;250", -- REP REWARD
    needsitem = "PredicateFreshFood#DeadSquirrel;2", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_SamuelYoung",
    lore = { "IGUI_SFQuest_Questyno_SamuelYoung5_Lore" },
    text = "IGUI_SFQuest_Questyno_SamuelYoung5_Text",
    texture = "media/textures/Item_SamuelYoung.png",
    onobtained = "unlockworldevent;Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung5_Complete",
    title = "IGUI_SFQuest_Questyno_SamuelYoung5_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_SamuelYoung6",

    awardsrep = "LaResistenza;500", -- REP REWARD
    needsitem = "PredicateFreshFood#DeadBird;8", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_SamuelYoung",
    lore = { "IGUI_SFQuest_Questyno_SamuelYoung6_Lore" },
    text = "IGUI_SFQuest_Questyno_SamuelYoung6_Text",
    texture = "media/textures/Item_SamuelYoung.png",
    onobtained = "unlockworldevent;Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung6_Complete",
    title = "IGUI_SFQuest_Questyno_SamuelYoung6_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_SamuelYoung7",

    awardsrep = "LaResistenza;80", -- REP REWARD
    awardsitem = "Base.DehydratedMeatStick;8", -- ITEM REWARD
    needsitem = "PredicateFreshFood#DeadRabbit;2", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_SamuelYoung",
    lore = { "IGUI_SFQuest_Questyno_SamuelYoung7_Lore" },
    text = "IGUI_SFQuest_Questyno_SamuelYoung7_Text",
    texture = "media/textures/Item_SamuelYoung.png",
    onobtained = "unlockworldevent;Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung7_Complete",
    title = "IGUI_SFQuest_Questyno_SamuelYoung7_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_SamuelYoung8",

    awardstask = "Questyno_SamuelYoung8_A",
    dailycode = "Questyno_SamuelYoung",
    lore = { "IGUI_SFQuest_Questyno_SamuelYoung8_Lore" },
    objectives = { {
        guid = "Questyno_SamuelYoung8_A",
        text = "IGUI_SFQuest_Questyno_SamuelYoung8_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoSamuelYoung8;additem;PynoTweaks.RollingPapers;1",
    } },
    text = "IGUI_SFQuest_Questyno_SamuelYoung8_Text",
    texture = "media/textures/Item_SamuelYoung.png",
    title = "IGUI_SFQuest_Questyno_SamuelYoung8_Title",
    unlocks = "clickevent;11217x8963x0:EventoSamuelYoung8;time:50:anim:loot;updateobjective:Questyno_SamuelYoung8:1:Completed",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_SamuelYoung8_A",

    awardsrep = "LaResistenza;500",
    awardsitem = "Money;50",
    completesound = "levelup",
    dailycode = "Questyno_SamuelYoung",
    lore = { "IGUI_SFQuest_Questyno_SamuelYoung8_Lore" },
    needsitem = "PynoTweaks.RollingPapers;1",
    onobtained = "unlockworldevent;Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung8_Complete",
    text = "IGUI_SFQuest_Questyno_SamuelYoung8_A_Text",
    texture = "media/textures/Item_SamuelYoung.png",
    title = "IGUI_SFQuest_Questyno_SamuelYoung8_Title",
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_SamuelYoung9",

    awardsrep = "LaResistenza;90", -- REP REWARD
    awardsitem = "Base.BeefJerky;1", -- ITEM REWARD
    needsitem = "PredicateFreshFood#DeadBird;2", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_SamuelYoung",
    lore = { "IGUI_SFQuest_Questyno_SamuelYoung9_Lore" },
    text = "IGUI_SFQuest_Questyno_SamuelYoung9_Text",
    texture = "media/textures/Item_SamuelYoung.png",
    onobtained = "unlockworldevent;Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung9_Complete",
    title = "IGUI_SFQuest_Questyno_SamuelYoung9_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_SamuelYoung10",

    awardsrep = "LaResistenza;400", -- REP REWARD
    awardsitem = "Money;30;Base.BeefJerky;3", -- ITEM REWARD
    needsitem = "PredicateFreshFood#DeadSquirrel;4", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_SamuelYoung",
    lore = { "IGUI_SFQuest_Questyno_SamuelYoung10_Lore" },
    text = "IGUI_SFQuest_Questyno_SamuelYoung10_Text",
    texture = "media/textures/Item_SamuelYoung.png",
    onobtained = "unlockworldevent;Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung10_Complete",
    title = "IGUI_SFQuest_Questyno_SamuelYoung10_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_SamuelYoung11",

    awardsrep = "LaResistenza;50", -- REP REWARD
    awardsitem = "Money;30", -- ITEM REWARD
    needsitem = "TrapBox;6", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_SamuelYoung",
    lore = { "IGUI_SFQuest_Questyno_SamuelYoung11_Lore" },
    text = "IGUI_SFQuest_Questyno_SamuelYoung11_Text",
    texture = "media/textures/Item_SamuelYoung.png",
    onobtained = "unlockworldevent;Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung11_Complete",
    title = "IGUI_SFQuest_Questyno_SamuelYoung11_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_SamuelYoung12",

    awardsrep = "LaResistenza;60", -- REP REWARD
    awardsitem = "Money;20", -- ITEM REWARD
    needsitem = "TrapCrate;8", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_SamuelYoung",
    lore = { "IGUI_SFQuest_Questyno_SamuelYoung12_Lore" },
    text = "IGUI_SFQuest_Questyno_SamuelYoung12_Text",
    texture = "media/textures/Item_SamuelYoung.png",
    onobtained = "unlockworldevent;Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung12_Complete",
    title = "IGUI_SFQuest_Questyno_SamuelYoung12_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamuelYoung13",
    
    awardstask = "Questyno_SamuelYoung13_A",
    dailycode = "Questyno_SamuelYoung",
    lore = { "IGUI_SFQuest_Questyno_SamuelYoung13_Lore" },
    objectives = { {
        guid = "Questyno_SamuelYoung13_A",
        text = "IGUI_SFQuest_Questyno_SamuelYoung13_A",
        hidden = false,
        needsitem = "PredicateFreshFood#farming.Cabbage;6",
        onobtained = "updateobjective;Questyno_SamuelYoung13;1;Completed;removeitem;Cabbage;6"
    }, {
        guid = "Questyno_SamuelYoung13_B",
        text = "IGUI_SFQuest_Questyno_SamuelYoung13_B",
        hidden = false,
        needsitem = "PredicateFreshFood#Carrots;2",
        onobtained = "updateobjective;Questyno_SamuelYoung13;2;Completed;removeitem;Carrots;2"
    }, {
        guid = "Questyno_SamuelYoung13_C",
        text = "IGUI_SFQuest_Questyno_SamuelYoung13_C",
        hidden = false,
        needsitem = "PredicateFreshFood#Potato;4",
        onobtained = "updateobjective;Questyno_SamuelYoung13;3;Completed;removeitem;Potato;4"
    } },
    text = "IGUI_SFQuest_Questyno_SamuelYoung13_Text",
    texture = "media/textures/Item_SamuelYoung.png",
    title = "IGUI_SFQuest_Questyno_SamuelYoung13_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_SamuelYoung13_A",

    awardsrep = "LaResistenza;500",
    completesound = "levelup",                                                                                          -- Suono completamento quest, sempre uguale
    dailycode = "Questyno_SamuelYoung",
    lore = { "IGUI_SFQuest_Questyno_SamuelYoung13_Lore" },
    unlocks = "unlockworldevent;Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung13_Complete",
    text = "IGUI_SFQuest_Questyno_SamuelYoung13_A_Text",
    texture = "media/textures/Item_SamuelYoung.png",
    title = "IGUI_SFQuest_Questyno_SamuelYoung13_Title",
})


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamuelYoung14",
    
    awardstask = "Questyno_SamuelYoung14_A",
    dailycode = "Questyno_SamuelYoung",
    lore = { "IGUI_SFQuest_Questyno_SamuelYoung14_Lore" },
    objectives = { {
        guid = "Questyno_SamuelYoung14_A",
        text = "IGUI_SFQuest_Questyno_SamuelYoung14_A",
        hidden = false,
        needsitem = "PredicateFreshFood#Grasshopper;10",
        onobtained = "updateobjective;Questyno_SamuelYoung14;1;Completed;removeitem;Grasshopper;10"
    }, {
        guid = "Questyno_SamuelYoung14_B",
        text = "IGUI_SFQuest_Questyno_SamuelYoung14_B",
        hidden = false,
        needsitem = "PredicateFreshFood#Worm;20",
        onobtained = "updateobjective;Questyno_SamuelYoung14;2;Completed;removeitem;Worm;20"
    } },
    text = "IGUI_SFQuest_Questyno_SamuelYoung14_Text",
    texture = "media/textures/Item_SamuelYoung.png",
    title = "IGUI_SFQuest_Questyno_SamuelYoung14_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_SamuelYoung14_A",

    awardsrep = "LaResistenza;300",
    completesound = "levelup",                                                                                          -- Suono completamento quest, sempre uguale
    dailycode = "Questyno_SamuelYoung",
    lore = { "IGUI_SFQuest_Questyno_SamuelYoung14_Lore" },
    unlocks = "unlockworldevent;Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung14_Complete",
    text = "IGUI_SFQuest_Questyno_SamuelYoung14_A_Text",
    texture = "media/textures/Item_SamuelYoung.png",
    title = "IGUI_SFQuest_Questyno_SamuelYoung14_Title",
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_SamuelYoung15",

    awardsrep = "LaResistenza;600", -- REP REWARD
    needsitem = "PredicateFreshFood#DeadRabbit;6", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_SamuelYoung",
    lore = { "IGUI_SFQuest_Questyno_SamuelYoung15_Lore" },
    text = "IGUI_SFQuest_Questyno_SamuelYoung15_Text",
    texture = "media/textures/Item_SamuelYoung.png",
    onobtained = "unlockworldevent;Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung15_Complete",
    title = "IGUI_SFQuest_Questyno_SamuelYoung15_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_SamuelYoung16",

    awardstask = "Questyno_SamuelYoung16_A",
    dailycode = "Questyno_SamuelYoung",
    lore = { "IGUI_SFQuest_Questyno_SamuelYoung16_Lore" },
    objectives = { {
        guid = "Questyno_SamuelYoung16_A",
        text = "IGUI_SFQuest_Questyno_SamuelYoung16_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoSamuelYoung16;additem;DeadSquirrel;2",
    } },
    text = "IGUI_SFQuest_Questyno_SamuelYoung16_Text",
    texture = "media/textures/Item_SamuelYoung.png",
    title = "IGUI_SFQuest_Questyno_SamuelYoung16_Title",
    unlocks = "clickevent;5802x8991x0:EventoSamuelYoung16;time:50:anim:loot;updateobjective:Questyno_SamuelYoung16:1:Completed",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_SamuelYoung16_A",

    awardsrep = "LaResistenza;150",
    awardsitem = "DeadSquirrel;1",
    completesound = "levelup",
    dailycode = "Questyno_SamuelYoung",
    lore = { "IGUI_SFQuest_Questyno_SamuelYoung16_Lore" },
    needsitem = "PredicateFreshFood#DeadSquirrel;2",
    onobtained = "unlockworldevent;Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung16_Complete",
    text = "IGUI_SFQuest_Questyno_SamuelYoung16_A_Text",
    texture = "media/textures/Item_SamuelYoung.png",
    title = "IGUI_SFQuest_Questyno_SamuelYoung16_Title",
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_SamuelYoung17",

    awardstask = "Questyno_SamuelYoung17_A",
    dailycode = "Questyno_SamuelYoung",
    lore = { "IGUI_SFQuest_Questyno_SamuelYoung17_Lore" },
    objectives = { {
        guid = "Questyno_SamuelYoung17_A",
        text = "IGUI_SFQuest_Questyno_SamuelYoung17_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoSamuelYoung17;additem;DeadRabbit;2",
    } },
    text = "IGUI_SFQuest_Questyno_SamuelYoung17_Text",
    texture = "media/textures/Item_SamuelYoung.png",
    title = "IGUI_SFQuest_Questyno_SamuelYoung17_Title",
    unlocks = "clickevent;11329x9482x0:EventoSamuelYoung17;time:50:anim:loot;updateobjective:Questyno_SamuelYoung17:1:Completed",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_SamuelYoung17_A",

    awardsrep = "LaResistenza;100",
    awardsitem = "DeadRabbit;1",
    completesound = "levelup",
    dailycode = "Questyno_SamuelYoung",
    lore = { "IGUI_SFQuest_Questyno_SamuelYoung17_Lore" },
    needsitem = "PredicateFreshFood#DeadRabbit;2",
    onobtained = "unlockworldevent;Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung17_Complete",
    text = "IGUI_SFQuest_Questyno_SamuelYoung17_A_Text",
    texture = "media/textures/Item_SamuelYoung.png",
    title = "IGUI_SFQuest_Questyno_SamuelYoung17_Title",
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_SamuelYoung18",

    awardsrep = "LaResistenza;180", -- REP REWARD
    needsitem = "PredicateFreshFood#DeadRabbit;2", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_SamuelYoung",
    lore = { "IGUI_SFQuest_Questyno_SamuelYoung18_Lore" },
    text = "IGUI_SFQuest_Questyno_SamuelYoung18_Text",
    texture = "media/textures/Item_SamuelYoung.png",
    onobtained = "unlockworldevent;Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung18_Complete",
    title = "IGUI_SFQuest_Questyno_SamuelYoung18_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_SamuelYoung19",

    awardsrep = "LaResistenza;500", -- REP REWARD
    awardsitem = "SWeapons.ScrapClub;1", -- ITEM REWARD
    needsitem = "LeatherStrips;100", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_SamuelYoung",
    lore = { "IGUI_SFQuest_Questyno_SamuelYoung19_Lore" },
    text = "IGUI_SFQuest_Questyno_SamuelYoung19_Text",
    texture = "media/textures/Item_SamuelYoung.png",
    onobtained = "unlockworldevent;Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung19_Complete",
    title = "IGUI_SFQuest_Questyno_SamuelYoung19_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_SamuelYoung20",

    awardsrep = "LaResistenza;50", -- REP REWARD
    needsitem = "LeatherStrips;10", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_SamuelYoung",
    lore = { "IGUI_SFQuest_Questyno_SamuelYoung20_Lore" },
    text = "IGUI_SFQuest_Questyno_SamuelYoung20_Text",
    texture = "media/textures/Item_SamuelYoung.png",
    onobtained = "unlockworldevent;Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung20_Complete",
    title = "IGUI_SFQuest_Questyno_SamuelYoung20_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_SamuelYoung21",

    awardsrep = "LaResistenza;1000", -- REP REWARD
    needsitem = "TrapMouse;1", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_SamuelYoung",
    lore = { "IGUI_SFQuest_Questyno_SamuelYoung21_Lore" },
    text = "IGUI_SFQuest_Questyno_SamuelYoung21_Text",
    texture = "media/textures/Item_SamuelYoung.png",
    onobtained = "unlockworldevent;Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung21_Complete",
    title = "IGUI_SFQuest_Questyno_SamuelYoung21_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_SamuelYoung22",

    awardsrep = "LaResistenza;50", -- REP REWARD
    awardsitem = "Money;200", -- ITEM REWARD
    needsitem = "PredicateFreshFood#DeadRabbit;6", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_SamuelYoung",
    lore = { "IGUI_SFQuest_Questyno_SamuelYoung22_Lore" },
    text = "IGUI_SFQuest_Questyno_SamuelYoung22_Text",
    texture = "media/textures/Item_SamuelYoung.png",
    onobtained = "unlockworldevent;Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung22_Complete",
    title = "IGUI_SFQuest_Questyno_SamuelYoung22_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_SamuelYoung23",

    awardsrep = "LaResistenza;800", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_SamuelYoung",
    lore = { "IGUI_SFQuest_Questyno_SamuelYoung23_Lore" },
    objectives = { {
        guid = "Questyno_SamuelYoung23_A",
        text = "IGUI_SFQuest_Questyno_SamuelYoung23_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoSamuelYoung23;additem;Salt;1",
    } },
    text = "IGUI_SFQuest_Questyno_SamuelYoung23_Text",
    texture = "media/textures/Item_SamuelYoung.png",
    title = "IGUI_SFQuest_Questyno_SamuelYoung23_Title",
    unlocks = "clickevent;8008x11896x0:EventoSamuelYoung23;time:50:anim:loot;updateobjective:Questyno_SamuelYoung23:1:Completed",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_SamuelYoung24",

    awardsrep = "LaResistenza;800", -- REP REWARD
    awardsitem = "Money;50", -- ITEM REWARD
    needsitem = "Soap2;6", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_SamuelYoung",
    lore = { "IGUI_SFQuest_Questyno_SamuelYoung24_Lore" },
    text = "IGUI_SFQuest_Questyno_SamuelYoung24_Text",
    texture = "media/textures/Item_SamuelYoung.png",
    onobtained = "unlockworldevent;Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung24_Complete",
    title = "IGUI_SFQuest_Questyno_SamuelYoung24_Title",
    unlockedsound = "QuestUnlocked"
})



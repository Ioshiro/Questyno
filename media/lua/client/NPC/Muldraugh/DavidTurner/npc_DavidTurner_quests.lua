require 'SFQuest_Database'

-- Quest per DavidTurner
table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner_Intro",

    awardsrep = "DavidTurner;100", -- REP REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner_Intro_Lore" },
    ondone = "randomcodedworldfrompool;Questyno_DavidTurner;Questyno;DavidTurner",
    text = "IGUI_SFQuest_Questyno_DavidTurner_Intro_Text",
    texture = "media/textures/Item_DavidTurner.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_DavidTurner;SFQuest_Questyno_DavidTurner_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_DavidTurner_Intro_Title",
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner1",

    awardsrep = "LaResistenza;100", -- REP REWARD
    needsitem = "SmallSheetMetal;4", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner1_Lore" },
    text = "IGUI_SFQuest_Questyno_DavidTurner1_Text",
    texture = "media/textures/Item_DavidTurner.png",
    onobtained = "unlockworldevent;Questyno_DavidTurner;SFQuest_Questyno_DavidTurner1_Complete",
    title = "IGUI_SFQuest_Questyno_DavidTurner1_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner2",

    awardsrep = "LaResistenza;200", -- REP REWARD
    awardsitem = "ScrapVestStudded;1", -- ITEM REWARD
    needsitem = "SheetMetal;4", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner2_Lore" },
    text = "IGUI_SFQuest_Questyno_DavidTurner2_Text",
    texture = "media/textures/Item_DavidTurner.png",
    onobtained = "unlockworldevent;Questyno_DavidTurner;SFQuest_Questyno_DavidTurner2_Complete",
    title = "IGUI_SFQuest_Questyno_DavidTurner2_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner3",

    awardstask = "Questyno_DavidTurner3_A",
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner3_Lore" },
    objectives = { {
        guid = "Questyno_DavidTurner3_A",
        text = "IGUI_SFQuest_Questyno_DavidTurner3_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoDavidTurner3;additem;SWeapons.ScrapSpear;1",
    } },
    text = "IGUI_SFQuest_Questyno_DavidTurner3_Text",
    texture = "media/textures/Item_DavidTurner.png",
    title = "IGUI_SFQuest_Questyno_DavidTurner3_Title",
    unlocks = "clickevent;7889x10715x0:EventoDavidTurner3;time:50:anim:loot;updateobjective:Questyno_DavidTurner3:1:Completed",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner3_A",

    awardsrep = "LaResistenza;250",
    awardsitem = "Money;20;PropaneTank;1",
    completesound = "levelup",
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner3_Lore" },
    needsitem = "SWeapons.ScrapSpear;1",
    onobtained = "unlockworldevent;Questyno_DavidTurner;SFQuest_Questyno_DavidTurner3_Complete",
    text = "IGUI_SFQuest_Questyno_DavidTurner3_A_Text",
    texture = "media/textures/Item_DavidTurner.png",
    title = "IGUI_SFQuest_Questyno_DavidTurner3_Title",
})


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DavidTurner4",

    awardstask = "Questyno_DavidTurner4_A",
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner4_Lore" },
    objectives = { {
        guid = "Questyno_DavidTurner4_A",
        text = "IGUI_SFQuest_Questyno_DavidTurner4_A",
        hidden = false,
        needsitem = "ElectronicsScrap;30",
        onobtained = "updateobjective;Questyno_DavidTurner4;1;Completed;removeitem;ElectronicsScrap;30"
    }, {
        guid = "Questyno_DavidTurner4_B",
        text = "IGUI_SFQuest_Questyno_DavidTurner4_B",
        hidden = false,
        needsitem = "ElectricWire;4",
        onobtained = "updateobjective;Questyno_DavidTurner4;2;Completed;removeitem;ElectricWire;4"
    }, {
        guid = "Questyno_DavidTurner4_C",
        text = "IGUI_SFQuest_Questyno_DavidTurner4_C",
        hidden = false,
        needsitem = "SheetMetal;2",
        onobtained = "updateobjective;Questyno_DavidTurner4;3;Completed;removeitem;SheetMetal;2"
    } },
    text = "IGUI_SFQuest_Questyno_DavidTurner4_Text",
    texture = "media/textures/Item_DavidTurner.png",
    title = "IGUI_SFQuest_Questyno_DavidTurner4_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner4_A",

    awardsrep = "LaResistenza;250",
    completesound = "levelup",                                                                                          -- Suono completamento quest, sempre uguale
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner4_Lore" },
    unlocks = "unlockworldevent;Questyno_DavidTurner;SFQuest_Questyno_DavidTurner4_Complete",
    text = "IGUI_SFQuest_Questyno_DavidTurner4_A_Text",
    texture = "media/textures/Item_DavidTurner.png",
    title = "IGUI_SFQuest_Questyno_DavidTurner4_Title",
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner5",

    awardsrep = "LaResistenza;200",
    completesound = "levelup",
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner5_Lore" },
    needsitem = "ElectronicsScrap;40",
    onobtained = "unlockworldevent;Questyno_DavidTurner;SFQuest_Questyno_DavidTurner5_Complete",
    text = "IGUI_SFQuest_Questyno_DavidTurner5_Text",
    texture = "media/textures/Item_DavidTurner.png",
    title = "IGUI_SFQuest_Questyno_DavidTurner5_Title",
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner6",

    awardstask = "Questyno_DavidTurner6_A",
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner6_Lore" },
    objectives = { {
        guid = "Questyno_DavidTurner6_A",
        text = "IGUI_SFQuest_Questyno_DavidTurner6_A",
        hidden = false,
        needsitem = "ElectronicsScrap;20",
        onobtained = "updateobjective;Questyno_DavidTurner6;1;Completed;removeitem;ElectronicsScrap;20"
    }, {
        guid = "Questyno_DavidTurner6_B",
        text = "IGUI_SFQuest_Questyno_DavidTurner6_B",
        hidden = false,
        needsitem = "Battery;4",
        onobtained = "updateobjective;Questyno_DavidTurner6;2;Completed;removeitem;Battery;4"
    }, {
        guid = "Questyno_DavidTurner6_C",
        text = "IGUI_SFQuest_Questyno_DavidTurner6_C",
        hidden = false,
        needsitem = "Radio.RadioTransmitter;4",
        onobtained = "updateobjective;Questyno_DavidTurner6;3;Completed;removeitem;Radio.RadioTransmitter;4"
    } },
    text = "IGUI_SFQuest_Questyno_DavidTurner6_Text",
    texture = "media/textures/Item_DavidTurner.png",
    title = "IGUI_SFQuest_Questyno_DavidTurner6_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner6_A",

    awardsrep = "LaResistenza;250",
    awardsitem = "SWeapons.HugeScrapPickaxe;1",
    completesound = "levelup",
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner6_Lore" },
    unlocks = "unlockworldevent;Questyno_DavidTurner;SFQuest_Questyno_DavidTurner6_Complete",
    text = "IGUI_SFQuest_Questyno_DavidTurner6_A_Text",
    texture = "media/textures/Item_DavidTurner.png",
    title = "IGUI_SFQuest_Questyno_DavidTurner6_Title",
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner7",

    awardstask = "Questyno_DavidTurner7_A",
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner7_Lore" },
    objectives = { {
        guid = "Questyno_DavidTurner7_A",
        text = "IGUI_SFQuest_Questyno_DavidTurner7_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoDavidTurner7;additem;Generator;1",
    } },
    text = "IGUI_SFQuest_Questyno_DavidTurner7_Text",
    texture = "media/textures/Item_DavidTurner.png",
    title = "IGUI_SFQuest_Questyno_DavidTurner7_Title",
    unlocks = "clickevent;7370x7578x0:EventoDavidTurner7;time:50:anim:loot;updateobjective:Questyno_DavidTurner7:1:Completed",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner7_A",

    awardsrep = "LaResistenza;600",
    awardsitem = "Money;50",
    completesound = "levelup",
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner7_Lore" },
    needsitem = "Generator;1",
    onobtained = "unlockworldevent;Questyno_DavidTurner;SFQuest_Questyno_DavidTurner7_Complete",
    text = "IGUI_SFQuest_Questyno_DavidTurner7_A_Text",
    texture = "media/textures/Item_DavidTurner.png",
    title = "IGUI_SFQuest_Questyno_DavidTurner7_Title",
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner8",

    awardsrep = "LaResistenza;70",
    awardsitem = "Steak;1",
    completesound = "levelup",
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner8_Lore" },
    needsitem = "ElectricWire;10",
    onobtained = "unlockworldevent;Questyno_DavidTurner;SFQuest_Questyno_DavidTurner8_Complete",
    text = "IGUI_SFQuest_Questyno_DavidTurner8_Text",
    texture = "media/textures/Item_DavidTurner.png",
    title = "IGUI_SFQuest_Questyno_DavidTurner8_Title",
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner9",

    awardstask = "Questyno_DavidTurner9_A",
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner9_Lore" },
    objectives = { {
        guid = "Questyno_DavidTurner9_A",
        text = "IGUI_SFQuest_Questyno_DavidTurner9_A",
        hidden = false,
        needsitem = "ScrapMetal;8",
        onobtained = "updateobjective;Questyno_DavidTurner9;1;Completed;removeitem;ScrapMetal;8"
    }, {
        guid = "Questyno_DavidTurner9_B",
        text = "IGUI_SFQuest_Questyno_DavidTurner9_B",
        hidden = false,
        needsitem = "ElectronicsScrap;32",
        onobtained = "updateobjective;Questyno_DavidTurner9;2;Completed;removeitem;ElectronicsScrap;32"
    } },
    text = "IGUI_SFQuest_Questyno_DavidTurner9_Text",
    texture = "media/textures/Item_DavidTurner.png",
    title = "IGUI_SFQuest_Questyno_DavidTurner9_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner9_A",

    awardsrep = "LaResistenza;100",
    awardsitem = "Base.FrontWindow1;2",
    completesound = "levelup",
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner9_Lore" },
    unlocks = "unlockworldevent;Questyno_DavidTurner;SFQuest_Questyno_DavidTurner9_Complete",
    text = "IGUI_SFQuest_Questyno_DavidTurner9_A_Text",
    texture = "media/textures/Item_DavidTurner.png",
    title = "IGUI_SFQuest_Questyno_DavidTurner9_Title",
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner10",

    awardsrep = "LaResistenza;225",
    completesound = "levelup",
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner10_Lore" },
    needsitem = "EngineParts;4",
    onobtained = "unlockworldevent;Questyno_DavidTurner;SFQuest_Questyno_DavidTurner10_Complete",
    text = "IGUI_SFQuest_Questyno_DavidTurner10_Text",
    texture = "media/textures/Item_DavidTurner.png",
    title = "IGUI_SFQuest_Questyno_DavidTurner10_Title",
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner11",

    awardsrep = "LaResistenza;180",
    completesound = "levelup",
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner11_Lore" },
    needsitem = "MetalPipe;4",
    onobtained = "unlockworldevent;Questyno_DavidTurner;SFQuest_Questyno_DavidTurner11_Complete",
    text = "IGUI_SFQuest_Questyno_DavidTurner11_Text",
    texture = "media/textures/Item_DavidTurner.png",
    title = "IGUI_SFQuest_Questyno_DavidTurner11_Title",
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner12",

    awardsrep = "LaResistenza;50",
    awardsitem = "ScrapKiltStudded;1",
    completesound = "levelup",
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner12_Lore" },
    needsitem = "UnusableMetal;8",
    onobtained = "unlockworldevent;Questyno_DavidTurner;SFQuest_Questyno_DavidTurner12_Complete",
    text = "IGUI_SFQuest_Questyno_DavidTurner12_Text",
    texture = "media/textures/Item_DavidTurner.png",
    title = "IGUI_SFQuest_Questyno_DavidTurner12_Title",
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner13",

    awardstask = "Questyno_DavidTurner13_A",
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner13_Lore" },
    objectives = { {
        guid = "Questyno_DavidTurner13_A",
        text = "IGUI_SFQuest_Questyno_DavidTurner13_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoDavidTurner13;additem;ElectronicsMag1;1",
    } },
    text = "IGUI_SFQuest_Questyno_DavidTurner13_Text",
    texture = "media/textures/Item_DavidTurner.png",
    title = "IGUI_SFQuest_Questyno_DavidTurner13_Title",
    unlocks = "clickevent;11511x11431x1:EventoDavidTurner13;time:50:anim:loot;updateobjective:Questyno_DavidTurner13:1:Completed",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner13_A",

    awardsrep = "LaResistenza;200",
    completesound = "levelup",
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner13_Lore" },
    needsitem = "ElectronicsMag1;1",
    onobtained = "unlockworldevent;Questyno_DavidTurner;SFQuest_Questyno_DavidTurner13_Complete",
    text = "IGUI_SFQuest_Questyno_DavidTurner13_A_Text",
    texture = "media/textures/Item_DavidTurner.png",
    title = "IGUI_SFQuest_Questyno_DavidTurner13_Title",
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner14",

    awardsrep = "LaResistenza;35",
    completesound = "levelup",
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner14_Lore" },
    needsitem = "Tag#FullWaterBottle;1",
    onobtained = "unlockworldevent;Questyno_DavidTurner;SFQuest_Questyno_DavidTurner14_Complete",
    text = "IGUI_SFQuest_Questyno_DavidTurner14_Text",
    texture = "media/textures/Item_DavidTurner.png",
    title = "IGUI_SFQuest_Questyno_DavidTurner14_Title",
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner15",
    
    awardstask = "Questyno_DavidTurner15_A",
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner15_Lore" },
    objectives = { {
        guid = "Questyno_DavidTurner15_A",
        text = "IGUI_SFQuest_Questyno_DavidTurner15_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoDavidTurner15;additem;EngineParts;20;additem;ElectronicsScrap;20;additem;UnusableMetal;2",
    } },
    text = "IGUI_SFQuest_Questyno_DavidTurner15_Text",
    texture = "media/textures/Item_DavidTurner.png",
    title = "IGUI_SFQuest_Questyno_DavidTurner15_Title",
    unlocks = "clickevent;11665x8459x0:EventoDavidTurner15;time:50:anim:loot;updateobjective:Questyno_DavidTurner15:1:Completed",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner15_A",

    awardstask = "Questyno_DavidTurner15_B",
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner15_Lore" },
    objectives = { {
        guid = "Questyno_DavidTurner15_C",
        text = "IGUI_SFQuest_Questyno_DavidTurner15_C",
        hidden = false,
        needsitem = "EngineParts;20",
        onobtained = "updateobjective;Questyno_DavidTurner15_A;1;Completed;removeitem;EngineParts;20"
    }, {
        guid = "Questyno_DavidTurner15_D",
        text = "IGUI_SFQuest_Questyno_DavidTurner15_D",
        hidden = false,
        needsitem = "ElectronicsScrap;20",
        onobtained = "updateobjective;Questyno_DavidTurner15_A;2;Completed;removeitem;ElectronicsScrap;20"
    }, {
        guid = "Questyno_DavidTurner15_E",
        text = "IGUI_SFQuest_Questyno_DavidTurner15_E",
        hidden = false,
        needsitem = "UnusableMetal;2",
        onobtained = "updateobjective;Questyno_DavidTurner15_A;3;Completed;removeitem;UnusableMetal;2"
    } },
    text = "IGUI_SFQuest_Questyno_DavidTurner15_A_Text",
    texture = "media/textures/Item_DavidTurner.png",
    title = "IGUI_SFQuest_Questyno_DavidTurner15_Title",
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner15_B",
    awardsrep = "LaResistenza;80",
    awardsitem = "SheetMetal;2;EngineParts;6",
    completesound = "levelup",
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner15_Lore" },
    unlocks = "unlockworldevent;Questyno_DavidTurner;SFQuest_Questyno_DavidTurner15_Complete",
    text = "IGUI_SFQuest_Questyno_DavidTurner15_B_Text",
    texture = "media/textures/Item_DavidTurner.png",
    title = "IGUI_SFQuest_Questyno_DavidTurner15_Title",
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner16",

    awardsrep = "LaResistenza;100",
    completesound = "levelup",
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner16_Lore" },
    needsitem = "ElectronicsScrap;40",
    onobtained = "unlockworldevent;Questyno_DavidTurner;SFQuest_Questyno_DavidTurner16_Complete",
    text = "IGUI_SFQuest_Questyno_DavidTurner16_Text",
    texture = "media/textures/Item_DavidTurner.png",
    title = "IGUI_SFQuest_Questyno_DavidTurner16_Title",
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner17",

    awardstask = "Questyno_DavidTurner17_A",
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner17_Lore" },
    objectives = { {
        guid = "Questyno_DavidTurner17_A",
        text = "IGUI_SFQuest_Questyno_DavidTurner17_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoDavidTurner17;additem;Wrench;1",
    } },
    text = "IGUI_SFQuest_Questyno_DavidTurner17_Text",
    texture = "media/textures/Item_DavidTurner.png",
    title = "IGUI_SFQuest_Questyno_DavidTurner17_Title",
    unlocks = "clickevent;10452x8267x0:EventoDavidTurner17;time:50:anim:loot;updateobjective:Questyno_DavidTurner17:1:Completed",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner17_A",

    awardsrep = "LaResistenza;200",
    awardsitem = "EngineDoor1;1",
    completesound = "levelup",
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner17_Lore" },
    needsitem = "Wrench;1",
    onobtained = "unlockworldevent;Questyno_DavidTurner;SFQuest_Questyno_DavidTurner17_Complete",
    text = "IGUI_SFQuest_Questyno_DavidTurner17_A_Text",
    texture = "media/textures/Item_DavidTurner.png",
    title = "IGUI_SFQuest_Questyno_DavidTurner17_Title",
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner18",

    awardstask = "Questyno_DavidTurner18_A",
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner18_Lore" },
    objectives = { {
        guid = "Questyno_DavidTurner18_A",
        text = "IGUI_SFQuest_Questyno_DavidTurner18_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoDavidTurner18;additem;SheetPaper2;1",
    } },
    text = "IGUI_SFQuest_Questyno_DavidTurner18_Text",
    texture = "media/textures/Item_DavidTurner.png",
    title = "IGUI_SFQuest_Questyno_DavidTurner18_Title",
    unlocks = "clickevent;12567x9951x0:EventoDavidTurner18;time:50:anim:loot;updateobjective:Questyno_DavidTurner18:1:Completed",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner18_A",

    awardsrep = "LaResistenza;120",
    awardsitem = "Money;25",
    completesound = "levelup",
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner18_Lore" },
    needsitem = "SheetPaper2;1",
    onobtained = "unlockworldevent;Questyno_DavidTurner;SFQuest_Questyno_DavidTurner18_Complete",
    text = "IGUI_SFQuest_Questyno_DavidTurner18_A_Text",
    texture = "media/textures/Item_DavidTurner.png",
    title = "IGUI_SFQuest_Questyno_DavidTurner18_Title",
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner19",

    awardsrep = "LaResistenza;65",
    completesound = "levelup",
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner19_Lore" },
    needsitem = "MetalPipe;2",
    onobtained = "unlockworldevent;Questyno_DavidTurner;SFQuest_Questyno_DavidTurner19_Complete",
    text = "IGUI_SFQuest_Questyno_DavidTurner19_Text",
    texture = "media/textures/Item_DavidTurner.png",
    title = "IGUI_SFQuest_Questyno_DavidTurner19_Title",
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner20",

    awardsrep = "LaResistenza;200",
    awardsitem = "Money;20",
    completesound = "levelup",
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner20_Lore" },
    needsitem = "ScrapMetal;15",
    onobtained = "unlockworldevent;Questyno_DavidTurner;SFQuest_Questyno_DavidTurner20_Complete",
    text = "IGUI_SFQuest_Questyno_DavidTurner20_Text",
    texture = "media/textures/Item_DavidTurner.png",
    title = "IGUI_SFQuest_Questyno_DavidTurner20_Title",
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner21",

    awardsrep = "LaResistenza;200",
    awardsitem = "Money;50",
    completesound = "levelup",
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner21_Lore" },
    needsitem = "ScrapMetal;40",
    onobtained = "unlockworldevent;Questyno_DavidTurner;SFQuest_Questyno_DavidTurner21_Complete",
    text = "IGUI_SFQuest_Questyno_DavidTurner21_Text",
    texture = "media/textures/Item_DavidTurner.png",
    title = "IGUI_SFQuest_Questyno_DavidTurner21_Title",
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner22",

    awardstask = "Questyno_DavidTurner22_A",
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner22_Lore" },
    objectives = { {
        guid = "Questyno_DavidTurner22_A",
        text = "IGUI_SFQuest_Questyno_DavidTurner22_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoDavidTurner22;additem;PipeWrench;1",
    } },
    text = "IGUI_SFQuest_Questyno_DavidTurner22_Text",
    texture = "media/textures/Item_DavidTurner.png",
    title = "IGUI_SFQuest_Questyno_DavidTurner22_Title",
    unlocks = "clickevent;8232x10996x0:EventoDavidTurner22;time:50:anim:loot;updateobjective:Questyno_DavidTurner22:1:Completed",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner22_A",

    awardsrep = "LaResistenza;50",
    awardsitem = "PipeWrench;1",
    completesound = "levelup",
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner22_Lore" },
    needsitem = "PipeWrench;1",
    onobtained = "unlockworldevent;Questyno_DavidTurner;SFQuest_Questyno_DavidTurner22_Complete",
    text = "IGUI_SFQuest_Questyno_DavidTurner22_A_Text",
    texture = "media/textures/Item_DavidTurner.png",
    title = "IGUI_SFQuest_Questyno_DavidTurner22_Title",
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner23",

    awardsrep = "LaResistenza;130",
    completesound = "levelup",
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner23_Lore" },
    needsitem = "ScrapMetal;12",
    onobtained = "unlockworldevent;Questyno_DavidTurner;SFQuest_Questyno_DavidTurner23_Complete",
    text = "IGUI_SFQuest_Questyno_DavidTurner23_Text",
    texture = "media/textures/Item_DavidTurner.png",
    title = "IGUI_SFQuest_Questyno_DavidTurner23_Title",
})


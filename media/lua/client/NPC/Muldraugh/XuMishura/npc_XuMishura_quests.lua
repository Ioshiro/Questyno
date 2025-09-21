require 'SFQuest_Database'

-- Quest per XuMishura
table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_XuMishura_Intro",

    awardsrep = "XuMishura;100", -- REP REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_XuMishura_Intro_Lore" },
    ondone = "randomcodedworldfrompool;Questyno_XuMishura;Questyno;XuMishura",
    text = "IGUI_SFQuest_Questyno_XuMishura_Intro_Text",
    texture = "media/textures/Item_XuMishura.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_XuMishura;SFQuest_Questyno_XuMishura_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_XuMishura_Intro_Title",
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_XuMishura1",

    awardsrep = "LaResistenza;200", -- REP REWARD
    needsitem = "Tag#LongDress;4", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_XuMishura",
    lore = { "IGUI_SFQuest_Questyno_XuMishura1_Lore" },
    text = "IGUI_SFQuest_Questyno_XuMishura1_Text",
    texture = "media/textures/Item_XuMishura.png",
    onobtained = "unlockworldevent;Questyno_XuMishura;SFQuest_Questyno_XuMishura1_Complete",
    title = "IGUI_SFQuest_Questyno_XuMishura1_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_XuMishura2",

    awardsrep = "LaResistenza;250", -- REP REWARD
    needsitem = "Shoes_ArmyBootsDesert;5", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_XuMishura",
    lore = { "IGUI_SFQuest_Questyno_XuMishura2_Lore" },
    text = "IGUI_SFQuest_Questyno_XuMishura2_Text",
    texture = "media/textures/Item_XuMishura.png",
    onobtained = "unlockworldevent;Questyno_XuMishura;SFQuest_Questyno_XuMishura2_Complete",
    title = "IGUI_SFQuest_Questyno_XuMishura2_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_XuMishura3",

    awardsrep = "LaResistenza;90", -- REP REWARD
    needsitem = "Briefs_SmallTrunks_Red;2", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_XuMishura",
    lore = { "IGUI_SFQuest_Questyno_XuMishura3_Lore" },
    text = "IGUI_SFQuest_Questyno_XuMishura3_Text",
    texture = "media/textures/Item_XuMishura.png",
    onobtained = "unlockworldevent;Questyno_XuMishura;SFQuest_Questyno_XuMishura3_Complete",
    title = "IGUI_SFQuest_Questyno_XuMishura3_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_XuMishura4",

    awardsrep = "LaResistenza;60", -- REP REWARD
    needsitem = "Briefs_AnimalPrints;1", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_XuMishura",
    lore = { "IGUI_SFQuest_Questyno_XuMishura4_Lore" },
    text = "IGUI_SFQuest_Questyno_XuMishura4_Text",
    texture = "media/textures/Item_XuMishura.png",
    onobtained = "unlockworldevent;Questyno_XuMishura;SFQuest_Questyno_XuMishura4_Complete",
    title = "IGUI_SFQuest_Questyno_XuMishura4_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_XuMishura5",

    awardsrep = "LaResistenza;300", -- REP REWARD
    needsitem = "Shoes_RedTrainers;1", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_XuMishura",
    lore = { "IGUI_SFQuest_Questyno_XuMishura5_Lore" },
    text = "IGUI_SFQuest_Questyno_XuMishura5_Text",
    texture = "media/textures/Item_XuMishura.png",
    onobtained = "unlockworldevent;Questyno_XuMishura;SFQuest_Questyno_XuMishura5_Complete",
    title = "IGUI_SFQuest_Questyno_XuMishura5_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_XuMishura6",

    awardsrep = "LaResistenza;1000", -- REP REWARD
    needsitem = "Trousers_Padded;1", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_XuMishura",
    lore = { "IGUI_SFQuest_Questyno_XuMishura6_Lore" },
    text = "IGUI_SFQuest_Questyno_XuMishura6_Text",
    texture = "media/textures/Item_XuMishura.png",
    onobtained = "unlockworldevent;Questyno_XuMishura;SFQuest_Questyno_XuMishura6_Complete",
    title = "IGUI_SFQuest_Questyno_XuMishura6_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_XuMishura7",

    awardsrep = "LaResistenza;50", -- REP REWARD
    needsitem = "Skirt_Mini;1", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_XuMishura",
    lore = { "IGUI_SFQuest_Questyno_XuMishura7_Lore" },
    text = "IGUI_SFQuest_Questyno_XuMishura7_Text",
    texture = "media/textures/Item_XuMishura.png",
    onobtained = "unlockworldevent;Questyno_XuMishura;SFQuest_Questyno_XuMishura7_Complete",
    title = "IGUI_SFQuest_Questyno_XuMishura7_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_XuMishura8",

    awardsrep = "LaResistenza;750", -- REP REWARD
    needsitem = "Jumper_DiamondPatternTINT;2", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_XuMishura",
    lore = { "IGUI_SFQuest_Questyno_XuMishura8_Lore" },
    text = "IGUI_SFQuest_Questyno_XuMishura8_Text",
    texture = "media/textures/Item_XuMishura.png",
    onobtained = "unlockworldevent;Questyno_XuMishura;SFQuest_Questyno_XuMishura8_Complete",
    title = "IGUI_SFQuest_Questyno_XuMishura8_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_XuMishura9",

    awardsrep = "LaResistenza;400", -- REP REWARD
    needsitem = "Shirt_Lumberjack;10", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_XuMishura",
    lore = { "IGUI_SFQuest_Questyno_XuMishura9_Lore" },
    text = "IGUI_SFQuest_Questyno_XuMishura9_Text",
    texture = "media/textures/Item_XuMishura.png",
    onobtained = "unlockworldevent;Questyno_XuMishura;SFQuest_Questyno_XuMishura9_Complete",
    title = "IGUI_SFQuest_Questyno_XuMishura9_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_XuMishura10",

    awardsrep = "LaResistenza;200", -- REP REWARD
    needsitem = "Apron_Spiffos;1", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_XuMishura",
    lore = { "IGUI_SFQuest_Questyno_XuMishura10_Lore" },
    text = "IGUI_SFQuest_Questyno_XuMishura10_Text",
    texture = "media/textures/Item_XuMishura.png",
    onobtained = "unlockworldevent;Questyno_XuMishura;SFQuest_Questyno_XuMishura10_Complete",
    title = "IGUI_SFQuest_Questyno_XuMishura10_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_XuMishura11",

    awardsrep = "LaResistenza;250", -- REP REWARD
    needsitem = "Vest_Hunting_Camo;1", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_XuMishura",
    lore = { "IGUI_SFQuest_Questyno_XuMishura11_Lore" },
    text = "IGUI_SFQuest_Questyno_XuMishura11_Text",
    texture = "media/textures/Item_XuMishura.png",
    onobtained = "unlockworldevent;Questyno_XuMishura;SFQuest_Questyno_XuMishura11_Complete",
    title = "IGUI_SFQuest_Questyno_XuMishura11_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_XuMishura12",

    awardsrep = "LaResistenza;450", -- REP REWARD
    needsitem = "Spongie.Jumper_TurtleVest;10", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_XuMishura",
    lore = { "IGUI_SFQuest_Questyno_XuMishura12_Lore" },
    text = "IGUI_SFQuest_Questyno_XuMishura12_Text",
    texture = "media/textures/Item_XuMishura.png",
    onobtained = "unlockworldevent;Questyno_XuMishura;SFQuest_Questyno_XuMishura12_Complete",
    title = "IGUI_SFQuest_Questyno_XuMishura12_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_XuMishura13",

    awardsrep = "LaResistenza;500", -- REP REWARD
    needsitem = "Jacket_Shellsuit_Teal;4", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_XuMishura",
    lore = { "IGUI_SFQuest_Questyno_XuMishura13_Lore" },
    text = "IGUI_SFQuest_Questyno_XuMishura13_Text",
    texture = "media/textures/Item_XuMishura.png",
    onobtained = "unlockworldevent;Questyno_XuMishura;SFQuest_Questyno_XuMishura13_Complete",
    title = "IGUI_SFQuest_Questyno_XuMishura13_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_XuMishura14",

    awardsrep = "LaResistenza;250", -- REP REWARD
    needsitem = "Jacket_Shellsuit_Black;2", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_XuMishura",
    lore = { "IGUI_SFQuest_Questyno_XuMishura14_Lore" },
    text = "IGUI_SFQuest_Questyno_XuMishura14_Text",
    texture = "media/textures/Item_XuMishura.png",
    onobtained = "unlockworldevent;Questyno_XuMishura;SFQuest_Questyno_XuMishura14_Complete",
    title = "IGUI_SFQuest_Questyno_XuMishura14_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_XuMishura15",

    awardsrep = "LaResistenza;100", -- REP REWARD
    needsitem = "Jacket_Varsity;1", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_XuMishura",
    lore = { "IGUI_SFQuest_Questyno_XuMishura15_Lore" },
    text = "IGUI_SFQuest_Questyno_XuMishura15_Text",
    texture = "media/textures/Item_XuMishura.png",
    onobtained = "unlockworldevent;Questyno_XuMishura;SFQuest_Questyno_XuMishura15_Complete",
    title = "IGUI_SFQuest_Questyno_XuMishura15_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_XuMishura16",

    awardsrep = "LaResistenza;350", -- REP REWARD
    needsitem = "Jacket_WhiteTINT;12", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_XuMishura",
    lore = { "IGUI_SFQuest_Questyno_XuMishura16_Lore" },
    text = "IGUI_SFQuest_Questyno_XuMishura16_Text",
    texture = "media/textures/Item_XuMishura.png",
    onobtained = "unlockworldevent;Questyno_XuMishura;SFQuest_Questyno_XuMishura16_Complete",
    title = "IGUI_SFQuest_Questyno_XuMishura16_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_XuMishura17",

    awardsrep = "LaResistenza;300", -- REP REWARD
    needsitem = "Jacket_Shellsuit_Green;4", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_XuMishura",
    lore = { "IGUI_SFQuest_Questyno_XuMishura17_Lore" },
    text = "IGUI_SFQuest_Questyno_XuMishura17_Text",
    texture = "media/textures/Item_XuMishura.png",
    onobtained = "unlockworldevent;Questyno_XuMishura;SFQuest_Questyno_XuMishura17_Complete",
    title = "IGUI_SFQuest_Questyno_XuMishura17_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_XuMishura18",

    awardsrep = "LaResistenza;400", -- REP REWARD
    needsitem = "Jumper_PoloNeck;10", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_XuMishura",
    lore = { "IGUI_SFQuest_Questyno_XuMishura18_Lore" },
    text = "IGUI_SFQuest_Questyno_XuMishura18_Text",
    texture = "media/textures/Item_XuMishura.png",
    onobtained = "unlockworldevent;Questyno_XuMishura;SFQuest_Questyno_XuMishura18_Complete",
    title = "IGUI_SFQuest_Questyno_XuMishura18_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_XuMishura19",

    awardsrep = "LaResistenza;450", -- REP REWARD
    needsitem = "Dungarees;10", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_XuMishura",
    lore = { "IGUI_SFQuest_Questyno_XuMishura19_Lore" },
    text = "IGUI_SFQuest_Questyno_XuMishura19_Text",
    texture = "media/textures/Item_XuMishura.png",
    onobtained = "unlockworldevent;Questyno_XuMishura;SFQuest_Questyno_XuMishura19_Complete",
    title = "IGUI_SFQuest_Questyno_XuMishura19_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_XuMishura20",

    awardsrep = "LaResistenza;80", -- REP REWARD
    needsitem = "Vest_DefaultTEXTURE;20", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_XuMishura",
    lore = { "IGUI_SFQuest_Questyno_XuMishura20_Lore" },
    text = "IGUI_SFQuest_Questyno_XuMishura20_Text",
    texture = "media/textures/Item_XuMishura.png",
    onobtained = "unlockworldevent;Questyno_XuMishura;SFQuest_Questyno_XuMishura20_Complete",
    title = "IGUI_SFQuest_Questyno_XuMishura20_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_XuMishura21",

    awardsrep = "LaResistenza;200", -- REP REWARD
    needsitem = "LongCoat_Bathrobe;1", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_XuMishura",
    lore = { "IGUI_SFQuest_Questyno_XuMishura21_Lore" },
    text = "IGUI_SFQuest_Questyno_XuMishura21_Text",
    texture = "media/textures/Item_XuMishura.png",
    onobtained = "unlockworldevent;Questyno_XuMishura;SFQuest_Questyno_XuMishura21_Complete",
    title = "IGUI_SFQuest_Questyno_XuMishura21_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_XuMishura22",

    awardsrep = "LaResistenza;400", -- REP REWARD
    needsitem = "Shirt_Denim;10", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_XuMishura",
    lore = { "IGUI_SFQuest_Questyno_XuMishura22_Lore" },
    text = "IGUI_SFQuest_Questyno_XuMishura22_Text",
    texture = "media/textures/Item_XuMishura.png",
    onobtained = "unlockworldevent;Questyno_XuMishura;SFQuest_Questyno_XuMishura22_Complete",
    title = "IGUI_SFQuest_Questyno_XuMishura22_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_XuMishura23",

    awardsrep = "LaResistenza;250", -- REP REWARD
    needsitem = "JacketLong_Random;5", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_XuMishura",
    lore = { "IGUI_SFQuest_Questyno_XuMishura23_Lore" },
    text = "IGUI_SFQuest_Questyno_XuMishura23_Text",
    texture = "media/textures/Item_XuMishura.png",
    onobtained = "unlockworldevent;Questyno_XuMishura;SFQuest_Questyno_XuMishura23_Complete",
    title = "IGUI_SFQuest_Questyno_XuMishura23_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_XuMishura24",

    awardsrep = "LaResistenza;100", -- REP REWARD
    needsitem = "Shirt_PoliceBlue;1", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_XuMishura",
    lore = { "IGUI_SFQuest_Questyno_XuMishura24_Lore" },
    text = "IGUI_SFQuest_Questyno_XuMishura24_Text",
    texture = "media/textures/Item_XuMishura.png",
    onobtained = "unlockworldevent;Questyno_XuMishura;SFQuest_Questyno_XuMishura24_Complete",
    title = "IGUI_SFQuest_Questyno_XuMishura24_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_XuMishura25",

    awardstask = "Questyno_XuMishura25_A",
    dailycode = "Questyno_XuMishura",
    lore = { "IGUI_SFQuest_Questyno_XuMishura25_Lore" },
    objectives = { {
        guid = "Questyno_XuMishura25_A",
        text = "IGUI_SFQuest_Questyno_XuMishura25_A",
        hidden = false,
        needsitem = "SwimTrunks_Green;1",
        onobtained = "updateobjective;Questyno_XuMishura25;1;Completed;removeitem;SwimTrunks_Green;1"
    }, {
        guid = "Questyno_XuMishura25_B",
        text = "IGUI_SFQuest_Questyno_XuMishura25_B",
        hidden = false,
        needsitem = "SwimTrunks_Red;1",
        onobtained = "updateobjective;Questyno_XuMishura25;2;Completed;removeitem;SwimTrunks_Red;1"
    }, {
        guid = "Questyno_XuMishura25_C",
        text = "IGUI_SFQuest_Questyno_XuMishura25_C",
        hidden = false,
        needsitem = "SwimTrunks_Yellow;1",
        onobtained = "updateobjective;Questyno_XuMishura25;3;Completed;removeitem;SwimTrunks_Yellow;1"
    }, {
        guid = "Questyno_XuMishura25_D",
        text = "IGUI_SFQuest_Questyno_XuMishura25_D",
        hidden = false,
        needsitem = "SwimTrunks_Blue;1",
        onobtained = "updateobjective;Questyno_XuMishura25;4;Completed;removeitem;SwimTrunks_Blue;1"
    } },
    text = "IGUI_SFQuest_Questyno_XuMishura25_Text",
    texture = "media/textures/Item_XuMishura.png",
    title = "IGUI_SFQuest_Questyno_XuMishura25_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_XuMishura25_A",

    awardsrep = "LaResistenza;200",
    completesound = "levelup",                                                                                          -- Suono completamento quest, sempre uguale
    dailycode = "Questyno_XuMishura",
    lore = { "IGUI_SFQuest_Questyno_XuMishura25_Lore" },
    unlocks = "unlockworldevent;Questyno_XuMishura;SFQuest_Questyno_XuMishura25_Complete",
    text = "IGUI_SFQuest_Questyno_XuMishura25_A_Text",
    texture = "media/textures/Item_XuMishura.png",
    title = "IGUI_SFQuest_Questyno_XuMishura25_Title",
})


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_XuMishura26",

    awardstask = "Questyno_XuMishura26_A",
    dailycode = "Questyno_XuMishura",
    lore = { "IGUI_SFQuest_Questyno_XuMishura26_Lore" },
    objectives = { {
        guid = "Questyno_XuMishura26_A",
        text = "IGUI_SFQuest_Questyno_XuMishura26_A",
        hidden = false,
        needsitem = "Apron_White;1",
        onobtained = "updateobjective;Questyno_XuMishura26;1;Completed;removeitem;Apron_White;1"
    }, {
        guid = "Questyno_XuMishura26_B",
        text = "IGUI_SFQuest_Questyno_XuMishura26_B",
        hidden = false,
        needsitem = "Apron_PizzaWhirled;1",
        onobtained = "updateobjective;Questyno_XuMishura26;2;Completed;removeitem;Apron_PizzaWhirled;1"
    }, {
        guid = "Questyno_XuMishura26_C",
        text = "IGUI_SFQuest_Questyno_XuMishura26_C",
        hidden = false,
        needsitem = "Apron_PileOCrepe;1",
        onobtained = "updateobjective;Questyno_XuMishura26;3;Completed;removeitem;Apron_PileOCrepe;1"
    }, {
        guid = "Questyno_XuMishura26_D",
        text = "IGUI_SFQuest_Questyno_XuMishura26_D",
        hidden = false,
        needsitem = "Apron_Black;1",
        onobtained = "updateobjective;Questyno_XuMishura26;4;Completed;removeitem;Apron_Black;1"
    } },
    text = "IGUI_SFQuest_Questyno_XuMishura26_Text",
    texture = "media/textures/Item_XuMishura.png",
    title = "IGUI_SFQuest_Questyno_XuMishura26_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_XuMishura26_A",

    awardsrep = "LaResistenza;1000",
    completesound = "levelup",                                                                                          -- Suono completamento quest, sempre uguale
    dailycode = "Questyno_XuMishura",
    lore = { "IGUI_SFQuest_Questyno_XuMishura26_Lore" },
    unlocks = "unlockworldevent;Questyno_XuMishura;SFQuest_Questyno_XuMishura26_Complete",
    text = "IGUI_SFQuest_Questyno_XuMishura26_A_Text",
    texture = "media/textures/Item_XuMishura.png",
    title = "IGUI_SFQuest_Questyno_XuMishura26_Title",
})


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_XuMishura27",

    awardstask = "Questyno_XuMishura27_A",
    dailycode = "Questyno_XuMishura",
    lore = { "IGUI_SFQuest_Questyno_XuMishura27_Lore" },
    objectives = { {
        guid = "Questyno_XuMishura27_A",
        text = "IGUI_SFQuest_Questyno_XuMishura27_A",
        hidden = false,
        needsitem = "Skirt_Long;1",
        onobtained = "updateobjective;Questyno_XuMishura27;1;Completed;removeitem;Skirt_Long;1"
    }, {
        guid = "Questyno_XuMishura27_B",
        text = "IGUI_SFQuest_Questyno_XuMishura27_B",
        hidden = false,
        needsitem = "Skirt_Short;1",
        onobtained = "updateobjective;Questyno_XuMishura27;2;Completed;removeitem;Skirt_Short;1"
    }, {
        guid = "Questyno_XuMishura27_C",
        text = "IGUI_SFQuest_Questyno_XuMishura27_C",
        hidden = false,
        needsitem = "Skirt_Knees;1",
        onobtained = "updateobjective;Questyno_XuMishura27;3;Completed;removeitem;Skirt_Knees;1"
    } },
    text = "IGUI_SFQuest_Questyno_XuMishura27_Text",
    texture = "media/textures/Item_XuMishura.png",
    title = "IGUI_SFQuest_Questyno_XuMishura27_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_XuMishura27_A",

    awardsrep = "LaResistenza;300",
    completesound = "levelup",                                                                                          -- Suono completamento quest, sempre uguale
    dailycode = "Questyno_XuMishura",
    lore = { "IGUI_SFQuest_Questyno_XuMishura27_Lore" },
    unlocks = "unlockworldevent;Questyno_XuMishura;SFQuest_Questyno_XuMishura27_Complete",
    text = "IGUI_SFQuest_Questyno_XuMishura27_A_Text",
    texture = "media/textures/Item_XuMishura.png",
    title = "IGUI_SFQuest_Questyno_XuMishura27_Title",
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_XuMishura28",

    awardsrep = "LaResistenza;200", -- REP REWARD
    needsitem = "Skirt_Knees;5", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_XuMishura",
    lore = { "IGUI_SFQuest_Questyno_XuMishura28_Lore" },
    text = "IGUI_SFQuest_Questyno_XuMishura28_Text",
    texture = "media/textures/Item_XuMishura.png",
    onobtained = "unlockworldevent;Questyno_XuMishura;SFQuest_Questyno_XuMishura28_Complete",
    title = "IGUI_SFQuest_Questyno_XuMishura28_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_XuMishura29",

    awardsrep = "LaResistenza;200", -- REP REWARD
    needsitem = "Trousers_JeanBaggy;8", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_XuMishura",
    lore = { "IGUI_SFQuest_Questyno_XuMishura29_Lore" },
    text = "IGUI_SFQuest_Questyno_XuMishura29_Text",
    texture = "media/textures/Item_XuMishura.png",
    onobtained = "unlockworldevent;Questyno_XuMishura;SFQuest_Questyno_XuMishura29_Complete",
    title = "IGUI_SFQuest_Questyno_XuMishura29_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_XuMishura30",

    awardsrep = "LaResistenza;300", -- REP REWARD
    needsitem = "Tag#Calzamaglia;1", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_XuMishura",
    lore = { "IGUI_SFQuest_Questyno_XuMishura30_Lore" },
    text = "IGUI_SFQuest_Questyno_XuMishura30_Text",
    texture = "media/textures/Item_XuMishura.png",
    onobtained = "unlockworldevent;Questyno_XuMishura;SFQuest_Questyno_XuMishura30_Complete",
    title = "IGUI_SFQuest_Questyno_XuMishura30_Title",
    unlockedsound = "QuestUnlocked"
})



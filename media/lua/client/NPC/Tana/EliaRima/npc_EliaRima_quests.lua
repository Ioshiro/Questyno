require 'SFQuest_Database'

-- Quest per EliaRima
table.insert(SFQuest_Database.QuestPool, rimaQuest22);

local rimaQuest23 = {
    guid = "Questyno_EliaRima23",

    awardsrep = "LaResistenza;50", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_EliaRima",
    lore = { "IGUI_SFQuest_Questyno_EliaRima23_Lore" },
    needsitem = "BookTrapping1;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_EliaRima;SFQuest_Questyno_EliaRima23_Complete",
    text = "IGUI_SFQuest_Questyno_EliaRima23_Text",
    texture = "media/textures/Item_EliaRima.png",
    title = "IGUI_SFQuest_Questyno_EliaRima23_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, rimaQuest23);

--[[
            *** Bob Repair ***
            Elenco:
                intro. Parla con Bob per sbloccare le daily.
				1. Recuperare Base.SmallSheetMetal;2 (40rep)
				2. Recuperare Base.SheetMetal;2 (120rep + Base.ScrapVest)
				3. Recuperare Sweapons.GearMace parlando con (11599,9788,0) (100rep + 20$)
				4. Recuperare Base.ElectronicsScrap;15,Base.ElectricWire;2,Base.SheetMetal (140rep)
				5. Recuperare Base.ElectronicsScrap;20 (120rep)
				6. Recuperare Base.ElectronicsScrap;10,Base.Battery;2,Radio.RadioTransmitter;2 (150rep + SWeapons.TireIronAxe)
				7. Recuperare Base.Generator parlando con (7183,9601,0) (50rep + 30$)
				8. Recuperare Base.ElectricWire;5 (40rep + Base.Ham)
				9. Recuperare Base.ScrapMetal;4,Base.ElectronicsScrap;16 (60rep)
				10. Recuperare Base.EngineParts;2 (150rep)
				11. Recuperare 2 Base.MetalPipe (100rep)
				12. Recuperare Base.UnusableMetal;4 (30rep + Base.ScrapKilt)
				13. Recuperare Base.ElectronicsMag1 parlando con (9767,11179,0) (100rep)
				14. Recuperare WaterBottleFull (30rep)
				15. Recuperare Base.SheetMetal;10,Base.EngineParts;10,Base.ElectronicsScrap;10,Base.UnusableMetal;10 parlando con (8261,7507,0) (50rep + Base.SheetMetal;2,Base.EngineParts;2)
				16. Recuperare Base.ElectronicsScrap;20 (50rep)
				17. Recuperare Base.Wrench parlando con (8308,11182,0) (50rep)
				18. Recuperare Base.SheetPaper2 parlando con (7136,9624,0) (50rep + 25$)
				19. Recuperare Base.MetalPipe (35rep)
				20. Recuperare Base.ScrapMetal;15 (70rep)
				21. Recuperare Base.ScrapMetal;20 (100rep)
				22. Recuperare Base.PipeWrench parlando con (8305,11180,0) (50rep + Base.PipeWrench)
				23. Recuperare Base.ScrapMetal;6 (70rep)
]]

local bobIntro = {
    guid = "Questyno_BobRepair_Intro",

    awardsrep = "BobRepair;100", -- REP REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_BobRepair_Intro_Lore" },
    ondone = "randomcodedworldfrompool;Questyno_BobRepair;Questyno;BobRepair",
    text = "IGUI_SFQuest_Questyno_BobRepair_Intro_Text",
    texture = "media/textures/Item_BobRepair.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_BobRepair;SFQuest_Questyno_BobRepair_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_BobRepair_Intro_Title",
}
table.insert(SFQuest_Database.QuestPool, bobIntro);

local bobQuest1 = {
    guid = "Questyno_BobRepair1",

    awardsrep = "LaResistenza;400", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_BobRepair",
    lore = { "IGUI_SFQuest_Questyno_BobRepair1_Lore" },
    needsitem = "SmallSheetMetal;5", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_BobRepair;SFQuest_Questyno_BobRepair1_Complete",
    text = "IGUI_SFQuest_Questyno_BobRepair1_Text",
    texture = "media/textures/Item_BobRepair.png",
    title = "IGUI_SFQuest_Questyno_BobRepair1_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, bobQuest1);

local bobQuest2 = {
    guid = "Questyno_BobRepair2",

    awardsrep = "LaResistenza;600", -- REP REWARD
    awardsitem = "ScrapVest",       -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_BobRepair",
    lore = { "IGUI_SFQuest_Questyno_BobRepair2_Lore" },
    needsitem = "SheetMetal;5", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_BobRepair;SFQuest_Questyno_BobRepair2_Complete",
    text = "IGUI_SFQuest_Questyno_BobRepair2_Text",
    texture = "media/textures/Item_BobRepair.png",
    title = "IGUI_SFQuest_Questyno_BobRepair2_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, bobQuest2);

local bobQuest3 = {
    guid = "Questyno_BobRepair3",

    awardstask = "Questyno_BobRepair3_A", -- TASK REWARD
    completesound = "levelup",
    dailycode = "Questyno_BobRepair",
    lore = { "IGUI_SFQuest_Questyno_BobRepair3_Lore" },
    objectives = { {
        guid = "Questyno_BobRepair3_A",
        text = "IGUI_SFQuest_Questyno_BobRepair3_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoBobRepair3;additem;SWeapons.GearMace;1"
    } },
    text = "IGUI_SFQuest_Questyno_BobRepair3_Text",
    texture = "media/textures/Item_BobRepair.png",
    title = "IGUI_SFQuest_Questyno_BobRepair3_Title",
    unlocks = "clickevent;6616x10441x0:EventoBobRepair3;time:50:anim:loot;updateobjective:Questyno_BobRepair3:1:Completed",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, bobQuest3);

local bobQuest3A = {
    guid = "Questyno_BobRepair3_A",

    awardsrep = "LaResistenza;1750", -- REP REWARD
    awardsitem = "Money;20",        -- MONEY REWARD
    completesound = "levelup",
    dailycode = "Questyno_BobRepair",
    lore = { "IGUI_SFQuest_Questyno_BobRepair3_Lore" },
    needsitem = "SWeapons.GearMace;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_BobRepair;SFQuest_Questyno_BobRepair3_Complete",
    text = "IGUI_SFQuest_Questyno_BobRepair3_A_Text",
    texture = "media/textures/Item_BobRepair.png",
    title = "IGUI_SFQuest_Questyno_BobRepair3_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, bobQuest3A);

local bobQuest4 = {
    guid = "Questyno_BobRepair4",

    awardstask = "Questyno_BobRepair4_A", -- TASK REWARD
    dailycode = "Questyno_BobRepair",
    lore = { "IGUI_SFQuest_Questyno_BobRepair4_Lore" },
    objectives = { {
        guid = "Questyno_BobRepair4_A",
        text = "IGUI_SFQuest_Questyno_BobRepair4_A",
        needsitem = "ElectronicsScrap;50",
        icon = "media/textures/Item_ElectronicsScrap",
        onobtained = "updateobjective;Questyno_BobRepair4;1;Completed;removeitem;ElectronicsScrap;50",
        hidden = false,
    }, {
        guid = "Questyno_BobRepair4_B",
        text = "IGUI_SFQuest_Questyno_BobRepair4_B",
        needsitem = "ElectricWire;80",
        icon = "media/textures/Item_ElectricWire",
        onobtained = "updateobjective;Questyno_BobRepair4;2;Completed;removeitem;ElectricWire;80",
        hidden = false,
    }, {
        guid = "Questyno_BobRepair4_C",
        text = "IGUI_SFQuest_Questyno_BobRepair4_C",
        needsitem = "SheetMetal;1",
        icon = "media/textures/Item_SheetMetal",
        onobtained = "updateobjective;Questyno_BobRepair4;3;Completed;removeitem;SheetMetal;1",
        hidden = false,
    } }, -- REQUIRE
    text = "IGUI_SFQuest_Questyno_BobRepair4_Text",
    texture = "media/textures/Item_BobRepair.png",
    title = "IGUI_SFQuest_Questyno_BobRepair4_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, bobQuest4);

local bobQuest4A = {
    guid = "Questyno_BobRepair4_A",

    awardsrep = "LaResistenza;750", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_BobRepair",
    lore = { "IGUI_SFQuest_Questyno_BobRepair4_Lore" },
    unlocks = "unlockworldevent;Questyno_BobRepair;SFQuest_Questyno_BobRepair4_Complete",
    text = "IGUI_SFQuest_Questyno_BobRepair4_A_Text",
    texture = "media/textures/Item_BobRepair.png",
    title = "IGUI_SFQuest_Questyno_BobRepair4_Title",
}
table.insert(SFQuest_Database.QuestPool, bobQuest4A);

local bobQuest5 = {
    guid = "Questyno_BobRepair5",

    awardsrep = "LaResistenza;200", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_BobRepair",
    lore = { "IGUI_SFQuest_Questyno_BobRepair5_Lore" },
    needsitem = "ElectronicsScrap;20", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_BobRepair;SFQuest_Questyno_BobRepair5_Complete",
    text = "IGUI_SFQuest_Questyno_BobRepair5_Text",
    texture = "media/textures/Item_BobRepair.png",
    title = "IGUI_SFQuest_Questyno_BobRepair5_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, bobQuest5);

local bobQuest6 = {
    guid = "Questyno_BobRepair6",

    awardstask = "Questyno_BobRepair6_A", -- TASK REWARD
    awardsitem = "TireIronAxe",           -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_BobRepair",
    lore = { "IGUI_SFQuest_Questyno_BobRepair6_Lore" },
    objectives = { {
        guid = "Questyno_BobRepair6_A",
        text = "IGUI_SFQuest_Questyno_BobRepair6_A",
        needsitem = "ElectronicsScrap;100",
        icon = "media/textures/Item_ElectronicsScrap",
        onobtained = "updateobjective;Questyno_BobRepair6;1;Completed;removeitem;ElectronicsScrap;100",
        hidden = false,
    }, {
        guid = "Questyno_BobRepair6_B",
        text = "IGUI_SFQuest_Questyno_BobRepair6_B",
        needsitem = "Battery;20",
        icon = "media/textures/Item_Battery",
        onobtained = "updateobjective;Questyno_BobRepair6;2;Completed;removeitem;Battery;20",
        hidden = false,
    }, {
        guid = "Questyno_BobRepair6_C",
        text = "IGUI_SFQuest_Questyno_BobRepair6_C",
        needsitem = "RadioTransmitter;50",
        icon = "media/textures/Item_RadioTransmitter",
        onobtained = "updateobjective;Questyno_BobRepair6;3;Completed;removeitem;RadioTransmitter;50",
        hidden = false,
    } }, -- REQUIRE
    text = "IGUI_SFQuest_Questyno_BobRepair6_Text",
    texture = "media/textures/Item_BobRepair.png",
    title = "IGUI_SFQuest_Questyno_BobRepair6_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, bobQuest6);

local bobQuest6A = {
    guid = "Questyno_BobRepair6_A",

    awardsrep = "LaResistenza;1500",      -- REP REWARD
    awardsitem = "SWeapons.TireIronAxe", -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_BobRepair",
    lore = { "IGUI_SFQuest_Questyno_BobRepair6_Lore" },
    unlocks = "unlockworldevent;Questyno_BobRepair;SFQuest_Questyno_BobRepair6_Complete",
    text = "IGUI_SFQuest_Questyno_BobRepair6_A_Text",
    texture = "media/textures/Item_BobRepair.png",
    title = "IGUI_SFQuest_Questyno_BobRepair6_Title",
}
table.insert(SFQuest_Database.QuestPool, bobQuest6A);

local bobQuest7 = {
    guid = "Questyno_BobRepair7",

    awardstask = "Questyno_BobRepair7_A", -- TASK REWARD
    completesound = "levelup",
    dailycode = "Questyno_BobRepair",
    lore = { "IGUI_SFQuest_Questyno_BobRepair7_Lore" },
    objectives = { {
        guid = "Questyno_BobRepair7_A",
        text = "IGUI_SFQuest_Questyno_BobRepair7_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoBobRepair7;additem;Generator;1"
    } },
    text = "IGUI_SFQuest_Questyno_BobRepair7_Text",
    texture = "media/textures/Item_BobRepair.png",
    title = "IGUI_SFQuest_Questyno_BobRepair7_Title",
    unlocks = "clickevent;7183x9601x0:EventoBobRepair7;time:50:anim:loot;updateobjective:Questyno_BobRepair7:1:Completed",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, bobQuest7);

local bobQuest7A = {
    guid = "Questyno_BobRepair7_A",

    awardsrep = "LaResistenza;200", -- REP REWARD
    awardsitem = "Money;30",       -- MONEY REWARD
    completesound = "levelup",
    dailycode = "Questyno_BobRepair",
    lore = { "IGUI_SFQuest_Questyno_BobRepair7_Lore" },
    needsitem = "Generator;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_BobRepair;SFQuest_Questyno_BobRepair7_Complete",
    text = "IGUI_SFQuest_Questyno_BobRepair7_A_Text",
    texture = "media/textures/Item_BobRepair.png",
    title = "IGUI_SFQuest_Questyno_BobRepair7_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, bobQuest7A);

local bobQuest8 = {
    guid = "Questyno_BobRepair8",

    awardsrep = "LaResistenza;350", -- REP REWARD
    awardsitem = "Ham",            -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_BobRepair",
    lore = { "IGUI_SFQuest_Questyno_BobRepair8_Lore" },
    needsitem = "ElectricWire;50", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_BobRepair;SFQuest_Questyno_BobRepair8_Complete",
    text = "IGUI_SFQuest_Questyno_BobRepair8_Text",
    texture = "media/textures/Item_BobRepair.png",
    title = "IGUI_SFQuest_Questyno_BobRepair8_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, bobQuest8);

local bobQuest9 = {
    guid = "Questyno_BobRepair9",

    awardstask = "Questyno_BobRepair9_A", -- TASK REWARD
    dailycode = "Questyno_BobRepair",
    lore = { "IGUI_SFQuest_Questyno_BobRepair9_Lore" },
    objectives = { {
        guid = "Questyno_BobRepair9_A",
        text = "IGUI_SFQuest_Questyno_BobRepair9_A",
        needsitem = "ScrapMetal;4",
        icon = "media/textures/Item_ScrapMetal",
        onobtained = "updateobjective;Questyno_BobRepair9;1;Completed;removeitem;ScrapMetal;4",
        hidden = false,
    }, {
        guid = "Questyno_BobRepair9_B",
        text = "IGUI_SFQuest_Questyno_BobRepair9_B",
        needsitem = "ElectronicsScrap;16",
        icon = "media/textures/Item_ElectronicsScrap",
        onobtained = "updateobjective;Questyno_BobRepair9;2;Completed;removeitem;ElectronicsScrap;16",
        hidden = false,
    } }, -- REQUIRE
    text = "IGUI_SFQuest_Questyno_BobRepair9_Text",
    texture = "media/textures/Item_BobRepair.png",
    title = "IGUI_SFQuest_Questyno_BobRepair9_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, bobQuest9);

local bobQuest9A = {
    guid = "Questyno_BobRepair9_A",

    awardsrep = "LaResistenza;100", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_BobRepair",
    lore = { "IGUI_SFQuest_Questyno_BobRepair9_Lore" },
    unlocks = "unlockworldevent;Questyno_BobRepair;SFQuest_Questyno_BobRepair9_Complete",
    text = "IGUI_SFQuest_Questyno_BobRepair9_A_Text",
    texture = "media/textures/Item_BobRepair.png",
    title = "IGUI_SFQuest_Questyno_BobRepair9_Title",
}
table.insert(SFQuest_Database.QuestPool, bobQuest9A);

local bobQuest10 = {
    guid = "Questyno_BobRepair10",

    awardsrep = "LaResistenza;700", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_BobRepair",
    lore = { "IGUI_SFQuest_Questyno_BobRepair10_Lore" },
    needsitem = "EngineParts;20", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_BobRepair;SFQuest_Questyno_BobRepair10_Complete",
    text = "IGUI_SFQuest_Questyno_BobRepair10_Text",
    texture = "media/textures/Item_BobRepair.png",
    title = "IGUI_SFQuest_Questyno_BobRepair10_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, bobQuest10);

local bobQuest11 = {
    guid = "Questyno_BobRepair11",

    awardsrep = "LaResistenza;100", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_BobRepair",
    lore = { "IGUI_SFQuest_Questyno_BobRepair11_Lore" },
    needsitem = "MetalPipe;2", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_BobRepair;SFQuest_Questyno_BobRepair11_Complete",
    text = "IGUI_SFQuest_Questyno_BobRepair11_Text",
    texture = "media/textures/Item_BobRepair.png",
    title = "IGUI_SFQuest_Questyno_BobRepair11_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, bobQuest11);

local bobQuest12 = {
    guid = "Questyno_BobRepair12",

    awardsrep = "LaResistenza;120", -- REP REWARD
    awardsitem = "ScrapKilt",      -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_BobRepair",
    lore = { "IGUI_SFQuest_Questyno_BobRepair12_Lore" },
    needsitem = "UnusableMetal;4", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_BobRepair;SFQuest_Questyno_BobRepair12_Complete",
    text = "IGUI_SFQuest_Questyno_BobRepair12_Text",
    texture = "media/textures/Item_BobRepair.png",
    title = "IGUI_SFQuest_Questyno_BobRepair12_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, bobQuest12);

local bobQuest13 = {
    guid = "Questyno_BobRepair13",

    awardstask = "Questyno_BobRepair13_A", -- TASK REWARD
    completesound = "levelup",
    dailycode = "Questyno_BobRepair",
    lore = { "IGUI_SFQuest_Questyno_BobRepair13_Lore" },
    objectives = { {
        guid = "Questyno_BobRepair13_A",
        text = "IGUI_SFQuest_Questyno_BobRepair13_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoBobRepair13;additem;ElectronicsMag1;1"
    } },
    text = "IGUI_SFQuest_Questyno_BobRepair13_Text",
    texture = "media/textures/Item_BobRepair.png",
    title = "IGUI_SFQuest_Questyno_BobRepair13_Title",
    unlocks =
    "clickevent;9767x11179x0:EventoBobRepair13;time:50:anim:loot;updateobjective:Questyno_BobRepair13:1:Completed",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, bobQuest13);

local bobQuest13A = {
    guid = "Questyno_BobRepair13_A",

    awardsrep = "LaResistenza;1000", -- REP REWARD
    awardsitem = "Money;50",       -- MONEY REWARD
    completesound = "levelup",
    dailycode = "Questyno_BobRepair",
    lore = { "IGUI_SFQuest_Questyno_BobRepair13_Lore" },
    needsitem = "ElectronicsMag1;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_BobRepair;SFQuest_Questyno_BobRepair13_Complete",
    text = "IGUI_SFQuest_Questyno_BobRepair13_A_Text",
    texture = "media/textures/Item_BobRepair.png",
    title = "IGUI_SFQuest_Questyno_BobRepair13_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, bobQuest13A);

local bobQuest14 = {
    guid = "Questyno_BobRepair14",

    awardsrep = "LaResistenza;30",  -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_BobRepair",
    lore = { "IGUI_SFQuest_Questyno_BobRepair14_Lore" },
    needsitem = "WaterBottleFull", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_BobRepair;SFQuest_Questyno_BobRepair14_Complete",
    text = "IGUI_SFQuest_Questyno_BobRepair14_Text",
    texture = "media/textures/Item_BobRepair.png",
    title = "IGUI_SFQuest_Questyno_BobRepair14_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, bobQuest14);

local bobQuest15 = {
    guid = "Questyno_BobRepair15",

    awardstask = "Questyno_BobRepair15_A",     -- TASK REWARD
    completesound = "levelup",
    dailycode = "Questyno_BobRepair",
    lore = { "IGUI_SFQuest_Questyno_BobRepair15_Lore" },
    objectives = { {
        guid = "Questyno_BobRepair15_A",
        text = "IGUI_SFQuest_Questyno_BobRepair15_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoBobRepair15;additem;SheetMetal;10;additem;EngineParts;10;additem;ElectronicsScrap;10;additem;UnusableMetal;10"
    } },
    text = "IGUI_SFQuest_Questyno_BobRepair15_Text",
    texture = "media/textures/Item_BobRepair.png",
    title = "IGUI_SFQuest_Questyno_BobRepair15_Title",
    unlocks =
    "clickevent;8261x7507x0:EventoBobRepair15;time:50:anim:loot;updateobjective:Questyno_BobRepair15:1:Completed",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, bobQuest15);

local bobQuest15A = {
    guid = "Questyno_BobRepair15_A",

    awardstask = "Questyno_BobRepair15_B", -- TASK REWARD
    dailycode = "Questyno_BobRepair",
    lore = { "IGUI_SFQuest_Questyno_BobRepair15_Lore" },
    objectives = { {
        guid = "Questyno_BobRepair15_B",
        text = "IGUI_SFQuest_Questyno_BobRepair15_B",
        needsitem = "SheetMetal;10",
        icon = "media/textures/Item_SheetMetal",
        onobtained = "updateobjective;Questyno_BobRepair15_A;1;Completed;removeitem;SheetMetal;10",
        hidden = false,
    }, {
        guid = "Questyno_BobRepair15_C",
        text = "IGUI_SFQuest_Questyno_BobRepair15_C",
        needsitem = "EngineParts;10",
        icon = "media/textures/Item_EngineParts",
        onobtained = "updateobjective;Questyno_BobRepair15_A;2;Completed;removeitem;EngineParts;10",
        hidden = false,
    }, {
        guid = "Questyno_BobRepair15_D",
        text = "IGUI_SFQuest_Questyno_BobRepair15_D",
        needsitem = "ElectronicsScrap;10",
        icon = "media/textures/Item_ElectronicsScrap",
        onobtained = "updateobjective;Questyno_BobRepair15_A;3;Completed;removeitem;ElectronicsScrap;10",
        hidden = false,
    }, {
        guid = "Questyno_BobRepair15_E",
        text = "IGUI_SFQuest_Questyno_BobRepair15_E",
        needsitem = "UnusableMetal;10",
        icon = "media/textures/Item_UnusableMetal",
        onobtained = "updateobjective;Questyno_BobRepair15_A;4;Completed;removeitem;UnusableMetal;10",
        hidden = false,
    } }, -- REQUIRE
    text = "IGUI_SFQuest_Questyno_BobRepair15_A_Text",
    texture = "media/textures/Item_BobRepair.png",
    title = "IGUI_SFQuest_Questyno_BobRepair15_Title",
}
table.insert(SFQuest_Database.QuestPool, bobQuest15A);

local bobQuest15B = {
    guid = "Questyno_BobRepair15_B",

    awardsrep = "LaResistenza;100",             -- REP REWARD
    awardsitem = "SheetMetal;2;EngineParts;10", -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_BobRepair",
    lore = { "IGUI_SFQuest_Questyno_BobRepair15_Lore" },
    unlocks = "unlockworldevent;Questyno_BobRepair;SFQuest_Questyno_BobRepair15_Complete",
    text = "IGUI_SFQuest_Questyno_BobRepair15_B_Text",
    texture = "media/textures/Item_BobRepair.png",
    title = "IGUI_SFQuest_Questyno_BobRepair15_Title",
}
table.insert(SFQuest_Database.QuestPool, bobQuest15B);

local bobQuest16 = {
    guid = "Questyno_BobRepair16",

    awardsrep = "LaResistenza;50",      -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_BobRepair",
    lore = { "IGUI_SFQuest_Questyno_BobRepair16_Lore" },
    needsitem = "ElectronicsScrap;20", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_BobRepair;SFQuest_Questyno_BobRepair16_Complete",
    text = "IGUI_SFQuest_Questyno_BobRepair16_Text",
    texture = "media/textures/Item_BobRepair.png",
    title = "IGUI_SFQuest_Questyno_BobRepair16_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, bobQuest16);

local bobQuest17 = {
    guid = "Questyno_BobRepair17",

    awardstask = "Questyno_BobRepair17_A", -- TASK REWARD
    dailycode = "Questyno_BobRepair",
    lore = { "IGUI_SFQuest_Questyno_BobRepair17_Lore" },
    objectives = { {
        guid = "Questyno_BobRepair17_A",
        text = "IGUI_SFQuest_Questyno_BobRepair17_A",
        icon = "media/textures/Item_Wrench",
        hidden = false,
        oncompleted = "removeclickevent;EventoBobRepair17;additem;PipeWrench;1"
    } }, -- REQUIRE
    text = "IGUI_SFQuest_Questyno_BobRepair17_Text",
    texture = "media/textures/Item_BobRepair.png",
    title = "IGUI_SFQuest_Questyno_BobRepair17_Title",
    unlockedsound = "QuestUnlocked",
    unlocks =
    "clickevent;8308x11182x0:EventoBobRepair17;time:50:anim:loot;updateobjective:Questyno_BobRepair17:1:Completed",
}
table.insert(SFQuest_Database.QuestPool, bobQuest17);

local bobQuest17A = {
    guid = "Questyno_BobRepair17_A",

    awardsrep = "LaResistenza;150", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_BobRepair",
    lore = { "IGUI_SFQuest_Questyno_BobRepair17_Lore" },
    needsitem = "PipeWrench;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_BobRepair;SFQuest_Questyno_BobRepair17_Complete",
    text = "IGUI_SFQuest_Questyno_BobRepair17_A_Text",
    texture = "media/textures/Item_BobRepair.png",
    title = "IGUI_SFQuest_Questyno_BobRepair17_Title",
}
table.insert(SFQuest_Database.QuestPool, bobQuest17A);

local bobQuest18 = {
    guid = "Questyno_BobRepair18",

    awardstask = "Questyno_BobRepair18_A", -- TASK REWARD
    dailycode = "Questyno_BobRepair",
    lore = { "IGUI_SFQuest_Questyno_BobRepair18_Lore" },
    objectives = { {
        guid = "Questyno_BobRepair18_A",
        text = "IGUI_SFQuest_Questyno_BobRepair18_A",
        icon = "media/textures/Item_SheetMetal",
        hidden = false,
        oncompleted = "removeclickevent;EventoBobRepair18;additem;SheetPaper2;1"
    } }, -- REQUIRE
    text = "IGUI_SFQuest_Questyno_BobRepair18_Text",
    texture = "media/textures/Item_BobRepair.png",
    title = "IGUI_SFQuest_Questyno_BobRepair18_Title",
    unlockedsound = "QuestUnlocked",
    unlocks =
    "clickevent;7136x9624x0:EventoBobRepair18;time:50:anim:loot;updateobjective:Questyno_BobRepair18:1:Completed",
}
table.insert(SFQuest_Database.QuestPool, bobQuest18);

local bobQuest18A = {
    guid = "Questyno_BobRepair18_A",

    awardsrep = "LaResistenza;120", -- REP REWARD
    awardsitem = "Money;25",       -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_BobRepair",
    lore = { "IGUI_SFQuest_Questyno_BobRepair18_Lore" },
    needsitem = "SheetPaper2;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_BobRepair;SFQuest_Questyno_BobRepair18_Complete",
    text = "IGUI_SFQuest_Questyno_BobRepair18_A_Text",
    texture = "media/textures/Item_BobRepair.png",
    title = "IGUI_SFQuest_Questyno_BobRepair18_Title",
}
table.insert(SFQuest_Database.QuestPool, bobQuest18A);

local bobQuest19 = {
    guid = "Questyno_BobRepair19",

    awardsrep = "LaResistenza;35", -- REP REWARD
    dailycode = "Questyno_BobRepair",
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_BobRepair19_Lore" },
    needsitem = "MetalPipe;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_BobRepair;SFQuest_Questyno_BobRepair19_Complete",
    text = "IGUI_SFQuest_Questyno_BobRepair19_Text",
    texture = "media/textures/Item_BobRepair.png",
    title = "IGUI_SFQuest_Questyno_BobRepair19_Title",
    unlockedsound = "QuestUnlocked",
}
table.insert(SFQuest_Database.QuestPool, bobQuest19);

local bobQuest20 = {
    guid = "Questyno_BobRepair20",

    awardsrep = "LaResistenza;750", -- REP REWARD
    dailycode = "Questyno_BobRepair",
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_BobRepair20_Lore" },
    needsitem = "ScrapMetal;40", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_BobRepair;SFQuest_Questyno_BobRepair20_Complete",
    text = "IGUI_SFQuest_Questyno_BobRepair20_Text",
    texture = "media/textures/Item_BobRepair.png",
    title = "IGUI_SFQuest_Questyno_BobRepair20_Title",
    unlockedsound = "QuestUnlocked",
}
table.insert(SFQuest_Database.QuestPool, bobQuest20);

local bobQuest21 = {
    guid = "Questyno_BobRepair21",

    awardsrep = "LaResistenza;350", -- REP REWARD
    dailycode = "Questyno_BobRepair",
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_BobRepair21_Lore" },
    needsitem = "ScrapMetal;20", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_BobRepair;SFQuest_Questyno_BobRepair21_Complete",
    text = "IGUI_SFQuest_Questyno_BobRepair21_Text",
    texture = "media/textures/Item_BobRepair.png",
    title = "IGUI_SFQuest_Questyno_BobRepair21_Title",
    unlockedsound = "QuestUnlocked",
}
table.insert(SFQuest_Database.QuestPool, bobQuest21);

local bobQuest22 = {
    guid = "Questyno_BobRepair22",

    awardstask = "Questyno_BobRepair22_A", -- TASK REWARD
    dailycode = "Questyno_BobRepair",
    lore = { "IGUI_SFQuest_Questyno_BobRepair22_Lore" },
    objectives = { {
        guid = "Questyno_BobRepair22_A",
        text = "IGUI_SFQuest_Questyno_BobRepair22_A",
        icon = "media/textures/Item_PipeWrench",
        hidden = false,
        oncompleted = "removeclickevent;EventoBobRepair22;additem;PipeWrench;1"
    } }, -- REQUIRE
    text = "IGUI_SFQuest_Questyno_BobRepair22_Text",
    texture = "media/textures/Item_BobRepair.png",
    title = "IGUI_SFQuest_Questyno_BobRepair22_Title",
    unlockedsound = "QuestUnlocked",
    unlocks =
    "clickevent;8305x11180x0:EventoBobRepair22;time:50:anim:loot;updateobjective:Questyno_BobRepair22:1:Completed",
}
table.insert(SFQuest_Database.QuestPool, bobQuest22);

local bobQuest22A = {
    guid = "Questyno_BobRepair22_A",

    awardsrep = "LaResistenza;80", -- REP REWARD
    awardsitem = "PipeWrench;1;Tissue;1",     -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_BobRepair",
    lore = { "IGUI_SFQuest_Questyno_BobRepair22_Lore" },
    needsitem = "PipeWrench;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_BobRepair;SFQuest_Questyno_BobRepair22_Complete",
    text = "IGUI_SFQuest_Questyno_BobRepair22_A_Text",
    texture = "media/textures/Item_BobRepair.png",
    title = "IGUI_SFQuest_Questyno_BobRepair22_Title",
}
table.insert(SFQuest_Database.QuestPool, bobQuest22A);

local bobQuest23 = {
    guid = "Questyno_BobRepair23",

    awardsrep = "LaResistenza;300", -- REP REWARD
    dailycode = "Questyno_BobRepair",
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_BobRepair23_Lore" },
    needsitem = "Aluminum;30", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_BobRepair;SFQuest_Questyno_BobRepair23_Complete",
    text = "IGUI_SFQuest_Questyno_BobRepair23_Text",
    texture = "media/textures/Item_BobRepair.png",
    title = "IGUI_SFQuest_Questyno_BobRepair23_Title",
    unlockedsound = "QuestUnlocked",
}
table.insert(SFQuest_Database.QuestPool, bobQuest23);

-- Stagione 2

--[[
            *** Paige Turner ***
            Elenco:
                intro. Parla con Paige per sbloccare le daily.
                1. Uccidi 200 Zombie in Tier 2 (200rep)
                2. Uccidi 300 Zombie in Tier 2 (250rep)
                3. Uccidi 350 Zombie in Tier 2 (300rep + 20$)
]]--

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_PaigeTurner_Intro",

    awardsrep = "PaigeTurner;100", -- REP REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_PaigeTurner_Intro_Lore" },
    ondone = "randomcodedworldfrompool;Questyno_PaigeTurner;Questyno;PaigeTurner",
    text = "IGUI_SFQuest_Questyno_PaigeTurner_Intro_Text",
    texture = "media/textures/Item_PaigeTurner.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_PaigeTurner;SFQuest_Questyno_PaigeTurner_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_PaigeTurner_Intro_Title",
})



require 'SFQuest_Database'

-- Quest per VictoriaSecret
table.insert(SFQuest_Database.QuestPool, secretQuest20A);


local secretQuest21 = {
    guid = "Questyno_VictoriaSecret21",

    awardsrep = "LaResistenza;150", -- REP REWARD
    awardsitem = "Money;100", -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_VictoriaSecret",
    lore = { "IGUI_SFQuest_Questyno_VictoriaSecret21_Lore" },
    text = "IGUI_SFQuest_Questyno_VictoriaSecret21_Text",
    needsitem = "NecklaceLong_GoldDiamond;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_VictoriaSecret;SFQuest_Questyno_VictoriaSecret21_Complete",
    texture = "media/textures/Item_VictoriaSecret.png",
    title = "IGUI_SFQuest_Questyno_VictoriaSecret21_Title",
    unlockedsound = "QuestUnlocked",
}
table.insert(SFQuest_Database.QuestPool, secretQuest21);

--[[
            *** Susan Lee ***
            Elenco:
                intro. Parla con Susan per sbloccare le daily.
				1. Recuperare Base.antibiotics;2 parlando con (10875,10028,0) (80rep + Base.Disinfectant)
				2. Recuperare LabItems.LabSyringePack;4 parlando con (7683,11515,0) (50rep + Base.SutureNeedle)
				3. Recuperare LabItems.LabSyringePack;4 parlando con (9463,11239,0) (40rep + 20$)
				4. Recuperare Base.PillsSleepingTablets;4 parlando con (8087,11524,0) (100rep + 20$ + Pacco di Sonnifero)
				5. Recuperare Base.PillsVitamins;2 parlando con (11939,6795,0) (70rep + 20$ + Base.Bandage;2)
				6. Recuperare Base.Splint (40rep)
				7. Recuperare Base.Antibiotics (150rep)
				8. Recuperare Base.AlcoholRippedSheets;50 (40rep)
				9. Recuperare LabItems.LabSyringe (80rep)
				10. Recuperare Moveable.location_community_medical_01_24 parlando con (7250,8369,0) (50rep + 40$)
				11. Recuperare Moveable.location_community_medical_01_24 parlando con (5033,10038,0) (45rep + 50$)
				12. Recuperare Moveable.location_community_medical_01_28 parlando con (10287,11351,0) (30rep + 30$)
				13. Recuperare Base.SutureNeedle;3 parlando con (7713,11429,0) (50rep + 25$)
				14. Recuperare Base.SutureNeedleHolder;3 parlando con (7681,11518,0) (70rep + 25$)
				15. Recuperare Corsetto medico parlando con (7298,9618,0) (50rep + 20$)
				16. Recuperare Base.PillsAntiDep;10 parlando con (10673,9819,0) (40rep + Antidepressivo)
				17. Recuperare Base.PillsAntiDep;10 parlando con (8211,10887) (100rep + 25$)
				18. Recuperare Base.PillsVitamins;2,Base.PillsSleepingTablets;2,Base.SutureNeedle,Base.Pills parlando con (7244,8373,0) (35rep)
				19. Recuperare Base.PillsBeta;2,Base.AlcoholWipes;2 parlando con (7244,8357,0) (80rep + Base.AlcoholRippedSheets;5,Base.AlcoholWipe)
				20. Recuperare 2 Beta Bloccanti + Bottiglia di Disinfettante parlando con (7246,8363,0) (50rep + Base.PillsBeta;2,Base.Disinfectant)
				21. Recuperare Base.PlantainCataplasm (50rep + 25$)
				22. Recuperare Base.LemonGrass;3 (40rep + 15$)
				23. Recuperare Moveable.location_community_medical_01_16;Moveable.location_community_medical_01_17 parlando con (6318,5267,0) (200rep)
]]

local leeIntro = {
    guid = "Questyno_SusanLee_Intro",

    awardsrep = "SusanLee;100", -- REP REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_SusanLee_Intro_Lore" },
    ondone = "randomcodedworldfrompool;Questyno_SusanLee;Questyno;SusanLee",
    text = "IGUI_SFQuest_Questyno_SusanLee_Intro_Text",
    texture = "media/textures/Item_SusanLee.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_SusanLee;SFQuest_Questyno_SusanLee_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_SusanLee_Intro_Title",
}
table.insert(SFQuest_Database.QuestPool, leeIntro);

local leeQuest1 = {
    guid = "Questyno_SusanLee1",

    awardstask = "Questyno_SusanLee1_A", -- TASK REWARD
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee1_Lore" },
    objectives = { {
        guid = "Questyno_SusanLee1_A",
        text = "IGUI_SFQuest_Questyno_SusanLee1_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoSusanLee1;additem;Antibiotics;2"
    } },
    text = "IGUI_SFQuest_Questyno_SusanLee1_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee1_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;10875x10028x0:EventoSusanLee1;anim:loot:time:50;updateobjective:Questyno_SusanLee1:1:Completed"
}
table.insert(SFQuest_Database.QuestPool, leeQuest1);

local leeQuest1A = {
    guid = "Questyno_SusanLee1_A",

    awardsrep = "LaResistenza;350", -- REP REWARD
    awardsitem = "Base.Disinfectant;1", -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee1_Lore" },
    needsitem = "Antibiotics;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_SusanLee;SFQuest_Questyno_SusanLee1_Complete",
    text = "IGUI_SFQuest_Questyno_SusanLee1_A_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee1_Title",
}
table.insert(SFQuest_Database.QuestPool, leeQuest1A);

local leeQuest2 = {
    guid = "Questyno_SusanLee2",

    awardstask = "Questyno_SusanLee2_A", -- TASK REWARD
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee2_Lore" },
    objectives = { {
        guid = "Questyno_SusanLee2_A",
        text = "IGUI_SFQuest_Questyno_SusanLee2_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoSusanLee2;additem;LabItems.LabSyringePack;4"
    } },
    text = "IGUI_SFQuest_Questyno_SusanLee2_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee2_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;7683x11515x0:EventoSusanLee2;anim:loot:time:50;updateobjective:Questyno_SusanLee2:1:Completed"
}
table.insert(SFQuest_Database.QuestPool, leeQuest2);

local leeQuest2A = {
    guid = "Questyno_SusanLee2_A",

    awardsrep = "LaResistenza;250", -- REP REWARD
    awardsitem = "Base.SutureNeedle;1", -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee2_Lore" },
    needsitem = "LabItems.LabSyringePack;4", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_SusanLee;SFQuest_Questyno_SusanLee2_Complete",
    text = "IGUI_SFQuest_Questyno_SusanLee2_A_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee2_Title",
}
table.insert(SFQuest_Database.QuestPool, leeQuest2A);

local leeQuest3 = {
    guid = "Questyno_SusanLee3",

    awardstask = "Questyno_SusanLee3_A", -- TASK REWARD
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee3_Lore" },
    objectives = { {
        guid = "Questyno_SusanLee3_A",
        text = "IGUI_SFQuest_Questyno_SusanLee3_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoSusanLee3;additem;LabItems.LabSyringePack;4"
    } },
    text = "IGUI_SFQuest_Questyno_SusanLee3_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee3_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;9463x11239x0:EventoSusanLee3;anim:loot:time:50;updateobjective:Questyno_SusanLee3:1:Completed"
}
table.insert(SFQuest_Database.QuestPool, leeQuest3);

local leeQuest3A = {
    guid = "Questyno_SusanLee3_A",

    awardsrep = "LaResistenza;1200", -- REP REWARD
    awardsitem = "Money;20", -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee3_Lore" },
    needsitem = "LabItems.LabSyringePack;4", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_SusanLee;SFQuest_Questyno_SusanLee3_Complete",
    text = "IGUI_SFQuest_Questyno_SusanLee3_A_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee3_Title",
}
table.insert(SFQuest_Database.QuestPool, leeQuest3A);

local leeQuest4 = {
    guid = "Questyno_SusanLee4",

    awardstask = "Questyno_SusanLee4_A", -- TASK REWARD
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee4_Lore" },
    objectives = { {
        guid = "Questyno_SusanLee4_A",
        text = "IGUI_SFQuest_Questyno_SusanLee4_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoSusanLee4;additem;PillsSleepingTablets;4"
    } },
    text = "IGUI_SFQuest_Questyno_SusanLee4_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee4_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;8087x11524x0:EventoSusanLee4;anim:loot:time:50;updateobjective:Questyno_SusanLee4:1:Completed"
}
table.insert(SFQuest_Database.QuestPool, leeQuest4);

local leeQuest4A = {
    guid = "Questyno_SusanLee4_A",

    awardsrep = "LaResistenza;800", -- REP REWARD
    awardsitem = "Money;20;PillsSleepingTablets;1", -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee4_Lore" },
    needsitem = "PillsSleepingTablets;4", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_SusanLee;SFQuest_Questyno_SusanLee4_Complete",
    text = "IGUI_SFQuest_Questyno_SusanLee4_A_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee4_Title",
}
table.insert(SFQuest_Database.QuestPool, leeQuest4A);

local leeQuest5 = {
    guid = "Questyno_SusanLee5",

    awardstask = "Questyno_SusanLee5_A", -- TASK REWARD
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee5_Lore" },
    objectives = { {
        guid = "Questyno_SusanLee5_A",
        text = "IGUI_SFQuest_Questyno_SusanLee5_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoSusanLee5;additem;PillsVitamins;2"
    } },
    text = "IGUI_SFQuest_Questyno_SusanLee5_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee5_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;11939x6795x0:EventoSusanLee5;anim:loot:time:50;updateobjective:Questyno_SusanLee5:1:Completed"
}
table.insert(SFQuest_Database.QuestPool, leeQuest5);

local leeQuest5A = {
    guid = "Questyno_SusanLee5_A",

    awardsrep = "LaResistenza;200", -- REP REWARD
    awardsitem = "Money;20;Base.Bandage;2", -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee5_Lore" },
    needsitem = "PillsVitamins;2", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_SusanLee;SFQuest_Questyno_SusanLee5_Complete",
    text = "IGUI_SFQuest_Questyno_SusanLee5_A_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee5_Title",
}
table.insert(SFQuest_Database.QuestPool, leeQuest5A);

local leeQuest6 = {
    guid = "Questyno_SusanLee6",

    awardsrep = "LaResistenza;50", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee6_Lore" },
    needsitem = "Splint;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_SusanLee;SFQuest_Questyno_SusanLee6_Complete",
    text = "IGUI_SFQuest_Questyno_SusanLee6_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee6_Title",
    unlockedsound = "QuestUnlocked",
}
table.insert(SFQuest_Database.QuestPool, leeQuest6);

local leeQuest7 = {
    guid = "Questyno_SusanLee7",

    awardsrep = "LaResistenza;220", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee7_Lore" },
    needsitem = "Base.Pills;3", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_SusanLee;SFQuest_Questyno_SusanLee7_Complete",
    text = "IGUI_SFQuest_Questyno_SusanLee7_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee7_Title",
    unlockedsound = "QuestUnlocked",
}
table.insert(SFQuest_Database.QuestPool, leeQuest7);

local leeQuest8 = {
    guid = "Questyno_SusanLee8",

    awardsrep = "LaResistenza;100", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee8_Lore" },
    needsitem = "AlcoholRippedSheets;50", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_SusanLee;SFQuest_Questyno_SusanLee8_Complete",
    text = "IGUI_SFQuest_Questyno_SusanLee8_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee8_Title",
    unlockedsound = "QuestUnlocked",
}
table.insert(SFQuest_Database.QuestPool, leeQuest8);

local leeQuest9 = {
    guid = "Questyno_SusanLee9",

    awardsrep = "LaResistenza;150", -- REP REWARD
    completesound = "levelup",
    awardsitem = "Base.Bandage;2", -- ITEM REWARD
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee9_Lore" },
    needsitem = "LabSyringe;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_SusanLee;SFQuest_Questyno_SusanLee9_Complete",
    text = "IGUI_SFQuest_Questyno_SusanLee9_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee9_Title",
    unlockedsound = "QuestUnlocked",
}
table.insert(SFQuest_Database.QuestPool, leeQuest9);

-- spostati a grifis

local leeQuest13 = {
    guid = "Questyno_SusanLee13",

    awardstask = "Questyno_SusanLee13_A", -- TASK REWARD
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee13_Lore" },
    objectives = { {
        guid = "Questyno_SusanLee13_A",
        text = "IGUI_SFQuest_Questyno_SusanLee13_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoSusanLee13;additem;SutureNeedle;3"
    } },
    text = "IGUI_SFQuest_Questyno_SusanLee13_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee13_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;7713x11429x0:EventoSusanLee13;anim:loot:time:50;updateobjective:Questyno_SusanLee13:1:Completed"
}
table.insert(SFQuest_Database.QuestPool, leeQuest13);

local leeQuest13A = {
    guid = "Questyno_SusanLee13_A",

    awardsrep = "LaResistenza;150", -- REP REWARD
    awardsitem = "Money;25", -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee13_Lore" },
    needsitem = "SutureNeedle;3", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_SusanLee;SFQuest_Questyno_SusanLee13_Complete",
    text = "IGUI_SFQuest_Questyno_SusanLee13_A_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee13_Title",
}
table.insert(SFQuest_Database.QuestPool, leeQuest13A);

local leeQuest14 = {
    guid = "Questyno_SusanLee14",

    awardstask = "Questyno_SusanLee14_A", -- TASK REWARD
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee14_Lore" },
    objectives = { {
        guid = "Questyno_SusanLee14_A",
        text = "IGUI_SFQuest_Questyno_SusanLee14_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoSusanLee14;additem;SutureNeedleHolder;3"
    } },
    text = "IGUI_SFQuest_Questyno_SusanLee14_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee14_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;7681x11518x0:EventoSusanLee14;anim:loot:time:50;updateobjective:Questyno_SusanLee14:1:Completed"
}
table.insert(SFQuest_Database.QuestPool, leeQuest14);

local leeQuest14A = {
    guid = "Questyno_SusanLee14_A",

    awardsrep = "LaResistenza;170", -- REP REWARD
    awardsitem = "Money;25", -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee14_Lore" },
    needsitem = "SutureNeedleHolder;3", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_SusanLee;SFQuest_Questyno_SusanLee14_Complete",
    text = "IGUI_SFQuest_Questyno_SusanLee14_A_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee14_Title",
}
table.insert(SFQuest_Database.QuestPool, leeQuest14A);

local leeQuest15 = {
    guid = "Questyno_SusanLee15",

    awardstask = "Questyno_SusanLee15_A", -- TASK REWARD
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee15_Lore" },
    objectives = { {
        guid = "Questyno_SusanLee15_A",
        text = "IGUI_SFQuest_Questyno_SusanLee15_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoSusanLee15;additem;Corset_Medical;1"
    } },
    text = "IGUI_SFQuest_Questyno_SusanLee15_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee15_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;7298x9618x1:EventoSusanLee15;anim:loot:time:50;updateobjective:Questyno_SusanLee15:1:Completed"
}
table.insert(SFQuest_Database.QuestPool, leeQuest15);

local leeQuest15A = {
    guid = "Questyno_SusanLee15_A",

    awardsrep = "LaResistenza;180", -- REP REWARD
    awardsitem = "Money;20", -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee15_Lore" },
    needsitem = "Corset_Medical;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_SusanLee;SFQuest_Questyno_SusanLee15_Complete",
    text = "IGUI_SFQuest_Questyno_SusanLee15_A_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee15_Title",
}
table.insert(SFQuest_Database.QuestPool, leeQuest15A);

local leeQuest16 = {
    guid = "Questyno_SusanLee16",

    awardstask = "Questyno_SusanLee16_A", -- TASK REWARD
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee16_Lore" },
    objectives = { {
        guid = "Questyno_SusanLee16_A",
        text = "IGUI_SFQuest_Questyno_SusanLee16_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoSusanLee16;additem;PillsAntiDep;10"
    } },
    text = "IGUI_SFQuest_Questyno_SusanLee16_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee16_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;10673x9819x0:EventoSusanLee16;anim:loot:time:50;updateobjective:Questyno_SusanLee16:1:Completed"
}
table.insert(SFQuest_Database.QuestPool, leeQuest16);

local leeQuest16A = {
    guid = "Questyno_SusanLee16_A",

    awardsrep = "LaResistenza;120", -- REP REWARD
    awardsitem = "PillsAntiDep;1", -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee16_Lore" },
    needsitem = "PillsAntiDep;10", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_SusanLee;SFQuest_Questyno_SusanLee16_Complete",
    text = "IGUI_SFQuest_Questyno_SusanLee16_A_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee16_Title",
}
table.insert(SFQuest_Database.QuestPool, leeQuest16A);

local leeQuest17 = {
    guid = "Questyno_SusanLee17",

    awardstask = "Questyno_SusanLee17_A", -- TASK REWARD
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee17_Lore" },
    objectives = { {
        guid = "Questyno_SusanLee17_A",
        text = "IGUI_SFQuest_Questyno_SusanLee17_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoSusanLee17;additem;PillsAntiDep;10"
    } },
    text = "IGUI_SFQuest_Questyno_SusanLee17_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee17_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;8211x10887x0:EventoSusanLee17;anim:loot:time:50;updateobjective:Questyno_SusanLee17:1:Completed"
}
table.insert(SFQuest_Database.QuestPool, leeQuest17);

local leeQuest17A = {
    guid = "Questyno_SusanLee17_A",

    awardsrep = "LaResistenza;200", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee17_Lore" },
    needsitem = "PillsAntiDep;10", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_SusanLee;SFQuest_Questyno_SusanLee17_Complete",
    text = "IGUI_SFQuest_Questyno_SusanLee17_A_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee17_Title",
}
table.insert(SFQuest_Database.QuestPool, leeQuest17A);

local leeQuest18 = {
    guid = "Questyno_SusanLee18",

    awardstask = "Questyno_SusanLee18_A", -- TASK REWARD
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee18_Lore" },
    objectives = { {
        guid = "Questyno_SusanLee18_A",
        text = "IGUI_SFQuest_Questyno_SusanLee18_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoSusanLee18;additem;PillsVitamins;2;additem;PillsSleepingTablets;2;additem;SutureNeedle;1;additem;Pills;1"
    } },
    text = "IGUI_SFQuest_Questyno_SusanLee18_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee18_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;7244x8373x0:EventoSusanLee18;anim:loot:time:50;updateobjective:Questyno_SusanLee18:1:Completed"
}
table.insert(SFQuest_Database.QuestPool, leeQuest18);

local leeQuest18A = {
    guid = "Questyno_SusanLee18_A",

    awardstask = "Questyno_SusanLee18_B", -- TASK REWARD
    completesound = "levelup",
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee18_Lore" },
    objectives = { {
        guid = "Questyno_SusanLee18_B",
        text = "IGUI_SFQuest_Questyno_SusanLee18_B",
        hidden = false,
        needsitem = "PillsVitamins;2",
        onobtained = "updateobjective;Questyno_SusanLee18_A;1;Completed;removeitem;PillsVitamins;2"
    },{
        guid = "Questyno_SusanLee18_C",
        text = "IGUI_SFQuest_Questyno_SusanLee18_C",
        hidden = false,
        needsitem = "PillsSleepingTablets;2",
        onobtained = "updateobjective;Questyno_SusanLee18_A;2;Completed;removeitem;PillsSleepingTablets;2"
    },{
        guid = "Questyno_SusanLee18_D",
        text = "IGUI_SFQuest_Questyno_SusanLee18_D",
        hidden = false,
        needsitem = "SutureNeedle;1",
        onobtained = "updateobjective;Questyno_SusanLee18_A;3;Completed;removeitem;SutureNeedle;1"
    },{
        guid = "Questyno_SusanLee18_E",
        text = "IGUI_SFQuest_Questyno_SusanLee18_E",
        hidden = false,
        needsitem = "Pills;1",
        onobtained = "updateobjective;Questyno_SusanLee18_A;4;Completed;removeitem;Pills;1"
    } },
    text = "IGUI_SFQuest_Questyno_SusanLee18_A_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee18_Title",
}
table.insert(SFQuest_Database.QuestPool, leeQuest18A);

local leeQuest18B = {
    guid = "Questyno_SusanLee18_B",

    awardsrep = "LaResistenza;190", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee18_Lore" },
    unlocks = "unlockworldevent;Questyno_SusanLee;SFQuest_Questyno_SusanLee18_Complete",
    text = "IGUI_SFQuest_Questyno_SusanLee18_B_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee18_Title",
}
table.insert(SFQuest_Database.QuestPool, leeQuest18B);

--				19. Recuperare Base.PillsBeta;2,Base.AlcoholWipes;2 parlando con (7244,8357,0) (80rep + Base.AlcoholRippedSheets;5,Base.AlcoholWipe)

local leeQuest19 = {
    guid = "Questyno_SusanLee19",

    awardstask = "Questyno_SusanLee19_A", -- TASK REWARD
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee19_Lore" },
    objectives = { {
        guid = "Questyno_SusanLee19_A",
        text = "IGUI_SFQuest_Questyno_SusanLee19_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoSusanLee19;additem;PillsBeta;2;additem;AlcoholWipes;2"
    } },
    text = "IGUI_SFQuest_Questyno_SusanLee19_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee19_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;9984x10641x0:EventoSusanLee19;anim:loot:time:50;updateobjective:Questyno_SusanLee19:1:Completed"
}
table.insert(SFQuest_Database.QuestPool, leeQuest19);

local leeQuest19A = {
    guid = "Questyno_SusanLee19_A",

    awardstask = "Questyno_SusanLee19_B", -- TASK REWARD
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee19_Lore" },
    objectives = { {
        guid = "Questyno_SusanLee19_B",
        text = "IGUI_SFQuest_Questyno_SusanLee19_B",
        hidden = false,
        needsitem = "PillsBeta;2",
        onobtained = "updateobjective;Questyno_SusanLee19_A;1;Completed;removeitem;PillsBeta;2"
    },{
        guid = "Questyno_SusanLee19_C",
        text = "IGUI_SFQuest_Questyno_SusanLee19_C",
        hidden = false,
        needsitem = "AlcoholWipes;2",
        onobtained = "updateobjective;Questyno_SusanLee19_A;2;Completed;removeitem;AlcoholWipes;2"
    } },
    text = "IGUI_SFQuest_Questyno_SusanLee19_A_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee19_Title",
}
table.insert(SFQuest_Database.QuestPool, leeQuest19A);

local leeQuest19B = {
    guid = "Questyno_SusanLee19_B",

    awardsrep = "LaResistenza;120", -- REP REWARD
    awardsitem = "AlcoholRippedSheets;5;Base.AlcoholWipe;1", -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee19_Lore" },
    unlocks = "unlockworldevent;Questyno_SusanLee;SFQuest_Questyno_SusanLee19_Complete",
    text = "IGUI_SFQuest_Questyno_SusanLee19_B_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee19_Title",
}
table.insert(SFQuest_Database.QuestPool, leeQuest19B);

--20. Recuperare 2 Beta Bloccanti + Bottiglia di Disinfettante parlando con (7246,8363,0) (50rep + Base.PillsBeta;2,Base.Disinfectant)

local leeQuest20 = {
    guid = "Questyno_SusanLee20",

    awardstask = "Questyno_SusanLee20_A", -- TASK REWARD
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee20_Lore" },
    objectives = { {
        guid = "Questyno_SusanLee20_A",
        text = "IGUI_SFQuest_Questyno_SusanLee20_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoSusanLee20;additem;PillsBeta;2;additem;Disinfectant;1"
    } },
    text = "IGUI_SFQuest_Questyno_SusanLee20_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee20_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;8236x9760x0:EventoSusanLee20;anim:loot:time:50;updateobjective:Questyno_SusanLee20:1:Completed"
}
table.insert(SFQuest_Database.QuestPool, leeQuest20);

local leeQuest20A = {
    guid = "Questyno_SusanLee20_A",

    awardstask = "Questyno_SusanLee20_B", -- TASK REWARD
    completesound = "levelup",
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee20_Lore" },
    objectives = { {
        guid = "Questyno_SusanLee20_B",
        text = "IGUI_SFQuest_Questyno_SusanLee20_B",
        hidden = false,
        needsitem = "PillsBeta;2",
        onobtained = "updateobjective;Questyno_SusanLee20_A;1;Completed;removeitem;PillsBeta;2"
    },{
        guid = "Questyno_SusanLee20_C",
        text = "IGUI_SFQuest_Questyno_SusanLee20_C",
        hidden = false,
        needsitem = "Disinfectant;1",
        onobtained = "updateobjective;Questyno_SusanLee20_A;2;Completed;removeitem;Disinfectant;1"
    } },
    text = "IGUI_SFQuest_Questyno_SusanLee20_A_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee20_Title",
}
table.insert(SFQuest_Database.QuestPool, leeQuest20A);

local leeQuest20B = {
    guid = "Questyno_SusanLee20_B",

    awardsrep = "LaResistenza;120", -- REP REWARD
    awardsitem = "PillsBeta;2;Base.Disinfectant;1", -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee20_Lore" },
    unlocks = "unlockworldevent;Questyno_SusanLee;SFQuest_Questyno_SusanLee20_Complete",
    text = "IGUI_SFQuest_Questyno_SusanLee20_A_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee20_Title",
}
table.insert(SFQuest_Database.QuestPool, leeQuest20B);

local leeQuest21 = {
    guid = "Questyno_SusanLee21",

    awardsrep = "LaResistenza;50", -- REP REWARD
    awardsitem = "Money;25", -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee21_Lore" },
    needsitem = "PlantainCataplasm;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_SusanLee;SFQuest_Questyno_SusanLee21_Complete",
    text = "IGUI_SFQuest_Questyno_SusanLee21_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee21_Title",
    unlockedsound = "QuestUnlocked",
}
table.insert(SFQuest_Database.QuestPool, leeQuest21);

local leeQuest22 = {
    guid = "Questyno_SusanLee22",

    awardsrep = "LaResistenza;100", -- REP REWARD
    awardsitem = "Money;15", -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee22_Lore" },
    needsitem = "PredicateFreshFood#Base.LemonGrass;16", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_SusanLee;SFQuest_Questyno_SusanLee22_Complete",
    text = "IGUI_SFQuest_Questyno_SusanLee22_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee22_Title",
    unlockedsound = "QuestUnlocked",
}
table.insert(SFQuest_Database.QuestPool, leeQuest22);

local leeQuest23 = {
    guid = "Questyno_SusanLee23",

    awardstask = "Questyno_SusanLee23_A", -- TASK REWARD
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee23_Lore" },
    objectives = { {
        guid = "Questyno_SusanLee23_A",
        text = "IGUI_SFQuest_Questyno_SusanLee23_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoSusanLee23;additem;Mattress;2"
    } },
    text = "IGUI_SFQuest_Questyno_SusanLee23_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee23_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;7341x9725x0:EventoSusanLee23;anim:loot:time:50;updateobjective:Questyno_SusanLee23:1:Completed"
}
table.insert(SFQuest_Database.QuestPool, leeQuest23);

local leeQuest23A = {
    guid = "Questyno_SusanLee23_A",

    awardsrep = "LaResistenza;150", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee23_Lore" },
    needsitem = "Mattress;2", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_SusanLee;SFQuest_Questyno_SusanLee23_Complete",
    text = "IGUI_SFQuest_Questyno_SusanLee23_A_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee23_Title",
}
table.insert(SFQuest_Database.QuestPool, leeQuest23A);

--[[
            *** George Scott ***
            Elenco:
                intro. Parla con George Scott per sbloccare le daily.
				1. Recuperare Base.Wine2 (140rep + 25$)
				2. Recuperare Base.Jacket_Chef (80rep)
				3. Recuperare Base.Hat_HockeyMask parlando con  (10780,9885,0) (35rep)
				4. Recuperare Base.Earbuds parlando con (10780,9885,0) (80rep)
				5. Recuperare Base.Dart parlando con (10211,8251,0) (50rep)
				6. Recuperare Base.ToiletPaper;4 (75rep + 30$)
				7. Recuperare Base.Cube parlando con (11128,6856,0) (150rep + 50$)
				8. Recuperare Base.CardDeck (30rep)
				9. Recuperare Base.VideoGame;Base.VideoGame parlando con (10339,8175,0);(10203,8313,0) (100rep)
				10. Recuperare Tromba;Bacchette;Chitarra Classica parlando con (8506,7685,0);(8385,7674,1);(8195,7506,0) (140rep + 50$)
				11. Recuperare Base.Basketball parlando con (12566,9951,0) (80rep)
				12. Recuperare Base.ChessWhite;Base.ChessBlack;Base.CheckerBoard parlando con (12338,9647,1) (50rep)
				13. Recuperare Base.Toothpaste (50rep + 20$)
				14. Recuperare Base.Hat_Cowboy parlando con (8159,9611,0) (50rep + 100$)
				15. Recuperare Base.Shoes_RedTrainers;Base.Trousers_JeanBaggy;Base.Skirt_Long (40rep + 50$)
				16. Recuperare Moveables.DylansElectronics01_46 parlando con (9747,10589,0) (100rep + SWeapons.SalvagedMachete)
				17. Recuperare Base.Disc_Retail (45rep)
				18. Recuperare Base.CDplayer;Base.Battery;2 (50rep)
				19. Recuperare Base.Hat_Bandana parlando con (7431,9700,0) (60rep)
				20. Recuperare Base.TrousersMesh_DenimLight;Base.JacketLong_Random (100rep + 40$)
				21. Recuperare Base.AmmoStrap_Shells (50rep)
				22. Recuperare Base.WristWatch_Right_ClassicGold (50rep)
				23. Recuperare Base.HolsterDouble (150rep + 25$)
]]

local scottIntro = {
    guid = "Questyno_GeorgeScott_Intro",

    awardsrep = "GeorgeScott;100", -- REP REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_GeorgeScott_Intro_Lore" },
    ondone = "randomcodedworldfrompool;Questyno_GeorgeScott;Questyno;GeorgeScott",
    text = "IGUI_SFQuest_Questyno_GeorgeScott_Intro_Text",
    texture = "media/textures/Item_GeorgeScott.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_GeorgeScott_Intro_Title",
}
table.insert(SFQuest_Database.QuestPool, scottIntro);

local scottQuest1 = {
    guid = "Questyno_GeorgeScott1",

    awardsrep = "LaResistenza;400", -- REP REWARD
    awardsitem = "Money;25", -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_GeorgeScott",
    lore = { "IGUI_SFQuest_Questyno_GeorgeScott1_Lore" },
    needsitem = "Wine2;2", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott1_Complete",
    text = "IGUI_SFQuest_Questyno_GeorgeScott1_Text",
    texture = "media/textures/Item_GeorgeScott.png",
    title = "IGUI_SFQuest_Questyno_GeorgeScott1_Title",
    unlockedsound = "QuestUnlocked",
}
table.insert(SFQuest_Database.QuestPool, scottQuest1);

local scottQuest2 = {
    guid = "Questyno_GeorgeScott2",

    awardsrep = "LaResistenza;600", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_GeorgeScott",
    lore = { "IGUI_SFQuest_Questyno_GeorgeScott2_Lore" },
    needsitem = "Base.Vest_BulletPolice;10", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott2_Complete",
    text = "IGUI_SFQuest_Questyno_GeorgeScott2_Text",
    texture = "media/textures/Item_GeorgeScott.png",
    title = "IGUI_SFQuest_Questyno_GeorgeScott2_Title",
    unlockedsound = "QuestUnlocked",
}
table.insert(SFQuest_Database.QuestPool, scottQuest2);

local scottQuest3 = {
    guid = "Questyno_GeorgeScott3",

    awardstask = "Questyno_GeorgeScott3_A", -- TASK REWARD
    dailycode = "Questyno_GeorgeScott",
    lore = { "IGUI_SFQuest_Questyno_GeorgeScott3_Lore" },
    objectives = { {
        guid = "Questyno_GeorgeScott3_A",
        text = "IGUI_SFQuest_Questyno_GeorgeScott3_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoGeorgeScott3;additem;Hat_HockeyMask;1"
    } },
    text = "IGUI_SFQuest_Questyno_GeorgeScott3_Text",
    texture = "media/textures/Item_GeorgeScott.png",
    title = "IGUI_SFQuest_Questyno_GeorgeScott3_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;10780x9885x0:EventoGeorgeScott3;anim:loot:time:50;updateobjective:Questyno_GeorgeScott3:1:Completed"
}
table.insert(SFQuest_Database.QuestPool, scottQuest3);

local scottQuest3A = {
    guid = "Questyno_GeorgeScott3_A",

    awardsrep = "LaResistenza;35", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_GeorgeScott",
    lore = { "IGUI_SFQuest_Questyno_GeorgeScott3_Lore" },
    needsitem = "Hat_HockeyMask;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott3_Complete",
    text = "IGUI_SFQuest_Questyno_GeorgeScott3_A_Text",
    texture = "media/textures/Item_GeorgeScott.png",
    title = "IGUI_SFQuest_Questyno_GeorgeScott3_Title",
}
table.insert(SFQuest_Database.QuestPool, scottQuest3A);

local scottQuest4 = {
    guid = "Questyno_GeorgeScott4",

    awardstask = "Questyno_GeorgeScott4_A", -- TASK REWARD
    dailycode = "Questyno_GeorgeScott",
    lore = { "IGUI_SFQuest_Questyno_GeorgeScott4_Lore" },
    objectives = { {
        guid = "Questyno_GeorgeScott4_A",
        text = "IGUI_SFQuest_Questyno_GeorgeScott4_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoGeorgeScott4;additem;Earbuds;1"
    } },
    text = "IGUI_SFQuest_Questyno_GeorgeScott4_Text",
    texture = "media/textures/Item_GeorgeScott.png",
    title = "IGUI_SFQuest_Questyno_GeorgeScott4_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;7383x8285x0:EventoGeorgeScott4;anim:loot:time:50;updateobjective:Questyno_GeorgeScott4:1:Completed"
}
table.insert(SFQuest_Database.QuestPool, scottQuest4);

local scottQuest4A = {
    guid = "Questyno_GeorgeScott4_A",

    awardsrep = "LaResistenza;150", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_GeorgeScott",
    lore = { "IGUI_SFQuest_Questyno_GeorgeScott4_Lore" },
    needsitem = "Earbuds;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott4_Complete",
    text = "IGUI_SFQuest_Questyno_GeorgeScott4_A_Text",
    texture = "media/textures/Item_GeorgeScott.png",
    title = "IGUI_SFQuest_Questyno_GeorgeScott4_Title",
}
table.insert(SFQuest_Database.QuestPool, scottQuest4A);

local scottQuest5 = {
    guid = "Questyno_GeorgeScott5",

    awardstask = "Questyno_GeorgeScott5_A", -- TASK REWARD
    dailycode = "Questyno_GeorgeScott",
    lore = { "IGUI_SFQuest_Questyno_GeorgeScott5_Lore" },
    objectives = { {
        guid = "Questyno_GeorgeScott5_A",
        text = "IGUI_SFQuest_Questyno_GeorgeScott5_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoGeorgeScott5;additem;Dart;1"
    } },
    text = "IGUI_SFQuest_Questyno_GeorgeScott5_Text",
    texture = "media/textures/Item_GeorgeScott.png",
    title = "IGUI_SFQuest_Questyno_GeorgeScott5_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;10211x8251x0:EventoGeorgeScott5;anim:loot:time:50;updateobjective:Questyno_GeorgeScott5:1:Completed"
}
table.insert(SFQuest_Database.QuestPool, scottQuest5);

local scottQuest5A = {
    guid = "Questyno_GeorgeScott5_A",

    awardsrep = "LaResistenza;150", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_GeorgeScott",
    lore = { "IGUI_SFQuest_Questyno_GeorgeScott5_Lore" },
    needsitem = "Dart;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott5_Complete",
    text = "IGUI_SFQuest_Questyno_GeorgeScott5_A_Text",
    texture = "media/textures/Item_GeorgeScott.png",
    title = "IGUI_SFQuest_Questyno_GeorgeScott5_Title",
}
table.insert(SFQuest_Database.QuestPool, scottQuest5A);

local scottQuest6 = {
    guid = "Questyno_GeorgeScott6",

    awardsrep = "LaResistenza;200", -- REP REWARD
    awardsitem = "Money;30", -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_GeorgeScott",
    lore = { "IGUI_SFQuest_Questyno_GeorgeScott6_Lore" },
    needsitem = "ToiletPaper;4", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott6_Complete",
    text = "IGUI_SFQuest_Questyno_GeorgeScott6_Text",
    texture = "media/textures/Item_GeorgeScott.png",
    title = "IGUI_SFQuest_Questyno_GeorgeScott6_Title",
    unlockedsound = "QuestUnlocked",
}
table.insert(SFQuest_Database.QuestPool, scottQuest6);

local scottQuest7 = {
    guid = "Questyno_GeorgeScott7",

    awardstask = "Questyno_GeorgeScott7_A", -- TASK REWARD
    dailycode = "Questyno_GeorgeScott",
    lore = { "IGUI_SFQuest_Questyno_GeorgeScott7_Lore" },
    objectives = { {
        guid = "Questyno_GeorgeScott7_A",
        text = "IGUI_SFQuest_Questyno_GeorgeScott7_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoGeorgeScott7;additem;Cube;1"
    } },
    text = "IGUI_SFQuest_Questyno_GeorgeScott7_Text",
    texture = "media/textures/Item_GeorgeScott.png",
    title = "IGUI_SFQuest_Questyno_GeorgeScott7_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;11128x6856x0:EventoGeorgeScott7;anim:loot:time:50;updateobjective:Questyno_GeorgeScott7:1:Completed"
}
table.insert(SFQuest_Database.QuestPool, scottQuest7);

local scottQuest7A = {
    guid = "Questyno_GeorgeScott7_A",

    awardsrep = "LaResistenza;150", -- REP REWARD
    awardsitem = "Money;50", -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_GeorgeScott",
    lore = { "IGUI_SFQuest_Questyno_GeorgeScott7_Lore" },
    needsitem = "Cube;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott7_Complete",
    text = "IGUI_SFQuest_Questyno_GeorgeScott7_A_Text",
    texture = "media/textures/Item_GeorgeScott.png",
    title = "IGUI_SFQuest_Questyno_GeorgeScott7_Title",
}
table.insert(SFQuest_Database.QuestPool, scottQuest7A);

local scottQuest8 = {
    guid = "Questyno_GeorgeScott8",

    awardsrep = "LaResistenza;300", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_GeorgeScott",
    lore = { "IGUI_SFQuest_Questyno_GeorgeScott8_Lore" },
    needsitem = "CardDeck;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott8_Complete",
    text = "IGUI_SFQuest_Questyno_GeorgeScott8_Text",
    texture = "media/textures/Item_GeorgeScott.png",
    title = "IGUI_SFQuest_Questyno_GeorgeScott8_Title",
    unlockedsound = "QuestUnlocked",
}
table.insert(SFQuest_Database.QuestPool, scottQuest8);

local scottQuest9 = {
    guid = "Questyno_GeorgeScott9",

    awardstask = "Questyno_GeorgeScott9_A", -- TASK REWARD
    dailycode = "Questyno_GeorgeScott",
    lore = { "IGUI_SFQuest_Questyno_GeorgeScott9_Lore" },
    objectives = { {
        guid = "Questyno_GeorgeScott9_A",
        text = "IGUI_SFQuest_Questyno_GeorgeScott9_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoGeorgeScott9;additem;VideoGame;1;revealobjective;Questyno_GeorgeScott9;2;clickevent;11424x8529x1:EventoGeorgeScott9A;anim:loot:time:50;updateobjective:Questyno_GeorgeScott9:2:Completed"
    }, {
        guid = "Questyno_GeorgeScott9_B",
        text = "IGUI_SFQuest_Questyno_GeorgeScott9_B",
        hidden = true,
        oncompleted = "removeclickevent;EventoGeorgeScott9A;additem;VideoGame;1"
    } },
    text = "IGUI_SFQuest_Questyno_GeorgeScott9_Text",
    texture = "media/textures/Item_GeorgeScott.png",
    title = "IGUI_SFQuest_Questyno_GeorgeScott9_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;11603x8513x0:EventoGeorgeScott9;anim:loot:time:50;updateobjective:Questyno_GeorgeScott9:1:Completed"
}
table.insert(SFQuest_Database.QuestPool, scottQuest9);

local scottQuest9A = {
    guid = "Questyno_GeorgeScott9_A",

    awardsrep = "LaResistenza;150", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_GeorgeScott",
    lore = { "IGUI_SFQuest_Questyno_GeorgeScott9_Lore" },
    needsitem = "VideoGame;2", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott9_Complete",
    text = "IGUI_SFQuest_Questyno_GeorgeScott9_A_Text",
    texture = "media/textures/Item_GeorgeScott.png",
    title = "IGUI_SFQuest_Questyno_GeorgeScott9_Title",
}
table.insert(SFQuest_Database.QuestPool, scottQuest9A);

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_GeorgeScott10",

    awardstask = "Questyno_GeorgeScott10_A", -- TASK REWARD
    dailycode = "Questyno_GeorgeScott",
    lore = { "IGUI_SFQuest_Questyno_GeorgeScott10_Lore" },
    objectives = { {
        guid = "Questyno_GeorgeScott10_A",
        text = "IGUI_SFQuest_Questyno_GeorgeScott10_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoGeorgeScott10;additem;Trumpet;1;revealobjective;Questyno_GeorgeScott10;2;clickevent;8385x7674x1:EventoGeorgeScott10A;anim:loot:time:50;updateobjective:Questyno_GeorgeScott10:2:Completed"
    }, {
        guid = "Questyno_GeorgeScott10_B",
        text = "IGUI_SFQuest_Questyno_GeorgeScott10_B",
        hidden = true,
        oncompleted = "removeclickevent;EventoGeorgeScott10A;additem;Chopsticks;1;revealobjective;Questyno_GeorgeScott10;3;clickevent;8195x7506x0:EventoGeorgeScott10B;anim:loot:time:50;updateobjective:Questyno_GeorgeScott10:3:Completed"
    }, {
        guid = "Questyno_GeorgeScott10_C",
        text = "IGUI_SFQuest_Questyno_GeorgeScott10_C",
        hidden = true,
        oncompleted = "removeclickevent;EventoGeorgeScott10B;additem;GuitarAcoustic;1"
    } },
    text = "IGUI_SFQuest_Questyno_GeorgeScott10_Text",
    texture = "media/textures/Item_GeorgeScott.png",
    title = "IGUI_SFQuest_Questyno_GeorgeScott10_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;8506x7685x0:EventoGeorgeScott10;anim:loot:time:50;updateobjective:Questyno_GeorgeScott10:1:Completed"
});



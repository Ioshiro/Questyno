require 'SFQuest_Database'

-- Quest per SusanLee
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



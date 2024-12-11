require 'SFQuest_Database'

--[[
                                                                                    *** DAILY QUEST SPAWN POINT ***
]]

--[[                    *** NPC 1: Sergente Grif (9331x8640x0)
                Elenco:
                    intro. Parla con Griff per sbloccare le daily.
                    1. Recupera 1 Base.FirstAidKit (50 rep)
                    2. Recupera 1 Base.Pills (60 rep)
                    3. Recupera 1 Base.PillsSleepingtTablets (35 rep)
                    4. Recupera 1 LabItems.LabSyringe (80 rep)
                    5. Recupera 3 Base.Bandage (50 rep)
                    6. Recupera 1 Base.PillsAntiDep (40 rep)
                    7. Recupera 1 Base.PillsVitamins (40 rep)
                    8. Recupera 1 Base.Antibiotics (40 rep)
                    9. Recupera 1 Base.PillsBeta (50 rep + 30$)
                    10. Recupera 1 Base.FirstAidKit, 1 Base.PillsBeta, 1 Base.Pills, 1 Base.Disinfectant (135 rep)
                    11. Recupera 1 Base.FirstAidKit, 1 Base.PillsVitamns, Base.PillsAntiDep, 1 Base.AlcoholWipes (200 rep + 40$)
                    12. Recupera 1 Base.FirstAidKit,Base.PillsSleepingTablets,LabItems.LabSyringe,Base.CottonBalls (120 rep)
                    13. Recupera 2 Base.CottonBalss (75 rep)
                    14. Recupera 1 Base.Disinfectant (40 rep)
                    15. Recupera 1 Salvietta con Alcool (50 rep)
                    16. Recupera 1 Base.SutureNeedle, 1 Base.SutureNeedeleHolder (250 rep + 30$)
                    17. Recupera 1 Base.SutureNeedle (150 rep, 30$)
                    18. Recupera 2 Base.AlcoholBandage (80 rep)
                    19. Recupera 1 Base.Bandaid (20 rep)
                    20. Recupera 3 Base.Bandaid (80 rep + 25$)
                    21. Recupera 1 Base.Tweezers (50 rep)
                    22. Recupera 1 Base.Splint (25 rep)
                    23. Recupera 1 Base.FirstAidKit (25rep)
                    24. Recupera 2 Base.Pills (80 rep + 1 Base.Pills)
                    25. Recupera 1 Base.PillsSleepingTablets (25 rep + 1 Base.PillsSleepingTablets)
                    26. Recupera 10 LabItems.LabSyringe (60 rep + 5 LabItems.LabSyringe)
                    27. Recupera 3 Base.Bandage (50 rep + 50$)
                    28. Recupera 1 Base.PillsAntiDep (40 rep + 1 PynoTweaks.Joint)

]]
-- local grifIntro = {
--     guid = "Questyno_Grif_Intro",

--     awardsrep = "SergenteGrif;100", -- REP REWARD
--     --awardstask = "Questyno_Grif1", -- TODO: REMOVE WHEN TESTING IS DONE
--     completesound = "levelup",
--     lore = { "IGUI_SFQuest_Questyno_Grif_Intro_Lore" },
--     ondone = "randomcodedworldfrompool;Questyno_Grif;Questyno;Grif",
--     text = "IGUI_SFQuest_Questyno_Grif_Intro_Text",
--     texture = "media/textures/Item_Grif.png",
--     unique = true,
--     unlocks = "unlockworldevent;Questyno_Grif;SFQuest_Questyno_Grif_Intro_Complete",
--     title = "IGUI_SFQuest_Questyno_Grif_Intro_Title",
-- }
-- table.insert(SFQuest_Database.QuestPool, grifIntro);

-- local grifQuest1 = {
--     guid = "Questyno_Grif1",

--     awardsrep = "LaResistenza;50", -- REP REWARD
--     completesound = "levelup",
--     dailycode = "Questyno_Grif",
--     lore = { "IGUI_SFQuest_Questyno_Grif1_Lore" },
--     needsitem = "FirstAidKit;1", -- REQUIRE
--     onobtained = "unlockworldevent;Questyno_Grif;SFQuest_Questyno_Grif1_Complete",
--     text = "IGUI_SFQuest_Questyno_Grif1_Text",
--     texture = "media/textures/Item_Grif.png",
--     title = "IGUI_SFQuest_Questyno_Grif1_Title",
--     unlockedsound = "QuestUnlocked"
-- }
-- table.insert(SFQuest_Database.QuestPool, grifQuest1);

-- local grifQuest2 = {
--     guid = "Questyno_Grif2",

--     awardsrep = "LaResistenza;60", -- REP REWARD
--     completesound = "levelup",
--     dailycode = "Questyno_Grif",
--     lore = { "IGUI_SFQuest_Questyno_Grif2_Lore" },
--     needsitem = "Pills;1", -- REQUIRE
--     onobtained = "unlockworldevent;Questyno_Grif;SFQuest_Questyno_Grif2_Complete",
--     text = "IGUI_SFQuest_Questyno_Grif2_Text",
--     texture = "media/textures/Item_Grif.png",
--     title = "IGUI_SFQuest_Questyno_Grif2_Title",
--     unlockedsound = "QuestUnlocked"
-- }
-- table.insert(SFQuest_Database.QuestPool, grifQuest2);

-- local grifQuest3 = {
--     guid = "Questyno_Grif3",

--     awardsrep = "LaResistenza;35", -- REP REWARD
--     completesound = "levelup",
--     dailycode = "Questyno_Grif",
--     lore = { "IGUI_SFQuest_Questyno_Grif3_Lore" },
--     needsitem = "PillsSleepingTablets;1", -- REQUIRE
--     onobtained = "unlockworldevent;Questyno_Grif;SFQuest_Questyno_Grif3_Complete",
--     text = "IGUI_SFQuest_Questyno_Grif3_Text",
--     texture = "media/textures/Item_Grif.png",
--     title = "IGUI_SFQuest_Questyno_Grif3_Title",
--     unlockedsound = "QuestUnlocked"
-- }
-- table.insert(SFQuest_Database.QuestPool, grifQuest3);

-- local grifQuest4 = {
--     guid = "Questyno_Grif4",

--     awardsrep = "LaResistenza;80", -- REP REWARD
--     completesound = "levelup",
--     dailycode = "Questyno_Grif",
--     lore = { "IGUI_SFQuest_Questyno_Grif4_Lore" },
--     needsitem = "LabItems.LabSyringe;1", -- REQUIRE
--     onobtained = "unlockworldevent;Questyno_Grif;SFQuest_Questyno_Grif4_Complete",
--     text = "IGUI_SFQuest_Questyno_Grif4_Text",
--     texture = "media/textures/Item_Grif.png",
--     title = "IGUI_SFQuest_Questyno_Grif4_Title",
--     unlockedsound = "QuestUnlocked"
-- }
-- table.insert(SFQuest_Database.QuestPool, grifQuest4);

-- local grifQuest5 = {
--     guid = "Questyno_Grif5",

--     awardsrep = "LaResistenza;50", -- REP REWARD
--     completesound = "levelup",
--     dailycode = "Questyno_Grif",
--     lore = { "IGUI_SFQuest_Questyno_Grif5_Lore" },
--     needsitem = "Bandage;3", -- REQUIRE
--     onobtained = "unlockworldevent;Questyno_Grif;SFQuest_Questyno_Grif5_Complete",
--     text = "IGUI_SFQuest_Questyno_Grif5_Text",
--     texture = "media/textures/Item_Grif.png",
--     title = "IGUI_SFQuest_Questyno_Grif5_Title",
--     unlockedsound = "QuestUnlocked"
-- }
-- table.insert(SFQuest_Database.QuestPool, grifQuest5);

-- local grifQuest6 = {
--     guid = "Questyno_Grif6",

--     awardsrep = "LaResistenza;40", -- REP REWARD
--     completesound = "levelup",
--     dailycode = "Questyno_Grif",
--     lore = { "IGUI_SFQuest_Questyno_Grif6_Lore" },
--     needsitem = "PillsAntiDep;1", -- REQUIRE
--     onobtained = "unlockworldevent;Questyno_Grif;SFQuest_Questyno_Grif6_Complete",
--     text = "IGUI_SFQuest_Questyno_Grif6_Text",
--     texture = "media/textures/Item_Grif.png",
--     title = "IGUI_SFQuest_Questyno_Grif6_Title",
--     unlockedsound = "QuestUnlocked"
-- }
-- table.insert(SFQuest_Database.QuestPool, grifQuest6);

-- local grifQuest7 = {
--     guid = "Questyno_Grif7",

--     awardsrep = "LaResistenza;40", -- REP REWARD
--     completesound = "levelup",
--     dailycode = "Questyno_Grif",
--     lore = { "IGUI_SFQuest_Questyno_Grif7_Lore" },
--     needsitem = "PillsVitamins;1", -- REQUIRE
--     onobtained = "unlockworldevent;Questyno_Grif;SFQuest_Questyno_Grif7_Complete",
--     text = "IGUI_SFQuest_Questyno_Grif7_Text",
--     texture = "media/textures/Item_Grif.png",
--     title = "IGUI_SFQuest_Questyno_Grif7_Title",
--     unlockedsound = "QuestUnlocked"
-- }
-- table.insert(SFQuest_Database.QuestPool, grifQuest7);

-- local grifQuest8 = {
--     guid = "Questyno_Grif8",

--     awardsrep = "LaResistenza;40", -- REP REWARD
--     completesound = "levelup",
--     dailycode = "Questyno_Grif",
--     lore = { "IGUI_SFQuest_Questyno_Grif8_Lore" },
--     needsitem = "Antibiotics;1", -- REQUIRE
--     onobtained = "unlockworldevent;Questyno_Grif;SFQuest_Questyno_Grif8_Complete",
--     text = "IGUI_SFQuest_Questyno_Grif8_Text",
--     texture = "media/textures/Item_Grif.png",
--     title = "IGUI_SFQuest_Questyno_Grif8_Title",
--     unlockedsound = "QuestUnlocked"
-- }
-- table.insert(SFQuest_Database.QuestPool, grifQuest8);

-- local grifQuest9 = {
--     guid = "Questyno_Grif9",

--     awardsrep = "LaResistenza;50", -- REP REWARD
--     awardsitem = "Money;30",       -- MONEY REWARD
--     completesound = "levelup",
--     dailycode = "Questyno_Grif",
--     lore = { "IGUI_SFQuest_Questyno_Grif9_Lore" },
--     needsitem = "PillsBeta;1", -- REQUIRE
--     onobtained = "unlockworldevent;Questyno_Grif;SFQuest_Questyno_Grif9_Complete",
--     text = "IGUI_SFQuest_Questyno_Grif9_Text",
--     texture = "media/textures/Item_Grif.png",
--     title = "IGUI_SFQuest_Questyno_Grif9_Title",
--     unlockedsound = "QuestUnlocked"
-- }
-- table.insert(SFQuest_Database.QuestPool, grifQuest9);

-- local grifQuest10 = {
--     guid = "Questyno_Grif10",

--     awardstask = "Questyno_Grif10_A",
--     dailycode = "Questyno_Grif",
--     lore = { "IGUI_SFQuest_Questyno_Grif10_Lore" },
--     objectives = { {
--         guid = "Questyno_Grif10_A",
--         text = "IGUI_SFQuest_Questyno_Grif10_A",
--         needsitem = "FirstAidKit;1",
--         onobtained = "updateobjective;Questyno_Grif10;1;Completed;removeitem;FirstAidKit;1",
--         hidden = false,
--     }, {
--         guid = "Questyno_Grif10_B",
--         text = "IGUI_SFQuest_Questyno_Grif10_B",
--         needsitem = "PillsBeta;1",
--         onobtained = "updateobjective;Questyno_Grif10;2;Completed;removeitem;PillsBeta;1",
--         hidden = false,
--     }, {
--         guid = "Questyno_Grif10_C",
--         text = "IGUI_SFQuest_Questyno_Grif10_C",
--         needsitem = "Pills;1",
--         onobtained = "updateobjective;Questyno_Grif10;3;Completed;removeitem;Pills;1",
--         hidden = false,
--     }, {
--         guid = "Questyno_Grif10_D",
--         text = "IGUI_SFQuest_Questyno_Grif10_D",
--         needsitem = "Disinfectant;1",
--         onobtained = "updateobjective;Questyno_Grif10;4;Completed;removeitem;Disinfectant;1",
--         hidden = false,
--     } }, -- REQUIRE
--     text = "IGUI_SFQuest_Questyno_Grif10_Text",
--     texture = "media/textures/Item_Grif.png",
--     title = "IGUI_SFQuest_Questyno_Grif10_Title",
--     unlockedsound = "QuestUnlocked"
-- }
-- table.insert(SFQuest_Database.QuestPool, grifQuest10);

-- local grifQuest10A = {
--     guid = "Questyno_Grif10_A",

--     awardsrep = "LaResistenza;135", -- REP REWARD
--     completesound = "levelup",
--     dailycode = "Questyno_Grif",
--     lore = { "IGUI_SFQuest_Questyno_Grif10_Lore" },
--     unlocks = "unlockworldevent;Questyno_Grif;SFQuest_Questyno_Grif10_Complete",
--     text = "IGUI_SFQuest_Questyno_Grif10_A_Text",
--     texture = "media/textures/Item_Grif.png",
--     title = "IGUI_SFQuest_Questyno_Grif10_Title",
-- }
-- table.insert(SFQuest_Database.QuestPool, grifQuest10A);

-- local grifQuest11 = {
--     guid = "Questyno_Grif11",

--     awardstask = "Questyno_Grif11_A",
--     completesound = "levelup",
--     dailycode = "Questyno_Grif",
--     lore = { "IGUI_SFQuest_Questyno_Grif11_Lore" },
--     objectives = { {
--         guid = "Questyno_Grif11_A",
--         text = "IGUI_SFQuest_Questyno_Grif11_A",
--         needsitem = "FirstAidKit;1",
--         onobtained = "updateobjective;Questyno_Grif11;1;Completed;removeitem;FirstAidKit;1",
--         hidden = false,
--     }, {
--         guid = "Questyno_Grif11_B",
--         text = "IGUI_SFQuest_Questyno_Grif11_B",
--         needsitem = "PillsVitamins;1",
--         onobtained = "updateobjective;Questyno_Grif11;2;Completed;removeitem;PillsVitamins;1",
--         hidden = false,
--     }, {
--         guid = "Questyno_Grif11_C",
--         text = "IGUI_SFQuest_Questyno_Grif11_C",
--         needsitem = "PillsAntiDep;1",
--         onobtained = "updateobjective;Questyno_Grif11;3;Completed;removeitem;PillsAntiDep;1",
--         hidden = false,
--     }, {
--         guid = "Questyno_Grif11_D",
--         text = "IGUI_SFQuest_Questyno_Grif11_D",
--         needsitem = "AlcoholWipes;1",
--         onobtained = "updateobjective;Questyno_Grif11;4;Completed;removeitem;AlcoholWipes;1",
--         hidden = false,
--     } },                    -- REQUIRE
--     text = "IGUI_SFQuest_Questyno_Grif11_Text",
--     texture = "media/textures/Item_Grif.png", -- ICONA
--     title = "IGUI_SFQuest_Questyno_Grif11_Title",
--     unlockedsound = "QuestUnlocked"
-- }
-- table.insert(SFQuest_Database.QuestPool, grifQuest11);

-- local grifQuest11A = {
--     guid = "Questyno_Grif11_A",

--     awardsrep = "LaResistenza;200", -- REP REWARD
--     awardsitem = "Money;40",        -- MONEY REWARD
--     completesound = "levelup",
--     dailycode = "Questyno_Grif",
--     lore = { "IGUI_SFQuest_Questyno_Grif11_Lore" },
--     unlocks = "unlockworldevent;Questyno_Grif;SFQuest_Questyno_Grif11_Complete",
--     text = "IGUI_SFQuest_Questyno_Grif11_A_Text",
--     texture = "media/textures/Item_Grif.png",
--     title = "IGUI_SFQuest_Questyno_Grif11_Title",
-- }
-- table.insert(SFQuest_Database.QuestPool, grifQuest11A);

-- local grifQuest12 = {
--     guid = "Questyno_Grif12",

--     awardstask = "Questyno_Grif12_A",
--     dailycode = "Questyno_Grif",
--     lore = { "IGUI_SFQuest_Questyno_Grif12_Lore" },
--     objectives = {
--         {
--             guid = "Questyno_Grif12_A",
--             text = "IGUI_SFQuest_Questyno_Grif12_A",
--             needsitem = "FirstAidKit;1",
--             onobtained = "updateobjective;Questyno_Grif12;1;Completed;removeitem;FirstAidKit;1",
--             hidden = false,
--         }, {
--         guid = "Questyno_Grif12_B",
--         text = "IGUI_SFQuest_Questyno_Grif12_B",
--         needsitem = "PillsSleepingTablets;1",
--         onobtained = "updateobjective;Questyno_Grif12;2;Completed;removeitem;PillsSleepingTablets;1",
--         hidden = false,
--     }, {
--         guid = "Questyno_Grif12_C",
--         text = "IGUI_SFQuest_Questyno_Grif12_C",
--         needsitem = "LabItems.LabSyringe;1",
--         onobtained = "updateobjective;Questyno_Grif12;3;Completed;removeitem;LabItems.LabSyringe;1",
--         hidden = false,
--     }, {
--         guid = "Questyno_Grif12_D",
--         text = "IGUI_SFQuest_Questyno_Grif12_D",
--         needsitem = "CottonBalls;1",
--         onobtained = "updateobjective;Questyno_Grif12;4;Completed;removeitem;CottonBalls;1",
--         hidden = false,
--     }
--     }, -- REQUIRE
--     text = "IGUI_SFQuest_Questyno_Grif12_Text",
--     texture = "media/textures/Item_Grif.png",
--     title = "IGUI_SFQuest_Questyno_Grif12_Title",
--     unlockedsound = "QuestUnlocked"
-- }
-- table.insert(SFQuest_Database.QuestPool, grifQuest12);

-- local grifQuest12A = {
--     guid = "Questyno_Grif12_A",

--     awardsrep = "LaResistenza;120", -- REP REWARD
--     completesound = "levelup",
--     dailycode = "Questyno_Grif",
--     lore = { "IGUI_SFQuest_Questyno_Grif12_Lore" },
--     unlocks = "unlockworldevent;Questyno_Grif;SFQuest_Questyno_Grif12_Complete",
--     text = "IGUI_SFQuest_Questyno_Grif12_A_Text",
--     texture = "media/textures/Item_Grif.png",
--     title = "IGUI_SFQuest_Questyno_Grif12_Title",
-- }
-- table.insert(SFQuest_Database.QuestPool, grifQuest12A);

-- local grifQuest13 = {
--     guid = "Questyno_Grif13",

--     awardsrep = "LaResistenza;75", -- REP REWARD
--     completesound = "levelup",
--     dailycode = "Questyno_Grif",
--     lore = { "IGUI_SFQuest_Questyno_Grif13_Lore" },
--     needsitem = "CottonBalls;2", -- REQUIRE
--     onobtained = "unlockworldevent;Questyno_Grif;SFQuest_Questyno_Grif13_Complete",
--     text = "IGUI_SFQuest_Questyno_Grif13_Text",
--     texture = "media/textures/Item_Grif.png",
--     title = "IGUI_SFQuest_Questyno_Grif13_Title",
--     unlockedsound = "QuestUnlocked"
-- }
-- table.insert(SFQuest_Database.QuestPool, grifQuest13);

-- local grifQuest14 = {
--     guid = "Questyno_Grif14",

--     awardsrep = "LaResistenza;40", -- REP REWARD
--     completesound = "levelup",
--     dailycode = "Questyno_Grif",
--     lore = { "IGUI_SFQuest_Questyno_Grif14_Lore" },
--     needsitem = "Disinfectant;1", -- REQUIRE
--     onobtained = "unlockworldevent;Questyno_Grif;SFQuest_Questyno_Grif14_Complete",
--     text = "IGUI_SFQuest_Questyno_Grif14_Text",
--     texture = "media/textures/Item_Grif.png",
--     title = "IGUI_SFQuest_Questyno_Grif14_Title",
--     unlockedsound = "QuestUnlocked"
-- }
-- table.insert(SFQuest_Database.QuestPool, grifQuest14);

-- local grifQuest15 = {
--     guid = "Questyno_Grif15",

--     awardsrep = "LaResistenza;50", -- REP REWARD
--     completesound = "levelup",
--     dailycode = "Questyno_Grif",
--     lore = { "IGUI_SFQuest_Questyno_Grif15_Lore" },
--     needsitem = "AlcoholWipes;1", -- REQUIRE
--     onobtained = "unlockworldevent;Questyno_Grif;SFQuest_Questyno_Grif15_Complete",
--     text = "IGUI_SFQuest_Questyno_Grif15_Text",
--     texture = "media/textures/Item_Grif.png",
--     title = "IGUI_SFQuest_Questyno_Grif15_Title",
--     unlockedsound = "QuestUnlocked"
-- }
-- table.insert(SFQuest_Database.QuestPool, grifQuest15);

-- local grifQuest16 = {
--     guid = "Questyno_Grif16",

--     awardstask = "Questyno_Grif16_A",
--     completesound = "levelup",
--     dailycode = "Questyno_Grif",
--     lore = { "IGUI_SFQuest_Questyno_Grif16_Lore" },
--     objectives = {
--         {
--             guid = "Questyno_Grif16_A",
--             text = "IGUI_SFQuest_Questyno_Grif16_A",
--             needsitem = "SutureNeedle;1",
--             onobtained = "updateobjective;Questyno_Grif16;1;Completed;removeitem;SutureNeedle;1",
--             hidden = false,
--         }, {
--         guid = "Questyno_Grif16_B",
--         text = "IGUI_SFQuest_Questyno_Grif16_B",
--         needsitem = "SutureNeedleHolder;1",
--         onobtained = "updateobjective;Questyno_Grif16;2;Completed;removeitem;SutureNeedleHolder;1",
--         hidden = false,
--     }
--     }, -- REQUIRE
--     text = "IGUI_SFQuest_Questyno_Grif16_Text",
--     texture = "media/textures/Item_Grif.png",
--     title = "IGUI_SFQuest_Questyno_Grif16_Title",
--     unlockedsound = "QuestUnlocked"
-- }
-- table.insert(SFQuest_Database.QuestPool, grifQuest16);

-- local grifQuest16A = {
--     guid = "Questyno_Grif16_A",

--     awardsrep = "LaResistenza;250", -- REP REWARD
--     awardsitem = "Money;30",        -- MONEY REWARD
--     completesound = "levelup",
--     dailycode = "Questyno_Grif",
--     lore = { "IGUI_SFQuest_Questyno_Grif16_Lore" },
--     unlocks = "unlockworldevent;Questyno_Grif;SFQuest_Questyno_Grif16_Complete",
--     text = "IGUI_SFQuest_Questyno_Grif16_A_Text",
--     texture = "media/textures/Item_Grif.png",
--     title = "IGUI_SFQuest_Questyno_Grif16_Title",
-- }
-- table.insert(SFQuest_Database.QuestPool, grifQuest16A);

-- local grifQuest17 = {
--     guid = "Questyno_Grif17",

--     awardsrep = "LaResistenza;150", -- REP REWARD
--     awardsitem = "Money;30",        -- MONEY REWARD
--     completesound = "levelup",
--     dailycode = "Questyno_Grif",
--     lore = { "IGUI_SFQuest_Questyno_Grif17_Lore" },
--     needsitem = "SutureNeedle;1", -- REQUIRE
--     onobtained = "unlockworldevent;Questyno_Grif;SFQuest_Questyno_Grif17_Complete",
--     text = "IGUI_SFQuest_Questyno_Grif17_Text",
--     texture = "media/textures/Item_Grif.png",
--     title = "IGUI_SFQuest_Questyno_Grif17_Title",
--     unlockedsound = "QuestUnlocked"
-- }
-- table.insert(SFQuest_Database.QuestPool, grifQuest17);

-- local grifQuest18 = {
--     guid = "Questyno_Grif18",

--     awardsrep = "LaResistenza;80", -- REP REWARD
--     completesound = "levelup",
--     dailycode = "Questyno_Grif",
--     lore = { "IGUI_SFQuest_Questyno_Grif18_Lore" },
--     needsitem = "AlcoholBandage;2", -- REQUIRE
--     onobtained = "unlockworldevent;Questyno_Grif;SFQuest_Questyno_Grif18_Complete",
--     text = "IGUI_SFQuest_Questyno_Grif18_Text",
--     texture = "media/textures/Item_Grif.png",
--     title = "IGUI_SFQuest_Questyno_Grif18_Title",
--     unlockedsound = "QuestUnlocked"
-- }
-- table.insert(SFQuest_Database.QuestPool, grifQuest18);

-- local grifQuest19 = {
--     guid = "Questyno_Grif19",

--     awardsrep = "LaResistenza;20", -- REP REWARD
--     completesound = "levelup",
--     dailycode = "Questyno_Grif",
--     lore = { "IGUI_SFQuest_Questyno_Grif19_Lore" },
--     needsitem = "Bandaid;1", -- REQUIRE
--     onobtained = "unlockworldevent;Questyno_Grif;SFQuest_Questyno_Grif19_Complete",
--     text = "IGUI_SFQuest_Questyno_Grif19_Text",
--     texture = "media/textures/Item_Grif.png",
--     title = "IGUI_SFQuest_Questyno_Grif19_Title",
--     unlockedsound = "QuestUnlocked"
-- }
-- table.insert(SFQuest_Database.QuestPool, grifQuest19);

-- local grifQuest20 = {
--     guid = "Questyno_Grif20",

--     awardsrep = "LaResistenza;80", -- REP REWARD
--     awardsitem = "Money;25",       -- MONEY REWARD
--     completesound = "levelup",
--     dailycode = "Questyno_Grif",
--     lore = { "IGUI_SFQuest_Questyno_Grif20_Lore" },
--     needsitem = "Bandaid;3", -- REQUIRE
--     onobtained = "unlockworldevent;Questyno_Grif;SFQuest_Questyno_Grif20_Complete",
--     text = "IGUI_SFQuest_Questyno_Grif20_Text",
--     texture = "media/textures/Item_Grif.png",
--     title = "IGUI_SFQuest_Questyno_Grif20_Title",
--     unlockedsound = "QuestUnlocked"
-- }
-- table.insert(SFQuest_Database.QuestPool, grifQuest20);

-- local grifQuest21 = {
--     guid = "Questyno_Grif21",

--     awardsrep = "LaResistenza;50", -- REP REWARD
--     completesound = "levelup",
--     dailycode = "Questyno_Grif",
--     lore = { "IGUI_SFQuest_Questyno_Grif21_Lore" },
--     needsitem = "Tweezers;1", -- REQUIRE
--     onobtained = "unlockworldevent;Questyno_Grif;SFQuest_Questyno_Grif21_Complete",
--     text = "IGUI_SFQuest_Questyno_Grif21_Text",
--     texture = "media/textures/Item_Grif.png",
--     title = "IGUI_SFQuest_Questyno_Grif21_Title",
--     unlockedsound = "QuestUnlocked"
-- }
-- table.insert(SFQuest_Database.QuestPool, grifQuest21);

-- local grifQuest22 = {
--     guid = "Questyno_Grif22",

--     awardsrep = "LaResistenza;25", -- REP REWARD
--     completesound = "levelup",
--     dailycode = "Questyno_Grif",
--     lore = { "IGUI_SFQuest_Questyno_Grif22_Lore" },
--     needsitem = "Splint;1", -- REQUIRE
--     onobtained = "unlockworldevent;Questyno_Grif;SFQuest_Questyno_Grif22_Complete",
--     text = "IGUI_SFQuest_Questyno_Grif22_Text",
--     texture = "media/textures/Item_Grif.png",
--     title = "IGUI_SFQuest_Questyno_Grif22_Title",
--     unlockedsound = "QuestUnlocked"
-- }
-- table.insert(SFQuest_Database.QuestPool, grifQuest22);

-- local grifQuest23 = {
--     guid = "Questyno_Grif23",

--     awardsrep = "LaResistenza;25", -- REP REWARD
--     awardsitem = "FirstAidKit;1",
--     completesound = "levelup",
--     dailycode = "Questyno_Grif",
--     lore = { "IGUI_SFQuest_Questyno_Grif23_Lore" },
--     needsitem = "FirstAidKit;1", -- REQUIRE
--     onobtained = "unlockworldevent;Questyno_Grif;SFQuest_Questyno_Grif23_Complete",
--     text = "IGUI_SFQuest_Questyno_Grif23_Text",
--     texture = "media/textures/Item_Grif.png",
--     title = "IGUI_SFQuest_Questyno_Grif23_Title",
--     unlockedsound = "QuestUnlocked"
-- }
-- table.insert(SFQuest_Database.QuestPool, grifQuest23);

-- local grifQuest24 = {
--     guid = "Questyno_Grif24",

--     awardsrep = "LaResistenza;80", -- REP REWARD
--     awardsitem = "Pills;1",        -- MONEY REWARD
--     completesound = "levelup",
--     dailycode = "Questyno_Grif",
--     lore = { "IGUI_SFQuest_Questyno_Grif24_Lore" },
--     needsitem = "Pills;2", -- REQUIRE
--     onobtained = "unlockworldevent;Questyno_Grif;SFQuest_Questyno_Grif24_Complete",
--     text = "IGUI_SFQuest_Questyno_Grif24_Text",
--     texture = "media/textures/Item_Grif.png",
--     title = "IGUI_SFQuest_Questyno_Grif24_Title",
--     unlockedsound = "QuestUnlocked"
-- }
-- table.insert(SFQuest_Database.QuestPool, grifQuest24);

-- local grifQuest25 = {
--     guid = "Questyno_Grif25",

--     awardsrep = "LaResistenza;25",         -- REP REWARD
--     awardsitem = "PillsSleepingTablets;1", -- MONEY REWARD
--     completesound = "levelup",
--     dailycode = "Questyno_Grif",
--     lore = { "IGUI_SFQuest_Questyno_Grif25_Lore" },
--     needsitem = "PillsSleepingTablets;1", -- REQUIRE
--     onobtained = "unlockworldevent;Questyno_Grif;SFQuest_Questyno_Grif25_Complete",
--     text = "IGUI_SFQuest_Questyno_Grif25_Text",
--     texture = "media/textures/Item_Grif.png",
--     title = "IGUI_SFQuest_Questyno_Grif25_Title",
--     unlockedsound = "QuestUnlocked"
-- }
-- table.insert(SFQuest_Database.QuestPool, grifQuest25);

-- local grifQuest26 = {
--     guid = "Questyno_Grif26",

--     awardsrep = "LaResistenza;60",        -- REP REWARD
--     awardsitem = "LabItems.LabSyringe;5", -- MONEY REWARD
--     completesound = "levelup",
--     dailycode = "Questyno_Grif",
--     lore = { "IGUI_SFQuest_Questyno_Grif26_Lore" },
--     needsitem = "LabItems.LabSyringe;10", -- REQUIRE
--     onobtained = "unlockworldevent;Questyno_Grif;SFQuest_Questyno_Grif26_Complete",
--     text = "IGUI_SFQuest_Questyno_Grif26_Text",
--     texture = "media/textures/Item_Grif.png",
--     title = "IGUI_SFQuest_Questyno_Grif26_Title",
--     unlockedsound = "QuestUnlocked"
-- }
-- table.insert(SFQuest_Database.QuestPool, grifQuest26);

-- local grifQuest27 = {
--     guid = "Questyno_Grif27",

--     awardsrep = "LaResistenza;50", -- REP REWARD
--     awardsitem = "Money;50",       -- MONEY REWARD
--     completesound = "levelup",
--     dailycode = "Questyno_Grif",
--     lore = { "IGUI_SFQuest_Questyno_Grif27_Lore" },
--     needsitem = "Bandage;3", -- REQUIRE
--     onobtained = "unlockworldevent;Questyno_Grif;SFQuest_Questyno_Grif27_Complete",
--     text = "IGUI_SFQuest_Questyno_Grif27_Text",
--     texture = "media/textures/Item_Grif.png",
--     title = "IGUI_SFQuest_Questyno_Grif27_Title",
--     unlockedsound = "QuestUnlocked"
-- }
-- table.insert(SFQuest_Database.QuestPool, grifQuest27);

-- local grifQuest28 = {
--     guid = "Questyno_Grif28",

--     awardsrep = "LaResistenza;40",     -- REP REWARD
--     awardsitem = "PynoTweaks.Joint;1;PillsAntiDep;1", -- MONEY REWARD
--     completesound = "levelup",
--     dailycode = "Questyno_Grif",
--     lore = { "IGUI_SFQuest_Questyno_Grif28_Lore" },
--     needsitem = "PillsAntiDep;1", -- REQUIRE
--     onobtained = "unlockworldevent;Questyno_Grif;SFQuest_Questyno_Grif28_Complete",
--     text = "IGUI_SFQuest_Questyno_Grif28_Text",
--     texture = "media/textures/Item_Grif.png",
--     title = "IGUI_SFQuest_Questyno_Grif28_Title",
--     unlockedsound = "QuestUnlocked"
-- }
-- table.insert(SFQuest_Database.QuestPool, grifQuest28);

--[[                                                       *** Angelica Stella ***
            Elenco:
                intro. Parla con Angelica per sbloccare le daily.
                1. Recupare Base.Shoes_Fancy parlando con tile in 10609,10331,0 (25rep + Base.Shovel2)
                2. Recuperare Base.Dress_SmallBlackStrapless parlando con 10629,9903,0 (15rep + Base.DuctTape)
                3. Recuperare Base.Glasses_Sun a 10634,9904,0 (20rep + 40$)
                4. Recuperare Base.Lipstick a 10857,9940,0 (25rep + 40$)
                5. Recuperare Base.Skirt_Short a 8147,11115,1 (20rep + 40$)
                6. Recuperare Base.Dress_Short a 7207,11247,0 (30rep)
                7. Recuperare Base.Skirt_Short a 11884,6909,0 (40rep + 50$)
                8. Recuperare Base.Skirt_Mini a 11204,8801,1 (50rep + 50$)
                9. Recuperare Base.Dress_Long a 10210,8216,0 (100rep)
                10. Recuperare Base.TightsFishnets a 9725,10333,0 (40rep)
                11. Recuperare Base.HairDyeBrown a 9289,10065,0 (40rep)
                12. Recuperare Base.HairDyeBrown a 8144,9687,0 (50rep)
                13. Recuperare Base.Dress_Knees a 8757,6545,0 (70rep + 50$)
                14. Recuperare Base.Dress_Knees a 9719,10537,0 (30rep + 50$)
                15. Recuperare Base.Dress_Knees a 8395,7581,0 (35rep + 80$)
                16. Recuperare Base.Gloves_LongWomenGloves a 9030,11491,0 (50rep)
                17. Recupero Base.Dress_Normal a 7266,8474,1 (30rep, 50$)
                18. Recupero Base.MakeupFoundation a 7016,8535,0 (30rep)
                19. Recupero Base.Tshirt_WhiteTINT;3 a 5143,9463,0 (40rep + 70$)
                20. Recupero Base.Mov_MannequinFemale a 7338,9683,1 (35rep + 50$)
                21. Recupero Base.Necklace_GoldDiamond (40rep + 25$)
                ]]

local stellaIntro = {
    guid = "Questyno_AngelicaStella_Intro",

    awardsrep = "AngelicaStella;100", -- REP REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_AngelicaStella_Intro_Lore" },
    ondone = "randomcodedworldfrompool;Questyno_AngelicaStella;Questyno;AngelicaStella",
    text = "IGUI_SFQuest_Questyno_AngelicaStella_Intro_Text",
    texture = "media/textures/Item_AngelicaStella.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_AngelicaStella;SFQuest_Questyno_AngelicaStella_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_AngelicaStella_Intro_Title",
}
table.insert(SFQuest_Database.QuestPool, stellaIntro);

local stellaQuest1 = {
    guid = "Questyno_AngelicaStella1",

    awardstask = "Questyno_AngelicaStella1_A", -- TASK REWARD
    dailycode = "Questyno_AngelicaStella",
    lore = { "IGUI_SFQuest_Questyno_AngelicaStella1_Lore" },
    objectives = { {
        guid = "Questyno_AngelicaStella1_A",
        text = "IGUI_SFQuest_Questyno_AngelicaStella1_A",
        hidden = false,
        oncompleted = "additem;Shoes_Fancy;1;removeclickevent;EventoAngelicaStella1"
    } },
    text = "IGUI_SFQuest_Questyno_AngelicaStella1_Text",
    texture = "media/textures/Item_AngelicaStella.png",
    title = "IGUI_SFQuest_Questyno_AngelicaStella1_Title",
    unlocks =
    "clickevent;10609x10331x0:EventoAngelicaStella1;time:50:anim:loot;updateobjective:Questyno_AngelicaStella1:1:Completed",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, stellaQuest1);

local stellaQuest1A = {
    guid = "Questyno_AngelicaStella1_A",

    awardsrep = "LaResistenza;25", -- REP REWARD
    awardsitem = "Shovel2;1",      -- MONEY REWARD
    completesound = "levelup",
    dailycode = "Questyno_AngelicaStella",
    lore = { "IGUI_SFQuest_Questyno_AngelicaStella1_Lore" },
    needsitem = "Shoes_Fancy;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_AngelicaStella;SFQuest_Questyno_AngelicaStella1_Complete",
    text = "IGUI_SFQuest_Questyno_AngelicaStella1_A_Text",
    texture = "media/textures/Item_AngelicaStella.png",
    title = "IGUI_SFQuest_Questyno_AngelicaStella1_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, stellaQuest1A);

local stellaQuest2 = {
    guid = "Questyno_AngelicaStella2",

    awardstask = "Questyno_AngelicaStella2_A", -- TASK REWARD
    dailycode = "Questyno_AngelicaStella",
    lore = { "IGUI_SFQuest_Questyno_AngelicaStella2_Lore" },
    objectives = { {
        guid = "Questyno_AngelicaStella2_A",
        text = "IGUI_SFQuest_Questyno_AngelicaStella2_A",
        hidden = false,
        oncompleted = "additem;Dress_SmallBlackStrapless;1;removeclickevent;EventoAngelicaStella2"
    } },
    text = "IGUI_SFQuest_Questyno_AngelicaStella2_Text",
    texture = "media/textures/Item_AngelicaStella.png",
    title = "IGUI_SFQuest_Questyno_AngelicaStella2_Title",
    unlocks =
    "clickevent;10629x9903x0:EventoAngelicaStella2;time:50:anim:loot;updateobjective:Questyno_AngelicaStella2:1:Completed",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, stellaQuest2);

local stellaQuest2A = {
    guid = "Questyno_AngelicaStella2_A",

    awardsrep = "LaResistenza;15", -- REP REWARD
    awardsitem = "DuctTape;1",     -- MONEY REWARD
    completesound = "levelup",
    dailycode = "Questyno_AngelicaStella",
    lore = { "IGUI_SFQuest_Questyno_AngelicaStella2_Lore" },
    needsitem = "Dress_SmallBlackStrapless;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_AngelicaStella;SFQuest_Questyno_AngelicaStella2_Complete",
    text = "IGUI_SFQuest_Questyno_AngelicaStella2_A_Text",
    texture = "media/textures/Item_AngelicaStella.png",
    title = "IGUI_SFQuest_Questyno_AngelicaStella2_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, stellaQuest2A);

local stellaQuest3 = {
    guid = "Questyno_AngelicaStella3",

    awardstask = "Questyno_AngelicaStella3_A", -- TASK REWARD
    dailycode = "Questyno_AngelicaStella",
    lore = { "IGUI_SFQuest_Questyno_AngelicaStella3_Lore" },
    objectives = { {
        guid = "Questyno_AngelicaStella3_A",
        text = "IGUI_SFQuest_Questyno_AngelicaStella3_A",
        hidden = false,
        oncompleted = "additem;Glasses_Sun;1;removeclickevent;EventoAngelicaStella3"
    } },
    text = "IGUI_SFQuest_Questyno_AngelicaStella3_Text",
    texture = "media/textures/Item_AngelicaStella.png",
    title = "IGUI_SFQuest_Questyno_AngelicaStella3_Title",
    unlocks =
    "clickevent;10634x9904x0:EventoAngelicaStella3;time:50:anim:loot;updateobjective:Questyno_AngelicaStella3:1:Completed",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, stellaQuest3);

local stellaQuest3A = {
    guid = "Questyno_AngelicaStella3_A",

    awardsrep = "LaResistenza;20", -- REP REWARD
    awardsitem = "Money;40",       -- MONEY REWARD
    completesound = "levelup",
    dailycode = "Questyno_AngelicaStella",
    lore = { "IGUI_SFQuest_Questyno_AngelicaStella3_Lore" },
    needsitem = "Glasses_Sun;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_AngelicaStella;SFQuest_Questyno_AngelicaStella3_Complete",
    text = "IGUI_SFQuest_Questyno_AngelicaStella3_A_Text",
    texture = "media/textures/Item_AngelicaStella.png",
    title = "IGUI_SFQuest_Questyno_AngelicaStella3_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, stellaQuest3A);

local stellaQuest4 = {
    guid = "Questyno_AngelicaStella4",

    awardstask = "Questyno_AngelicaStella4_A", -- TASK REWARD
    dailycode = "Questyno_AngelicaStella",
    lore = { "IGUI_SFQuest_Questyno_AngelicaStella4_Lore" },
    objectives = { {
        guid = "Questyno_AngelicaStella4_A",
        text = "IGUI_SFQuest_Questyno_AngelicaStella4_A",
        hidden = false,
        oncompleted = "additem;Lipstick;1;removeclickevent;EventoAngelicaStella4"
    } },
    text = "IGUI_SFQuest_Questyno_AngelicaStella4_Text",
    texture = "media/textures/Item_AngelicaStella.png",
    title = "IGUI_SFQuest_Questyno_AngelicaStella4_Title",
    unlocks =
    "clickevent;10857x9940x0:EventoAngelicaStella4;time:50:anim:loot;updateobjective:Questyno_AngelicaStella4:1:Completed",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, stellaQuest4);

local stellaQuest4A = {
    guid = "Questyno_AngelicaStella4_A",

    awardsrep = "LaResistenza;25", -- REP REWARD
    awardsitem = "Money;40",       -- MONEY REWARD
    completesound = "levelup",
    dailycode = "Questyno_AngelicaStella",
    lore = { "IGUI_SFQuest_Questyno_AngelicaStella4_Lore" },
    needsitem = "Lipstick;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_AngelicaStella;SFQuest_Questyno_AngelicaStella4_Complete",
    text = "IGUI_SFQuest_Questyno_AngelicaStella4_A_Text",
    texture = "media/textures/Item_AngelicaStella.png",
    title = "IGUI_SFQuest_Questyno_AngelicaStella4_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, stellaQuest4A);

local stellaQuest5 = {
    guid = "Questyno_AngelicaStella5",

    awardstask = "Questyno_AngelicaStella5_A", -- TASK REWARD
    dailycode = "Questyno_AngelicaStella",
    lore = { "IGUI_SFQuest_Questyno_AngelicaStella5_Lore" },
    objectives = { {
        guid = "Questyno_AngelicaStella5_A",
        text = "IGUI_SFQuest_Questyno_AngelicaStella5_A",
        hidden = false,
        oncompleted = "additem;Skirt_Short;1;removeclickevent;EventoAngelicaStella5"
    } },
    text = "IGUI_SFQuest_Questyno_AngelicaStella5_Text",
    texture = "media/textures/Item_AngelicaStella.png",
    title = "IGUI_SFQuest_Questyno_AngelicaStella5_Title",
    unlocks =
    "clickevent;8147x11115x1:EventoAngelicaStella5;time:50:anim:loot;updateobjective:Questyno_AngelicaStella5:1:Completed",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, stellaQuest5);

local stellaQuest5A = {
    guid = "Questyno_AngelicaStella5_A",

    awardsrep = "LaResistenza;20", -- REP REWARD
    awardsitem = "Money;40",       -- MONEY REWARD
    completesound = "levelup",
    dailycode = "Questyno_AngelicaStella",
    lore = { "IGUI_SFQuest_Questyno_AngelicaStella5_Lore" },
    needsitem = "Skirt_Short;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_AngelicaStella;SFQuest_Questyno_AngelicaStella5_Complete",
    text = "IGUI_SFQuest_Questyno_AngelicaStella5_A_Text",
    texture = "media/textures/Item_AngelicaStella.png",
    title = "IGUI_SFQuest_Questyno_AngelicaStella5_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, stellaQuest5A);

local stellaQuest6 = {
    guid = "Questyno_AngelicaStella6",

    awardstask = "Questyno_AngelicaStella6_A", -- TASK REWARD
    dailycode = "Questyno_AngelicaStella",
    lore = { "IGUI_SFQuest_Questyno_AngelicaStella6_Lore" },
    objectives = { {
        guid = "Questyno_AngelicaStella6_A",
        text = "IGUI_SFQuest_Questyno_AngelicaStella6_A",
        hidden = false,
        oncompleted = "additem;Hat_BunnyEarsBlack;1;removeclickevent;EventoAngelicaStella6"
    } },
    text = "IGUI_SFQuest_Questyno_AngelicaStella6_Text",
    texture = "media/textures/Item_AngelicaStella.png",
    title = "IGUI_SFQuest_Questyno_AngelicaStella6_Title",
    unlocks =
    "clickevent;7207x11247x0:EventoAngelicaStella6;time:50:anim:loot;updateobjective:Questyno_AngelicaStella6:1:Completed",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, stellaQuest6);

local stellaQuest6A = {
    guid = "Questyno_AngelicaStella6_A",

    awardsrep = "LaResistenza;30", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_AngelicaStella",
    lore = { "IGUI_SFQuest_Questyno_AngelicaStella6_Lore" },
    needsitem = "Hat_BunnyEarsBlack;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_AngelicaStella;SFQuest_Questyno_AngelicaStella6_Complete",
    text = "IGUI_SFQuest_Questyno_AngelicaStella6_A_Text",
    texture = "media/textures/Item_AngelicaStella.png",
    title = "IGUI_SFQuest_Questyno_AngelicaStella6_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, stellaQuest6A);

local stellaQuest7 = {
    guid = "Questyno_AngelicaStella7",

    awardstask = "Questyno_AngelicaStella7_A", -- TASK REWARD
    dailycode = "Questyno_AngelicaStella",
    lore = { "IGUI_SFQuest_Questyno_AngelicaStella7_Lore" },
    objectives = { {
        guid = "Questyno_AngelicaStella7_A",
        text = "IGUI_SFQuest_Questyno_AngelicaStella7_A",
        hidden = false,
        oncompleted = "additem;Skirt_Short;1;removeclickevent;EventoAngelicaStella7"
    } },
    text = "IGUI_SFQuest_Questyno_AngelicaStella7_Text",
    texture = "media/textures/Item_AngelicaStella.png",
    title = "IGUI_SFQuest_Questyno_AngelicaStella7_Title",
    unlocks =
    "clickevent;11884x6909x0:EventoAngelicaStella7;time:50:anim:loot;updateobjective:Questyno_AngelicaStella7:1:Completed",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, stellaQuest7);

local stellaQuest7A = {
    guid = "Questyno_AngelicaStella7_A",

    awardsrep = "LaResistenza;40", -- REP REWARD
    awardsitem = "Money;50",       -- MONEY REWARD
    completesound = "levelup",
    dailycode = "Questyno_AngelicaStella",
    lore = { "IGUI_SFQuest_Questyno_AngelicaStella7_Lore" },
    needsitem = "Skirt_Short;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_AngelicaStella;SFQuest_Questyno_AngelicaStella7_Complete",
    text = "IGUI_SFQuest_Questyno_AngelicaStella7_A_Text",
    texture = "media/textures/Item_AngelicaStella.png",
    title = "IGUI_SFQuest_Questyno_AngelicaStella7_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, stellaQuest7A);

local stellaQuest8 = {
    guid = "Questyno_AngelicaStella8",

    awardstask = "Questyno_AngelicaStella8_A", -- TASK REWARD
    dailycode = "Questyno_AngelicaStella",
    lore = { "IGUI_SFQuest_Questyno_AngelicaStella8_Lore" },
    objectives = { {
        guid = "Questyno_AngelicaStella8_A",
        text = "IGUI_SFQuest_Questyno_AngelicaStella8_A",
        hidden = false,
        oncompleted = "additem;Skirt_Mini;1;removeclickevent;EventoAngelicaStella8"
    } },
    text = "IGUI_SFQuest_Questyno_AngelicaStella8_Text",
    texture = "media/textures/Item_AngelicaStella.png",
    title = "IGUI_SFQuest_Questyno_AngelicaStella8_Title",
    unlocks =
    "clickevent;11204x8801x1:EventoAngelicaStella8;time:50:anim:loot;updateobjective:Questyno_AngelicaStella8:1:Completed",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, stellaQuest8);

local stellaQuest8A = {
    guid = "Questyno_AngelicaStella8_A",

    awardsrep = "LaResistenza;50", -- REP REWARD
    awardsitem = "Money;50",       -- MONEY REWARD
    completesound = "levelup",
    dailycode = "Questyno_AngelicaStella",
    lore = { "IGUI_SFQuest_Questyno_AngelicaStella8_Lore" },
    needsitem = "Skirt_Mini;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_AngelicaStella;SFQuest_Questyno_AngelicaStella8_Complete",
    text = "IGUI_SFQuest_Questyno_AngelicaStella8_A_Text",
    texture = "media/textures/Item_AngelicaStella.png",
    title = "IGUI_SFQuest_Questyno_AngelicaStella8_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, stellaQuest8A);

local stellaQuest9 = {
    guid = "Questyno_AngelicaStella9",

    awardstask = "Questyno_AngelicaStella9_A", -- TASK REWARD
    dailycode = "Questyno_AngelicaStella",
    lore = { "IGUI_SFQuest_Questyno_AngelicaStella9_Lore" },
    objectives = { {
        guid = "Questyno_AngelicaStella9_A",
        text = "IGUI_SFQuest_Questyno_AngelicaStella9_A",
        hidden = false,
        oncompleted = "additem;Dress_Long;1;removeclickevent;EventoAngelicaStella9"
    } },
    text = "IGUI_SFQuest_Questyno_AngelicaStella9_Text",
    texture = "media/textures/Item_AngelicaStella.png",
    title = "IGUI_SFQuest_Questyno_AngelicaStella9_Title",
    unlocks =
    "clickevent;10210x8216x0:EventoAngelicaStella9;time:50:anim:loot;updateobjective:Questyno_AngelicaStella9:1:Completed",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, stellaQuest9);

local stellaQuest9A = {
    guid = "Questyno_AngelicaStella9_A",

    awardsrep = "LaResistenza;100", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_AngelicaStella",
    lore = { "IGUI_SFQuest_Questyno_AngelicaStella9_Lore" },
    needsitem = "Dress_Long;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_AngelicaStella;SFQuest_Questyno_AngelicaStella9_Complete",
    text = "IGUI_SFQuest_Questyno_AngelicaStella9_A_Text",
    texture = "media/textures/Item_AngelicaStella.png",
    title = "IGUI_SFQuest_Questyno_AngelicaStella9_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, stellaQuest9A);

local stellaQuest10 = {
    guid = "Questyno_AngelicaStella10",

    awardstask = "Questyno_AngelicaStella10_A", -- TASK REWARD
    dailycode = "Questyno_AngelicaStella",
    lore = { "IGUI_SFQuest_Questyno_AngelicaStella10_Lore" },
    objectives = { {
        guid = "Questyno_AngelicaStella10_A",
        text = "IGUI_SFQuest_Questyno_AngelicaStella10_A",
        hidden = false,
        oncompleted = "additem;TightsFishnets;1;removeclickevent;EventoAngelicaStella10"
    } },
    text = "IGUI_SFQuest_Questyno_AngelicaStella10_Text",
    texture = "media/textures/Item_AngelicaStella.png",
    title = "IGUI_SFQuest_Questyno_AngelicaStella10_Title",
    unlocks =
    "clickevent;9725x10333x0:EventoAngelicaStella10;time:50:anim:loot;updateobjective:Questyno_AngelicaStella10:1:Completed",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, stellaQuest10);

local stellaQuest10A = {
    guid = "Questyno_AngelicaStella10_A",

    awardsrep = "LaResistenza;40", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_AngelicaStella",
    lore = { "IGUI_SFQuest_Questyno_AngelicaStella10_Lore" },
    needsitem = "TightsFishnets;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_AngelicaStella;SFQuest_Questyno_AngelicaStella10_Complete",
    text = "IGUI_SFQuest_Questyno_AngelicaStella10_A_Text",
    texture = "media/textures/Item_AngelicaStella.png",
    title = "IGUI_SFQuest_Questyno_AngelicaStella10_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, stellaQuest10A);

local stellaQuest11 = {
    guid = "Questyno_AngelicaStella11",

    awardstask = "Questyno_AngelicaStella11_A", -- TASK REWARD
    dailycode = "Questyno_AngelicaStella",
    lore = { "IGUI_SFQuest_Questyno_AngelicaStella11_Lore" },
    objectives = { {
        guid = "Questyno_AngelicaStella11_A",
        text = "IGUI_SFQuest_Questyno_AngelicaStella11_A",
        hidden = false,
        oncompleted = "additem;HairDyeLightBrown;1;removeclickevent;EventoAngelicaStella11"
    } },
    text = "IGUI_SFQuest_Questyno_AngelicaStella11_Text",
    texture = "media/textures/Item_AngelicaStella.png",
    title = "IGUI_SFQuest_Questyno_AngelicaStella11_Title",
    unlocks =
    "clickevent;9288x10064x0:EventoAngelicaStella11;time:50:anim:loot;updateobjective:Questyno_AngelicaStella11:1:Completed",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, stellaQuest11);

local stellaQuest11A = {
    guid = "Questyno_AngelicaStella11_A",

    awardsrep = "LaResistenza;40", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_AngelicaStella",
    lore = { "IGUI_SFQuest_Questyno_AngelicaStella11_Lore" },
    needsitem = "HairDyeLightBrown;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_AngelicaStella;SFQuest_Questyno_AngelicaStella11_Complete",
    text = "IGUI_SFQuest_Questyno_AngelicaStella11_A_Text",
    texture = "media/textures/Item_AngelicaStella.png",
    title = "IGUI_SFQuest_Questyno_AngelicaStella11_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, stellaQuest11A);

local stellaQuest12 = {
    guid = "Questyno_AngelicaStella12",

    awardstask = "Questyno_AngelicaStella12_A", -- TASK REWARD
    dailycode = "Questyno_AngelicaStella",
    lore = { "IGUI_SFQuest_Questyno_AngelicaStella12_Lore" },
    objectives = { {
        guid = "Questyno_AngelicaStella12_A",
        text = "IGUI_SFQuest_Questyno_AngelicaStella12_A",
        hidden = false,
        oncompleted = "additem;HairDyeLightBrown;1;removeclickevent;EventoAngelicaStella12"
    } },
    text = "IGUI_SFQuest_Questyno_AngelicaStella12_Text",
    texture = "media/textures/Item_AngelicaStella.png",
    title = "IGUI_SFQuest_Questyno_AngelicaStella12_Title",
    unlocks =
    "clickevent;8144x9687x0:EventoAngelicaStella12;time:50:anim:loot;updateobjective:Questyno_AngelicaStella12:1:Completed",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, stellaQuest12);

local stellaQuest12A = {
    guid = "Questyno_AngelicaStella12_A",

    awardsrep = "LaResistenza;50", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_AngelicaStella",
    lore = { "IGUI_SFQuest_Questyno_AngelicaStella12_Lore" },
    needsitem = "HairDyeLightBrown;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_AngelicaStella;SFQuest_Questyno_AngelicaStella12_Complete",
    text = "IGUI_SFQuest_Questyno_AngelicaStella12_A_Text",
    texture = "media/textures/Item_AngelicaStella.png",
    title = "IGUI_SFQuest_Questyno_AngelicaStella12_Title",
}
table.insert(SFQuest_Database.QuestPool, stellaQuest12A);

local stellaQuest13 = {
    guid = "Questyno_AngelicaStella13",

    awardstask = "Questyno_AngelicaStella13_A", -- TASK REWARD
    dailycode = "Questyno_AngelicaStella",
    lore = { "IGUI_SFQuest_Questyno_AngelicaStella13_Lore" },
    objectives = { {
        guid = "Questyno_AngelicaStella13_A",
        text = "IGUI_SFQuest_Questyno_AngelicaStella13_A",
        hidden = false,
        oncompleted = "additem;Dress_Knees;1;removeclickevent;EventoAngelicaStella13"
    } },
    text = "IGUI_SFQuest_Questyno_AngelicaStella13_Text",
    texture = "media/textures/Item_AngelicaStella.png",
    title = "IGUI_SFQuest_Questyno_AngelicaStella13_Title",
    unlocks =
    "clickevent;8757x6545x0:EventoAngelicaStella13;time:50:anim:loot;updateobjective:Questyno_AngelicaStella13:1:Completed",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, stellaQuest13);

local stellaQuest13A = {
    guid = "Questyno_AngelicaStella13_A",

    awardsrep = "LaResistenza;70", -- REP REWARD
    awardsitem = "Money;50",       -- MONEY REWARD
    completesound = "levelup",
    dailycode = "Questyno_AngelicaStella",
    lore = { "IGUI_SFQuest_Questyno_AngelicaStella13_Lore" },
    needsitem = "Dress_Knees;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_AngelicaStella;SFQuest_Questyno_AngelicaStella13_Complete",
    text = "IGUI_SFQuest_Questyno_AngelicaStella13_A_Text",
    texture = "media/textures/Item_AngelicaStella.png",
    title = "IGUI_SFQuest_Questyno_AngelicaStella13_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, stellaQuest13A);

local stellaQuest14 = {
    guid = "Questyno_AngelicaStella14",

    awardstask = "Questyno_AngelicaStella14_A", -- TASK REWARD
    dailycode = "Questyno_AngelicaStella",
    lore = { "IGUI_SFQuest_Questyno_AngelicaStella14_Lore" },
    objectives = { {
        guid = "Questyno_AngelicaStella14_A",
        text = "IGUI_SFQuest_Questyno_AngelicaStella14_A",
        hidden = false,
        oncompleted = "additem;Dress_Knees;1;removeclickevent;EventoAngelicaStella14"
    } },
    text = "IGUI_SFQuest_Questyno_AngelicaStella14_Text",
    texture = "media/textures/Item_AngelicaStella.png",
    title = "IGUI_SFQuest_Questyno_AngelicaStella14_Title",
    unlocks =
    "clickevent;9719x10537x0:EventoAngelicaStella14;time:50:anim:loot;updateobjective:Questyno_AngelicaStella14:1:Completed",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, stellaQuest14);

local stellaQuest14A = {
    guid = "Questyno_AngelicaStella14_A",

    awardsrep = "LaResistenza;30", -- REP REWARD
    awardsitem = "Money;50",       -- MONEY REWARD
    completesound = "levelup",
    dailycode = "Questyno_AngelicaStella",
    lore = { "IGUI_SFQuest_Questyno_AngelicaStella14_Lore" },
    needsitem = "Dress_Knees;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_AngelicaStella;SFQuest_Questyno_AngelicaStella14_Complete",
    text = "IGUI_SFQuest_Questyno_AngelicaStella14_A_Text",
    texture = "media/textures/Item_AngelicaStella.png",
    title = "IGUI_SFQuest_Questyno_AngelicaStella14_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, stellaQuest14A);

local stellaQuest15 = {
    guid = "Questyno_AngelicaStella15",

    awardstask = "Questyno_AngelicaStella15_A", -- TASK REWARD
    dailycode = "Questyno_AngelicaStella",
    lore = { "IGUI_SFQuest_Questyno_AngelicaStella15_Lore" },
    objectives = { {
        guid = "Questyno_AngelicaStella15_A",
        text = "IGUI_SFQuest_Questyno_AngelicaStella15_A",
        hidden = false,
        oncompleted = "additem;Dress_Knees;1;removeclickevent;EventoAngelicaStella15"
    } },
    text = "IGUI_SFQuest_Questyno_AngelicaStella15_Text",
    texture = "media/textures/Item_AngelicaStella.png",
    title = "IGUI_SFQuest_Questyno_AngelicaStella15_Title",
    unlocks =
    "clickevent;8395x7581x0:EventoAngelicaStella15;time:50:anim:loot;updateobjective:Questyno_AngelicaStella15:1:Completed",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, stellaQuest15);

local stellaQuest15A = {
    guid = "Questyno_AngelicaStella15_A",

    awardsrep = "LaResistenza;35", -- REP REWARD
    awardsitem = "Money;80",       -- MONEY REWARD
    completesound = "levelup",
    dailycode = "Questyno_AngelicaStella",
    lore = { "IGUI_SFQuest_Questyno_AngelicaStella15_Lore" },
    needsitem = "Dress_Knees;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_AngelicaStella;SFQuest_Questyno_AngelicaStella15_Complete",
    text = "IGUI_SFQuest_Questyno_AngelicaStella15_A_Text",
    texture = "media/textures/Item_AngelicaStella.png",
    title = "IGUI_SFQuest_Questyno_AngelicaStella15_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, stellaQuest15A);

local stellaQuest16 = {
    guid = "Questyno_AngelicaStella16",

    awardstask = "Questyno_AngelicaStella16_A", -- TASK REWARD
    dailycode = "Questyno_AngelicaStella",
    lore = { "IGUI_SFQuest_Questyno_AngelicaStella16_Lore" },
    objectives = { {
        guid = "Questyno_AngelicaStella16_A",
        text = "IGUI_SFQuest_Questyno_AngelicaStella16_A",
        hidden = false,
        oncompleted = "additem;Gloves_LongWomenGloves;1;removeclickevent;EventoAngelicaStella16"
    } },
    text = "IGUI_SFQuest_Questyno_AngelicaStella16_Text",
    texture = "media/textures/Item_AngelicaStella.png",
    title = "IGUI_SFQuest_Questyno_AngelicaStella16_Title",
    unlocks =
    "clickevent;9030x11491x0:EventoAngelicaStella16;time:50:anim:loot;updateobjective:Questyno_AngelicaStella16:1:Completed",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, stellaQuest16);

local stellaQuest16A = {
    guid = "Questyno_AngelicaStella16_A",

    awardsrep = "LaResistenza;50", -- REP REWARD
    awardsitem = "Money;80",       -- MONEY REWARD
    completesound = "levelup",
    dailycode = "Questyno_AngelicaStella",
    lore = { "IGUI_SFQuest_Questyno_AngelicaStella16_Lore" },
    needsitem = "Gloves_LongWomenGloves;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_AngelicaStella;SFQuest_Questyno_AngelicaStella16_Complete",
    text = "IGUI_SFQuest_Questyno_AngelicaStella16_A_Text",
    texture = "media/textures/Item_AngelicaStella.png",
    title = "IGUI_SFQuest_Questyno_AngelicaStella16_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, stellaQuest16A);

local stellaQuest17 = {
    guid = "Questyno_AngelicaStella17",

    awardstask = "Questyno_AngelicaStella17_A", -- TASK REWARD
    dailycode = "Questyno_AngelicaStella",
    lore = { "IGUI_SFQuest_Questyno_AngelicaStella17_Lore" },
    objectives = { {
        guid = "Questyno_AngelicaStella17_A",
        text = "IGUI_SFQuest_Questyno_AngelicaStella17_A",
        hidden = false,
        oncompleted = "additem;Dress_Normal;1;removeclickevent;EventoAngelicaStella17"
    } },
    text = "IGUI_SFQuest_Questyno_AngelicaStella17_Text",
    texture = "media/textures/Item_AngelicaStella.png",
    title = "IGUI_SFQuest_Questyno_AngelicaStella17_Title",
    unlocks =
    "clickevent;7226x8474x1:EventoAngelicaStella17;time:50:anim:loot;updateobjective:Questyno_AngelicaStella17:1:Completed",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, stellaQuest17);

local stellaQuest17A = {
    guid = "Questyno_AngelicaStella17_A",

    awardsrep = "LaResistenza;30", -- REP REWARD
    awardsitem = "Money;50",       -- MONEY REWARD
    completesound = "levelup",
    dailycode = "Questyno_AngelicaStella",
    lore = { "IGUI_SFQuest_Questyno_AngelicaStella17_Lore" },
    needsitem = "Dress_Normal;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_AngelicaStella;SFQuest_Questyno_AngelicaStella17_Complete",
    text = "IGUI_SFQuest_Questyno_AngelicaStella17_A_Text",
    texture = "media/textures/Item_AngelicaStella.png",
    title = "IGUI_SFQuest_Questyno_AngelicaStella17_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, stellaQuest17A);

local stellaQuest18 = {
    guid = "Questyno_AngelicaStella18",

    awardstask = "Questyno_AngelicaStella18_A", -- TASK REWARD
    dailycode = "Questyno_AngelicaStella",
    lore = { "IGUI_SFQuest_Questyno_AngelicaStella18_Lore" },
    objectives = { {
        guid = "Questyno_AngelicaStella18_A",
        text = "IGUI_SFQuest_Questyno_AngelicaStella18_A",
        hidden = false,
        oncompleted = "additem;MakeupFoundation;1;removeclickevent;EventoAngelicaStella18"
    } },
    text = "IGUI_SFQuest_Questyno_AngelicaStella18_Text",
    texture = "media/textures/Item_AngelicaStella.png",
    title = "IGUI_SFQuest_Questyno_AngelicaStella18_Title",
    unlocks =
    "clickevent;7016x8535x0:EventoAngelicaStella18;time:50:anim:loot;updateobjective:Questyno_AngelicaStella18:1:Completed",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, stellaQuest18);

local stellaQuest18A = {
    guid = "Questyno_AngelicaStella18_A",

    awardsrep = "LaResistenza;30", -- REP REWARD
    awardsitem = "Money;50",       -- MONEY REWARD
    completesound = "levelup",
    dailycode = "Questyno_AngelicaStella",
    lore = { "IGUI_SFQuest_Questyno_AngelicaStella18_Lore" },
    needsitem = "MakeupFoundation;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_AngelicaStella;SFQuest_Questyno_AngelicaStella18_Complete",
    text = "IGUI_SFQuest_Questyno_AngelicaStella18_A_Text",
    texture = "media/textures/Item_AngelicaStella.png",
    title = "IGUI_SFQuest_Questyno_AngelicaStella18_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, stellaQuest18A);

local stellaQuest19 = {
    guid = "Questyno_AngelicaStella19",

    awardstask = "Questyno_AngelicaStella19_A", -- TASK REWARD
    dailycode = "Questyno_AngelicaStella",
    lore = { "IGUI_SFQuest_Questyno_AngelicaStella19_Lore" },
    objectives = { {
        guid = "Questyno_AngelicaStella19_A",
        text = "IGUI_SFQuest_Questyno_AngelicaStella19_A",
        hidden = false,
        oncompleted = "additem;Tshirt_WhiteTINT;3;removeclickevent;EventoAngelicaStella19"
    } },
    text = "IGUI_SFQuest_Questyno_AngelicaStella19_Text",
    texture = "media/textures/Item_AngelicaStella.png",
    title = "IGUI_SFQuest_Questyno_AngelicaStella19_Title",
    unlocks =
    "clickevent;5143x9463x0:EventoAngelicaStella19;time:50:anim:loot;updateobjective:Questyno_AngelicaStella19:1:Completed",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, stellaQuest19);

local stellaQuest19A = {
    guid = "Questyno_AngelicaStella19_A",

    awardsrep = "LaResistenza;40", -- REP REWARD
    awardsitem = "Money;70;Tshirt_WhiteTINT;3",       -- MONEY REWARD
    completesound = "levelup",
    dailycode = "Questyno_AngelicaStella",
    lore = { "IGUI_SFQuest_Questyno_AngelicaStella19_Lore" },
    needsitem = "Tshirt_WhiteTINT;3", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_AngelicaStella;SFQuest_Questyno_AngelicaStella19_Complete",
    text = "IGUI_SFQuest_Questyno_AngelicaStella19_A_Text",
    texture = "media/textures/Item_AngelicaStella.png",
    title = "IGUI_SFQuest_Questyno_AngelicaStella19_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, stellaQuest19A);

local stellaQuest20 = {
    guid = "Questyno_AngelicaStella20",

    awardstask = "Questyno_AngelicaStella20_A", -- TASK REWARD
    dailycode = "Questyno_AngelicaStella",
    lore = { "IGUI_SFQuest_Questyno_AngelicaStella20_Lore" },
    objectives = { {
        guid = "Questyno_AngelicaStella20_A",
        text = "IGUI_SFQuest_Questyno_AngelicaStella20_A",
        hidden = false,
        oncompleted = "additem;Mov_MannequinFemale;1;removeclickevent;EventoAngelicaStella20"
    } },
    text = "IGUI_SFQuest_Questyno_AngelicaStella20_Text",
    texture = "media/textures/Item_AngelicaStella.png",
    title = "IGUI_SFQuest_Questyno_AngelicaStella20_Title",
    unlocks ="clickevent;7338x9683x1:EventoAngelicaStella20;time:50:anim:loot;updateobjective:Questyno_AngelicaStella20:1:Completed",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, stellaQuest20);

local stellaQuest20A = {
    guid = "Questyno_AngelicaStella20_A",

    awardsrep = "LaResistenza;35", -- REP REWARD
    awardsitem = "Money;50",       -- MONEY REWARD
    completesound = "levelup",
    dailycode = "Questyno_AngelicaStella",
    lore = { "IGUI_SFQuest_Questyno_AngelicaStella20_Lore" },
    needsitem = "Mov_MannequinFemale;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_AngelicaStella;SFQuest_Questyno_AngelicaStella20_Complete",
    text = "IGUI_SFQuest_Questyno_AngelicaStella20_A_Text",
    texture = "media/textures/Item_AngelicaStella.png",
    title = "IGUI_SFQuest_Questyno_AngelicaStella20_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, stellaQuest20A);

local stellaQuest21 = {
    guid = "Questyno_AngelicaStella21",

    awardsrep = "LaResistenza;40", -- REP REWARD
    awardsitem = "Money;25",       -- MONEY REWARD
    completesound = "levelup",
    dailycode = "Questyno_AngelicaStella",
    lore = { "IGUI_SFQuest_Questyno_AngelicaStella21_Lore" },
    needsitem = "Necklace_GoldDiamond;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_AngelicaStella;SFQuest_Questyno_AngelicaStella21_Complete",
    text = "IGUI_SFQuest_Questyno_AngelicaStella21_Text",
    texture = "media/textures/Item_AngelicaStella.png",
    title = "IGUI_SFQuest_Questyno_AngelicaStella21_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, stellaQuest21);

--[[                                          *** Heather Thomas ***
            Elenco:
                intro. Parla con Heather per sbloccare le daily.
				1. Recuperare Base.DeadRabbit;2 (200rep)
                2. Recuperare Base.DeadRabbit (100rep)
                3. Recuperare TrapCrate;20 (100rep + Spago)
                4. Recuperare Base.TrapBox;10 (150rep + 30$)
				5. Recuperare Base.DeadSquirrel (50rep)
				6. Recuperare Base.Bird;4 (140rep)
                7. Recuperare Base.DeadRabbit (50rep + DehydratedMeatStick;6)
				8. Recuperare Moveables.camping_01_17 parlando con (11064,10640,0) (40rep + 50$)
				9. Recuperare Base.Bird;2 (70rep + DehydratedMeatStick;2)
                10. Recuperare Base.DeadSquirrel (100rep + Base.BeefJerky;2)
                11. Recuperare Base.TrapBox;3 (35rep + 20$)
				12. Recuperare Base.TrapCrate;4 (40rep + 20$)
				13. Recuperare Base.Worm;5,Base.Carrots,arming.Potato;2 (150rep)
				14. Recuperare Base.Grasshopper;5,Base.Worm;10 (80rep)
				15. Recuperare Base.DeadRabbit;3 (120rep)
				16. Recuperare Base.DeadSquirrel;10 parlando con (8509,10359,0) (150rep + Base.DeadSquirrel)
				17. Recuperare Base.DeadRabbit;10 parlando con (10936,8488,0) (150rep + Coniglio)
				18. Recuperare Base.DeadRabbit,Base.Money;5 (40rep + Base.BeefJerky;2)
				19. Recuperare Base.LeatherStrips;10 (50rep + Scrap Club)
				20. Recuperare Base.LeatherStrips;5 (30rep)
				21. Recuperare Base.TrapMouse (100rep)
				22. Recuperare Base.DeadRabbit;3 (200rep + 50$)
				23. Parlare con tile (11064,10640,0) (20rep + Base.Salt)
				
]]

local thomasIntro = {
    guid = "Questyno_HeatherThomas_Intro",

    awardsrep = "HeatherThomas;100", -- REP REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_HeatherThomas_Intro_Lore" },
    ondone = "randomcodedworldfrompool;Questyno_HeatherThomas;Questyno;HeatherThomas",
    text = "IGUI_SFQuest_Questyno_HeatherThomas_Intro_Text",
    texture = "media/textures/Item_HeatherThomas.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_HeatherThomas_Intro_Title",
}
table.insert(SFQuest_Database.QuestPool, thomasIntro);

local thomasQuest1 = {
    guid = "Questyno_HeatherThomas1",

    awardsrep = "LaResistenza;200", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_HeatherThomas",
    lore = { "IGUI_SFQuest_Questyno_HeatherThomas1_Lore" },
    needsitem = "DeadRabbit;2", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas1_Complete",
    text = "IGUI_SFQuest_Questyno_HeatherThomas1_Text",
    texture = "media/textures/Item_HeatherThomas.png",
    title = "IGUI_SFQuest_Questyno_HeatherThomas1_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, thomasQuest1);

local thomasQuest2 = {
    guid = "Questyno_HeatherThomas2",

    awardsrep = "LaResistenza;100", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_HeatherThomas",
    lore = { "IGUI_SFQuest_Questyno_HeatherThomas2_Lore" },
    needsitem = "DeadRabbit;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas2_Complete",
    text = "IGUI_SFQuest_Questyno_HeatherThomas2_Text",
    texture = "media/textures/Item_HeatherThomas.png",
    title = "IGUI_SFQuest_Questyno_HeatherThomas2_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, thomasQuest2);

local thomasQuest3 = {
    guid = "Questyno_HeatherThomas3",

    awardsrep = "LaResistenza;100", -- REP REWARD
    awardsitem = "Twine;1",         -- MONEY REWARD
    completesound = "levelup",
    dailycode = "Questyno_HeatherThomas",
    lore = { "IGUI_SFQuest_Questyno_HeatherThomas3_Lore" },
    needsitem = "TrapCrate;20", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas3_Complete",
    text = "IGUI_SFQuest_Questyno_HeatherThomas3_Text",
    texture = "media/textures/Item_HeatherThomas.png",
    title = "IGUI_SFQuest_Questyno_HeatherThomas3_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, thomasQuest3);

local thomasQuest4 = {
    guid = "Questyno_HeatherThomas4",

    awardsrep = "LaResistenza;150", -- REP REWARD
    awardsitem = "Money;30",        -- MONEY REWARD
    completesound = "levelup",
    dailycode = "Questyno_HeatherThomas",
    lore = { "IGUI_SFQuest_Questyno_HeatherThomas4_Lore" },
    needsitem = "TrapBox;10", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas4_Complete",
    text = "IGUI_SFQuest_Questyno_HeatherThomas4_Text",
    texture = "media/textures/Item_HeatherThomas.png",
    title = "IGUI_SFQuest_Questyno_HeatherThomas4_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, thomasQuest4);

local thomasQuest5 = {
    guid = "Questyno_HeatherThomas5",

    awardsrep = "LaResistenza;50", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_HeatherThomas",
    lore = { "IGUI_SFQuest_Questyno_HeatherThomas5_Lore" },
    needsitem = "DeadSquirrel;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas5_Complete",
    text = "IGUI_SFQuest_Questyno_HeatherThomas5_Text",
    texture = "media/textures/Item_HeatherThomas.png",
    title = "IGUI_SFQuest_Questyno_HeatherThomas5_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, thomasQuest5);

local thomasQuest6 = {
    guid = "Questyno_HeatherThomas6",

    awardsrep = "LaResistenza;140", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_HeatherThomas",
    lore = { "IGUI_SFQuest_Questyno_HeatherThomas6_Lore" },
    needsitem = "DeadBird;4", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas6_Complete",
    text = "IGUI_SFQuest_Questyno_HeatherThomas6_Text",
    texture = "media/textures/Item_HeatherThomas.png",
    title = "IGUI_SFQuest_Questyno_HeatherThomas6_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, thomasQuest6);

local thomasQuest7 = {
    guid = "Questyno_HeatherThomas7",

    awardsrep = "LaResistenza;50",        -- REP REWARD
    awardsitem = "DehydratedMeatStick;6", -- MONEY REWARD
    completesound = "levelup",
    dailycode = "Questyno_HeatherThomas",
    lore = { "IGUI_SFQuest_Questyno_HeatherThomas7_Lore" },
    needsitem = "DeadRabbit;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas7_Complete",
    text = "IGUI_SFQuest_Questyno_HeatherThomas7_Text",
    texture = "media/textures/Item_HeatherThomas.png",
    title = "IGUI_SFQuest_Questyno_HeatherThomas7_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, thomasQuest7);

--				8. Recuperare base.Wire parlando con (11064,10640,0) (40rep + 50$)

local thomasQuest8 = {
    guid = "Questyno_HeatherThomas8",

    awardstask = "Questyno_HeatherThomas8_A", -- TASK REWARD
    dailycode = "Questyno_HeatherThomas",
    lore = { "IGUI_SFQuest_Questyno_HeatherThomas8_Lore" },
    objectives = { {
        guid = "Questyno_HeatherThomas8_A",
        text = "IGUI_SFQuest_Questyno_HeatherThomas8_A",
        hidden = false,
        oncompleted = "additem;Wire;1;removeclickevent;EventoHeatherThomas8"
    } },
    text = "IGUI_SFQuest_Questyno_HeatherThomas8_Text",
    texture = "media/textures/Item_HeatherThomas.png",
    title = "IGUI_SFQuest_Questyno_HeatherThomas8_Title",
    unlocks =
    "clickevent;11064x10640x0:EventoHeatherThomas8;time:50:anim:loot;updateobjective:Questyno_HeatherThomas8:1:Completed",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, thomasQuest8);

local thomasQuest8A = {
    guid = "Questyno_HeatherThomas8_A",

    awardsrep = "LaResistenza;40", -- REP REWARD
    awardsitem = "Money;50",       -- MONEY REWARD
    completesound = "levelup",
    dailycode = "Questyno_HeatherThomas",
    hidden = true,
    lore = { "IGUI_SFQuest_Questyno_HeatherThomas8_Lore" },
    needsitem = "Wire;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas8_Complete",
    text = "IGUI_SFQuest_Questyno_HeatherThomas8_A_Text",
    texture = "media/textures/Item_HeatherThomas.png",
    title = "IGUI_SFQuest_Questyno_HeatherThomas8_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, thomasQuest8A);

local thomasQuest9 = {
    guid = "Questyno_HeatherThomas9",

    awardsrep = "LaResistenza;70",        -- REP REWARD
    awardsitem = "DehydratedMeatStick;2", -- MONEY REWARD
    completesound = "levelup",
    dailycode = "Questyno_HeatherThomas",
    lore = { "IGUI_SFQuest_Questyno_HeatherThomas9_Lore" },
    needsitem = "DeadBird;2", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas9_Complete",
    text = "IGUI_SFQuest_Questyno_HeatherThomas9_Text",
    texture = "media/textures/Item_HeatherThomas.png",
    title = "IGUI_SFQuest_Questyno_HeatherThomas9_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, thomasQuest9);

local thomasQuest10 = {
    guid = "Questyno_HeatherThomas10",

    awardsrep = "LaResistenza;100", -- REP REWARD
    awardsitem = "BeefJerky;2",     -- MONEY REWARD
    completesound = "levelup",
    dailycode = "Questyno_HeatherThomas",
    lore = { "IGUI_SFQuest_Questyno_HeatherThomas10_Lore" },
    needsitem = "DeadSquirrel;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas10_Complete",
    text = "IGUI_SFQuest_Questyno_HeatherThomas10_Text",
    texture = "media/textures/Item_HeatherThomas.png",
    title = "IGUI_SFQuest_Questyno_HeatherThomas10_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, thomasQuest10);

local thomasQuest11 = {
    guid = "Questyno_HeatherThomas11",

    awardsrep = "LaResistenza;35", -- REP REWARD
    awardsitem = "Money;20",       -- MONEY REWARD
    completesound = "levelup",
    dailycode = "Questyno_HeatherThomas",
    lore = { "IGUI_SFQuest_Questyno_HeatherThomas11_Lore" },
    needsitem = "TrapBox;3", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas11_Complete",
    text = "IGUI_SFQuest_Questyno_HeatherThomas11_Text",
    texture = "media/textures/Item_HeatherThomas.png",
    title = "IGUI_SFQuest_Questyno_HeatherThomas11_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, thomasQuest11);

local thomasQuest12 = {
    guid = "Questyno_HeatherThomas12",

    awardsrep = "LaResistenza;40", -- REP REWARD
    awardsitem = "Money;20",       -- MONEY REWARD
    completesound = "levelup",
    dailycode = "Questyno_HeatherThomas",
    lore = { "IGUI_SFQuest_Questyno_HeatherThomas12_Lore" },
    needsitem = "TrapCrate;4", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas12_Complete",
    text = "IGUI_SFQuest_Questyno_HeatherThomas12_Text",
    texture = "media/textures/Item_HeatherThomas.png",
    title = "IGUI_SFQuest_Questyno_HeatherThomas12_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, thomasQuest12);

local thomasQuest13 = {
    guid = "Questyno_HeatherThomas13",

    awardstask = "Questyno_HeatherThomas13_A", -- TASK REWARD
    dailycode = "Questyno_HeatherThomas",
    lore = { "IGUI_SFQuest_Questyno_HeatherThomas13_Lore" },
    objectives = { {
        guid = "Questyno_HeatherThomas13_A",
        text = "IGUI_SFQuest_Questyno_HeatherThomas13_A",
        hidden = false,
        needsitem = "Worm;5",
        onobtained = "updateobjective;Questyno_HeatherThomas13;1;Completed;removeitem;Worm;5"
    }, {
        guid = "Questyno_HeatherThomas13_B",
        text = "IGUI_SFQuest_Questyno_HeatherThomas13_B",
        hidden = false,
        needsitem = "Carrots;1",
        onobtained = "updateobjective;Questyno_HeatherThomas13;2;Completed;removeitem;Carrots;1"
    }, {
        guid = "Questyno_HeatherThomas13_C",
        text = "IGUI_SFQuest_Questyno_HeatherThomas13_C",
        hidden = false,
        needsitem = "Potato;2",
        onobtained = "updateobjective;Questyno_HeatherThomas13;3;Completed;removeitem;Potato;2"
    } },
    text = "IGUI_SFQuest_Questyno_HeatherThomas13_Text",
    texture = "media/textures/Item_HeatherThomas.png",
    title = "IGUI_SFQuest_Questyno_HeatherThomas13_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, thomasQuest13);

local thomasQuest13A = {
    guid = "Questyno_HeatherThomas13_A",

    awardsrep = "LaResistenza;150", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_HeatherThomas",
    lore = { "IGUI_SFQuest_Questyno_HeatherThomas13_Lore" },
    unlocks = "unlockworldevent;Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas13_Complete",
    text = "IGUI_SFQuest_Questyno_HeatherThomas13_A_Text",
    texture = "media/textures/Item_HeatherThomas.png",
    title = "IGUI_SFQuest_Questyno_HeatherThomas13_Title",
}
table.insert(SFQuest_Database.QuestPool, thomasQuest13A);

local thomasQuest14 = {
    guid = "Questyno_HeatherThomas14",

    awardstask = "Questyno_HeatherThomas14_A", -- TASK REWARD
    dailycode = "Questyno_HeatherThomas",
    lore = { "IGUI_SFQuest_Questyno_HeatherThomas14_Lore" },
    objectives = { {
        guid = "Questyno_HeatherThomas14_A",
        text = "IGUI_SFQuest_Questyno_HeatherThomas14_A",
        hidden = false,
        needsitem = "Grasshopper;5",
        onobtained = "updateobjective;Questyno_HeatherThomas14;1;Completed;removeitem;Grasshopper;5"
    }, {
        guid = "Questyno_HeatherThomas14_B",
        text = "IGUI_SFQuest_Questyno_HeatherThomas14_B",
        hidden = false,
        needsitem = "Worm;10",
        onobtained = "updateobjective;Questyno_HeatherThomas14;2;Completed;removeitem;Worm;10"
    } },
    text = "IGUI_SFQuest_Questyno_HeatherThomas14_Text",
    texture = "media/textures/Item_HeatherThomas.png",
    title = "IGUI_SFQuest_Questyno_HeatherThomas14_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, thomasQuest14);

local thomasQuest14A = {
    guid = "Questyno_HeatherThomas14_A",

    awardsrep = "LaResistenza;80", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_HeatherThomas",
    lore = { "IGUI_SFQuest_Questyno_HeatherThomas14_Lore" },
    unlocks = "unlockworldevent;Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas14_Complete",
    text = "IGUI_SFQuest_Questyno_HeatherThomas14_A_Text",
    texture = "media/textures/Item_HeatherThomas.png",
    title = "IGUI_SFQuest_Questyno_HeatherThomas14_Title",
}
table.insert(SFQuest_Database.QuestPool, thomasQuest14A);

local thomasQuest15 = {
    guid = "Questyno_HeatherThomas15",

    awardsrep = "LaResistenza;120", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_HeatherThomas",
    lore = { "IGUI_SFQuest_Questyno_HeatherThomas15_Lore" },
    needsitem = "DeadRabbit;3", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas15_Complete",
    text = "IGUI_SFQuest_Questyno_HeatherThomas15_Text",
    texture = "media/textures/Item_HeatherThomas.png",
    title = "IGUI_SFQuest_Questyno_HeatherThomas15_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, thomasQuest15);

local thomasQuest16 = {
    guid = "Questyno_HeatherThomas16",

    awardstask = "Questyno_HeatherThomas16_A", -- TASK REWARD
    dailycode = "Questyno_HeatherThomas",
    lore = { "IGUI_SFQuest_Questyno_HeatherThomas16_Lore" },
    objectives = { {
        guid = "Questyno_HeatherThomas16_A",
        text = "IGUI_SFQuest_Questyno_HeatherThomas16_A",
        hidden = false,
        oncompleted = "additem;DeadSquirrel;10;removeclickevent;EventoHeatherThomas16"
    } },
    text = "IGUI_SFQuest_Questyno_HeatherThomas16_Text",
    texture = "media/textures/Item_HeatherThomas.png",
    title = "IGUI_SFQuest_Questyno_HeatherThomas16_Title",
    unlocks =
    "clickevent;8509x10359x0:EventoHeatherThomas16;time:50:anim:loot;updateobjective:Questyno_HeatherThomas16:1:Completed",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, thomasQuest16);

local thomasQuest16A = {
    guid = "Questyno_HeatherThomas16_A",

    awardsrep = "LaResistenza;150", -- REP REWARD
    awardsitem = "DeadSquirrel;1",  -- MONEY REWARD
    completesound = "levelup",
    dailycode = "Questyno_HeatherThomas",
    lore = { "IGUI_SFQuest_Questyno_HeatherThomas16_Lore" },
    needsitem = "DeadSquirrel;10", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas16_Complete",
    text = "IGUI_SFQuest_Questyno_HeatherThomas16_A_Text",
    texture = "media/textures/Item_HeatherThomas.png",
    title = "IGUI_SFQuest_Questyno_HeatherThomas16_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, thomasQuest16A);

local thomasQuest17 = {
    guid = "Questyno_HeatherThomas17",

    awardstask = "Questyno_HeatherThomas17_A", -- TASK REWARD
    dailycode = "Questyno_HeatherThomas",
    lore = { "IGUI_SFQuest_Questyno_HeatherThomas17_Lore" },
    objectives = { {
        guid = "Questyno_HeatherThomas17_A",
        text = "IGUI_SFQuest_Questyno_HeatherThomas17_A",
        hidden = false,
        oncompleted = "additem;DeadRabbit;10;removeclickevent;EventoHeatherThomas17"
    } },
    text = "IGUI_SFQuest_Questyno_HeatherThomas17_Text",
    texture = "media/textures/Item_HeatherThomas.png",
    title = "IGUI_SFQuest_Questyno_HeatherThomas17_Title",
    unlocks =
    "clickevent;10936x8488x0:EventoHeatherThomas17;time:50:anim:loot;updateobjective:Questyno_HeatherThomas17:1:Completed",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, thomasQuest17);

local thomasQuest17A = {
    guid = "Questyno_HeatherThomas17_A",

    awardsrep = "LaResistenza;150", -- REP REWARD
    awardsitem = "DeadRabbit;1",    -- MONEY REWARD
    completesound = "levelup",
    dailycode = "Questyno_HeatherThomas",
    lore = { "IGUI_SFQuest_Questyno_HeatherThomas17_Lore" },
    needsitem = "DeadRabbit;10", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas17_Complete",
    text = "IGUI_SFQuest_Questyno_HeatherThomas17_A_Text",
    texture = "media/textures/Item_HeatherThomas.png",
    title = "IGUI_SFQuest_Questyno_HeatherThomas17_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, thomasQuest17A);

local thomasQuest18 = {
    guid = "Questyno_HeatherThomas18",

    awardstask = "Questyno_HeatherThomas18_A", -- TASK REWARD
    dailycode = "Questyno_HeatherThomas",
    lore = { "IGUI_SFQuest_Questyno_HeatherThomas18_Lore" },
    objectives = { {
        guid = "Questyno_HeatherThomas18_A",
        text = "IGUI_SFQuest_Questyno_HeatherThomas18_A",
        hidden = false,
        needsitem = "DeadRabbit;1",
        onobtained = "updateobjective;Questyno_HeatherThomas18;1;Completed;removeitem;DeadRabbit;1"
    }, {
        guid = "Questyno_HeatherThomas18_B",
        text = "IGUI_SFQuest_Questyno_HeatherThomas18_B",
        hidden = false,
        needsitem = "Money;5",
        onobtained = "updateobjective;Questyno_HeatherThomas18;2;Completed;removeitem;Money;5"
    } },
    text = "IGUI_SFQuest_Questyno_HeatherThomas18_Text",
    texture = "media/textures/Item_HeatherThomas.png",
    title = "IGUI_SFQuest_Questyno_HeatherThomas18_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, thomasQuest18);

local thomasQuest18A = {
    guid = "Questyno_HeatherThomas18_A",

    awardsrep = "LaResistenza;40", -- REP REWARD
    awardsitem = "BeefJerky;2",    -- MONEY REWARD
    completesound = "levelup",
    dailycode = "Questyno_HeatherThomas",
    lore = { "IGUI_SFQuest_Questyno_HeatherThomas18_Lore" },
    unlocks = "unlockworldevent;Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas18_Complete",
    text = "IGUI_SFQuest_Questyno_HeatherThomas18_A_Text",
    texture = "media/textures/Item_HeatherThomas.png",
    title = "IGUI_SFQuest_Questyno_HeatherThomas18_Title",
}
table.insert(SFQuest_Database.QuestPool, thomasQuest18A);

local thomasQuest19 = {
    guid = "Questyno_HeatherThomas19",

    awardsrep = "LaResistenza;50", -- REP REWARD
    awardsitem = "SWeapons.ScrapClub;1",    -- MONEY REWARD TODO: fixxa
    completesound = "levelup",
    dailycode = "Questyno_HeatherThomas",
    lore = { "IGUI_SFQuest_Questyno_HeatherThomas19_Lore" },
    needsitem = "LeatherStrips;10", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas19_Complete",
    text = "IGUI_SFQuest_Questyno_HeatherThomas19_Text",
    texture = "media/textures/Item_HeatherThomas.png",
    title = "IGUI_SFQuest_Questyno_HeatherThomas19_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, thomasQuest19);

local thomasQuest20 = {
    guid = "Questyno_HeatherThomas20",

    awardsrep = "LaResistenza;30", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_HeatherThomas",
    lore = { "IGUI_SFQuest_Questyno_HeatherThomas20_Lore" },
    needsitem = "LeatherStrips;5", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas20_Complete",
    text = "IGUI_SFQuest_Questyno_HeatherThomas20_Text",
    texture = "media/textures/Item_HeatherThomas.png",
    title = "IGUI_SFQuest_Questyno_HeatherThomas20_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, thomasQuest20);

local thomasQuest21 = {
    guid = "Questyno_HeatherThomas21",

    awardsrep = "LaResistenza;100", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_HeatherThomas",
    lore = { "IGUI_SFQuest_Questyno_HeatherThomas21_Lore" },
    needsitem = "TrapMouse;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas21_Complete",
    text = "IGUI_SFQuest_Questyno_HeatherThomas21_Text",
    texture = "media/textures/Item_HeatherThomas.png",
    title = "IGUI_SFQuest_Questyno_HeatherThomas21_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, thomasQuest21);

local thomasQuest22 = {
    guid = "Questyno_HeatherThomas22",

    awardsrep = "LaResistenza;200", -- REP REWARD
    awardsitem = "Money;50",        -- MONEY REWARD
    completesound = "levelup",
    dailycode = "Questyno_HeatherThomas",
    lore = { "IGUI_SFQuest_Questyno_HeatherThomas22_Lore" },
    needsitem = "DeadRabbit;3", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas22_Complete",
    text = "IGUI_SFQuest_Questyno_HeatherThomas22_Text",
    texture = "media/textures/Item_HeatherThomas.png",
    title = "IGUI_SFQuest_Questyno_HeatherThomas22_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, thomasQuest22);

local thomasQuest23 = {
    guid = "Questyno_HeatherThomas23",

    awardsrep = "LaResistenza;20", -- REP REWARD
    awardsitem = "Salt;1",         -- MONEY REWARD
    completesound = "levelup",
    dailycode = "Questyno_HeatherThomas",
    objectives = { {
        guid = "Questyno_HeatherThomas23_A",
        text = "IGUI_SFQuest_Questyno_HeatherThomas23_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoHeatherThomas23"
    } },
    lore = { "IGUI_SFQuest_Questyno_HeatherThomas23_Lore" },
    text = "IGUI_SFQuest_Questyno_HeatherThomas23_Text",
    texture = "media/textures/Item_HeatherThomas.png",
    title = "IGUI_SFQuest_Questyno_HeatherThomas23_Title",
    unlocks = "clickevent;11064x10640x0:EventoHeatherThomas23;time:50:anim:loot;updateobjective:Questyno_HeatherThomas23:1:Completed",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, thomasQuest23);

--[[                                                *** Elia Rima ***
            Elenco:
                intro. Parla con Elia per sbloccare le daily.
				1. Recuperare Base.BookCarpentry1,Base.BookCooking1,Base.BookElectrician1 (150rep + 10$)
				2. Recuperare Base.BookCarpentry2,Base.BookCooking3,Base.BookForaging1 (120rep + 10$)
				3. Recuperare Base.BookMechanic2,Base.BookMetalWelding1 (100rep + 10$)
				4. Recuperare Base.BookMechanic3,Base.BookFirstAid1,Base.BookFishing1 (120rep)
				5. Recuperare Base.BookFarming2,Base.BookFirstAid3,Base.BookFishing2 (100rep + 10$)
				6. Recuperare Base.BookFarming4,Base.BookTrapping4,Base.BookForaging4 (150rep)
				7. Recuperare Base.ElectronicsMag4,Base.FarmingMag1,Base.FishingMag2 parlando con (10611,10363,0) (50rep + 15$)
				8. Recuperare Base.BookCarpentry5,Base.BookFarming5,Base.BookFirstAid5,Base.BookMechanic5,Base.BookMetalWelding5 parlando con (10611,10366,0) (40rep + 15$)
				9. Recuperare Base.BookCarpentry3,Base.BookFarming2,Base.BookFirstAid1,Base.BookMechanic4,Base.BookMetalWelding5,Base.BookFishing4,Base.TVMagazine,Base.Book;5,Base.ElectronicsMag4 parlando con (6932,8127,0) (40rep + Give Item Base.ElectronicsMag4,Book;2)
				10. Recuperare Base.BookFarming1,Base.BookFarming2,Base.BookFarming3,Base.BookFarming4,Base.BookFarming5 (200rep + 20$)
				11. Recuperare Base.BookElectrician1, Base.BookElectrician2,Base.BookElectrician3, Base.BookElectrician4,Base.BookElectrician5 (180rep + 20$)
				12. Parlare con (11354,6769,0) (40rep + Base.HerbalistMag)
				13. Recuperare Base.BookFishing3,Base.BookMetalWelding2,Base.BookCarpentry4,Base.BookTrapping2 (100rep)
				14. Recuperare Base.BookFishing4,Base.BookMetalWelding1,Base.BookCarpentry2,Base.BookTrapping5 (120rep)
				15. Recuperare Base.BookForaging4,Base.BookMechanic1,Base.BookCarpentry2,BaseBookFarming5 (100rep)
				16. Recuperare Base.HuntingMag1,Base.HuntingMag2 parlando con (9681,11177,0) (120rep)
				17. Recuperare Base.FishingMag1,Base.FishingMag2 parlando con (8086,11513,0) (120rep)
				18. Recuperare Base.ElectronicsMag1,Base.ElectronicsMag2,Base.ElectronicsMag3 parlando con (11361x6771x0) (150rep + 30$)
				19. Recuperare Base.SheetPaper2, Base.Crayons (70rep)
				20. Recuperare Recupero Base.Journal;2 (60rep)
				21. Recuperare Base.Journal parlando con (11192,6713,0) (100rep + 40$)
				22. Recuperare Base.BookCarpentry1 (30rep)
				23. Recuperare Base.BookTrapping1 (35rep)
]]

local rimaIntro = {
    guid = "Questyno_EliaRima_Intro",

    awardsrep = "EliaRima;100", -- REP REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_EliaRima_Intro_Lore" },
    ondone = "randomcodedworldfrompool;Questyno_EliaRima;Questyno;EliaRima",
    text = "IGUI_SFQuest_Questyno_EliaRima_Intro_Text",
    texture = "media/textures/Item_EliaRima.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_EliaRima;SFQuest_Questyno_EliaRima_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_EliaRima_Intro_Title",
}
table.insert(SFQuest_Database.QuestPool, rimaIntro);

local rimaQuest1 = {
    guid = "Questyno_EliaRima1",

    awardstask = "Questyno_EliaRima1_A",
    dailycode = "Questyno_EliaRima",
    lore = { "IGUI_SFQuest_Questyno_EliaRima1_Lore" },
    objectives = { {
        guid = "Questyno_EliaRima1_A",
        text = "IGUI_SFQuest_Questyno_EliaRima1_A",
        needsitem = "BookCarpentry1;1",
        icon = "media/textures/Item_Book9",
        onobtained = "updateobjective;Questyno_EliaRima1;1;Completed;removeitem;BookCarpentry1;1",
        hidden = false,
    }, {
        guid = "Questyno_EliaRima1_B",
        text = "IGUI_SFQuest_Questyno_EliaRima1_B",
        needsitem = "BookCooking1;1",
        icon = "media/textures/Item_Book8",
        onobtained = "updateobjective;Questyno_EliaRima1;2;Completed;removeitem;BookCooking1;1",
        hidden = false,
    }, {
        guid = "Questyno_EliaRima1_C",
        text = "IGUI_SFQuest_Questyno_EliaRima1_C",
        needsitem = "BookElectrician1;1",
        icon = "media/textures/Item_Book6",
        onobtained = "updateobjective;Questyno_EliaRima1;3;Completed;removeitem;BookElectrician1;1",
        hidden = false,
    } },
    text = "IGUI_SFQuest_Questyno_EliaRima1_Text",
    texture = "media/textures/Item_EliaRima.png",
    title = "IGUI_SFQuest_Questyno_EliaRima1_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, rimaQuest1);

local rimaQuest1A = {
    guid = "Questyno_EliaRima1_A",

    awardsrep = "LaResistenza;150", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_EliaRima",
    lore = { "IGUI_SFQuest_Questyno_EliaRima1_Lore" },
    unlocks = "unlockworldevent;Questyno_EliaRima;SFQuest_Questyno_EliaRima1_Complete",
    text = "IGUI_SFQuest_Questyno_EliaRima1_A_Text",
    texture = "media/textures/Item_EliaRima.png",
    title = "IGUI_SFQuest_Questyno_EliaRima1_Title",
}
table.insert(SFQuest_Database.QuestPool, rimaQuest1A);

local rimaQuest2 = {
    guid = "Questyno_EliaRima2",

    awardstask = "Questyno_EliaRima2_A",
    dailycode = "Questyno_EliaRima",
    lore = { "IGUI_SFQuest_Questyno_EliaRima2_Lore" },
    objectives = { {
        guid = "Questyno_EliaRima2_A",
        text = "IGUI_SFQuest_Questyno_EliaRima2_A",
        needsitem = "BookCarpentry2;1",
        icon = "media/textures/Item_Book8",
        onobtained = "updateobjective;Questyno_EliaRima2;1;Completed;removeitem;BookCarpentry2;1",
        hidden = false,
    }, {
        guid = "Questyno_EliaRima2_B",
        text = "IGUI_SFQuest_Questyno_EliaRima2_B",
        needsitem = "BookCooking3;1",
        icon = "media/textures/Item_Book9",
        onobtained = "updateobjective;Questyno_EliaRima2;2;Completed;removeitem;BookCooking3;1",
        hidden = false,
    }, {
        guid = "Questyno_EliaRima2_C",
        text = "IGUI_SFQuest_Questyno_EliaRima2_C",
        needsitem = "BookForaging1;1",
        icon = "media/textures/Item_Book2",
        onobtained = "updateobjective;Questyno_EliaRima2;3;Completed;removeitem;BookForaging1;1",
        hidden = false,
    } }, -- REQUIRE
    text = "IGUI_SFQuest_Questyno_EliaRima2_Text",
    texture = "media/textures/Item_EliaRima.png",
    title = "IGUI_SFQuest_Questyno_EliaRima2_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, rimaQuest2);

local rimaQuest2A = {
    guid = "Questyno_EliaRima2_A",

    awardsrep = "LaResistenza;120", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_EliaRima",
    lore = { "IGUI_SFQuest_Questyno_EliaRima2_Lore" },
    unlocks = "unlockworldevent;Questyno_EliaRima;SFQuest_Questyno_EliaRima2_Complete",
    text = "IGUI_SFQuest_Questyno_EliaRima2_A_Text",
    texture = "media/textures/Item_EliaRima.png",
    title = "IGUI_SFQuest_Questyno_EliaRima2_Title",
}
table.insert(SFQuest_Database.QuestPool, rimaQuest2A);

local rimaQuest3 = {
    guid = "Questyno_EliaRima3",

    awardstask = "Questyno_EliaRima3_A",
    dailycode = "Questyno_EliaRima",
    lore = { "IGUI_SFQuest_Questyno_EliaRima3_Lore" },
    objectives = { {
        guid = "Questyno_EliaRima3_A",
        text = "IGUI_SFQuest_Questyno_EliaRima3_A",
        needsitem = "BookMechanic2;1",
        icon = "media/textures/Item_Book6",
        onobtained = "updateobjective;Questyno_EliaRima3;1;Completed;removeitem;BookMechanic2;1",
        hidden = false,
    }, {
        guid = "Questyno_EliaRima3_B",
        text = "IGUI_SFQuest_Questyno_EliaRima3_B",
        needsitem = "BookMetalWelding1;1",
        icon = "media/textures/Item_Book6",
        onobtained = "updateobjective;Questyno_EliaRima3;2;Completed;removeitem;BookMetalWelding1;1",
        hidden = false,
    } }, -- REQUIRE
    text = "IGUI_SFQuest_Questyno_EliaRima3_Text",
    texture = "media/textures/Item_EliaRima.png",
    title = "IGUI_SFQuest_Questyno_EliaRima3_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, rimaQuest3);

local rimaQuest3A = {
    guid = "Questyno_EliaRima3_A",

    awardsrep = "LaResistenza;100", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_EliaRima",
    lore = { "IGUI_SFQuest_Questyno_EliaRima3_Lore" },
    unlocks = "unlockworldevent;Questyno_EliaRima;SFQuest_Questyno_EliaRima3_Complete",
    text = "IGUI_SFQuest_Questyno_EliaRima3_A_Text",
    texture = "media/textures/Item_EliaRima.png",
    title = "IGUI_SFQuest_Questyno_EliaRima3_Title",
}
table.insert(SFQuest_Database.QuestPool, rimaQuest3A);

local rimaQuest4 = {
    guid = "Questyno_EliaRima4",

    awardstask = "Questyno_EliaRima4_A",
    dailycode = "Questyno_EliaRima",
    lore = { "IGUI_SFQuest_Questyno_EliaRima4_Lore" },
    objectives = { {
        guid = "Questyno_EliaRima4_A",
        text = "IGUI_SFQuest_Questyno_EliaRima4_A",
        needsitem = "BookMechanic3;1",
        icon = "media/textures/Item_Book6",
        onobtained = "updateobjective;Questyno_EliaRima4;1;Completed;removeitem;BookMechanic3;1",
        hidden = false,
    }, {
        guid = "Questyno_EliaRima4_B",
        text = "IGUI_SFQuest_Questyno_EliaRima4_B",
        needsitem = "BookFirstAid1;1",
        icon = "media/textures/Item_Book5",
        onobtained = "updateobjective;Questyno_EliaRima4;2;Completed;removeitem;BookFirstAid1;1",
        hidden = false,
    }, {
        guid = "Questyno_EliaRima4_C",
        text = "IGUI_SFQuest_Questyno_EliaRima4_C",
        needsitem = "BookFishing1;1",
        icon = "media/textures/Item_Book4",
        onobtained = "updateobjective;Questyno_EliaRima4;3;Completed;removeitem;BookFishing1;1",
        hidden = false,
    } }, -- REQUIRE
    text = "IGUI_SFQuest_Questyno_EliaRima4_Text",
    texture = "media/textures/Item_EliaRima.png",
    title = "IGUI_SFQuest_Questyno_EliaRima4_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, rimaQuest4);

local rimaQuest4A = {
    guid = "Questyno_EliaRima4_A",

    awardsrep = "LaResistenza;120", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_EliaRima",
    lore = { "IGUI_SFQuest_Questyno_EliaRima4_Lore" },
    unlocks = "unlockworldevent;Questyno_EliaRima;SFQuest_Questyno_EliaRima4_Complete",
    text = "IGUI_SFQuest_Questyno_EliaRima4_A_Text",
    texture = "media/textures/Item_EliaRima.png",
    title = "IGUI_SFQuest_Questyno_EliaRima4_Title",
}
table.insert(SFQuest_Database.QuestPool, rimaQuest4A);

local rimaQuest5 = {
    guid = "Questyno_EliaRima5",

    awardstask = "Questyno_EliaRima5_A",
    dailycode = "Questyno_EliaRima",
    lore = { "IGUI_SFQuest_Questyno_EliaRima5_Lore" },
    objectives = { {
        guid = "Questyno_EliaRima5_A",
        text = "IGUI_SFQuest_Questyno_EliaRima5_A",
        needsitem = "BookFarming2;1",
        icon = "media/textures/Item_Book4",
        onobtained = "updateobjective;Questyno_EliaRima5;1;Completed;removeitem;BookFarming2;1",
        hidden = false,
    }, {
        guid = "Questyno_EliaRima5_B",
        text = "IGUI_SFQuest_Questyno_EliaRima5_B",
        needsitem = "BookFirstAid3;1",
        icon = "media/textures/Item_Book5",
        onobtained = "updateobjective;Questyno_EliaRima5;2;Completed;removeitem;BookFirstAid3;1",
        hidden = false,
    }, {
        guid = "Questyno_EliaRima5_C",
        text = "IGUI_SFQuest_Questyno_EliaRima5_C",
        needsitem = "BookFishing2;1",
        icon = "media/textures/Item_Book4",
        onobtained = "updateobjective;Questyno_EliaRima5;3;Completed;removeitem;BookFishing2;1",
        hidden = false,
    } }, -- REQUIRE
    text = "IGUI_SFQuest_Questyno_EliaRima5_Text",
    texture = "media/textures/Item_EliaRima.png",
    title = "IGUI_SFQuest_Questyno_EliaRima5_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, rimaQuest5);

local rimaQuest5A = {
    guid = "Questyno_EliaRima5_A",

    awardsrep = "LaResistenza;100", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_EliaRima",
    lore = { "IGUI_SFQuest_Questyno_EliaRima5_Lore" },
    unlocks = "unlockworldevent;Questyno_EliaRima;SFQuest_Questyno_EliaRima5_Complete",
    text = "IGUI_SFQuest_Questyno_EliaRima5_A_Text",
    texture = "media/textures/Item_EliaRima.png",
    title = "IGUI_SFQuest_Questyno_EliaRima5_Title",
}
table.insert(SFQuest_Database.QuestPool, rimaQuest5A);

local rimaQuest6 = {
    guid = "Questyno_EliaRima6",

    awardstask = "Questyno_EliaRima6_A",
    dailycode = "Questyno_EliaRima",
    lore = { "IGUI_SFQuest_Questyno_EliaRima6_Lore" },
    objectives = { {
        guid = "Questyno_EliaRima6_A",
        text = "IGUI_SFQuest_Questyno_EliaRima6_A",
        needsitem = "BookFarming4;1",
        icon = "media/textures/Item_Book4",
        onobtained = "updateobjective;Questyno_EliaRima6;1;Completed;removeitem;BookFarming4;1",
        hidden = false,
    }, {
        guid = "Questyno_EliaRima6_B",
        text = "IGUI_SFQuest_Questyno_EliaRima6_B",
        needsitem = "BookTrapping4;1",
        icon = "media/textures/Item_Book2",
        onobtained = "updateobjective;Questyno_EliaRima6;2;Completed;removeitem;BookTrapping4;1",
        hidden = false,
    }, {
        guid = "Questyno_EliaRima6_C",
        text = "IGUI_SFQuest_Questyno_EliaRima6_C",
        needsitem = "BookForaging4;1",
        icon = "media/textures/Item_Book2",
        onobtained = "updateobjective;Questyno_EliaRima6;3;Completed;removeitem;BookForaging4;1",
        hidden = false,
    } }, -- REQUIRE
    text = "IGUI_SFQuest_Questyno_EliaRima6_Text",
    texture = "media/textures/Item_EliaRima.png",
    title = "IGUI_SFQuest_Questyno_EliaRima6_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, rimaQuest6);

local rimaQuest6A = {
    guid = "Questyno_EliaRima6_A",

    awardsrep = "LaResistenza;150", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_EliaRima",
    lore = { "IGUI_SFQuest_Questyno_EliaRima6_Lore" },
    unlocks = "unlockworldevent;Questyno_EliaRima;SFQuest_Questyno_EliaRima6_Complete",
    text = "IGUI_SFQuest_Questyno_EliaRima6_A_Text",
    texture = "media/textures/Item_EliaRima.png",
    title = "IGUI_SFQuest_Questyno_EliaRima6_Title",
}
table.insert(SFQuest_Database.QuestPool, rimaQuest6A);

local rimaQuest7 = {
    guid = "Questyno_EliaRima7",

    awardstask = "Questyno_EliaRima7_A", -- TASK REWARD
    dailycode = "Questyno_EliaRima",
    lore = { "IGUI_SFQuest_Questyno_EliaRima7_Lore" },
    objectives = { {
        guid = "Questyno_EliaRima7_A",
        text = "IGUI_SFQuest_Questyno_EliaRima7_A",
        hidden = false,
        oncompleted =
        "removeclickevent;EventoEliaRima7;additem;ElectronicsMag4;1;additem;FarmingMag1;1;additem;FishingMag2;1"
    } },
    text = "IGUI_SFQuest_Questyno_EliaRima7_Text",
    texture = "media/textures/Item_EliaRima.png",
    title = "IGUI_SFQuest_Questyno_EliaRima7_Title",
    unlocks = "clickevent;10611x10363x0:EventoEliaRima7;time:50:anim:loot;updateobjective:Questyno_EliaRima7:1:Completed",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, rimaQuest7);

local rimaQuest7A = {
    guid = "Questyno_EliaRima7_A",

    awardstask = "Questyno_EliaRima7_B", -- TASK REWARD
    dailycode = "Questyno_EliaRima",
    lore = { "IGUI_SFQuest_Questyno_EliaRima7_Lore" },
    objectives = { {
        guid = "Questyno_EliaRima7_B",
        text = "IGUI_SFQuest_Questyno_EliaRima7_B",
        needsitem = "ElectronicsMag4;1",
        icon = "media/textures/Item_Book4",
        onobtained = "updateobjective;Questyno_EliaRima7_A;1;Completed;removeitem;ElectronicsMag4;1",
        hidden = false,
    }, {
        guid = "Questyno_EliaRima7_C",
        text = "IGUI_SFQuest_Questyno_EliaRima7_C",
        needsitem = "FarmingMag1;1",
        icon = "media/textures/Item_Book2",
        onobtained = "updateobjective;Questyno_EliaRima7_A;2;Completed;removeitem;FarmingMag1;1",
        hidden = false,
    }, {
        guid = "Questyno_EliaRima7_D",
        text = "IGUI_SFQuest_Questyno_EliaRima7_D",
        needsitem = "FishingMag2;1",
        icon = "media/textures/Item_Book2",
        onobtained = "updateobjective;Questyno_EliaRima7_A;3;Completed;removeitem;FishingMag2;1",
        hidden = false,
    } }, -- REQUIRE
    text = "IGUI_SFQuest_Questyno_EliaRima7_A_Text",
    texture = "media/textures/Item_EliaRima.png",
    title = "IGUI_SFQuest_Questyno_EliaRima7_Title",
}
table.insert(SFQuest_Database.QuestPool, rimaQuest7A);

local rimaQuest7B = {
    guid = "Questyno_EliaRima7_B",

    awardsrep = "LaResistenza;50", -- REP REWARD
    awardsitem = "Money;15",       -- MONEY REWARD
    completesound = "levelup",
    dailycode = "Questyno_EliaRima",
    lore = { "IGUI_SFQuest_Questyno_EliaRima7_Lore" }, -- REQUIRE
    unlocks = "unlockworldevent;Questyno_EliaRima;SFQuest_Questyno_EliaRima7_Complete",
    text = "IGUI_SFQuest_Questyno_EliaRima7_B_Text",
    texture = "media/textures/Item_EliaRima.png",
    title = "IGUI_SFQuest_Questyno_EliaRima7_Title",
}
table.insert(SFQuest_Database.QuestPool, rimaQuest7B);

local rimaQuest8 = {
    guid = "Questyno_EliaRima8",

    awardstask = "Questyno_EliaRima8_A", -- TASK REWARD
    dailycode = "Questyno_EliaRima",
    lore = { "IGUI_SFQuest_Questyno_EliaRima8_Lore" },
    objectives = { {
        guid = "Questyno_EliaRima8_A",
        text = "IGUI_SFQuest_Questyno_EliaRima8_A",
        hidden = false,
        oncompleted =
        "removeclickevent;EventoEliaRima8;additem;BookCarpentry5;1;additem;BookFarming5;1;additem;BookFirstAid5;1;additem;BookMechanic5;1;additem;BookMetalWelding5;1"
    } },
    text = "IGUI_SFQuest_Questyno_EliaRima8_Text",
    texture = "media/textures/Item_EliaRima.png",
    title = "IGUI_SFQuest_Questyno_EliaRima8_Title",
    unlocks = "clickevent;10611x10366x0:EventoEliaRima8;time:50:anim:loot;updateobjective:Questyno_EliaRima8:1:Completed",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, rimaQuest8);

local rimaQuest8A = {
    guid = "Questyno_EliaRima8_A",

    awardstask = "Questyno_EliaRima8_B", -- TASK REWARD
    dailycode = "Questyno_EliaRima",
    lore = { "IGUI_SFQuest_Questyno_EliaRima8_Lore" },
    objectives = { {
        guid = "Questyno_EliaRima8_B",
        text = "IGUI_SFQuest_Questyno_EliaRima8_B",
        needsitem = "BookCarpentry5;1",
        icon = "media/textures/Item_Book8",
        onobtained = "updateobjective;Questyno_EliaRima8;1;Completed;removeitem;BookCarpentry5;1",
        hidden = false,
    }, {
        guid = "Questyno_EliaRima8_C",
        text = "IGUI_SFQuest_Questyno_EliaRima8_C",
        needsitem = "BookFarming5;1",
        icon = "media/textures/Item_Book4",
        onobtained = "updateobjective;Questyno_EliaRima8;2;Completed;removeitem;BookFarming5;1",
        hidden = false,
    }, {
        guid = "Questyno_EliaRima8_D",
        text = "IGUI_SFQuest_Questyno_EliaRima8_D",
        needsitem = "BookFirstAid5;1",
        icon = "media/textures/Item_Book5",
        onobtained = "updateobjective;Questyno_EliaRima8;3;Completed;removeitem;BookFirstAid5;1",
        hidden = false,
    }, {
        guid = "Questyno_EliaRima8_E",
        text = "IGUI_SFQuest_Questyno_EliaRima8_E",
        needsitem = "BookMechanic5;1",
        icon = "media/textures/Item_Book6",
        onobtained = "updateobjective;Questyno_EliaRima8;4;Completed;removeitem;BookMechanic5;1",
        hidden = false,
    }, {
        guid = "Questyno_EliaRima8_F",
        text = "IGUI_SFQuest_Questyno_EliaRima8_F",
        needsitem = "BookMetalWelding5;1",
        icon = "media/textures/Item_Book6",
        onobtained = "updateobjective;Questyno_EliaRima8;5;Completed;removeitem;BookMetalWelding5;1",
        hidden = false,
    } }, -- REQUIRE
    text = "IGUI_SFQuest_Questyno_EliaRima8_A_Text",
    texture = "media/textures/Item_EliaRima.png",
    title = "IGUI_SFQuest_Questyno_EliaRima8_Title",
}
table.insert(SFQuest_Database.QuestPool, rimaQuest8A);

local rimaQuest8B = {
    guid = "Questyno_EliaRima8_B",

    awardsrep = "LaResistenza;40", -- REP REWARD
    awardsitem = "Money;15",       -- MONEY REWARD
    completesound = "levelup",
    dailycode = "Questyno_EliaRima",
    lore = { "IGUI_SFQuest_Questyno_EliaRima8_Lore" }, -- REQUIRE
    unlocks = "unlockworldevent;Questyno_EliaRima;SFQuest_Questyno_EliaRima8_Complete",
    text = "IGUI_SFQuest_Questyno_EliaRima8_B_Text",
    texture = "media/textures/Item_EliaRima.png",
    title = "IGUI_SFQuest_Questyno_EliaRima8_Title",
}
table.insert(SFQuest_Database.QuestPool, rimaQuest8B);

local rimaQuest9 = {
    guid = "Questyno_EliaRima9",

    awardstask = "Questyno_EliaRima9_A", -- TASK REWARD
    dailycode = "Questyno_EliaRima",
    lore = { "IGUI_SFQuest_Questyno_EliaRima9_Lore" },
    objectives = { {
        guid = "Questyno_EliaRima9_A",
        text = "IGUI_SFQuest_Questyno_EliaRima9_A",
        hidden = false,
        oncompleted =
        "removeclickevent;EventoEliaRima9;additem;BookCarpentry3;1;additem;BookFarming2;1;additem;BookFirstAid1;1;additem;BookMechanic4;1;additem;BookMetalWelding5;1;additem;BookFishing4;1;additem;TVMagazine;1;additem;Book;5;additem;ElectronicsMag4;1"
    } },
    text = "IGUI_SFQuest_Questyno_EliaRima9_Text",
    texture = "media/textures/Item_EliaRima.png",
    title = "IGUI_SFQuest_Questyno_EliaRima9_Title",
    unlocks = "clickevent;6932x8127x0:EventoEliaRima9;time:50:anim:loot;updateobjective:Questyno_EliaRima9:1:Completed",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, rimaQuest9);

local rimaQuest9A = {
    guid = "Questyno_EliaRima9_A",

    awardstask = "Questyno_EliaRima9_B", -- TASK REWARD
    dailycode = "Questyno_EliaRima",
    lore = { "IGUI_SFQuest_Questyno_EliaRima9_Lore" },
    objectives = { {
        guid = "Questyno_EliaRima9_B",
        text = "IGUI_SFQuest_Questyno_EliaRima9_B",
        needsitem = "BookCarpentry3;1",
        icon = "media/textures/Item_Book8",
        onobtained = "updateobjective;Questyno_EliaRima9;1;Completed;removeitem;BookCarpentry3;1",
        hidden = false,
    }, {
        guid = "Questyno_EliaRima9_C",
        text = "IGUI_SFQuest_Questyno_EliaRima9_C",
        needsitem = "BookFarming2;1",
        icon = "media/textures/Item_Book4",
        onobtained = "updateobjective;Questyno_EliaRima9;2;Completed;removeitem;BookFarming2;1",
        hidden = false,
    }, {
        guid = "Questyno_EliaRima9_D",
        text = "IGUI_SFQuest_Questyno_EliaRima9_D",
        needsitem = "BookFirstAid1;1",
        icon = "media/textures/Item_Book5",
        onobtained = "updateobjective;Questyno_EliaRima9;3;Completed;removeitem;BookFirstAid1;1",
        hidden = false,
    }, {
        guid = "Questyno_EliaRima9_E",
        text = "IGUI_SFQuest_Questyno_EliaRima9_E",
        needsitem = "BookMechanic4;1",
        icon = "media/textures/Item_Book6",
        onobtained = "updateobjective;Questyno_EliaRima9;4;Completed;removeitem;BookMechanic4;1",
        hidden = false,
    }, {
        guid = "Questyno_EliaRima9_F",
        text = "IGUI_SFQuest_Questyno_EliaRima9_F",
        needsitem = "BookMetalWelding5;1",
        icon = "media/textures/Item_Book6",
        onobtained = "updateobjective;Questyno_EliaRima9;5;Completed;removeitem;BookMetalWelding5;1",
        hidden = false,
    }, {
        guid = "Questyno_EliaRima9_G",
        text = "IGUI_SFQuest_Questyno_EliaRima9_G",
        needsitem = "BookFishing4;1",
        icon = "media/textures/Item_Book4",
        onobtained = "updateobjective;Questyno_EliaRima9;6;Completed;removeitem;BookFishing4;1",
        hidden = false,
    }, {
        guid = "Questyno_EliaRima9_H",
        text = "IGUI_SFQuest_Questyno_EliaRima9_H",
        needsitem = "TVMagazine;1",
        icon = "media/textures/Item_Book4",
        onobtained = "updateobjective;Questyno_EliaRima9;7;Completed;removeitem;TVMagazine;1",
        hidden = false,
    }, {
        guid = "Questyno_EliaRima9_I",
        text = "IGUI_SFQuest_Questyno_EliaRima9_I",
        needsitem = "Book;5",
        icon = "media/textures/Item_Book4",
        onobtained = "updateobjective;Questyno_EliaRima9;8;Completed;removeitem;Book;5",
        hidden = false,
    }, {
        guid = "Questyno_EliaRima9_J",
        text = "IGUI_SFQuest_Questyno_EliaRima9_J",
        needsitem = "ElectronicsMag4;1",
        icon = "media/textures/Item_Book4",
        onobtained = "updateobjective;Questyno_EliaRima9;9;Completed;removeitem;ElectronicsMag4;1",
        hidden = false,
    } }, -- REQUIRE
    text = "IGUI_SFQuest_Questyno_EliaRima9_A_Text",
    texture = "media/textures/Item_EliaRima.png",
    title = "IGUI_SFQuest_Questyno_EliaRima9_Title",
}
table.insert(SFQuest_Database.QuestPool, rimaQuest9A);

local rimaQuest9B = {
    guid = "Questyno_EliaRima9_B",

    awardsrep = "LaResistenza;40", -- REP REWARD
    awardsitem = "Book;2;ElectronicsMag4;1",         -- MONEY REWARD
    completesound = "levelup",
    dailycode = "Questyno_EliaRima",
    lore = { "IGUI_SFQuest_Questyno_EliaRima9_Lore" }, -- REQUIRE
    unlocks = "unlockworldevent;Questyno_EliaRima;SFQuest_Questyno_EliaRima9_Complete",
    text = "IGUI_SFQuest_Questyno_EliaRima9_B_Text",
    texture = "media/textures/Item_EliaRima.png",
    title = "IGUI_SFQuest_Questyno_EliaRima9_Title",
}
table.insert(SFQuest_Database.QuestPool, rimaQuest9B);

local rimaQuest10 = {
    guid = "Questyno_EliaRima10",

    awardstask = "Questyno_EliaRima10_A", -- TASK REWARD
    dailycode = "Questyno_EliaRima",
    lore = { "IGUI_SFQuest_Questyno_EliaRima10_Lore" },
    objectives = { {
        guid = "Questyno_EliaRima10_A",
        text = "IGUI_SFQuest_Questyno_EliaRima10_A",
        needsitem = "BookFarming1;1",
        icon = "media/textures/Item_Book4",
        onobtained = "updateobjective;Questyno_EliaRima10;1;Completed;removeitem;BookFarming1;1",
        hidden = false,
    }, {
        guid = "Questyno_EliaRima10_B",
        text = "IGUI_SFQuest_Questyno_EliaRima10_B",
        needsitem = "BookFarming2;1",
        icon = "media/textures/Item_Book2",
        onobtained = "updateobjective;Questyno_EliaRima10;2;Completed;removeitem;BookFarming2;1",
        hidden = false,
    }, {
        guid = "Questyno_EliaRima10_C",
        text = "IGUI_SFQuest_Questyno_EliaRima10_C",
        needsitem = "BookFarming3;1",
        icon = "media/textures/Item_Book2",
        onobtained = "updateobjective;Questyno_EliaRima10;3;Completed;removeitem;BookFarming3;1",
        hidden = false,
    }, {
        guid = "Questyno_EliaRima10_D",
        text = "IGUI_SFQuest_Questyno_EliaRima10_D",
        needsitem = "BookFarming4;1",
        icon = "media/textures/Item_Book2",
        onobtained = "updateobjective;Questyno_EliaRima10;4;Completed;removeitem;BookFarming4;1",
        hidden = false,
    }, {
        guid = "Questyno_EliaRima10_E",
        text = "IGUI_SFQuest_Questyno_EliaRima10_E",
        needsitem = "BookFarming5;1",
        icon = "media/textures/Item_Book2",
        onobtained = "updateobjective;Questyno_EliaRima10;5;Completed;removeitem;BookFarming5;1",
        hidden = false,
    } }, -- REQUIRE
    text = "IGUI_SFQuest_Questyno_EliaRima10_Text",
    texture = "media/textures/Item_EliaRima.png",
    title = "IGUI_SFQuest_Questyno_EliaRima10_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, rimaQuest10);

local rimaQuest10A = {
    guid = "Questyno_EliaRima10_A",

    awardsrep = "LaResistenza;200", -- REP REWARD
    awardsitem = "Money;20",        -- MONEY REWARD
    completesound = "levelup",
    dailycode = "Questyno_EliaRima",
    lore = { "IGUI_SFQuest_Questyno_EliaRima10_Lore" }, -- REQUIRE
    unlocks = "unlockworldevent;Questyno_EliaRima;SFQuest_Questyno_EliaRima10_Complete",
    text = "IGUI_SFQuest_Questyno_EliaRima10_A_Text",
    texture = "media/textures/Item_EliaRima.png",
    title = "IGUI_SFQuest_Questyno_EliaRima10_Title",
}
table.insert(SFQuest_Database.QuestPool, rimaQuest10A);

local rimaQuest11 = {
    guid = "Questyno_EliaRima11",

    awardstask = "Questyno_EliaRima11_A", -- TASK REWARD
    dailycode = "Questyno_EliaRima",
    lore = { "IGUI_SFQuest_Questyno_EliaRima11_Lore" },
    objectives = { {
        guid = "Questyno_EliaRima11_A",
        text = "IGUI_SFQuest_Questyno_EliaRima11_A",
        needsitem = "BookElectrician1;1",
        icon = "media/textures/Item_Book6",
        onobtained = "updateobjective;Questyno_EliaRima11;1;Completed;removeitem;BookElectrician1;1",
        hidden = false,
    }, {
        guid = "Questyno_EliaRima11_B",
        text = "IGUI_SFQuest_Questyno_EliaRima11_B",
        needsitem = "BookElectrician2;1",
        icon = "media/textures/Item_Book6",
        onobtained = "updateobjective;Questyno_EliaRima11;2;Completed;removeitem;BookElectrician2;1",
        hidden = false,
    }, {
        guid = "Questyno_EliaRima11_C",
        text = "IGUI_SFQuest_Questyno_EliaRima11_C",
        needsitem = "BookElectrician3;1",
        icon = "media/textures/Item_Book6",
        onobtained = "updateobjective;Questyno_EliaRima11;3;Completed;removeitem;BookElectrician3;1",
        hidden = false,
    }, {
        guid = "Questyno_EliaRima11_D",
        text = "IGUI_SFQuest_Questyno_EliaRima11_D",
        needsitem = "BookElectrician4;1",
        icon = "media/textures/Item_Book6",
        onobtained = "updateobjective;Questyno_EliaRima11;4;Completed;removeitem;BookElectrician4;1",
        hidden = false,
    }, {
        guid = "Questyno_EliaRima11_E",
        text = "IGUI_SFQuest_Questyno_EliaRima11_E",
        needsitem = "BookElectrician5;1",
        icon = "media/textures/Item_Book6",
        onobtained = "updateobjective;Questyno_EliaRima11;5;Completed;removeitem;BookElectrician5;1",
        hidden = false,
    } }, -- REQUIRE
    text = "IGUI_SFQuest_Questyno_EliaRima11_Text",
    texture = "media/textures/Item_EliaRima.png",
    title = "IGUI_SFQuest_Questyno_EliaRima11_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, rimaQuest11);

local rimaQuest11A = {
    guid = "Questyno_EliaRima11_A",

    awardsrep = "LaResistenza;180", -- REP REWARD
    awardsitem = "Money;20",        -- MONEY REWARD
    completesound = "levelup",
    dailycode = "Questyno_EliaRima",
    lore = { "IGUI_SFQuest_Questyno_EliaRima11_Lore" }, -- REQUIRE
    unlocks = "unlockworldevent;Questyno_EliaRima;SFQuest_Questyno_EliaRima11_Complete",
    text = "IGUI_SFQuest_Questyno_EliaRima11_A_Text",
    texture = "media/textures/Item_EliaRima.png",
    title = "IGUI_SFQuest_Questyno_EliaRima11_Title",
}
table.insert(SFQuest_Database.QuestPool, rimaQuest11A);

local rimaQuest12 = {
    guid = "Questyno_EliaRima12",

    awardsrep = "LaResistenza;40", -- REP REWARD
    awardsitem = "HerbalistMag;1",
    dailycode = "Questyno_EliaRima",
    lore = { "IGUI_SFQuest_Questyno_EliaRima12_Lore" },
    objectives = { {
        guid = "Questyno_EliaRima12_A",
        text = "IGUI_SFQuest_Questyno_EliaRima12_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoEliaRima12"
    } },
    text = "IGUI_SFQuest_Questyno_EliaRima12_Text",
    texture = "media/textures/Item_EliaRima.png",
    title = "IGUI_SFQuest_Questyno_EliaRima12_Title",
    unlocks =
    "clickevent;11354x6769x0:EventoEliaRima12;time:50:anim:loot;updateobjective:Questyno_EliaRima12:1:Completed",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, rimaQuest12);

local rimaQuest13 = {
    guid = "Questyno_EliaRima13",

    awardstask = "Questyno_EliaRima13_A", -- TASK REWARD
    dailycode = "Questyno_EliaRima",
    lore = { "IGUI_SFQuest_Questyno_EliaRima13_Lore" },
    objectives = { {
        guid = "Questyno_EliaRima13_A",
        text = "IGUI_SFQuest_Questyno_EliaRima13_A",
        needsitem = "BookFishing3;1",
        icon = "media/textures/Item_Book5",
        onobtained = "updateobjective;Questyno_EliaRima13;1;Completed;removeitem;BookFishing3;1",
        hidden = false,
    }, {
        guid = "Questyno_EliaRima13_B",
        text = "IGUI_SFQuest_Questyno_EliaRima13_B",
        needsitem = "BookMetalWelding2;1",
        icon = "media/textures/Item_Book6",
        onobtained = "updateobjective;Questyno_EliaRima13;2;Completed;removeitem;BookMetalWelding2;1",
        hidden = false,
    }, {
        guid = "Questyno_EliaRima13_C",
        text = "IGUI_SFQuest_Questyno_EliaRima13_C",
        needsitem = "BookCarpentry4;1",
        icon = "media/textures/Item_Book8",
        onobtained = "updateobjective;Questyno_EliaRima13;3;Completed;removeitem;BookCarpentry4;1",
        hidden = false,
    }, {
        guid = "Questyno_EliaRima13_D",
        text = "IGUI_SFQuest_Questyno_EliaRima13_D",
        needsitem = "BookTrapping2;1",
        icon = "media/textures/Item_Book2",
        onobtained = "updateobjective;Questyno_EliaRima13;4;Completed;removeitem;BookTrapping2;1",
        hidden = false,
    } }, -- REQUIRE
    text = "IGUI_SFQuest_Questyno_EliaRima13_Text",
    texture = "media/textures/Item_EliaRima.png",
    title = "IGUI_SFQuest_Questyno_EliaRima13_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, rimaQuest13);

local rimaQuest13A = {
    guid = "Questyno_EliaRima13_A",

    awardsrep = "LaResistenza;100", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_EliaRima",
    lore = { "IGUI_SFQuest_Questyno_EliaRima13_Lore" }, -- REQUIRE
    unlocks = "unlockworldevent;Questyno_EliaRima;SFQuest_Questyno_EliaRima13_Complete",
    text = "IGUI_SFQuest_Questyno_EliaRima13_A_Text",
    texture = "media/textures/Item_EliaRima.png",
    title = "IGUI_SFQuest_Questyno_EliaRima13_Title",
}
table.insert(SFQuest_Database.QuestPool, rimaQuest13A);

local rimaQuest14 = {
    guid = "Questyno_EliaRima14",

    awardstask = "Questyno_EliaRima14_A", -- TASK REWARD
    dailycode = "Questyno_EliaRima",
    lore = { "IGUI_SFQuest_Questyno_EliaRima14_Lore" },
    objectives = { {
        guid = "Questyno_EliaRima14_A",
        text = "IGUI_SFQuest_Questyno_EliaRima14_A",
        needsitem = "BookFishing4;1",
        icon = "media/textures/Item_Book5",
        onobtained = "updateobjective;Questyno_EliaRima14;1;Completed;removeitem;BookFishing4;1",
        hidden = false,
    }, {
        guid = "Questyno_EliaRima14_B",
        text = "IGUI_SFQuest_Questyno_EliaRima14_B",
        needsitem = "BookMetalWelding1;1",
        icon = "media/textures/Item_Book6",
        onobtained = "updateobjective;Questyno_EliaRima14;2;Completed;removeitem;BookMetalWelding1;1",
        hidden = false,
    }, {
        guid = "Questyno_EliaRima14_C",
        text = "IGUI_SFQuest_Questyno_EliaRima14_C",
        needsitem = "BookCarpentry2;1",
        icon = "media/textures/Item_Book8",
        onobtained = "updateobjective;Questyno_EliaRima14;3;Completed;removeitem;BookCarpentry2;1",
        hidden = false,
    }, {
        guid = "Questyno_EliaRima14_D",
        text = "IGUI_SFQuest_Questyno_EliaRima14_D",
        needsitem = "BookTrapping5;1",
        icon = "media/textures/Item_Book2",
        onobtained = "updateobjective;Questyno_EliaRima14;4;Completed;removeitem;BookTrapping5;1",
        hidden = false,
    } }, -- REQUIRE
    text = "IGUI_SFQuest_Questyno_EliaRima14_Text",
    texture = "media/textures/Item_EliaRima.png",
    title = "IGUI_SFQuest_Questyno_EliaRima14_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, rimaQuest14);

local rimaQuest14A = {
    guid = "Questyno_EliaRima14_A",

    awardsrep = "LaResistenza;120", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_EliaRima",
    lore = { "IGUI_SFQuest_Questyno_EliaRima14_Lore" }, -- REQUIRE
    unlocks = "unlockworldevent;Questyno_EliaRima;SFQuest_Questyno_EliaRima14_Complete",
    text = "IGUI_SFQuest_Questyno_EliaRima14_A_Text",
    texture = "media/textures/Item_EliaRima.png",
    title = "IGUI_SFQuest_Questyno_EliaRima14_Title",
}
table.insert(SFQuest_Database.QuestPool, rimaQuest14A);

local rimaQuest15 = {
    guid = "Questyno_EliaRima15",

    awardstask = "Questyno_EliaRima15_A", -- TASK REWARD
    dailycode = "Questyno_EliaRima",
    lore = { "IGUI_SFQuest_Questyno_EliaRima15_Lore" },
    objectives = { {
        guid = "Questyno_EliaRima15_A",
        text = "IGUI_SFQuest_Questyno_EliaRima15_A",
        needsitem = "BookForaging4;1",
        icon = "media/textures/Item_Book4",
        onobtained = "updateobjective;Questyno_EliaRima15;1;Completed;removeitem;BookForaging4;1",
        hidden = false,
    }, {
        guid = "Questyno_EliaRima15_B",
        text = "IGUI_SFQuest_Questyno_EliaRima15_B",
        needsitem = "BookMechanic1;1",
        icon = "media/textures/Item_Book6",
        onobtained = "updateobjective;Questyno_EliaRima15;2;Completed;removeitem;BookMechanic1;1",
        hidden = false,
    }, {
        guid = "Questyno_EliaRima15_C",
        text = "IGUI_SFQuest_Questyno_EliaRima15_C",
        needsitem = "BookCarpentry2;1",
        icon = "media/textures/Item_Book8",
        onobtained = "updateobjective;Questyno_EliaRima15;3;Completed;removeitem;BookCarpentry2;1",
        hidden = false,
    }, {
        guid = "Questyno_EliaRima15_D",
        text = "IGUI_SFQuest_Questyno_EliaRima15_D",
        needsitem = "BookFarming5;1",
        icon = "media/textures/Item_Book2",
        onobtained = "updateobjective;Questyno_EliaRima15;4;Completed;removeitem;BookFarming5;1",
        hidden = false,
    } },
    text = "IGUI_SFQuest_Questyno_EliaRima15_Text",
    texture = "media/textures/Item_EliaRima.png",
    title = "IGUI_SFQuest_Questyno_EliaRima15_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, rimaQuest15);

local rimaQuest15A = {
    guid = "Questyno_EliaRima15_A",

    awardsrep = "LaResistenza;100", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_EliaRima",
    lore = { "IGUI_SFQuest_Questyno_EliaRima15_Lore" }, -- REQUIRE
    unlocks = "unlockworldevent;Questyno_EliaRima;SFQuest_Questyno_EliaRima15_Complete",
    text = "IGUI_SFQuest_Questyno_EliaRima15_A_Text",
    texture = "media/textures/Item_EliaRima.png",
    title = "IGUI_SFQuest_Questyno_EliaRima15_Title",
}
table.insert(SFQuest_Database.QuestPool, rimaQuest15A);

local rimaQuest16 = {
    guid = "Questyno_EliaRima16",

    awardstask = "Questyno_EliaRima16_A", -- TASK REWARD
    dailycode = "Questyno_EliaRima",
    lore = { "IGUI_SFQuest_Questyno_EliaRima16_Lore" },
    objectives = { {
        guid = "Questyno_EliaRima16_A",
        text = "IGUI_SFQuest_Questyno_EliaRima16_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoEliaRima16;additem;HuntingMag1;1;additem;HuntingMag2;1"
    } },
    onobtained = "unlockworldevent;Questyno_EliaRima;SFQuest_Questyno_EliaRima16_Complete",
    text = "IGUI_SFQuest_Questyno_EliaRima16_Text",
    texture = "media/textures/Item_EliaRima.png",
    title = "IGUI_SFQuest_Questyno_EliaRima16_Title",
    unlocks =
    "clickevent;9681x11177x0:EventoEliaRima16;time:50:anim:loot;updateobjective:Questyno_EliaRima16:1:Completed",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, rimaQuest16);

local rimaQuest16A = {
    guid = "Questyno_EliaRima16_A",

    awardstask = "Questyno_EliaRima16_B", -- TASK REWARD
    dailycode = "Questyno_EliaRima",
    lore = { "IGUI_SFQuest_Questyno_EliaRima16_Lore" },
    objectives = { {
        guid = "Questyno_EliaRima16_B",
        text = "IGUI_SFQuest_Questyno_EliaRima16_B",
        needsitem = "HuntingMag1;1",
        icon = "media/textures/Item_Book5",
        onobtained = "updateobjective;Questyno_EliaRima16_A;1;Completed;removeitem;HuntingMag1;1",
        hidden = false,
    }, {
        guid = "Questyno_EliaRima16_C",
        text = "IGUI_SFQuest_Questyno_EliaRima16_C",
        needsitem = "HuntingMag2;1",
        icon = "media/textures/Item_Book5",
        onobtained = "updateobjective;Questyno_EliaRima16_A;2;Completed;removeitem;HuntingMag2;1",
        hidden = false,
    } },
    text = "IGUI_SFQuest_Questyno_EliaRima16_A_Text",
    texture = "media/textures/Item_EliaRima.png",
    title = "IGUI_SFQuest_Questyno_EliaRima16_Title",
}
table.insert(SFQuest_Database.QuestPool, rimaQuest16A);

local rimaQuest16B = {
    guid = "Questyno_EliaRima16_B",

    awardsrep = "LaResistenza;120", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_EliaRima",
    lore = { "IGUI_SFQuest_Questyno_EliaRima16_Lore" },
    unlocks = "unlockworldevent;Questyno_EliaRima;SFQuest_Questyno_EliaRima16_Complete",
    text = "IGUI_SFQuest_Questyno_EliaRima16_B_Text",
    texture = "media/textures/Item_EliaRima.png",
    title = "IGUI_SFQuest_Questyno_EliaRima16_Title",
}
table.insert(SFQuest_Database.QuestPool, rimaQuest16B);

local rimaQuest17 = {
    guid = "Questyno_EliaRima17",

    awardstask = "Questyno_EliaRima17_A", -- TASK REWARD
    dailycode = "Questyno_EliaRima",
    lore = { "IGUI_SFQuest_Questyno_EliaRima17_Lore" },
    objectives = { {
        guid = "Questyno_EliaRima17_A",
        text = "IGUI_SFQuest_Questyno_EliaRima17_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoEliaRima17;additem;FishingMag1;1;additem;FishingMag2;1"
    } },
    text = "IGUI_SFQuest_Questyno_EliaRima17_Text",
    texture = "media/textures/Item_EliaRima.png",
    title = "IGUI_SFQuest_Questyno_EliaRima17_Title",
    unlocks =
    "clickevent;8086x11513x0:EventoEliaRima17;time:50:anim:loot;updateobjective:Questyno_EliaRima17:1:Completed",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, rimaQuest17);

local rimaQuest17A = {
    guid = "Questyno_EliaRima17_A",

    awardstask = "Questyno_EliaRima17_B", -- TASK REWARD
    completesound = "levelup",
    dailycode = "Questyno_EliaRima",
    lore = { "IGUI_SFQuest_Questyno_EliaRima17_Lore" },
    objectives = { {
        guid = "Questyno_EliaRima17_B",
        text = "IGUI_SFQuest_Questyno_EliaRima17_B",
        needsitem = "FishingMag1;1",
        icon = "media/textures/Item_Book4",
        onobtained = "updateobjective;Questyno_EliaRima17_A;1;Completed;removeitem;FishingMag1;1",
        hidden = false,
    }, {
        guid = "Questyno_EliaRima17_C",
        text = "IGUI_SFQuest_Questyno_EliaRima17_C",
        needsitem = "FishingMag2;1",
        icon = "media/textures/Item_Book4",
        onobtained = "updateobjective;Questyno_EliaRima17_A;2;Completed;removeitem;FishingMag2;1",
        hidden = false,
    } }, -- REQUIRE
    text = "IGUI_SFQuest_Questyno_EliaRima17_A_Text",
    texture = "media/textures/Item_EliaRima.png",
    title = "IGUI_SFQuest_Questyno_EliaRima17_Title",
}
table.insert(SFQuest_Database.QuestPool, rimaQuest17A);

local rimaQuest17B = {
    guid = "Questyno_EliaRima17_B",

    awardsrep = "LaResistenza;120", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_EliaRima",
    lore = { "IGUI_SFQuest_Questyno_EliaRima17_Lore" },
    unlocks = "unlockworldevent;Questyno_EliaRima;SFQuest_Questyno_EliaRima17_Complete",
    text = "IGUI_SFQuest_Questyno_EliaRima17_B_Text",
    texture = "media/textures/Item_EliaRima.png",
    title = "IGUI_SFQuest_Questyno_EliaRima17_Title",
}
table.insert(SFQuest_Database.QuestPool, rimaQuest17B);

local rimaQuest18 = {
    guid = "Questyno_EliaRima18",

    awardstask = "Questyno_EliaRima18_A", -- TASK REWARD
    dailycode = "Questyno_EliaRima",
    lore = { "IGUI_SFQuest_Questyno_EliaRima18_Lore" },
    objectives = { {
        guid = "Questyno_EliaRima18_A",
        text = "IGUI_SFQuest_Questyno_EliaRima18_A",
        hidden = false,
        oncompleted =
        "removeclickevent;EventoEliaRima18;additem;ElectronicsMag1;1;additem;ElectronicsMag2;1;additem;ElectronicsMag3;1"
    } },
    text = "IGUI_SFQuest_Questyno_EliaRima18_Text",
    texture = "media/textures/Item_EliaRima.png",
    title = "IGUI_SFQuest_Questyno_EliaRima18_Title",
    unlocks =
    "clickevent;11361x6770x0:EventoEliaRima18;time:50:anim:loot;updateobjective:Questyno_EliaRima18:1:Completed",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, rimaQuest18);

local rimaQuest18A = {
    guid = "Questyno_EliaRima18_A",

    awardstask = "Questyno_EliaRima18_B", -- TASK REWARD
    completesound = "levelup",
    dailycode = "Questyno_EliaRima",
    lore = { "IGUI_SFQuest_Questyno_EliaRima18_Lore" },
    objectives = { {
        guid = "Questyno_EliaRima18_B",
        text = "IGUI_SFQuest_Questyno_EliaRima18_B",
        needsitem = "ElectronicsMag1;1",
        icon = "media/textures/Item_Book4",
        onobtained = "updateobjective;Questyno_EliaRima18_A;1;Completed;removeitem;ElectronicsMag1;1",
        hidden = false,
    }, {
        guid = "Questyno_EliaRima18_C",
        text = "IGUI_SFQuest_Questyno_EliaRima18_C",
        needsitem = "ElectronicsMag2;1",
        icon = "media/textures/Item_Book4",
        onobtained = "updateobjective;Questyno_EliaRima18_A;2;Completed;removeitem;ElectronicsMag2;1",
        hidden = false,
    }, {
        guid = "Questyno_EliaRima18_D",
        text = "IGUI_SFQuest_Questyno_EliaRima18_D",
        needsitem = "ElectronicsMag3;1",
        icon = "media/textures/Item_Book4",
        onobtained = "updateobjective;Questyno_EliaRima18_A;3;Completed;removeitem;ElectronicsMag3;1",
        hidden = false,
    } }, -- REQUIRE
    text = "IGUI_SFQuest_Questyno_EliaRima18_A_Text",
    texture = "media/textures/Item_EliaRima.png",
    title = "IGUI_SFQuest_Questyno_EliaRima18_Title",
}
table.insert(SFQuest_Database.QuestPool, rimaQuest18A);

local rimaQuest18B = {
    guid = "Questyno_EliaRima18_B",

    awardsrep = "LaResistenza;150", -- REP REWARD
    awardsitem = "Money;30",        -- MONEY REWARD
    completesound = "levelup",
    dailycode = "Questyno_EliaRima",
    lore = { "IGUI_SFQuest_Questyno_EliaRima18_Lore" },
    unlocks = "unlockworldevent;Questyno_EliaRima;SFQuest_Questyno_EliaRima18_Complete",
    text = "IGUI_SFQuest_Questyno_EliaRima18_B_Text",
    texture = "media/textures/Item_EliaRima.png",
    title = "IGUI_SFQuest_Questyno_EliaRima18_Title",
}
table.insert(SFQuest_Database.QuestPool, rimaQuest18B);

local rimaQuest19 = {
    guid = "Questyno_EliaRima19",

    awardstask = "Questyno_EliaRima19_A", -- TASK REWARD
    dailycode = "Questyno_EliaRima",
    lore = { "IGUI_SFQuest_Questyno_EliaRima19_Lore" },
    objectives = { {
        guid = "Questyno_EliaRima19_A",
        text = "IGUI_SFQuest_Questyno_EliaRima19_A",
        needsitem = "SheetPaper2;3",
        icon = "media/textures/Item_SheetPaper2",
        onobtained = "updateobjective;Questyno_EliaRima19;1;Completed;removeitem;SheetPaper2;3",
        hidden = false,
    }, {
        guid = "Questyno_EliaRima19_B",
        text = "IGUI_SFQuest_Questyno_EliaRima19_B",
        needsitem = "Crayons;1",
        icon = "media/textures/Item_Crayons",
        onobtained = "updateobjective;Questyno_EliaRima19;2;Completed;removeitem;Crayons;1",
        hidden = false,
    } }, -- REQUIRE
    text = "IGUI_SFQuest_Questyno_EliaRima19_Text",
    texture = "media/textures/Item_EliaRima.png",
    title = "IGUI_SFQuest_Questyno_EliaRima19_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, rimaQuest19);

local rimaQuest19A = {
    guid = "Questyno_EliaRima19_A",

    awardsrep = "LaResistenza;70", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_EliaRima",
    lore = { "IGUI_SFQuest_Questyno_EliaRima19_Lore" }, -- REQUIRE
    unlocks = "unlockworldevent;Questyno_EliaRima;SFQuest_Questyno_EliaRima19_Complete",
    text = "IGUI_SFQuest_Questyno_EliaRima19_A_Text",
    texture = "media/textures/Item_EliaRima.png",
    title = "IGUI_SFQuest_Questyno_EliaRima19_Title",
}
table.insert(SFQuest_Database.QuestPool, rimaQuest19A);

local rimaQuest20 = {
    guid = "Questyno_EliaRima20",

    awardsrep = "LaResistenza;60", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_EliaRima",
    lore = { "IGUI_SFQuest_Questyno_EliaRima20_Lore" },
    needsitem = "Journal;2", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_EliaRima;SFQuest_Questyno_EliaRima20_Complete",
    text = "IGUI_SFQuest_Questyno_EliaRima20_Text",
    texture = "media/textures/Item_EliaRima.png",
    title = "IGUI_SFQuest_Questyno_EliaRima20_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, rimaQuest20);

local rimaQuest21 = {
    guid = "Questyno_EliaRima21",

    awardstask = "Questyno_EliaRima21_A", -- TASK REWARD
    dailycode = "Questyno_EliaRima",
    lore = { "IGUI_SFQuest_Questyno_EliaRima21_Lore" },
    objectives = { {
        guid = "Questyno_EliaRima21_A",
        text = "IGUI_SFQuest_Questyno_EliaRima21_A",
        hidden = false,
        oncompleted = "additem;Journal;1;removeclickevent;EventoEliaRima21"
    } },
    text = "IGUI_SFQuest_Questyno_EliaRima21_Text",
    texture = "media/textures/Item_EliaRima.png",
    title = "IGUI_SFQuest_Questyno_EliaRima21_Title",
    unlocks =
    "clickevent;11192x6713x0:EventoEliaRima21;time:50:anim:loot;updateobjective:Questyno_EliaRima21:1:Completed",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, rimaQuest21);

local rimaQuest21A = {
    guid = "Questyno_EliaRima21_A",

    awardsrep = "LaResistenza;100", -- REP REWARD
    awardsitem = "Money;40",        -- MONEY REWARD
    completesound = "levelup",
    dailycode = "Questyno_EliaRima",
    lore = { "IGUI_SFQuest_Questyno_EliaRima21_Lore" },
    needsitem = "Journal;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_EliaRima;SFQuest_Questyno_EliaRima21_Complete",
    text = "IGUI_SFQuest_Questyno_EliaRima21_A_Text",
    texture = "media/textures/Item_EliaRima.png",
    title = "IGUI_SFQuest_Questyno_EliaRima21_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, rimaQuest21A);

local rimaQuest22 = {
    guid = "Questyno_EliaRima22",

    awardsrep = "LaResistenza;30", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_EliaRima",
    lore = { "IGUI_SFQuest_Questyno_EliaRima22_Lore" },
    needsitem = "BookCarpentry1;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_EliaRima;SFQuest_Questyno_EliaRima22_Complete",
    text = "IGUI_SFQuest_Questyno_EliaRima22_Text",
    texture = "media/textures/Item_EliaRima.png",
    title = "IGUI_SFQuest_Questyno_EliaRima22_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, rimaQuest22);

local rimaQuest23 = {
    guid = "Questyno_EliaRima23",

    awardsrep = "LaResistenza;35", -- REP REWARD
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

    awardsrep = "LaResistenza;40", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_BobRepair",
    lore = { "IGUI_SFQuest_Questyno_BobRepair1_Lore" },
    needsitem = "SmallSheetMetal;2", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_BobRepair;SFQuest_Questyno_BobRepair1_Complete",
    text = "IGUI_SFQuest_Questyno_BobRepair1_Text",
    texture = "media/textures/Item_BobRepair.png",
    title = "IGUI_SFQuest_Questyno_BobRepair1_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, bobQuest1);

local bobQuest2 = {
    guid = "Questyno_BobRepair2",

    awardsrep = "LaResistenza;120", -- REP REWARD
    awardsitem = "ScrapVest",       -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_BobRepair",
    lore = { "IGUI_SFQuest_Questyno_BobRepair2_Lore" },
    needsitem = "SheetMetal;2", -- REQUIRE
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
    unlocks =
    "clickevent;11599x9788x0:EventoBobRepair3;time:50:anim:loot;updateobjective:Questyno_BobRepair3:1:Completed",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, bobQuest3);

local bobQuest3A = {
    guid = "Questyno_BobRepair3_A",

    awardsrep = "LaResistenza;100", -- REP REWARD
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
        needsitem = "ElectronicsScrap;15",
        icon = "media/textures/Item_ElectronicsScrap",
        onobtained = "updateobjective;Questyno_BobRepair4;1;Completed;removeitem;ElectronicsScrap;15",
        hidden = false,
    }, {
        guid = "Questyno_BobRepair4_B",
        text = "IGUI_SFQuest_Questyno_BobRepair4_B",
        needsitem = "ElectricWire;2",
        icon = "media/textures/Item_ElectricWire",
        onobtained = "updateobjective;Questyno_BobRepair4;2;Completed;removeitem;ElectricWire;2",
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

    awardsrep = "LaResistenza;140", -- REP REWARD
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

    awardsrep = "LaResistenza;120", -- REP REWARD
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
        needsitem = "ElectronicsScrap;10",
        icon = "media/textures/Item_ElectronicsScrap",
        onobtained = "updateobjective;Questyno_BobRepair6;1;Completed;removeitem;ElectronicsScrap;10",
        hidden = false,
    }, {
        guid = "Questyno_BobRepair6_B",
        text = "IGUI_SFQuest_Questyno_BobRepair6_B",
        needsitem = "Battery;2",
        icon = "media/textures/Item_Battery",
        onobtained = "updateobjective;Questyno_BobRepair6;2;Completed;removeitem;Battery;2",
        hidden = false,
    }, {
        guid = "Questyno_BobRepair6_C",
        text = "IGUI_SFQuest_Questyno_BobRepair6_C",
        needsitem = "RadioTransmitter;2",
        icon = "media/textures/Item_RadioTransmitter",
        onobtained = "updateobjective;Questyno_BobRepair6;3;Completed;removeitem;RadioTransmitter;2",
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

    awardsrep = "LaResistenza;150",      -- REP REWARD
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

    awardsrep = "LaResistenza;50", -- REP REWARD
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

    awardsrep = "LaResistenza;40", -- REP REWARD
    awardsitem = "Ham",            -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_BobRepair",
    lore = { "IGUI_SFQuest_Questyno_BobRepair8_Lore" },
    needsitem = "ElectricWire;5", -- REQUIRE
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

    awardsrep = "LaResistenza;60", -- REP REWARD
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

    awardsrep = "LaResistenza;150", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_BobRepair",
    lore = { "IGUI_SFQuest_Questyno_BobRepair10_Lore" },
    needsitem = "EngineParts;2", -- REQUIRE
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

    awardsrep = "LaResistenza;30", -- REP REWARD
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

    awardsrep = "LaResistenza;100", -- REP REWARD
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
        onobtained = "updateobjective;Questyno_BobRepair15;1;Completed;removeitem;SheetMetal;10",
        hidden = false,
    }, {
        guid = "Questyno_BobRepair15_C",
        text = "IGUI_SFQuest_Questyno_BobRepair15_C",
        needsitem = "EngineParts;10",
        icon = "media/textures/Item_EngineParts",
        onobtained = "updateobjective;Questyno_BobRepair15;2;Completed;removeitem;EngineParts;10",
        hidden = false,
    }, {
        guid = "Questyno_BobRepair15_D",
        text = "IGUI_SFQuest_Questyno_BobRepair15_D",
        needsitem = "ElectronicsScrap;10",
        icon = "media/textures/Item_ElectronicsScrap",
        onobtained = "updateobjective;Questyno_BobRepair15;3;Completed;removeitem;ElectronicsScrap;10",
        hidden = false,
    }, {
        guid = "Questyno_BobRepair15_E",
        text = "IGUI_SFQuest_Questyno_BobRepair15_E",
        needsitem = "UnusableMetal;10",
        icon = "media/textures/Item_UnusableMetal",
        onobtained = "updateobjective;Questyno_BobRepair15;4;Completed;removeitem;UnusableMetal;10",
        hidden = false,
    } }, -- REQUIRE
    text = "IGUI_SFQuest_Questyno_BobRepair15_A_Text",
    texture = "media/textures/Item_BobRepair.png",
    title = "IGUI_SFQuest_Questyno_BobRepair15_Title",
}
table.insert(SFQuest_Database.QuestPool, bobQuest15A);

local bobQuest15B = {
    guid = "Questyno_BobRepair15_B",

    awardsrep = "LaResistenza;50",             -- REP REWARD
    awardsitem = "SheetMetal;2;EngineParts;2", -- ITEM REWARD
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

    awardsrep = "LaResistenza;50", -- REP REWARD
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

    awardsrep = "LaResistenza;50", -- REP REWARD
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

    awardsrep = "LaResistenza;70", -- REP REWARD
    dailycode = "Questyno_BobRepair",
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_BobRepair20_Lore" },
    needsitem = "ScrapMetal;15", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_BobRepair;SFQuest_Questyno_BobRepair20_Complete",
    text = "IGUI_SFQuest_Questyno_BobRepair20_Text",
    texture = "media/textures/Item_BobRepair.png",
    title = "IGUI_SFQuest_Questyno_BobRepair20_Title",
    unlockedsound = "QuestUnlocked",
}
table.insert(SFQuest_Database.QuestPool, bobQuest20);

local bobQuest21 = {
    guid = "Questyno_BobRepair21",

    awardsrep = "LaResistenza;100", -- REP REWARD
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

    awardsrep = "LaResistenza;50", -- REP REWARD
    awardsitem = "PipeWrench",     -- ITEM REWARD
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

    awardsrep = "LaResistenza;70", -- REP REWARD
    dailycode = "Questyno_BobRepair",
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_BobRepair23_Lore" },
    needsitem = "ScrapMetal;6", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_BobRepair;SFQuest_Questyno_BobRepair23_Complete",
    text = "IGUI_SFQuest_Questyno_BobRepair23_Text",
    texture = "media/textures/Item_BobRepair.png",
    title = "IGUI_SFQuest_Questyno_BobRepair23_Title",
    unlockedsound = "QuestUnlocked",
}
table.insert(SFQuest_Database.QuestPool, bobQuest23);

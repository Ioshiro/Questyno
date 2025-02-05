require 'SFQuest_Database'


--[[
            *** Mike Pozzo ***
            Elenco:
                intro. Parla con Mike Pozzo per sbloccare le daily.
				1. Recuperare Base.PotOfSoupRecipe (25rep + 10$ + Base.Pot)
				2. Recuperare Base.PanFriedVegetables (30rep + 15$ + Base.Pan)
				3. Recuperare farming.Cabbage (100rep + 20$)
				4. Recuperare Base.Salad (80rep + Base.Bowl)
				5. Recuperare Base.Butter parlando con (8145,11482,0) (35rep + 50$)
				6. Recuperare Base.Hotsauce,Base.Pepper,Base.FishRoe parlando con (9685,10570,0) (50rep + Base.SushiEgg)
				7. Recuperare Base.Rabbitmeat (anche 25%) (50rep + Base.Burger)
				8. Recuperare Base.Salt,Base.Flour,Base.Yeast parlando con (8403,7621,0) (40rep + Base.Baguette)
				9. Recuperare Base.GridlePan (60rep)
				10. Recuperare Base.Saucepan (50rep)
				11. Recuperare Base.KitchenKnife,Base.BreadKnife,Base.ButterKnife (100rep)
				12. Recuperare Base.Cereal;2 parlando con (7373,9734,0) (30rep + Base.Sugar)
				13. Recuperare Base.BeerCan (150rep)
				14. Recuperare Base.WaterBottleFull (30rep)
				15. Recuperare Base.CannedCornedBeef;2,Base.TVDinner;3,Base.CannedChili;3,Base.CandyPackage parlando con (8192,7516,0) (50rep + Base.TVDinner)
				16. Recuperare Base.Lard parlando con (7244,8179,0) (35rep + Base.Cheese,Base.DriedChickpeas)
				17. Recuperare 35$ (50rep + Base.Butter)
				18. Recuperare Uova;4 parlando con (6130,8757,0) (25rep + Base.PieBlueberry)
				19. Recuperare Base.Spoon;3 (50rep + 20$)
				20. Recuperare Base.PanFriedVegetables (100rep + Base.Pan)
				21. Recuperare Base.PotOfSoupRecipe (25rep + Base.Pot)
				22. Recuperare Base.CleaningLiquid2 (100rep + 20$)
				23. Recuperare Base.RoastingPan (70rep + Base.Smallanimalmeat)
				24. Recuperare Base.Fork;3 (100rep + 20$)
]]

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MikePozzo_Intro",

    awardsrep = "MikePozzo;100", -- REP REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo_Intro_Lore" },
    ondone = "randomcodedworldfrompool;Questyno_MikePozzo;Questyno;MikePozzo",
    text = "IGUI_SFQuest_Questyno_MikePozzo_Intro_Text",
    texture = "media/textures/Item_MikePozzo.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_MikePozzo;SFQuest_Questyno_MikePozzo_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_MikePozzo_Intro_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MikePozzo1",

    awardsrep = "LaResistenza;100",      -- REP REWARD
    awardsitem = "Money;10;Base.Pot;1", -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo1_Lore" },
    needsitem = "PredicateFoodWeight#Base.PotOfSoupRecipe;1;3.5", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_MikePozzo;SFQuest_Questyno_MikePozzo1_Complete",
    text = "IGUI_SFQuest_Questyno_MikePozzo1_Text",
    texture = "media/textures/Item_MikePozzo.png",
    title = "IGUI_SFQuest_Questyno_MikePozzo1_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MikePozzo2",

    awardsrep = "LaResistenza;120",      -- REP REWARD
    awardsitem = "Money;15;Base.Pan;1", -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo2_Lore" },
    needsitem = "Base.PanFriedVegetables;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_MikePozzo;SFQuest_Questyno_MikePozzo2_Complete",
    text = "IGUI_SFQuest_Questyno_MikePozzo2_Text",
    texture = "media/textures/Item_MikePozzo.png",
    title = "IGUI_SFQuest_Questyno_MikePozzo2_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MikePozzo3",

    awardsrep = "LaResistenza;120", -- REP REWARD
    awardsitem = "Money;20",        -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo3_Lore" },
    needsitem = "PredicateFreshFood#farming.Cabbage;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_MikePozzo;SFQuest_Questyno_MikePozzo3_Complete",
    text = "IGUI_SFQuest_Questyno_MikePozzo3_Text",
    texture = "media/textures/Item_MikePozzo.png",
    title = "IGUI_SFQuest_Questyno_MikePozzo3_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MikePozzo4",

    awardsrep = "LaResistenza;100", -- REP REWARD
    awardsitem = "Base.Bowl;1",    -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo4_Lore" },
    needsitem = "PredicateFoodWeight#farming.Salad;1;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_MikePozzo;SFQuest_Questyno_MikePozzo4_Complete",
    text = "IGUI_SFQuest_Questyno_MikePozzo4_Text",
    texture = "media/textures/Item_MikePozzo.png",
    title = "IGUI_SFQuest_Questyno_MikePozzo4_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MikePozzo5",

    awardstask = "Questyno_MikePozzo5_A", -- TASK REWARD
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo5_Lore" },
    objectives = { {
        guid = "Questyno_MikePozzo5_A",
        text = "IGUI_SFQuest_Questyno_MikePozzo5_A",
        icon = "media/textures/Item_Butter",
        hidden = false,
        oncompleted = "removeclickevent;EventoMikePozzo5;additem;Butter;1"
    } }, -- REQUIRE
    text = "IGUI_SFQuest_Questyno_MikePozzo5_Text",
    texture = "media/textures/Item_MikePozzo.png",
    title = "IGUI_SFQuest_Questyno_MikePozzo5_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;8145x11482x0:EventoMikePozzo5;time:50:anim:loot;updateobjective:Questyno_MikePozzo5:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MikePozzo5_A",

    awardsrep = "LaResistenza;250", -- REP REWARD
    awardsitem = "Money;50",       -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo5_Lore" },
    needsitem = "Base.Butter;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_MikePozzo;SFQuest_Questyno_MikePozzo5_Complete",
    text = "IGUI_SFQuest_Questyno_MikePozzo5_A_Text",
    texture = "media/textures/Item_MikePozzo.png",
    title = "IGUI_SFQuest_Questyno_MikePozzo5_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MikePozzo6",

    awardstask = "Questyno_MikePozzo6_A", -- TASK REWARD
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo6_Lore" },
    objectives = { {
        guid = "Questyno_MikePozzo6_A",
        text = "IGUI_SFQuest_Questyno_MikePozzo6_A",
        icon = "media/textures/Item_SushiEgg",
        hidden = false,
        oncompleted = "removeclickevent;EventoMikePozzo6;additem;Hotsauce;1;additem;Pepper;1;additem;FishRoe;1"
    } }, -- REQUIRE
    text = "IGUI_SFQuest_Questyno_MikePozzo6_Text",
    texture = "media/textures/Item_MikePozzo.png",
    title = "IGUI_SFQuest_Questyno_MikePozzo6_Title",
    unlockedsound = "QuestUnlocked",
    unlocks =
    "clickevent;9685x10570x0:EventoMikePozzo6;time:50:anim:loot;updateobjective:Questyno_MikePozzo6:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MikePozzo6_A",

    awardstask = "Questyno_MikePozzo6_B", -- TASK REWARD
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo6_Lore" },
    objectives = { {
        guid = "Questyno_MikePozzo6_B",
        text = "IGUI_SFQuest_Questyno_MikePozzo6_B",
        icon = "media/textures/Item_SushiEgg",
        hidden = false,
        needsitem = "Base.Hotsauce;1",
        onobtained = "updateobjective;Questyno_MikePozzo6_A;1;Completed;removeitem;Base.Hotsauce;1"
    }, {
        guid = "Questyno_MikePozzo6_C",
        text = "IGUI_SFQuest_Questyno_MikePozzo6_C",
        icon = "media/textures/Item_SushiEgg",
        hidden = false,
        needsitem = "Base.Pepper;1",
        onobtained = "updateobjective;Questyno_MikePozzo6_A;2;Completed;removeitem;Base.Pepper;1"
    }, {
        guid = "Questyno_MikePozzo6_D",
        text = "IGUI_SFQuest_Questyno_MikePozzo6_D",
        icon = "media/textures/Item_SushiEgg",
        hidden = false,
        needsitem = "Base.FishRoe;1",
        onobtained = "updateobjective;Questyno_MikePozzo6_A;3;Completed;removeitem;Base.FishRoe;1"
    } }, -- REQUIRE
    text = "IGUI_SFQuest_Questyno_MikePozzo6_A_Text",
    texture = "media/textures/Item_MikePozzo.png",
    title = "IGUI_SFQuest_Questyno_MikePozzo6_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MikePozzo6_B",

    awardsrep = "LaResistenza;150",  -- REP REWARD
    awardsitem = "Base.SushiEgg;1", -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo6_Lore" },
    unlocks = "unlockworldevent;Questyno_MikePozzo;SFQuest_Questyno_MikePozzo6_Complete",
    text = "IGUI_SFQuest_Questyno_MikePozzo6_B_Text",
    texture = "media/textures/Item_MikePozzo.png",
    title = "IGUI_SFQuest_Questyno_MikePozzo6_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MikePozzo7",

    awardsrep = "LaResistenza;50", -- REP REWARD
    awardsitem = "Base.Burger;1",  -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo7_Lore" },
    needsitem = "Rabbitmeat;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_MikePozzo;SFQuest_Questyno_MikePozzo7_Complete",
    text = "IGUI_SFQuest_Questyno_MikePozzo7_Text",
    texture = "media/textures/Item_MikePozzo.png",
    title = "IGUI_SFQuest_Questyno_MikePozzo7_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MikePozzo8",

    awardstask = "Questyno_MikePozzo8_A", -- TASK REWARD
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo8_Lore" },
    objectives = { {
        guid = "Questyno_MikePozzo8_A",
        text = "IGUI_SFQuest_Questyno_MikePozzo8_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoMikePozzo8;additem;Salt;1;additem;Flour;1;additem;Yeast;1"
    } }, -- REQUIRE
    text = "IGUI_SFQuest_Questyno_MikePozzo8_Text",
    texture = "media/textures/Item_MikePozzo.png",
    title = "IGUI_SFQuest_Questyno_MikePozzo8_Title",
    unlockedsound = "QuestUnlocked",
    unlocks =
    "clickevent;8403x7621x0:EventoMikePozzo8;time:50:anim:loot;updateobjective:Questyno_MikePozzo8:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MikePozzo8_A",

    awardstask = "Questyno_MikePozzo8_B", -- TASK REWARD
    completesound = "levelup",
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo8_Lore" },
    objectives = { {
        guid = "Questyno_MikePozzo8_B",
        text = "IGUI_SFQuest_Questyno_MikePozzo8_B",
        needsitem = "Salt;1",
        icon = "media/textures/Item_Salt",
        onobtained = "updateobjective;Questyno_MikePozzo8_A;1;Completed;removeitem;Salt;1",
        hidden = false,
    }, {
        guid = "Questyno_MikePozzo8_C",
        text = "IGUI_SFQuest_Questyno_MikePozzo8_C",
        needsitem = "Flour;1",
        icon = "media/textures/Item_Flour",
        onobtained = "updateobjective;Questyno_MikePozzo8_A;2;Completed;removeitem;Flour;1",
        hidden = false,
    }, {
        guid = "Questyno_MikePozzo8_D",
        text = "IGUI_SFQuest_Questyno_MikePozzo8_D",
        needsitem = "Yeast;1",
        icon = "media/textures/Item_Yeast",
        onobtained = "updateobjective;Questyno_MikePozzo8_A;3;Completed;removeitem;Yeast;1",
        hidden = false,
    } }, -- REQUIRE
    text = "IGUI_SFQuest_Questyno_MikePozzo8_A_Text",
    texture = "media/textures/Item_MikePozzo.png",
    title = "IGUI_SFQuest_Questyno_MikePozzo8_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MikePozzo8_B",

    awardsrep = "LaResistenza;150", -- REP REWARD
    awardsitem = "Base.Baguette;1", -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo8_Lore" },
    unlocks = "unlockworldevent;Questyno_MikePozzo;SFQuest_Questyno_MikePozzo8_Complete",
    text = "IGUI_SFQuest_Questyno_MikePozzo8_B_Text",
    texture = "media/textures/Item_MikePozzo.png",
    title = "IGUI_SFQuest_Questyno_MikePozzo8_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MikePozzo9",

    awardsrep = "LaResistenza;60", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo9_Lore" },
    needsitem = "Base.GridlePan;1", -- ITEM REQUEST
    onobtained = "unlockworldevent;Questyno_MikePozzo;SFQuest_Questyno_MikePozzo9_Complete",
    text = "IGUI_SFQuest_Questyno_MikePozzo9_Text",
    texture = "media/textures/Item_MikePozzo.png",
    title = "IGUI_SFQuest_Questyno_MikePozzo9_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MikePozzo10",

    awardsrep = "LaResistenza;50", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo10_Lore" },
    needsitem = "Base.Saucepan;1", -- ITEM REQUEST
    onobtained = "unlockworldevent;Questyno_MikePozzo;SFQuest_Questyno_MikePozzo10_Complete",
    text = "IGUI_SFQuest_Questyno_MikePozzo10_Text",
    texture = "media/textures/Item_MikePozzo.png",
    title = "IGUI_SFQuest_Questyno_MikePozzo10_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MikePozzo11",

    awardstask = "Questyno_MikePozzo11_A", -- TASK REWARD
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo11_Lore" },
    objectives = { {
        guid = "Questyno_MikePozzo11_A",
        text = "IGUI_SFQuest_Questyno_MikePozzo11_A",
        icon = "media/textures/Item_KitchenKnife",
        hidden = false,
        needsitem = "Base.KitchenKnife;1",
        onobtained = "updateobjective;Questyno_MikePozzo11;1;Completed;removeitem;Base.KitchenKnife;1"
    }, {
        guid = "Questyno_MikePozzo11_B",
        text = "IGUI_SFQuest_Questyno_MikePozzo11_B",
        icon = "media/textures/Item_BreadKnife",
        hidden = false,
        needsitem = "Base.BreadKnife;1",
        onobtained = "updateobjective;Questyno_MikePozzo11;2;Completed;removeitem;Base.BreadKnife;1"
    }, {
        guid = "Questyno_MikePozzo11_C",
        text = "IGUI_SFQuest_Questyno_MikePozzo11_C",
        icon = "media/textures/Item_ButcherKnife",
        hidden = false,
        needsitem = "Base.ButterKnife;1",
        onobtained = "updateobjective;Questyno_MikePozzo11;3;Completed;removeitem;Base.ButterKnife;1"
    } }, -- REQUIRE
    text = "IGUI_SFQuest_Questyno_MikePozzo11_Text",
    texture = "media/textures/Item_MikePozzo.png",
    title = "IGUI_SFQuest_Questyno_MikePozzo11_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MikePozzo11_A",

    awardsrep = "LaResistenza;100", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo11_Lore" },
    unlocks = "unlockworldevent;Questyno_MikePozzo;SFQuest_Questyno_MikePozzo11_Complete",
    text = "IGUI_SFQuest_Questyno_MikePozzo11_A_Text",
    texture = "media/textures/Item_MikePozzo.png",
    title = "IGUI_SFQuest_Questyno_MikePozzo11_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MikePozzo12",

    awardstask = "Questyno_MikePozzo12_A", -- TASK REWARD
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo12_Lore" },
    objectives = { {
        guid = "Questyno_MikePozzo12_A",
        text = "IGUI_SFQuest_Questyno_MikePozzo12_A",
        icon = "media/textures/Item_Sugar",
        hidden = false,
        oncompleted = "removeclickevent;EventoMikePozzo12;additem;Cereal;2"
    } }, -- REQUIRE
    text = "IGUI_SFQuest_Questyno_MikePozzo12_Text",
    texture = "media/textures/Item_MikePozzo.png",
    title = "IGUI_SFQuest_Questyno_MikePozzo12_Title",
    unlockedsound = "QuestUnlocked",
    unlocks =
    "clickevent;7373x9734x0:EventoMikePozzo12;time:50:anim:loot;updateobjective:Questyno_MikePozzo12:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MikePozzo12_A",

    awardsrep = "LaResistenza;200", -- REP REWARD
    awardsitem = "Base.Sugar;1",   -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo12_Lore" },
    needsitem = "Base.Cereal;2", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_MikePozzo;SFQuest_Questyno_MikePozzo12_Complete",
    text = "IGUI_SFQuest_Questyno_MikePozzo12_A_Text",
    texture = "media/textures/Item_MikePozzo.png",
    title = "IGUI_SFQuest_Questyno_MikePozzo12_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MikePozzo13",

    awardsrep = "LaResistenza;200", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo13_Lore" },
    needsitem = "Base.BeerCan;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_MikePozzo;SFQuest_Questyno_MikePozzo13_Complete",
    text = "IGUI_SFQuest_Questyno_MikePozzo13_Text",
    texture = "media/textures/Item_MikePozzo.png",
    title = "IGUI_SFQuest_Questyno_MikePozzo13_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MikePozzo14",

    awardsrep = "LaResistenza;30", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo14_Lore" },
    needsitem = "Base.WaterBottleFull;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_MikePozzo;SFQuest_Questyno_MikePozzo14_Complete",
    text = "IGUI_SFQuest_Questyno_MikePozzo14_Text",
    texture = "media/textures/Item_MikePozzo.png",
    title = "IGUI_SFQuest_Questyno_MikePozzo14_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MikePozzo15",

    awardstask = "Questyno_MikePozzo15_A", -- TASK REWARD
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo15_Lore" },
    objectives = { {
        guid = "Questyno_MikePozzo15_A",
        text = "IGUI_SFQuest_Questyno_MikePozzo15_A",
        icon = "media/textures/Item_TVDinner",
        hidden = false,
        oncompleted = "removeclickevent;EventoMikePozzo15;additem;CannedCornedBeef;2;additem;TVDinner;3;additem;CannedChili;3;additem;CandyPackage;1"
    } }, -- REQUIRE
    text = "IGUI_SFQuest_Questyno_MikePozzo15_Text",
    texture = "media/textures/Item_MikePozzo.png",
    title = "IGUI_SFQuest_Questyno_MikePozzo15_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;8192x7516x0:EventoMikePozzo15;time:50:anim:loot;updateobjective:Questyno_MikePozzo15:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MikePozzo15_A",

    awardstask = "Questyno_MikePozzo15_B", -- TASK REWARD
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo15_Lore" },
    objectives = { {
        guid = "Questyno_MikePozzo15_B",
        text = "IGUI_SFQuest_Questyno_MikePozzo15_B",
        icon = "media/textures/Item_TVDinner",
        hidden = false,
        needsitem = "Base.CannedCornedBeef;2",
        onobtained = "updateobjective;Questyno_MikePozzo15_A;1;Completed;removeitem;Base.CannedCornedBeef;2"
    }, {
        guid = "Questyno_MikePozzo15_C",
        text = "IGUI_SFQuest_Questyno_MikePozzo15_C",
        icon = "media/textures/Item_TVDinner",
        hidden = false,
        needsitem = "Base.TVDinner;3",
        onobtained = "updateobjective;Questyno_MikePozzo15_A;2;Completed;removeitem;Base.TVDinner;3"
    }, {
        guid = "Questyno_MikePozzo15_D",
        text = "IGUI_SFQuest_Questyno_MikePozzo15_D",
        icon = "media/textures/Item_TVDinner",
        hidden = false,
        needsitem = "Base.CannedChili;3",
        onobtained = "updateobjective;Questyno_MikePozzo15_A;3;Completed;removeitem;Base.CannedChili;3"
    }, {
        guid = "Questyno_MikePozzo15_E",
        text = "IGUI_SFQuest_Questyno_MikePozzo15_E",
        icon = "media/textures/Item_TVDinner",
        hidden = false,
        needsitem = "Base.CandyPackage;1",
        onobtained = "updateobjective;Questyno_MikePozzo15_A;4;Completed;removeitem;Base.CandyPackage;1"
    } }, -- REQUIRE
    text = "IGUI_SFQuest_Questyno_MikePozzo15_A_Text",
    texture = "media/textures/Item_MikePozzo.png",
    title = "IGUI_SFQuest_Questyno_MikePozzo15_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MikePozzo15_B",

    awardsrep = "LaResistenza;100", -- REP REWARD
    awardsitem = "Base.TVDinner;1", -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo15_Lore" },
    unlocks = "unlockworldevent;Questyno_MikePozzo;SFQuest_Questyno_MikePozzo15_Complete",
    text = "IGUI_SFQuest_Questyno_MikePozzo15_B_Text",
    texture = "media/textures/Item_MikePozzo.png",
    title = "IGUI_SFQuest_Questyno_MikePozzo15_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MikePozzo16",

    awardstask = "Questyno_MikePozzo16_A", -- TASK REWARD
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo16_Lore" },
    objectives = { {
        guid = "Questyno_MikePozzo16_A",
        text = "IGUI_SFQuest_Questyno_MikePozzo16_A",
        icon = "media/textures/Item_Cheese",
        hidden = false,
        oncompleted = "removeclickevent;EventoMikePozzo16;additem;Lard;1"
    } }, -- REQUIRE
    text = "IGUI_SFQuest_Questyno_MikePozzo16_Text",
    texture = "media/textures/Item_MikePozzo.png",
    title = "IGUI_SFQuest_Questyno_MikePozzo16_Title",
    unlockedsound = "QuestUnlocked",
    unlocks =
    "clickevent;7244x8179x0:EventoMikePozzo16;time:50:anim:loot;updateobjective:Questyno_MikePozzo16:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MikePozzo16_A",

    awardsrep = "LaResistenza;150", -- REP REWARD
    awardsitem = "Base.Cheese;1;Base.DriedChickpeas;1",  -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo16_Lore" },
    needsitem = "Base.Lard;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_MikePozzo;SFQuest_Questyno_MikePozzo16_Complete",
    text = "IGUI_SFQuest_Questyno_MikePozzo16_A_Text",
    texture = "media/textures/Item_MikePozzo.png",
    title = "IGUI_SFQuest_Questyno_MikePozzo16_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MikePozzo17",

    awardsrep = "LaResistenza;50", -- REP REWARD
    awardsitem = "Butter",  -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo17_Lore" },
    needsitem = "Money;35", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_MikePozzo;SFQuest_Questyno_MikePozzo17_Complete",
    text = "IGUI_SFQuest_Questyno_MikePozzo17_Text",
    texture = "media/textures/Item_MikePozzo.png",
    title = "IGUI_SFQuest_Questyno_MikePozzo17_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MikePozzo18",

    awardstask = "Questyno_MikePozzo18_A", -- TASK REWARD
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo18_Lore" },
    objectives = { {
        guid = "Questyno_MikePozzo18_A",
        text = "IGUI_SFQuest_Questyno_MikePozzo18_A",
        icon = "media/textures/Item_Egg",
        hidden = false,
        oncompleted = "removeclickevent;EventoMikePozzo18;additem;Egg;4"
    } }, -- REQUIRE
    text = "IGUI_SFQuest_Questyno_MikePozzo18_Text",
    texture = "media/textures/Item_MikePozzo.png",
    title = "IGUI_SFQuest_Questyno_MikePozzo18_Title",
    unlockedsound = "QuestUnlocked",
    unlocks =
    "clickevent;6130x8757x0:EventoMikePozzo18;time:50:anim:loot;updateobjective:Questyno_MikePozzo18:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MikePozzo18_A",

    awardsrep = "LaResistenza;50", -- REP REWARD
    awardsitem = "Base.PieBlueberry;1",  -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo18_Lore" },
    needsitem = "Base.Egg;4", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_MikePozzo;SFQuest_Questyno_MikePozzo18_Complete",
    text = "IGUI_SFQuest_Questyno_MikePozzo18_A_Text",
    texture = "media/textures/Item_MikePozzo.png",
    title = "IGUI_SFQuest_Questyno_MikePozzo18_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MikePozzo19",

    awardsrep = "LaResistenza;200", -- REP REWARD
    awardsitem = "Money;20",  -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo19_Lore" },
    needsitem = "Base.Spoon;3", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_MikePozzo;SFQuest_Questyno_MikePozzo19_Complete",
    text = "IGUI_SFQuest_Questyno_MikePozzo19_Text",
    texture = "media/textures/Item_MikePozzo.png",
    title = "IGUI_SFQuest_Questyno_MikePozzo19_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MikePozzo20",

    awardsrep = "LaResistenza;100", -- REP REWARD
    awardsitem = "Base.Pan;1",  -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo20_Lore" },
    needsitem = "Base.PanFriedVegetables;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_MikePozzo;SFQuest_Questyno_MikePozzo20_Complete",
    text = "IGUI_SFQuest_Questyno_MikePozzo20_Text",
    texture = "media/textures/Item_MikePozzo.png",
    title = "IGUI_SFQuest_Questyno_MikePozzo20_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MikePozzo21",

    awardsrep = "LaResistenza;100", -- REP REWARD
    awardsitem = "Base.Pot;1",  -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo21_Lore" },
    needsitem = "PredicateFoodWeight#Base.PotOfSoupRecipe;1;3.5", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_MikePozzo;SFQuest_Questyno_MikePozzo21_Complete",
    text = "IGUI_SFQuest_Questyno_MikePozzo21_Text",
    texture = "media/textures/Item_MikePozzo.png",
    title = "IGUI_SFQuest_Questyno_MikePozzo21_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MikePozzo22",

    awardsrep = "LaResistenza;400", -- REP REWARD
    awardsitem = "Money;20",  -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo22_Lore" },
    needsitem = "Base.CleaningLiquid2;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_MikePozzo;SFQuest_Questyno_MikePozzo22_Complete",
    text = "IGUI_SFQuest_Questyno_MikePozzo22_Text",
    texture = "media/textures/Item_MikePozzo.png",
    title = "IGUI_SFQuest_Questyno_MikePozzo22_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_MikePozzo23",

    awardsrep = "LaResistenza;100", -- REP REWARD
    awardsitem = "Base.Smallanimalmeat;1",  -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo23_Lore" },
    needsitem = "Base.RoastingPan;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_MikePozzo;SFQuest_Questyno_MikePozzo23_Complete",
    text = "IGUI_SFQuest_Questyno_MikePozzo23_Text",
    texture = "media/textures/Item_MikePozzo.png",
    title = "IGUI_SFQuest_Questyno_MikePozzo23_Title",
    unlockedsound = "QuestUnlocked"
} );

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MikePozzo24",

    awardsrep = "LaResistenza;120", -- REP REWARD
    awardsitem = "Money;20",  -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo24_Lore" },
    needsitem = "Base.Fork;3", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_MikePozzo;SFQuest_Questyno_MikePozzo24_Complete",
    text = "IGUI_SFQuest_Questyno_MikePozzo24_Text",
    texture = "media/textures/Item_MikePozzo.png",
    title = "IGUI_SFQuest_Questyno_MikePozzo24_Title",
    unlockedsound = "QuestUnlocked"
});


--[[
            *** Rosa China ***
            Elenco:
                intro. Parla con Rosa China per sbloccare le daily.
				1. Recuperare Base.Stone;5 (30rep)
				2. Recuperare Base.Stone;10 (50rep)
				3. Recuperare Base.SharpedStone;5 (60rep)
				4. Recuperare Base.SharpedStone;10 (80rep + Base.WildEggs;2)
				5. Recuperare Base.SpearCrafted;10 (35rep)
				6. Recuperare Base.SpearCrafted;5 (25rep)
				7. Recuperare Base.TreeBranch;20 (70rep)
				8. Recuperare Base.Grasshopper;5,Base.Pillbug;5,Base.Cockroach (60rep)
				9. Recuperare Base.LemonGrass;3,Base.BlackSage;2 (60rep + Base.PlantainCataplasm)
				10. Recuperare Base.LogStacks3;2 (50rep + Base.GardenFork)
				11. Recuperare Base.NailsBox (60rep + Base.Pumpkin)
				12. Recuperare Base.Plank;10 (30rep)
				13. Recuperare Base.Twigs;30 (40rep)
				14. Recuperare Base.Twigs;20 (30rep)
				15. Recuperare Base.HammerStone;4,Base.AxeStone;2 (60rep)
				16. Recuperare Base.AxeStone;2,SpearCrafted;2,FlintKnife;2 (50rep)
				17. Recuperare Base.TreeBranch;2 (30rep + Base.WoodenLance)
				18. Recuperare Base.TreeBranch,Base.SharpedStone (25rep + Base.WoodenLance)
				19. Recuperare MushroomGeneric3 (250rep)
				20. Recuperare Pentola di Base.PotOfSoupRecipe (35rep + 20$ + Pentola)
				21. Recuperare Moveables.vegetation_farm_01_16 parlando con (8314,8902,0) (35rep)
				22. Recuperare Base.SharpedStone (20rep + Base.Pestle)
				23. Recuperare Base.ComfreyCataplas (50rep)
				24. Recuperare Base.WildGarlicCataplasm (50rep)
]]

local chinaIntro = {
    guid = "Questyno_RosaChina_Intro",

    awardsrep = "RosaChina;100", -- REP REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_RosaChina_Intro_Lore" },
    ondone = "randomcodedworldfrompool;Questyno_RosaChina;Questyno;RosaChina",
    text = "IGUI_SFQuest_Questyno_RosaChina_Intro_Text",
    texture = "media/textures/Item_RosaChina.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_RosaChina;SFQuest_Questyno_RosaChina_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_RosaChina_Intro_Title",
}
table.insert(SFQuest_Database.QuestPool, chinaIntro);

local chinaQuest1 = {
    guid = "Questyno_RosaChina1",

    awardsrep = "LaResistenza;50", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_RosaChina",
    lore = { "IGUI_SFQuest_Questyno_RosaChina1_Lore" },
    needsitem = "Base.Stone;5", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_RosaChina;SFQuest_Questyno_RosaChina1_Complete",
    text = "IGUI_SFQuest_Questyno_RosaChina1_Text",
    texture = "media/textures/Item_RosaChina.png",
    title = "IGUI_SFQuest_Questyno_RosaChina1_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, chinaQuest1);

local chinaQuest2 = {
    guid = "Questyno_RosaChina2",

    awardsrep = "LaResistenza;100", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_RosaChina",
    lore = { "IGUI_SFQuest_Questyno_RosaChina2_Lore" },
    needsitem = "Base.Stone;10", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_RosaChina;SFQuest_Questyno_RosaChina2_Complete",
    text = "IGUI_SFQuest_Questyno_RosaChina2_Text",
    texture = "media/textures/Item_RosaChina.png",
    title = "IGUI_SFQuest_Questyno_RosaChina2_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, chinaQuest2);

local chinaQuest3 = {
    guid = "Questyno_RosaChina3",

    awardsrep = "LaResistenza;60", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_RosaChina",
    lore = { "IGUI_SFQuest_Questyno_RosaChina3_Lore" },
    needsitem = "Base.SharpedStone;5", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_RosaChina;SFQuest_Questyno_RosaChina3_Complete",
    text = "IGUI_SFQuest_Questyno_RosaChina3_Text",
    texture = "media/textures/Item_RosaChina.png",
    title = "IGUI_SFQuest_Questyno_RosaChina3_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, chinaQuest3);

local chinaQuest4 = {
    guid = "Questyno_RosaChina4",

    awardsrep = "LaResistenza;100", -- REP REWARD
    awardsitem = "Base.WildEggs;2",  -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_RosaChina",
    lore = { "IGUI_SFQuest_Questyno_RosaChina4_Lore" },
    needsitem = "Base.SharpedStone;10", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_RosaChina;SFQuest_Questyno_RosaChina4_Complete",
    text = "IGUI_SFQuest_Questyno_RosaChina4_Text",
    texture = "media/textures/Item_RosaChina.png",
    title = "IGUI_SFQuest_Questyno_RosaChina4_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, chinaQuest4);

local chinaQuest5 = {
    guid = "Questyno_RosaChina5",

    awardsrep = "LaResistenza;60", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_RosaChina",
    lore = { "IGUI_SFQuest_Questyno_RosaChina5_Lore" },
    needsitem = "Base.SpearCrafted;10", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_RosaChina;SFQuest_Questyno_RosaChina5_Complete",
    text = "IGUI_SFQuest_Questyno_RosaChina5_Text",
    texture = "media/textures/Item_RosaChina.png",
    title = "IGUI_SFQuest_Questyno_RosaChina5_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, chinaQuest5);

local chinaQuest6 = {
    guid = "Questyno_RosaChina6",

    awardsrep = "LaResistenza;25", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_RosaChina",
    lore = { "IGUI_SFQuest_Questyno_RosaChina6_Lore" },
    needsitem = "Base.SpearCrafted;5", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_RosaChina;SFQuest_Questyno_RosaChina6_Complete",
    text = "IGUI_SFQuest_Questyno_RosaChina6_Text",
    texture = "media/textures/Item_RosaChina.png",
    title = "IGUI_SFQuest_Questyno_RosaChina6_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, chinaQuest6);

local chinaQuest7 = {
    guid = "Questyno_RosaChina7",

    awardsrep = "LaResistenza;120", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_RosaChina",
    lore = { "IGUI_SFQuest_Questyno_RosaChina7_Lore" },
    needsitem = "Base.TreeBranch;20", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_RosaChina;SFQuest_Questyno_RosaChina7_Complete",
    text = "IGUI_SFQuest_Questyno_RosaChina7_Text",
    texture = "media/textures/Item_RosaChina.png",
    title = "IGUI_SFQuest_Questyno_RosaChina7_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, chinaQuest7);

local chinaQuest8 = {
    guid = "Questyno_RosaChina8",

    awardstask = "Questyno_RosaChina8_A", -- TASK REWARD
    dailycode = "Questyno_RosaChina",
    lore = { "IGUI_SFQuest_Questyno_RosaChina8_Lore" },
    objectives = { {
        guid = "Questyno_RosaChina8_A",
        text = "IGUI_SFQuest_Questyno_RosaChina8_A",
        icon = "media/textures/Item_Grasshopper",
        hidden = false,
        needsitem = "PredicateFreshFood#Grasshopper;5",
        onobtained = "updateobjective;Questyno_RosaChina8;1;Completed;removeitem;Grasshopper;5"
    }, { 
        guid = "Questyno_RosaChina8_B",
        text = "IGUI_SFQuest_Questyno_RosaChina8_B",
        icon = "media/textures/Item_Pillbug",
        hidden = false,
        needsitem = "PredicateFreshFood#Pillbug;5",
        onobtained = "updateobjective;Questyno_RosaChina8;2;Completed;removeitem;Pillbug;5"
    }, {
        guid = "Questyno_RosaChina8_C",
        text = "IGUI_SFQuest_Questyno_RosaChina8_C",
        icon = "media/textures/Item_Cockroach",
        hidden = false,
        needsitem = "PredicateFreshFood#Cockroach;4",
        onobtained = "updateobjective;Questyno_RosaChina8;3;Completed;removeitem;Cockroach;4"
    },{
        guid = "Questyno_RosaChina8_D",
        text = "IGUI_SFQuest_Questyno_RosaChina8_D",
        hidden = false,
        needsitem = "PredicateFreshFood#Snail;10",
        onobtained = "updateobjective;Questyno_RosaChina8;4;Completed;removeitem;Snail;10"
    }}, -- REQUIRE
    text = "IGUI_SFQuest_Questyno_RosaChina8_Text",
    texture = "media/textures/Item_RosaChina.png",
    title = "IGUI_SFQuest_Questyno_RosaChina8_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, chinaQuest8);

local chinaQuest8A = {
    guid = "Questyno_RosaChina8_A",

    awardsrep = "LaResistenza;200", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_RosaChina",
    lore = { "IGUI_SFQuest_Questyno_RosaChina8_Lore" },
    unlocks = "unlockworldevent;Questyno_RosaChina;SFQuest_Questyno_RosaChina8_Complete",
    text = "IGUI_SFQuest_Questyno_RosaChina8_A_Text",
    texture = "media/textures/Item_RosaChina.png",
    title = "IGUI_SFQuest_Questyno_RosaChina8_Title",
}
table.insert(SFQuest_Database.QuestPool, chinaQuest8A);

local chinaQuest9 = {
    guid = "Questyno_RosaChina9",

    awardstask = "Questyno_RosaChina9_A", -- TASK REWARD
    dailycode = "Questyno_RosaChina",
    lore = { "IGUI_SFQuest_Questyno_RosaChina9_Lore" },
    objectives = { {
        guid = "Questyno_RosaChina9_A",
        text = "IGUI_SFQuest_Questyno_RosaChina9_A",
        icon = "media/textures/Item_Grasshopper",
        hidden = false,
        needsitem = "PredicateFreshFood#Base.LemonGrass;3",
        onobtained = "updateobjective;Questyno_RosaChina9;1;Completed;removeitem;Base.LemonGrass;3"
    }, { 
        guid = "Questyno_RosaChina9_B",
        text = "IGUI_SFQuest_Questyno_RosaChina9_B",
        icon = "media/textures/Item_Pillbug",
        hidden = false,
        needsitem = "PredicateFreshFood#Base.BlackSage;2",
        onobtained = "updateobjective;Questyno_RosaChina9;2;Completed;removeitem;Base.BlackSage;2"
    }}, -- REQUIRE
    text = "IGUI_SFQuest_Questyno_RosaChina9_Text",
    texture = "media/textures/Item_RosaChina.png",
    title = "IGUI_SFQuest_Questyno_RosaChina9_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, chinaQuest9);

local chinaQuest9A = {
    guid = "Questyno_RosaChina9_A",

    awardsrep = "LaResistenza;100", -- REP REWARD
    awardsitem = "Base.PlantainCataplasm",  -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_RosaChina",
    lore = { "IGUI_SFQuest_Questyno_RosaChina9_Lore" },
    unlocks = "unlockworldevent;Questyno_RosaChina;SFQuest_Questyno_RosaChina9_Complete",
    text = "IGUI_SFQuest_Questyno_RosaChina9_A_Text",
    texture = "media/textures/Item_RosaChina.png",
    title = "IGUI_SFQuest_Questyno_RosaChina9_Title",
}
table.insert(SFQuest_Database.QuestPool, chinaQuest9A);

local chinaQuest10 = {
    guid = "Questyno_RosaChina10",

    awardsrep = "LaResistenza;50", -- REP REWARD
    awardsitem = "Base.GardenFork",  -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_RosaChina",
    lore = { "IGUI_SFQuest_Questyno_RosaChina10_Lore" },
    needsitem = "Base.LogStacks3;2", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_RosaChina;SFQuest_Questyno_RosaChina10_Complete",
    text = "IGUI_SFQuest_Questyno_RosaChina10_Text",
    texture = "media/textures/Item_RosaChina.png",
    title = "IGUI_SFQuest_Questyno_RosaChina10_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, chinaQuest10);

local chinaQuest11 = {
    guid = "Questyno_RosaChina11",

    awardsrep = "LaResistenza;100", -- REP REWARD
    awardsitem = "Base.Pumpkin",  -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_RosaChina",
    lore = { "IGUI_SFQuest_Questyno_RosaChina11_Lore" },
    needsitem = "Base.NailsBox;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_RosaChina;SFQuest_Questyno_RosaChina11_Complete",
    text = "IGUI_SFQuest_Questyno_RosaChina11_Text",
    texture = "media/textures/Item_RosaChina.png",
    title = "IGUI_SFQuest_Questyno_RosaChina11_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, chinaQuest11);

local chinaQuest12 = {
    guid = "Questyno_RosaChina12",

    awardsrep = "LaResistenza;50", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_RosaChina",
    lore = { "IGUI_SFQuest_Questyno_RosaChina12_Lore" },
    needsitem = "Base.Plank;10", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_RosaChina;SFQuest_Questyno_RosaChina12_Complete",
    text = "IGUI_SFQuest_Questyno_RosaChina12_Text",
    texture = "media/textures/Item_RosaChina.png",
    title = "IGUI_SFQuest_Questyno_RosaChina12_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, chinaQuest12);

local chinaQuest13 = {
    guid = "Questyno_RosaChina13",

    awardsrep = "LaResistenza;40", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_RosaChina",
    lore = { "IGUI_SFQuest_Questyno_RosaChina13_Lore" },
    needsitem = "Base.Twigs;30", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_RosaChina;SFQuest_Questyno_RosaChina13_Complete",
    text = "IGUI_SFQuest_Questyno_RosaChina13_Text",
    texture = "media/textures/Item_RosaChina.png",
    title = "IGUI_SFQuest_Questyno_RosaChina13_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, chinaQuest13);

local chinaQuest14 = {
    guid = "Questyno_RosaChina14",

    awardsrep = "LaResistenza;30", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_RosaChina",
    lore = { "IGUI_SFQuest_Questyno_RosaChina14_Lore" },
    needsitem = "Base.Twigs;20", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_RosaChina;SFQuest_Questyno_RosaChina14_Complete",
    text = "IGUI_SFQuest_Questyno_RosaChina14_Text",
    texture = "media/textures/Item_RosaChina.png",
    title = "IGUI_SFQuest_Questyno_RosaChina14_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, chinaQuest14);

local chinaQuest15 = {
    guid = "Questyno_RosaChina15",

    awardstask = "Questyno_RosaChina15_A", -- TASK REWARD
    dailycode = "Questyno_RosaChina",
    lore = { "IGUI_SFQuest_Questyno_RosaChina15_Lore" },
    objectives = { {
        guid = "Questyno_RosaChina15_A",
        text = "IGUI_SFQuest_Questyno_RosaChina15_A",
        icon = "media/textures/Item_HammerStone",
        hidden = false,
        needsitem = "HammerStone;4",
        onobtained = "updateobjective;Questyno_RosaChina15;1;Completed;removeitem;HammerStone;4"
    }, { 
        guid = "Questyno_RosaChina15_B",
        text = "IGUI_SFQuest_Questyno_RosaChina15_B",
        icon = "media/textures/Item_AxeStone",
        hidden = false,
        needsitem = "AxeStone;2",
        onobtained = "updateobjective;Questyno_RosaChina15;2;Completed;removeitem;AxeStone;2"
    } }, -- REQUIRE
    text = "IGUI_SFQuest_Questyno_RosaChina15_Text",
    texture = "media/textures/Item_RosaChina.png",
    title = "IGUI_SFQuest_Questyno_RosaChina15_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, chinaQuest15);

local chinaQuest15A = {
    guid = "Questyno_RosaChina15_A",

    awardsrep = "LaResistenza;60", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_RosaChina",
    lore = { "IGUI_SFQuest_Questyno_RosaChina15_Lore" },
    unlocks = "unlockworldevent;Questyno_RosaChina;SFQuest_Questyno_RosaChina15_Complete",
    text = "IGUI_SFQuest_Questyno_RosaChina15_A_Text",
    texture = "media/textures/Item_RosaChina.png",
    title = "IGUI_SFQuest_Questyno_RosaChina15_Title",
}
table.insert(SFQuest_Database.QuestPool, chinaQuest15A);

local chinaQuest16 = {
    guid = "Questyno_RosaChina16",

    awardstask = "Questyno_RosaChina16_A", -- TASK REWARD
    dailycode = "Questyno_RosaChina",
    lore = { "IGUI_SFQuest_Questyno_RosaChina16_Lore" },
    objectives = { {
        guid = "Questyno_RosaChina16_A",
        text = "IGUI_SFQuest_Questyno_RosaChina16_A",
        icon = "media/textures/Item_AxeStone",
        hidden = false,
        needsitem = "AxeStone;2",
        onobtained = "updateobjective;Questyno_RosaChina16;1;Completed;removeitem;AxeStone;2"
    }, { 
        guid = "Questyno_RosaChina16_B",
        text = "IGUI_SFQuest_Questyno_RosaChina16_B",
        icon = "media/textures/Item_SpearCrafted",
        hidden = false,
        needsitem = "SpearCrafted;2",
        onobtained = "updateobjective;Questyno_RosaChina16;2;Completed;removeitem;SpearCrafted;2"
    }, {
        guid = "Questyno_RosaChina16_C",
        text = "IGUI_SFQuest_Questyno_RosaChina16_C",
        icon = "media/textures/Item_FlintKnife",
        hidden = false,
        needsitem = "FlintKnife;2",
        onobtained = "updateobjective;Questyno_RosaChina16;3;Completed;removeitem;FlintKnife;2"
    } }, -- REQUIRE
    text = "IGUI_SFQuest_Questyno_RosaChina16_Text",
    texture = "media/textures/Item_RosaChina.png",
    title = "IGUI_SFQuest_Questyno_RosaChina16_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, chinaQuest16);

local chinaQuest16A = {
    guid = "Questyno_RosaChina16_A",

    awardsrep = "LaResistenza;50", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_RosaChina",
    lore = { "IGUI_SFQuest_Questyno_RosaChina16_Lore" },
    unlocks = "unlockworldevent;Questyno_RosaChina;SFQuest_Questyno_RosaChina16_Complete",
    text = "IGUI_SFQuest_Questyno_RosaChina16_A_Text",
    texture = "media/textures/Item_RosaChina.png",
    title = "IGUI_SFQuest_Questyno_RosaChina16_Title",
}
table.insert(SFQuest_Database.QuestPool, chinaQuest16A);

local chinaQuest17 = {
    guid = "Questyno_RosaChina17",

    awardsrep = "LaResistenza;30", -- REP REWARD
    awardsitem = "Base.WoodenLance",  -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_RosaChina",
    lore = { "IGUI_SFQuest_Questyno_RosaChina17_Lore" },
    needsitem = "Base.TreeBranch;2", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_RosaChina;SFQuest_Questyno_RosaChina17_Complete",
    text = "IGUI_SFQuest_Questyno_RosaChina17_Text",
    texture = "media/textures/Item_RosaChina.png",
    title = "IGUI_SFQuest_Questyno_RosaChina17_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, chinaQuest17);

local chinaQuest18 = {
    guid = "Questyno_RosaChina18",

    awardstask = "Questyno_RosaChina18_A", -- TASK REWARD
    dailycode = "Questyno_RosaChina",
    lore = { "IGUI_SFQuest_Questyno_RosaChina18_Lore" },
    objectives = { {
        guid = "Questyno_RosaChina18_A",
        text = "IGUI_SFQuest_Questyno_RosaChina18_A",
        icon = "media/textures/Item_TreeBranch",
        hidden = false,
        needsitem = "Base.TreeBranch;1",
        onobtained = "updateobjective;Questyno_RosaChina18;1;Completed;removeitem;Base.TreeBranch;1"
    }, { 
        guid = "Questyno_RosaChina18_B",
        text = "IGUI_SFQuest_Questyno_RosaChina18_B",
        icon = "media/textures/Item_SharpStone",
        hidden = false,
        needsitem = "Base.SharpedStone;1",
        onobtained = "updateobjective;Questyno_RosaChina18;2;Completed;removeitem;Base.SharpedStone;1"
    } }, -- REQUIRE
    text = "IGUI_SFQuest_Questyno_RosaChina18_Text",
    texture = "media/textures/Item_RosaChina.png",
    title = "IGUI_SFQuest_Questyno_RosaChina18_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, chinaQuest18);

local chinaQuest18A = {
    guid = "Questyno_RosaChina18_A",

    awardsrep = "LaResistenza;25", -- REP REWARD
    awardsitem = "Base.WoodenLance",  -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_RosaChina",
    lore = { "IGUI_SFQuest_Questyno_RosaChina18_Lore" },
    unlocks = "unlockworldevent;Questyno_RosaChina;SFQuest_Questyno_RosaChina18_Complete",
    text = "IGUI_SFQuest_Questyno_RosaChina18_A_Text",
    texture = "media/textures/Item_RosaChina.png",
    title = "IGUI_SFQuest_Questyno_RosaChina18_Title",
}
table.insert(SFQuest_Database.QuestPool, chinaQuest18A);

local chinaQuest19 = {
    guid = "Questyno_RosaChina19",

    awardsrep = "LaResistenza;400", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_RosaChina",
    lore = { "IGUI_SFQuest_Questyno_RosaChina19_Lore" },
    needsitem = "MushroomGeneric3;1", -- REQUIRE
    onobtained ="unlockworldevent;Questyno_RosaChina;SFQuest_Questyno_RosaChina19_Complete",
    text = "IGUI_SFQuest_Questyno_RosaChina19_Text",
    texture = "media/textures/Item_RosaChina.png",
    title = "IGUI_SFQuest_Questyno_RosaChina19_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, chinaQuest19);

local chinaQuest20 = {
    guid = "Questyno_RosaChina20",

    awardsrep = "LaResistenza;60", -- REP REWARD
    awardsitem = "Pot;1;Money;20",  -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_RosaChina",
    lore = { "IGUI_SFQuest_Questyno_RosaChina20_Lore" },
    needsitem = "PredicateFoodWeight#Base.PotOfSoupRecipe;1;3.5", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_RosaChina;SFQuest_Questyno_RosaChina20_Complete",
    text = "IGUI_SFQuest_Questyno_RosaChina20_Text",
    texture = "media/textures/Item_RosaChina.png",
    title = "IGUI_SFQuest_Questyno_RosaChina20_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, chinaQuest20);

local chinaQuest21 = {
    guid = "Questyno_RosaChina21",

    awardstask = "Questyno_RosaChina21_A", -- TASK REWARD
    dailycode = "Questyno_RosaChina",
    lore = { "IGUI_SFQuest_Questyno_RosaChina21_Lore" },
    objectives = { {
        guid = "Questyno_RosaChina21_A",
        text = "IGUI_SFQuest_Questyno_RosaChina21_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoRosaChina21;additem;GardenHoe;1"
    } }, -- REQUIRE
    text = "IGUI_SFQuest_Questyno_RosaChina21_Text",
    texture = "media/textures/Item_RosaChina.png",
    title = "IGUI_SFQuest_Questyno_RosaChina21_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;8314x8902x0:EventoRosaChina21;time:50:anim:loot;updateobjective:Questyno_RosaChina21:1:Completed",
}
table.insert(SFQuest_Database.QuestPool, chinaQuest21);

local chinaQuest21A = {
    guid = "Questyno_RosaChina21_A",

    awardsrep = "LaResistenza;130", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_RosaChina",
    lore = { "IGUI_SFQuest_Questyno_RosaChina21_Lore" },
    needsitem = "GardenHoe;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_RosaChina;SFQuest_Questyno_RosaChina21_Complete",
    text = "IGUI_SFQuest_Questyno_RosaChina21_A_Text",
    texture = "media/textures/Item_RosaChina.png",
    title = "IGUI_SFQuest_Questyno_RosaChina21_Title",
}
table.insert(SFQuest_Database.QuestPool, chinaQuest21A);

local chinaQuest22 = {
    guid = "Questyno_RosaChina22",

    awardsrep = "LaResistenza;20", -- REP REWARD
    awardsitem = "Base.MortarPestle",  -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_RosaChina",
    lore = { "IGUI_SFQuest_Questyno_RosaChina22_Lore" },
    needsitem = "Base.SharpedStone;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_RosaChina;SFQuest_Questyno_RosaChina22_Complete",
    text = "IGUI_SFQuest_Questyno_RosaChina22_Text",
    texture = "media/textures/Item_RosaChina.png",
    title = "IGUI_SFQuest_Questyno_RosaChina22_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, chinaQuest22);

local chinaQuest23 = {
    guid = "Questyno_RosaChina23",

    awardsrep = "LaResistenza;50", -- REP REWARD
    awardsitem = "DriedBlackBeans;1",  -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_RosaChina",
    lore = { "IGUI_SFQuest_Questyno_RosaChina23_Lore" },
    needsitem = "Base.ComfreyCataplasm;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_RosaChina;SFQuest_Questyno_RosaChina23_Complete",
    text = "IGUI_SFQuest_Questyno_RosaChina23_Text",
    texture = "media/textures/Item_RosaChina.png",
    title = "IGUI_SFQuest_Questyno_RosaChina23_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, chinaQuest23);

local chinaQuest24 = {
    guid = "Questyno_RosaChina24",

    awardsrep = "LaResistenza;50", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_RosaChina",
    lore = { "IGUI_SFQuest_Questyno_RosaChina24_Lore" },
    needsitem = "Base.WildGarlicCataplasm;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_RosaChina;SFQuest_Questyno_RosaChina24_Complete",
    text = "IGUI_SFQuest_Questyno_RosaChina24_Text",
    texture = "media/textures/Item_RosaChina.png",
    title = "IGUI_SFQuest_Questyno_RosaChina24_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, chinaQuest24);

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_RosaChina25",

    awardsrep = "LaResistenza;150", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_RosaChina",
    lore = { "IGUI_SFQuest_Questyno_RosaChina25_Lore" },
    needsitem = "Base.Thread;5", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_RosaChina;SFQuest_Questyno_RosaChina25_Complete",
    text = "IGUI_SFQuest_Questyno_RosaChina25_Text",
    texture = "media/textures/Item_RosaChina.png",
    title = "IGUI_SFQuest_Questyno_RosaChina25_Title",
    unlockedsound = "QuestUnlocked"
});

local chinaQuest26 = {
    guid = "Questyno_RosaChina26",

    awardsrep = "LaResistenza;400", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_RosaChina",
    lore = { "IGUI_SFQuest_Questyno_RosaChina26_Lore" },
    needsitem = "MushroomGeneric2;1", -- REQUIRE
    onobtained ="unlockworldevent;Questyno_RosaChina;SFQuest_Questyno_RosaChina26_Complete",
    text = "IGUI_SFQuest_Questyno_RosaChina26_Text",
    texture = "media/textures/Item_RosaChina.png",
    title = "IGUI_SFQuest_Questyno_RosaChina26_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, chinaQuest26);

local chinaQuest27 = {
    guid = "Questyno_RosaChina27",

    awardsrep = "LaResistenza;400", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_RosaChina",
    lore = { "IGUI_SFQuest_Questyno_RosaChina27_Lore" },
    needsitem = "MushroomGeneric1;1", -- REQUIRE
    onobtained ="unlockworldevent;Questyno_RosaChina;SFQuest_Questyno_RosaChina27_Complete",
    text = "IGUI_SFQuest_Questyno_RosaChina27_Text",
    texture = "media/textures/Item_RosaChina.png",
    title = "IGUI_SFQuest_Questyno_RosaChina27_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, chinaQuest27);

--[[
            *** Emily Terry ***
            Elenco:
                intro. Parla con Emily Terry per sbloccare le daily.
				1. Recuperare farming.RedRadishSeed;12 (50rep)
				2. Recuperare farming.StrawberrySeed;12 (50rep + Base.Strawberry)
				3. Recuperare LogStacks3;2 (30rep + Base.DriedLentils)
				4. Recuperare Base.LogStacks4;2 (40rep + piccolo pezzo di carne)
				5. Recuperare Base.SheetRope;20 (25rep)
				6. Recuperare Base.SheetRope;40 (40rep)
				7. Recuperare Base.TreeBranch;10 (35rep)
				8. Recuperare Base.Grasshopper;5 (40rep)
				9. Recuperare Base.LemonGrass;5 (50rep + Base.PlantainCataplasm)
				10. Recuperare Base.BlackSage;5 (50rep)
				11. Recuperare Base.NailsBox (60rep + Base.Smallanimalmeat;2)
				12. Recuperare Base.LogStacks2;4 (30rep)
				13. Recuperare Base.LogStacks2;3 (20rep + Base.CommonMallow;5)
				14. Recuperare Base.PercedWood,Base.TreeBranch (25rep)
				15. Recuperare MushroomGeneric6,MushroomGeneric7 (250rep + Base.OilOlive)
				16. Recuperare Base.AxeStone;2,Base.SpearCrafted;2,FlintKnife;2 (50rep)
				17. Recuperare Base.ScrapMetal;2,Base.Plank (30rep + Base.GardenFork)
				18. Recuperare RippedSheets;50 (40rep)
				19. Recuperare Bambola parlando con (7901,8180,0) (35rep + Base.BerryBlack;5)
				20. Recuperare Base.PotOfSoupRecipe (35rep + 20$ + Base.Pot)
				21. Recuperare Base.Mattress;2 parlando con (10934,8492,0) (35rep)
				22. Recuperare Base.AxeStone;4 (40rep + 10$)
				23. Recuperare Base.HammerStone;4 (30rep + 10$)
				24. Recuperare Base.Stone;10 (35rep)
]]

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_EmilyTerry_Intro",

    awardsrep = "EmilyTerry;100", -- REP REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_EmilyTerry_Intro_Lore" },
    ondone = "randomcodedworldfrompool;Questyno_EmilyTerry;Questyno;EmilyTerry",
    text = "IGUI_SFQuest_Questyno_EmilyTerry_Intro_Text",
    texture = "media/textures/Item_EmilyTerry.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_EmilyTerry_Intro_Title",
});

local emilyTerryQuest1 = {
    guid = "Questyno_EmilyTerry1",

    awardsrep = "LaResistenza;100", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_EmilyTerry",
    lore = { "IGUI_SFQuest_Questyno_EmilyTerry1_Lore" },
    needsitem = "farming.RedRadishSeed;12", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry1_Complete",
    text = "IGUI_SFQuest_Questyno_EmilyTerry1_Text",
    texture = "media/textures/Item_EmilyTerry.png",
    title = "IGUI_SFQuest_Questyno_EmilyTerry1_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, emilyTerryQuest1);

local emilyTerryQuest2 = {
    guid = "Questyno_EmilyTerry2",

    awardsrep = "LaResistenza;50", -- REP REWARD
    awardsitem = "farming.Strewberrie",  -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_EmilyTerry",
    lore = { "IGUI_SFQuest_Questyno_EmilyTerry2_Lore" },
    needsitem = "farming.StrewberrieSeed;12", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry2_Complete",
    text = "IGUI_SFQuest_Questyno_EmilyTerry2_Text",
    texture = "media/textures/Item_EmilyTerry.png",
    title = "IGUI_SFQuest_Questyno_EmilyTerry2_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, emilyTerryQuest2);

local emilyTerryQuest3 = {
    guid = "Questyno_EmilyTerry3",

    awardsrep = "LaResistenza;30", -- REP REWARD
    awardsitem = "Base.DriedLentils",  -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_EmilyTerry",
    lore = { "IGUI_SFQuest_Questyno_EmilyTerry3_Lore" },
    needsitem = "Base.LogStacks3;2", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry3_Complete",
    text = "IGUI_SFQuest_Questyno_EmilyTerry3_Text",
    texture = "media/textures/Item_EmilyTerry.png",
    title = "IGUI_SFQuest_Questyno_EmilyTerry3_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, emilyTerryQuest3);

local emilyTerryQuest4 = {
    guid = "Questyno_EmilyTerry4",

    awardsrep = "LaResistenza;40", -- REP REWARD
    awardsitem = "Base.Smallanimalmeat",  -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_EmilyTerry",
    lore = { "IGUI_SFQuest_Questyno_EmilyTerry4_Lore" },
    needsitem = "Base.LogStacks4;2", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry4_Complete",
    text = "IGUI_SFQuest_Questyno_EmilyTerry4_Text",
    texture = "media/textures/Item_EmilyTerry.png",
    title = "IGUI_SFQuest_Questyno_EmilyTerry4_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, emilyTerryQuest4);

local emilyTerryQuest5 = {
    guid = "Questyno_EmilyTerry5",

    awardsrep = "LaResistenza;25", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_EmilyTerry",
    lore = { "IGUI_SFQuest_Questyno_EmilyTerry5_Lore" },
    needsitem = "Base.SheetRope;20", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry5_Complete",
    text = "IGUI_SFQuest_Questyno_EmilyTerry5_Text",
    texture = "media/textures/Item_EmilyTerry.png",
    title = "IGUI_SFQuest_Questyno_EmilyTerry5_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, emilyTerryQuest5);

local emilyTerryQuest6 = {
    guid = "Questyno_EmilyTerry6",

    awardsrep = "LaResistenza;40", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_EmilyTerry",
    lore = { "IGUI_SFQuest_Questyno_EmilyTerry6_Lore" },
    needsitem = "Base.SheetRope;40", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry6_Complete",
    text = "IGUI_SFQuest_Questyno_EmilyTerry6_Text",
    texture = "media/textures/Item_EmilyTerry.png",
    title = "IGUI_SFQuest_Questyno_EmilyTerry6_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, emilyTerryQuest6);

local emilyTerryQuest7 = {
    guid = "Questyno_EmilyTerry7",

    awardsrep = "LaResistenza;50", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_EmilyTerry",
    lore = { "IGUI_SFQuest_Questyno_EmilyTerry7_Lore" },
    needsitem = "Base.TreeBranch;10", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry7_Complete",
    text = "IGUI_SFQuest_Questyno_EmilyTerry7_Text",
    texture = "media/textures/Item_EmilyTerry.png",
    title = "IGUI_SFQuest_Questyno_EmilyTerry7_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, emilyTerryQuest7);

local emilyTerryQuest8 = {
    guid = "Questyno_EmilyTerry8",

    awardsrep = "LaResistenza;40", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_EmilyTerry",
    lore = { "IGUI_SFQuest_Questyno_EmilyTerry8_Lore" },
    needsitem = "PredicateFreshFood#Base.Grasshopper;5", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry8_Complete",
    text = "IGUI_SFQuest_Questyno_EmilyTerry8_Text",
    texture = "media/textures/Item_EmilyTerry.png",
    title = "IGUI_SFQuest_Questyno_EmilyTerry8_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, emilyTerryQuest8);

local emilyTerryQuest9 = {
    guid = "Questyno_EmilyTerry9",

    awardsrep = "LaResistenza;50", -- REP REWARD
    awardsitem = "Base.PlantainCataplasm",  -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_EmilyTerry",
    lore = { "IGUI_SFQuest_Questyno_EmilyTerry9_Lore" },
    needsitem = "PredicateFreshFood#Base.LemonGrass;5", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry9_Complete",
    text = "IGUI_SFQuest_Questyno_EmilyTerry9_Text",
    texture = "media/textures/Item_EmilyTerry.png",
    title = "IGUI_SFQuest_Questyno_EmilyTerry9_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, emilyTerryQuest9);

local emilyTerryQuest10 = {
    guid = "Questyno_EmilyTerry10",

    awardsrep = "LaResistenza;100", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_EmilyTerry",
    lore = { "IGUI_SFQuest_Questyno_EmilyTerry10_Lore" },
    needsitem = "PredicateFreshFood#Base.BlackSage;5", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry10_Complete",
    text = "IGUI_SFQuest_Questyno_EmilyTerry10_Text",
    texture = "media/textures/Item_EmilyTerry.png",
    title = "IGUI_SFQuest_Questyno_EmilyTerry10_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, emilyTerryQuest10);

local emilyTerryQuest11 = {
    guid = "Questyno_EmilyTerry11",

    awardsrep = "LaResistenza;60", -- REP REWARD
    awardsitem = "Base.Smallanimalmeat;2",  -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_EmilyTerry",
    lore = { "IGUI_SFQuest_Questyno_EmilyTerry11_Lore" },
    needsitem = "Base.NailsBox;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry11_Complete",
    text = "IGUI_SFQuest_Questyno_EmilyTerry11_Text",
    texture = "media/textures/Item_EmilyTerry.png",
    title = "IGUI_SFQuest_Questyno_EmilyTerry11_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, emilyTerryQuest11);

local emilyTerryQuest12 = {
    guid = "Questyno_EmilyTerry12",

    awardsrep = "LaResistenza;30", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_EmilyTerry",
    lore = { "IGUI_SFQuest_Questyno_EmilyTerry12_Lore" },
    needsitem = "Base.LogStacks2;4", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry12_Complete",
    text = "IGUI_SFQuest_Questyno_EmilyTerry12_Text",
    texture = "media/textures/Item_EmilyTerry.png",
    title = "IGUI_SFQuest_Questyno_EmilyTerry12_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, emilyTerryQuest12);

local emilyTerryQuest13 = {
    guid = "Questyno_EmilyTerry13",

    awardsrep = "LaResistenza;20", -- REP REWARD
    awardsitem = "Base.CommonMallow;5",  -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_EmilyTerry",
    lore = { "IGUI_SFQuest_Questyno_EmilyTerry13_Lore" },
    needsitem = "Base.LogStacks2;3", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry13_Complete",
    text = "IGUI_SFQuest_Questyno_EmilyTerry13_Text",
    texture = "media/textures/Item_EmilyTerry.png",
    title = "IGUI_SFQuest_Questyno_EmilyTerry13_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, emilyTerryQuest13);

local emilyTerryQuest14 = {
    guid = "Questyno_EmilyTerry14",

    awardstask = "Questyno_EmilyTerry14_A", -- TASK REWARD
    dailycode = "Questyno_EmilyTerry",
    lore = { "IGUI_SFQuest_Questyno_EmilyTerry14_Lore" },
    objectives = { {
        guid = "Questyno_EmilyTerry14_A",
        text = "IGUI_SFQuest_Questyno_EmilyTerry14_A",
        hidden = false,
        needsitem = "PercedWood;1",
        onobtained = "updateobjective;Questyno_EmilyTerry14;1;Completed;removeitem;PercedWood;1"
    }, { 
        guid = "Questyno_EmilyTerry14_B",
        text = "IGUI_SFQuest_Questyno_EmilyTerry14_B",
        hidden = false,
        needsitem = "TreeBranch;1",
        onobtained = "updateobjective;Questyno_EmilyTerry14;2;Completed;removeitem;TreeBranch;1"
    } }, -- REQUIRE
    text = "IGUI_SFQuest_Questyno_EmilyTerry14_Text",
    texture = "media/textures/Item_EmilyTerry.png",
    title = "IGUI_SFQuest_Questyno_EmilyTerry14_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, emilyTerryQuest14);

local emilyTerryQuest14A = {
    guid = "Questyno_EmilyTerry14_A",

    awardsrep = "LaResistenza;25", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_EmilyTerry",
    lore = { "IGUI_SFQuest_Questyno_EmilyTerry14_Lore" },
    unlocks = "unlockworldevent;Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry14_Complete",
    text = "IGUI_SFQuest_Questyno_EmilyTerry14_A_Text",
    texture = "media/textures/Item_EmilyTerry.png",
    title = "IGUI_SFQuest_Questyno_EmilyTerry14_Title",
}
table.insert(SFQuest_Database.QuestPool, emilyTerryQuest14A);

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_EmilyTerry15",

    awardsrep = "LaResistenza;350", -- REP REWARD
    awardsitem = "Base.OilOlive",  -- ITEM REWARD
    dailycode = "Questyno_EmilyTerry",
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_EmilyTerry15_Lore" },
    needsitem = "MushroomGeneric7;1",
    onobtained = "unlockworldevent;Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry15_Complete",
    text = "IGUI_SFQuest_Questyno_EmilyTerry15_Text",
    texture = "media/textures/Item_EmilyTerry.png",
    title = "IGUI_SFQuest_Questyno_EmilyTerry15_Title",
    unlockedsound = "QuestUnlocked"
})

local emilyTerryQuest16 = {
    guid = "Questyno_EmilyTerry16",

    awardstask = "Questyno_EmilyTerry16_A", -- TASK REWARD
    dailycode = "Questyno_EmilyTerry",
    lore = { "IGUI_SFQuest_Questyno_EmilyTerry16_Lore" },
    objectives = { {
        guid = "Questyno_EmilyTerry16_A",
        text = "IGUI_SFQuest_Questyno_EmilyTerry16_A",
        icon = "media/textures/Item_AxeStone",
        hidden = false,
        needsitem = "AxeStone;4",
        onobtained = "updateobjective;Questyno_EmilyTerry16;1;Completed;removeitem;AxeStone;4"
    }, { 
        guid = "Questyno_EmilyTerry16_B",
        text = "IGUI_SFQuest_Questyno_EmilyTerry16_B",
        icon = "media/textures/Item_SpearCrafted",
        hidden = false,
        needsitem = "SpearCrafted;4",
        onobtained = "updateobjective;Questyno_EmilyTerry16;2;Completed;removeitem;SpearCrafted;4"
    }, { 
        guid = "Questyno_EmilyTerry16_C",
        text = "IGUI_SFQuest_Questyno_EmilyTerry16_C",
        icon = "media/textures/Item_FlintKnife",
        hidden = false,
        needsitem = "FlintKnife;4",
        onobtained = "updateobjective;Questyno_EmilyTerry16;3;Completed;removeitem;FlintKnife;4"
    } }, -- REQUIRE
    text = "IGUI_SFQuest_Questyno_EmilyTerry16_Text",
    texture = "media/textures/Item_EmilyTerry.png",
    title = "IGUI_SFQuest_Questyno_EmilyTerry16_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, emilyTerryQuest16);

local emilyTerryQuest16A = {
    guid = "Questyno_EmilyTerry16_A",

    awardsrep = "LaResistenza;150", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_EmilyTerry",
    lore = { "IGUI_SFQuest_Questyno_EmilyTerry16_Lore" },
    unlocks = "unlockworldevent;Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry16_Complete",
    text = "IGUI_SFQuest_Questyno_EmilyTerry16_A_Text",
    texture = "media/textures/Item_EmilyTerry.png",
    title = "IGUI_SFQuest_Questyno_EmilyTerry16_Title",
}
table.insert(SFQuest_Database.QuestPool, emilyTerryQuest16A);

local emilyTerryQuest17 = {
    guid = "Questyno_EmilyTerry17",

    awardstask = "Questyno_EmilyTerry17_A", -- TASK REWARD
    dailycode = "Questyno_EmilyTerry",
    lore = { "IGUI_SFQuest_Questyno_EmilyTerry17_Lore" },
    objectives = { {
        guid = "Questyno_EmilyTerry17_A",
        text = "IGUI_SFQuest_Questyno_EmilyTerry17_A",
        icon = "media/textures/Item_ScrapMetal",
        hidden = false,
        needsitem = "Base.ScrapMetal;2",
        onobtained = "updateobjective;Questyno_EmilyTerry17;1;Completed;removeitem;Base.ScrapMetal;2"
    }, { 
        guid = "Questyno_EmilyTerry17_B",
        text = "IGUI_SFQuest_Questyno_EmilyTerry17_B",
        icon = "media/textures/Item_Plank",
        hidden = false,
        needsitem = "Base.Plank;1",
        onobtained = "updateobjective;Questyno_EmilyTerry17;2;Completed;removeitem;Base.Plank;1"
    } }, -- REQUIRE
    text = "IGUI_SFQuest_Questyno_EmilyTerry17_Text",
    texture = "media/textures/Item_EmilyTerry.png",
    title = "IGUI_SFQuest_Questyno_EmilyTerry17_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, emilyTerryQuest17);

local emilyTerryQuest17A = {
    guid = "Questyno_EmilyTerry17_A",

    awardsrep = "LaResistenza;30", -- REP REWARD
    awardsitem = "Base.GardenFork",  -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_EmilyTerry",
    lore = { "IGUI_SFQuest_Questyno_EmilyTerry17_Lore" },
    unlocks = "unlockworldevent;Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry17_Complete",
    text = "IGUI_SFQuest_Questyno_EmilyTerry17_A_Text",
    texture = "media/textures/Item_EmilyTerry.png",
    title = "IGUI_SFQuest_Questyno_EmilyTerry17_Title",
}
table.insert(SFQuest_Database.QuestPool, emilyTerryQuest17A);

local emilyTerryQuest18 = {
    guid = "Questyno_EmilyTerry18",

    awardsrep = "LaResistenza;40", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_EmilyTerry",
    lore = { "IGUI_SFQuest_Questyno_EmilyTerry18_Lore" },
    needsitem = "RippedSheets;50", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry18_Complete",
    text = "IGUI_SFQuest_Questyno_EmilyTerry18_Text",
    texture = "media/textures/Item_EmilyTerry.png",
    title = "IGUI_SFQuest_Questyno_EmilyTerry18_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, emilyTerryQuest18);

local emilyTerryQuest19 = {
    guid = "Questyno_EmilyTerry19",

    awardstask = "Questyno_EmilyTerry19_A", -- TASK REWARD
    dailycode = "Questyno_EmilyTerry",
    lore = { "IGUI_SFQuest_Questyno_EmilyTerry19_Lore" },
    objectives = { {
        guid = "Questyno_EmilyTerry19_A",
        text = "IGUI_SFQuest_Questyno_EmilyTerry19_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoEmilyTerry19;additem;Doll;1"
    } }, -- REQUIRE    
    text = "IGUI_SFQuest_Questyno_EmilyTerry19_Text",
    texture = "media/textures/Item_EmilyTerry.png",
    title = "IGUI_SFQuest_Questyno_EmilyTerry19_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;7901x8180x0:EventoEmilyTerry19;time:50:anim:loot;updateobjective:Questyno_EmilyTerry19:1:Completed",
}
table.insert(SFQuest_Database.QuestPool, emilyTerryQuest19);

local emilyTerryQuest19A = {
    guid = "Questyno_EmilyTerry19_A",

    awardsrep = "LaResistenza;350", -- REP REWARD
    awardsitem = "Base.BerryBlack;5",  -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_EmilyTerry",
    lore = { "IGUI_SFQuest_Questyno_EmilyTerry19_Lore" },
    needsitem = "Doll;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry19_Complete",
    text = "IGUI_SFQuest_Questyno_EmilyTerry19_A_Text",
    texture = "media/textures/Item_EmilyTerry.png",
    title = "IGUI_SFQuest_Questyno_EmilyTerry19_Title",
}
table.insert(SFQuest_Database.QuestPool, emilyTerryQuest19A);

local emilyTerryQuest20 = {
    guid = "Questyno_EmilyTerry20",

    awardsrep = "LaResistenza;80", -- REP REWARD
    awardsitem = "Base.Pot;1;Money;20",  -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_EmilyTerry",
    lore = { "IGUI_SFQuest_Questyno_EmilyTerry20_Lore" },
    needsitem = "PredicateFoodWeight#Base.PotOfSoupRecipe;1;3.5", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry20_Complete",
    text = "IGUI_SFQuest_Questyno_EmilyTerry20_Text",
    texture = "media/textures/Item_EmilyTerry.png",
    title = "IGUI_SFQuest_Questyno_EmilyTerry20_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, emilyTerryQuest20);

local emilyTerryQuest21 = {
    guid = "Questyno_EmilyTerry21",

    awardstask = "Questyno_EmilyTerry21_A", -- TASK REWARD
    dailycode = "Questyno_EmilyTerry",
    lore = { "IGUI_SFQuest_Questyno_EmilyTerry21_Lore" },
    objectives = { {
        guid = "Questyno_EmilyTerry21_A",
        text = "IGUI_SFQuest_Questyno_EmilyTerry21_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoEmilyTerry21;additem;Mattress;2"
    } }, -- REQUIRE
    text = "IGUI_SFQuest_Questyno_EmilyTerry21_Text",
    texture = "media/textures/Item_EmilyTerry.png",
    title = "IGUI_SFQuest_Questyno_EmilyTerry21_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;10934x8492x0:EventoEmilyTerry21;time:50:anim:loot;updateobjective:Questyno_EmilyTerry21:1:Completed",
}
table.insert(SFQuest_Database.QuestPool, emilyTerryQuest21);

local emilyTerryQuest21A = {
    guid = "Questyno_EmilyTerry21_A",

    awardsrep = "LaResistenza;200", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_EmilyTerry",
    lore = { "IGUI_SFQuest_Questyno_EmilyTerry21_Lore" },
    needsitem = "Mattress;2", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry21_Complete",
    text = "IGUI_SFQuest_Questyno_EmilyTerry21_A_Text",
    texture = "media/textures/Item_EmilyTerry.png",
    title = "IGUI_SFQuest_Questyno_EmilyTerry21_Title",
}
table.insert(SFQuest_Database.QuestPool, emilyTerryQuest21A);

local emilyTerryQuest22 = {
    guid = "Questyno_EmilyTerry22",

    awardsrep = "LaResistenza;80", -- REP REWARD
    awardsitem = "Money;10",
    completesound = "levelup",
    dailycode = "Questyno_EmilyTerry",
    lore = { "IGUI_SFQuest_Questyno_EmilyTerry22_Lore" },
    needsitem = "Base.AxeStone;4", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry22_Complete", --commands di unlockworldevent = completequest
    text = "IGUI_SFQuest_Questyno_EmilyTerry22_Text",
    texture = "media/textures/Item_EmilyTerry.png",
    title = "IGUI_SFQuest_Questyno_EmilyTerry22_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, emilyTerryQuest22);

local emilyTerryQuest23 = {
    guid = "Questyno_EmilyTerry23",

    awardsrep = "LaResistenza;50", -- REP REWARD
    awardsitem = "Money;10",
    completesound = "levelup",
    dailycode = "Questyno_EmilyTerry",
    lore = { "IGUI_SFQuest_Questyno_EmilyTerry23_Lore" },
    needsitem = "Base.HammerStone;4", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry23_Complete",
    text = "IGUI_SFQuest_Questyno_EmilyTerry23_Text",
    texture = "media/textures/Item_EmilyTerry.png",
    title = "IGUI_SFQuest_Questyno_EmilyTerry23_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, emilyTerryQuest23);

local emilyTerryQuest24 = {
    guid = "Questyno_EmilyTerry24",

    awardsrep = "LaResistenza;35", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_EmilyTerry",
    lore = { "IGUI_SFQuest_Questyno_EmilyTerry24_Lore" },
    needsitem = "Base.Stone;10", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry24_Complete",
    text = "IGUI_SFQuest_Questyno_EmilyTerry24_Text",
    texture = "media/textures/Item_EmilyTerry.png",
    title = "IGUI_SFQuest_Questyno_EmilyTerry24_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, emilyTerryQuest24);

local emilyTerryQuest25 = {
    guid = "Questyno_EmilyTerry25",

    awardsrep = "LaResistenza;50", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_EmilyTerry",
    lore = { "IGUI_SFQuest_Questyno_EmilyTerry25_Lore" },
    needsitem = "Base.DenimStrips;40", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry25_Complete",
    text = "IGUI_SFQuest_Questyno_EmilyTerry25_Text",
    texture = "media/textures/Item_EmilyTerry.png",
    title = "IGUI_SFQuest_Questyno_EmilyTerry25_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, emilyTerryQuest25);

-- Stagione 2

--[[
            *** RyanParker ***
            Elenco:
                intro. Parla con RyanParker per sbloccare le daily.
                1. Recupera DjackzVinyl @ 11414x11467x0 (300rep, 50$)
                2. Recupera DjackzVinyl @ 6664x11421x0 (300rep, 50$)
                3. Recupera DjackzVinyl @ 11609x6880x1 (300rep, 50$)
                4. Recupera DjackzVinyl @ 7917x10059x0 (300rep, 50$)
                5. Recupera DjackzVinyl @ 5286x9436x0 (300rep, 50$)
                6. Recupera DjackzVinyl @ 39777x7672x0 (600rep, 100$)
                7. Recupera DjackzVinyl @ 5644x11079x0 (600rep, 100$)
                8. Recupera DjackzVinyl @ 7641x10277x0 (600rep, 100$)
                9. Recupera DjackzVinyl @ 7244x7207x1 (600rep, 100$)
                10. Recupera DjackzVinyl @ 8455x11805x0 (600rep, 100$)
                11. Recupera DjackzVinyl @ 4651x6629x0 (600rep, 100$)
                12. Recupera DjackzVinyl @ 3916x9236x0 (600rep, 100$)
                13. Recupera DjackzVinyl @ 6212x4075x0 (600rep, 100$)
                14. Recupera DjackzVinyl @ 4136x12145x0 (600rep, 100$)
                15. Recupera DjackzVinyl @ 6469x10257x0 (600rep, 100$)
                16. Recupera DjackzVinyl @ 8337x13743x1 (1200rep, 200$)
                17. Recupera DjackzVinyl @ 5018x5846x0 (1200rep, 200$)
                18. Recupera DjackzVinyl @ 12267x12122x0 (1200rep, 200$)
                19. Recupera DjackzVinyl @ 13761x2622x0 (1200rep, 200$)
                20. Recupera DjackzVinyl @ 12371x1984x1 (1200rep, 200$)
]]

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RyanParker_Intro",

    awardsrep = "RyanParker;100", -- REP REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_RyanParker_Intro_Lore" },
    ondone = "randomcodedworldfrompool;Questyno_RyanParker;Questyno;RyanParker",
    text = "IGUI_SFQuest_Questyno_RyanParker_Intro_Text",
    texture = "media/textures/Item_RyanParker.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_RyanParker;SFQuest_Questyno_RyanParker_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_RyanParker_Intro_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RyanParker1",
    awardstask = "Questyno_RyanParker1_A",
    dailycode = "Questyno_RyanParker",
    lore = { "IGUI_SFQuest_Questyno_RyanParker1_Lore" },
    objectives = { {
        guid = "Questyno_RyanParker1_A",
        text = "IGUI_SFQuest_Questyno_RyanParker1_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoRyanParker1;additem;DjackzVinyl;1",
    } },
    text = "IGUI_SFQuest_Questyno_RyanParker1_Text",
    texture = "media/textures/Item_RyanParker.png",
    title = "IGUI_SFQuest_Questyno_RyanParker1_Title",
    unlocks = "clickevent;11414x11467x0:EventoRyanParker1;time:50:anim:loot;updateobjective:Questyno_RyanParker1:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RyanParker1_A",
    awardsrep = "LaResistenza;300",
    awardsitem = "Money;50",
    completesound = "levelup",
    dailycode = "Questyno_RyanParker",
    lore = { "IGUI_SFQuest_Questyno_RyanParker1_Lore" },
    needsitem = "DjackzVinyl;1",
    onobtained = "unlockworldevent;Questyno_RyanParker;SFQuest_Questyno_RyanParker1_Complete",
    text = "IGUI_SFQuest_Questyno_RyanParker1_A_Text",
    texture = "media/textures/Item_RyanParker.png",
    title = "IGUI_SFQuest_Questyno_RyanParker1_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RyanParker2",
    awardstask = "Questyno_RyanParker2_A",
    dailycode = "Questyno_RyanParker",
    lore = { "IGUI_SFQuest_Questyno_RyanParker2_Lore" },
    objectives = { {
        guid = "Questyno_RyanParker2_A",
        text = "IGUI_SFQuest_Questyno_RyanParker2_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoRyanParker2;additem;DjackzVinyl;1",
    } },
    text = "IGUI_SFQuest_Questyno_RyanParker2_Text",
    texture = "media/textures/Item_RyanParker.png",
    title = "IGUI_SFQuest_Questyno_RyanParker2_Title",
    unlocks = "clickevent;6664x11421x0:EventoRyanParker2;time:50:anim:loot;updateobjective:Questyno_RyanParker2:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RyanParker2_A",
    awardsrep = "LaResistenza;300",
    awardsitem = "Money;50",
    completesound = "levelup",
    dailycode = "Questyno_RyanParker",
    lore = { "IGUI_SFQuest_Questyno_RyanParker2_Lore" },
    needsitem = "DjackzVinyl;1",
    onobtained = "unlockworldevent;Questyno_RyanParker;SFQuest_Questyno_RyanParker2_Complete",
    text = "IGUI_SFQuest_Questyno_RyanParker2_A_Text",
    texture = "media/textures/Item_RyanParker.png",
    title = "IGUI_SFQuest_Questyno_RyanParker2_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RyanParker3",
    awardstask = "Questyno_RyanParker3_A",
    dailycode = "Questyno_RyanParker",
    lore = { "IGUI_SFQuest_Questyno_RyanParker3_Lore" },
    objectives = { {
        guid = "Questyno_RyanParker3_A",
        text = "IGUI_SFQuest_Questyno_RyanParker3_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoRyanParker3;additem;DjackzVinyl;1",
    } },
    text = "IGUI_SFQuest_Questyno_RyanParker3_Text",
    texture = "media/textures/Item_RyanParker.png",
    title = "IGUI_SFQuest_Questyno_RyanParker3_Title",
    unlocks = "clickevent;11609x6880x1:EventoRyanParker3;time:50:anim:loot;updateobjective:Questyno_RyanParker3:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RyanParker3_A",
    awardsrep = "LaResistenza;300",
    awardsitem = "Money;50",
    completesound = "levelup",
    dailycode = "Questyno_RyanParker",
    lore = { "IGUI_SFQuest_Questyno_RyanParker3_Lore" },
    needsitem = "DjackzVinyl;1",
    onobtained = "unlockworldevent;Questyno_RyanParker;SFQuest_Questyno_RyanParker3_Complete",
    text = "IGUI_SFQuest_Questyno_RyanParker3_A_Text",
    texture = "media/textures/Item_RyanParker.png",
    title = "IGUI_SFQuest_Questyno_RyanParker3_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RyanParker4",
    awardstask = "Questyno_RyanParker4_A",
    dailycode = "Questyno_RyanParker",
    lore = { "IGUI_SFQuest_Questyno_RyanParker4_Lore" },
    objectives = { {
        guid = "Questyno_RyanParker4_A",
        text = "IGUI_SFQuest_Questyno_RyanParker4_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoRyanParker4;additem;DjackzVinyl;1",
    } },
    text = "IGUI_SFQuest_Questyno_RyanParker4_Text",
    texture = "media/textures/Item_RyanParker.png",
    title = "IGUI_SFQuest_Questyno_RyanParker4_Title",
    unlocks = "clickevent;7917x10059x0:EventoRyanParker4;time:50:anim:loot;updateobjective:Questyno_RyanParker4:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RyanParker4_A",
    awardsrep = "LaResistenza;300",
    awardsitem = "Money;50",
    completesound = "levelup",
    dailycode = "Questyno_RyanParker",
    lore = { "IGUI_SFQuest_Questyno_RyanParker4_Lore" },
    needsitem = "DjackzVinyl;1",
    onobtained = "unlockworldevent;Questyno_RyanParker;SFQuest_Questyno_RyanParker4_Complete",
    text = "IGUI_SFQuest_Questyno_RyanParker4_A_Text",
    texture = "media/textures/Item_RyanParker.png",
    title = "IGUI_SFQuest_Questyno_RyanParker4_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RyanParker5",
    awardstask = "Questyno_RyanParker5_A",
    dailycode = "Questyno_RyanParker",
    lore = { "IGUI_SFQuest_Questyno_RyanParker5_Lore" },
    objectives = { {
        guid = "Questyno_RyanParker5_A",
        text = "IGUI_SFQuest_Questyno_RyanParker5_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoRyanParker5;additem;DjackzVinyl;1",
    } },
    text = "IGUI_SFQuest_Questyno_RyanParker5_Text",
    texture = "media/textures/Item_RyanParker.png",
    title = "IGUI_SFQuest_Questyno_RyanParker5_Title",
    unlocks = "clickevent;5286x9436x0:EventoRyanParker5;time:50:anim:loot;updateobjective:Questyno_RyanParker5:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RyanParker5_A",
    awardsrep = "LaResistenza;300",
    awardsitem = "Money;50",
    completesound = "levelup",
    dailycode = "Questyno_RyanParker",
    lore = { "IGUI_SFQuest_Questyno_RyanParker5_Lore" },
    needsitem = "DjackzVinyl;1",
    onobtained = "unlockworldevent;Questyno_RyanParker;SFQuest_Questyno_RyanParker5_Complete",
    text = "IGUI_SFQuest_Questyno_RyanParker5_A_Text",
    texture = "media/textures/Item_RyanParker.png",
    title = "IGUI_SFQuest_Questyno_RyanParker5_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RyanParker6",
    awardstask = "Questyno_RyanParker6_A",
    dailycode = "Questyno_RyanParker",
    lore = { "IGUI_SFQuest_Questyno_RyanParker6_Lore" },
    objectives = { {
        guid = "Questyno_RyanParker6_A",
        text = "IGUI_SFQuest_Questyno_RyanParker6_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoRyanParker6;additem;DjackzVinyl;1",
    } },
    text = "IGUI_SFQuest_Questyno_RyanParker6_Text",
    texture = "media/textures/Item_RyanParker.png",
    title = "IGUI_SFQuest_Questyno_RyanParker6_Title",
    unlocks = "clickevent;39777x7672x0:EventoRyanParker6;time:50:anim:loot;updateobjective:Questyno_RyanParker6:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RyanParker6_A",
    awardsrep = "LaResistenza;600",
    awardsitem = "Money;100",
    completesound = "levelup",
    dailycode = "Questyno_RyanParker",
    lore = { "IGUI_SFQuest_Questyno_RyanParker6_Lore" },
    needsitem = "DjackzVinyl;1",
    onobtained = "unlockworldevent;Questyno_RyanParker;SFQuest_Questyno_RyanParker6_Complete",
    text = "IGUI_SFQuest_Questyno_RyanParker6_A_Text",
    texture = "media/textures/Item_RyanParker.png",
    title = "IGUI_SFQuest_Questyno_RyanParker6_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RyanParker7",
    awardstask = "Questyno_RyanParker7_A",
    dailycode = "Questyno_RyanParker",
    lore = { "IGUI_SFQuest_Questyno_RyanParker7_Lore" },
    objectives = { {
        guid = "Questyno_RyanParker7_A",
        text = "IGUI_SFQuest_Questyno_RyanParker7_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoRyanParker7;additem;DjackzVinyl;1",
    } },
    text = "IGUI_SFQuest_Questyno_RyanParker7_Text",
    texture = "media/textures/Item_RyanParker.png",
    title = "IGUI_SFQuest_Questyno_RyanParker7_Title",
    unlocks = "clickevent;5644x11079x0:EventoRyanParker7;time:50:anim:loot;updateobjective:Questyno_RyanParker7:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RyanParker7_A",
    awardsrep = "LaResistenza;600",
    awardsitem = "Money;100",
    completesound = "levelup",
    dailycode = "Questyno_RyanParker",
    lore = { "IGUI_SFQuest_Questyno_RyanParker7_Lore" },
    needsitem = "DjackzVinyl;1",
    onobtained = "unlockworldevent;Questyno_RyanParker;SFQuest_Questyno_RyanParker7_Complete",
    text = "IGUI_SFQuest_Questyno_RyanParker7_A_Text",
    texture = "media/textures/Item_RyanParker.png",
    title = "IGUI_SFQuest_Questyno_RyanParker7_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RyanParker8",
    awardstask = "Questyno_RyanParker8_A",
    dailycode = "Questyno_RyanParker",
    lore = { "IGUI_SFQuest_Questyno_RyanParker8_Lore" },
    objectives = { {
        guid = "Questyno_RyanParker8_A",
        text = "IGUI_SFQuest_Questyno_RyanParker8_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoRyanParker8;additem;DjackzVinyl;1",
    } },
    text = "IGUI_SFQuest_Questyno_RyanParker8_Text",
    texture = "media/textures/Item_RyanParker.png",
    title = "IGUI_SFQuest_Questyno_RyanParker8_Title",
    unlocks = "clickevent;7641x10277x0:EventoRyanParker8;time:50:anim:loot;updateobjective:Questyno_RyanParker8:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RyanParker8_A",
    awardsrep = "LaResistenza;600",
    awardsitem = "Money;100",
    completesound = "levelup",
    dailycode = "Questyno_RyanParker",
    lore = { "IGUI_SFQuest_Questyno_RyanParker8_Lore" },
    needsitem = "DjackzVinyl;1",
    onobtained = "unlockworldevent;Questyno_RyanParker;SFQuest_Questyno_RyanParker8_Complete",
    text = "IGUI_SFQuest_Questyno_RyanParker8_A_Text",
    texture = "media/textures/Item_RyanParker.png",
    title = "IGUI_SFQuest_Questyno_RyanParker8_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RyanParker9",
    awardstask = "Questyno_RyanParker9_A",
    dailycode = "Questyno_RyanParker",
    lore = { "IGUI_SFQuest_Questyno_RyanParker9_Lore" },
    objectives = { {
        guid = "Questyno_RyanParker9_A",
        text = "IGUI_SFQuest_Questyno_RyanParker9_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoRyanParker9;additem;DjackzVinyl;1",
    } },
    text = "IGUI_SFQuest_Questyno_RyanParker9_Text",
    texture = "media/textures/Item_RyanParker.png",
    title = "IGUI_SFQuest_Questyno_RyanParker9_Title",
    unlocks = "clickevent;7244x7207x1:EventoRyanParker9;time:50:anim:loot;updateobjective:Questyno_RyanParker9:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RyanParker9_A",
    awardsrep = "LaResistenza;600",
    awardsitem = "Money;100",
    completesound = "levelup",
    dailycode = "Questyno_RyanParker",
    lore = { "IGUI_SFQuest_Questyno_RyanParker9_Lore" },
    needsitem = "DjackzVinyl;1",
    onobtained = "unlockworldevent;Questyno_RyanParker;SFQuest_Questyno_RyanParker9_Complete",
    text = "IGUI_SFQuest_Questyno_RyanParker9_A_Text",
    texture = "media/textures/Item_RyanParker.png",
    title = "IGUI_SFQuest_Questyno_RyanParker9_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RyanParker10",
    awardstask = "Questyno_RyanParker10_A",
    dailycode = "Questyno_RyanParker",
    lore = { "IGUI_SFQuest_Questyno_RyanParker10_Lore" },
    objectives = { {
        guid = "Questyno_RyanParker10_A",
        text = "IGUI_SFQuest_Questyno_RyanParker10_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoRyanParker10;additem;DjackzVinyl;1",
    } },
    text = "IGUI_SFQuest_Questyno_RyanParker10_Text",
    texture = "media/textures/Item_RyanParker.png",
    title = "IGUI_SFQuest_Questyno_RyanParker10_Title",
    unlocks = "clickevent;8455x11805x0:EventoRyanParker10;time:50:anim:loot;updateobjective:Questyno_RyanParker10:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RyanParker10_A",
    awardsrep = "LaResistenza;600",
    awardsitem = "Money;100",
    completesound = "levelup",
    dailycode = "Questyno_RyanParker",
    lore = { "IGUI_SFQuest_Questyno_RyanParker10_Lore" },
    needsitem = "DjackzVinyl;1",
    onobtained = "unlockworldevent;Questyno_RyanParker;SFQuest_Questyno_RyanParker10_Complete",
    text = "IGUI_SFQuest_Questyno_RyanParker10_A_Text",
    texture = "media/textures/Item_RyanParker.png",
    title = "IGUI_SFQuest_Questyno_RyanParker10_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RyanParker11",
    awardstask = "Questyno_RyanParker11_A",
    dailycode = "Questyno_RyanParker",
    lore = { "IGUI_SFQuest_Questyno_RyanParker11_Lore" },
    objectives = { {
        guid = "Questyno_RyanParker11_A",
        text = "IGUI_SFQuest_Questyno_RyanParker11_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoRyanParker11;additem;DjackzVinyl;1",
    } },
    text = "IGUI_SFQuest_Questyno_RyanParker11_Text",
    texture = "media/textures/Item_RyanParker.png",
    title = "IGUI_SFQuest_Questyno_RyanParker11_Title",
    unlocks = "clickevent;4651x6629x0:EventoRyanParker11;time:50:anim:loot;updateobjective:Questyno_RyanParker11:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RyanParker11_A",
    awardsrep = "LaResistenza;600",
    awardsitem = "Money;100",
    completesound = "levelup",
    dailycode = "Questyno_RyanParker",
    lore = { "IGUI_SFQuest_Questyno_RyanParker11_Lore" },
    needsitem = "DjackzVinyl;1",
    onobtained = "unlockworldevent;Questyno_RyanParker;SFQuest_Questyno_RyanParker11_Complete",
    text = "IGUI_SFQuest_Questyno_RyanParker11_A_Text",
    texture = "media/textures/Item_RyanParker.png",
    title = "IGUI_SFQuest_Questyno_RyanParker11_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RyanParker12",
    awardstask = "Questyno_RyanParker12_A",
    dailycode = "Questyno_RyanParker",
    lore = { "IGUI_SFQuest_Questyno_RyanParker12_Lore" },
    objectives = { {
        guid = "Questyno_RyanParker12_A",
        text = "IGUI_SFQuest_Questyno_RyanParker12_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoRyanParker12;additem;DjackzVinyl;1",
    } },
    text = "IGUI_SFQuest_Questyno_RyanParker12_Text",
    texture = "media/textures/Item_RyanParker.png",
    title = "IGUI_SFQuest_Questyno_RyanParker12_Title",
    unlocks = "clickevent;3916x9236x0:EventoRyanParker12;time:50:anim:loot;updateobjective:Questyno_RyanParker12:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RyanParker12_A",
    awardsrep = "LaResistenza;600",
    awardsitem = "Money;100",
    completesound = "levelup",
    dailycode = "Questyno_RyanParker",
    lore = { "IGUI_SFQuest_Questyno_RyanParker12_Lore" },
    needsitem = "DjackzVinyl;1",
    onobtained = "unlockworldevent;Questyno_RyanParker;SFQuest_Questyno_RyanParker12_Complete",
    text = "IGUI_SFQuest_Questyno_RyanParker12_A_Text",
    texture = "media/textures/Item_RyanParker.png",
    title = "IGUI_SFQuest_Questyno_RyanParker12_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RyanParker13",
    awardstask = "Questyno_RyanParker13_A",
    dailycode = "Questyno_RyanParker",
    lore = { "IGUI_SFQuest_Questyno_RyanParker13_Lore" },
    objectives = { {
        guid = "Questyno_RyanParker13_A",
        text = "IGUI_SFQuest_Questyno_RyanParker13_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoRyanParker13;additem;DjackzVinyl;1",
    } },
    text = "IGUI_SFQuest_Questyno_RyanParker13_Text",
    texture = "media/textures/Item_RyanParker.png",
    title = "IGUI_SFQuest_Questyno_RyanParker13_Title",
    unlocks = "clickevent;6212x4075x2:EventoRyanParker13;time:50:anim:loot;updateobjective:Questyno_RyanParker13:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RyanParker13_A",
    awardsrep = "LaResistenza;600",
    awardsitem = "Money;100",
    completesound = "levelup",
    dailycode = "Questyno_RyanParker",
    lore = { "IGUI_SFQuest_Questyno_RyanParker13_Lore" },
    needsitem = "DjackzVinyl;1",
    onobtained = "unlockworldevent;Questyno_RyanParker;SFQuest_Questyno_RyanParker13_Complete",
    text = "IGUI_SFQuest_Questyno_RyanParker13_A_Text",
    texture = "media/textures/Item_RyanParker.png",
    title = "IGUI_SFQuest_Questyno_RyanParker13_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RyanParker14",
    awardstask = "Questyno_RyanParker14_A",
    dailycode = "Questyno_RyanParker",
    lore = { "IGUI_SFQuest_Questyno_RyanParker14_Lore" },
    objectives = { {
        guid = "Questyno_RyanParker14_A",
        text = "IGUI_SFQuest_Questyno_RyanParker14_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoRyanParker14;additem;DjackzVinyl;1",
    } },
    text = "IGUI_SFQuest_Questyno_RyanParker14_Text",
    texture = "media/textures/Item_RyanParker.png",
    title = "IGUI_SFQuest_Questyno_RyanParker14_Title",
    unlocks = "clickevent;4136x12145x0:EventoRyanParker14;time:50:anim:loot;updateobjective:Questyno_RyanParker14:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RyanParker14_A",
    awardsrep = "LaResistenza;600",
    awardsitem = "Money;100",
    completesound = "levelup",
    dailycode = "Questyno_RyanParker",
    lore = { "IGUI_SFQuest_Questyno_RyanParker14_Lore" },
    needsitem = "DjackzVinyl;1",
    onobtained = "unlockworldevent;Questyno_RyanParker;SFQuest_Questyno_RyanParker14_Complete",
    text = "IGUI_SFQuest_Questyno_RyanParker14_A_Text",
    texture = "media/textures/Item_RyanParker.png",
    title = "IGUI_SFQuest_Questyno_RyanParker14_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RyanParker15",
    awardstask = "Questyno_RyanParker15_A",
    dailycode = "Questyno_RyanParker",
    lore = { "IGUI_SFQuest_Questyno_RyanParker15_Lore" },
    objectives = { {
        guid = "Questyno_RyanParker15_A",
        text = "IGUI_SFQuest_Questyno_RyanParker15_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoRyanParker15;additem;DjackzVinyl;1",
    } },
    text = "IGUI_SFQuest_Questyno_RyanParker15_Text",
    texture = "media/textures/Item_RyanParker.png",
    title = "IGUI_SFQuest_Questyno_RyanParker15_Title",
    unlocks = "clickevent;6469x10257x0:EventoRyanParker15;time:50:anim:loot;updateobjective:Questyno_RyanParker15:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RyanParker15_A",
    awardsrep = "LaResistenza;600",
    awardsitem = "Money;100",
    completesound = "levelup",
    dailycode = "Questyno_RyanParker",
    lore = { "IGUI_SFQuest_Questyno_RyanParker15_Lore" },
    needsitem = "DjackzVinyl;1",
    onobtained = "unlockworldevent;Questyno_RyanParker;SFQuest_Questyno_RyanParker15_Complete",
    text = "IGUI_SFQuest_Questyno_RyanParker15_A_Text",
    texture = "media/textures/Item_RyanParker.png",
    title = "IGUI_SFQuest_Questyno_RyanParker15_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RyanParker16",
    awardstask = "Questyno_RyanParker16_A",
    dailycode = "Questyno_RyanParker",
    lore = { "IGUI_SFQuest_Questyno_RyanParker16_Lore" },
    objectives = { {
        guid = "Questyno_RyanParker16_A",
        text = "IGUI_SFQuest_Questyno_RyanParker16_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoRyanParker16;additem;DjackzVinyl;1",
    } },
    text = "IGUI_SFQuest_Questyno_RyanParker16_Text",
    texture = "media/textures/Item_RyanParker.png",
    title = "IGUI_SFQuest_Questyno_RyanParker16_Title",
    unlocks = "clickevent;8337x13743x1:EventoRyanParker16;time:50:anim:loot;updateobjective:Questyno_RyanParker16:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RyanParker16_A",
    awardsrep = "LaResistenza;1200",
    awardsitem = "Money;200",
    completesound = "levelup",
    dailycode = "Questyno_RyanParker",
    lore = { "IGUI_SFQuest_Questyno_RyanParker16_Lore" },
    needsitem = "DjackzVinyl;1",
    onobtained = "unlockworldevent;Questyno_RyanParker;SFQuest_Questyno_RyanParker16_Complete",
    text = "IGUI_SFQuest_Questyno_RyanParker16_A_Text",
    texture = "media/textures/Item_RyanParker.png",
    title = "IGUI_SFQuest_Questyno_RyanParker16_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RyanParker17",
    awardstask = "Questyno_RyanParker17_A",
    dailycode = "Questyno_RyanParker",
    lore = { "IGUI_SFQuest_Questyno_RyanParker17_Lore" },
    objectives = { {
        guid = "Questyno_RyanParker17_A",
        text = "IGUI_SFQuest_Questyno_RyanParker17_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoRyanParker17;additem;DjackzVinyl;1",
    } },
    text = "IGUI_SFQuest_Questyno_RyanParker17_Text",
    texture = "media/textures/Item_RyanParker.png",
    title = "IGUI_SFQuest_Questyno_RyanParker17_Title",
    unlocks = "clickevent;5018x5846x0:EventoRyanParker17;time:50:anim:loot;updateobjective:Questyno_RyanParker17:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RyanParker17_A",
    awardsrep = "LaResistenza;1200",
    awardsitem = "Money;200",
    completesound = "levelup",
    dailycode = "Questyno_RyanParker",
    lore = { "IGUI_SFQuest_Questyno_RyanParker17_Lore" },
    needsitem = "DjackzVinyl;1",
    onobtained = "unlockworldevent;Questyno_RyanParker;SFQuest_Questyno_RyanParker17_Complete",
    text = "IGUI_SFQuest_Questyno_RyanParker17_A_Text",
    texture = "media/textures/Item_RyanParker.png",
    title = "IGUI_SFQuest_Questyno_RyanParker17_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RyanParker18",
    awardstask = "Questyno_RyanParker18_A",
    dailycode = "Questyno_RyanParker",
    lore = { "IGUI_SFQuest_Questyno_RyanParker18_Lore" },
    objectives = { {
        guid = "Questyno_RyanParker18_A",
        text = "IGUI_SFQuest_Questyno_RyanParker18_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoRyanParker18;additem;DjackzVinyl;1",
    } },
    text = "IGUI_SFQuest_Questyno_RyanParker18_Text",
    texture = "media/textures/Item_RyanParker.png",
    title = "IGUI_SFQuest_Questyno_RyanParker18_Title",
    unlocks = "clickevent;12267x12122x0:EventoRyanParker18;time:50:anim:loot;updateobjective:Questyno_RyanParker18:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RyanParker18_A",
    awardsrep = "LaResistenza;1200",
    awardsitem = "Money;200",
    completesound = "levelup",
    dailycode = "Questyno_RyanParker",
    lore = { "IGUI_SFQuest_Questyno_RyanParker18_Lore" },
    needsitem = "DjackzVinyl;1",
    onobtained = "unlockworldevent;Questyno_RyanParker;SFQuest_Questyno_RyanParker18_Complete",
    text = "IGUI_SFQuest_Questyno_RyanParker18_A_Text",
    texture = "media/textures/Item_RyanParker.png",
    title = "IGUI_SFQuest_Questyno_RyanParker18_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RyanParker19",
    awardstask = "Questyno_RyanParker19_A",
    dailycode = "Questyno_RyanParker",
    lore = { "IGUI_SFQuest_Questyno_RyanParker19_Lore" },
    objectives = { {
        guid = "Questyno_RyanParker19_A",
        text = "IGUI_SFQuest_Questyno_RyanParker19_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoRyanParker19;additem;DjackzVinyl;1",
    } },
    text = "IGUI_SFQuest_Questyno_RyanParker19_Text",
    texture = "media/textures/Item_RyanParker.png",
    title = "IGUI_SFQuest_Questyno_RyanParker19_Title",
    unlocks = "clickevent;13761x2622x0:EventoRyanParker19;time:50:anim:loot;updateobjective:Questyno_RyanParker19:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RyanParker19_A",
    awardsrep = "LaResistenza;1200",
    awardsitem = "Money;200",
    completesound = "levelup",
    dailycode = "Questyno_RyanParker",
    lore = { "IGUI_SFQuest_Questyno_RyanParker19_Lore" },
    needsitem = "DjackzVinyl;1",
    onobtained = "unlockworldevent;Questyno_RyanParker;SFQuest_Questyno_RyanParker19_Complete",
    text = "IGUI_SFQuest_Questyno_RyanParker19_A_Text",
    texture = "media/textures/Item_RyanParker.png",
    title = "IGUI_SFQuest_Questyno_RyanParker19_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RyanParker20",
    awardstask = "Questyno_RyanParker20_A",
    dailycode = "Questyno_RyanParker",
    lore = { "IGUI_SFQuest_Questyno_RyanParker20_Lore" },
    objectives = { {
        guid = "Questyno_RyanParker20_A",
        text = "IGUI_SFQuest_Questyno_RyanParker20_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoRyanParker20;additem;DjackzVinyl;1",
    } },
    text = "IGUI_SFQuest_Questyno_RyanParker20_Text",
    texture = "media/textures/Item_RyanParker.png",
    title = "IGUI_SFQuest_Questyno_RyanParker20_Title",
    unlocks = "clickevent;12371x1984x1:EventoRyanParker20;time:50:anim:loot;updateobjective:Questyno_RyanParker20:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RyanParker20_A",
    awardsrep = "LaResistenza;1200",
    awardsitem = "Money;200",
    completesound = "levelup",
    dailycode = "Questyno_RyanParker",
    lore = { "IGUI_SFQuest_Questyno_RyanParker20_Lore" },
    needsitem = "DjackzVinyl;1",
    onobtained = "unlockworldevent;Questyno_RyanParker;SFQuest_Questyno_RyanParker20_Complete",
    text = "IGUI_SFQuest_Questyno_RyanParker20_A_Text",
    texture = "media/textures/Item_RyanParker.png",
    title = "IGUI_SFQuest_Questyno_RyanParker20_Title",
});























-- Jacob Turner


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

-- DAILY QUESTS (JacobTurner) 
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
    unlocks = "clickevent;3810x12530x0:EventoJacobTurner1;anim:loot:time:50;updateobjective:Questyno_JacobTurner1:1:Completed"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JacobTurner1_A",

    awardsrep = "LaResistenza;700", -- REP REWARD
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
-- DAILY QUESTS (JacobTurner) 
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

    awardsrep = "LaResistenza;500", -- REP REWARD
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
-- DAILY QUESTS (JacobTurner) 
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

    awardsrep = "LaResistenza;1250", -- REP REWARD
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
-- DAILY QUESTS (JacobTurner) 
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

    awardsrep = "LaResistenza;700", -- REP REWARD
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
-- DAILY QUESTS (JacobTurner) 
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

    awardsrep = "LaResistenza;1800", -- REP REWARD
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
-- DAILY QUESTS (JacobTurner) 
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

    awardsrep = "LaResistenza;1600", -- REP REWARD
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
-- DAILY QUESTS (JacobTurner) 
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

    awardsrep = "LaResistenza;1200", -- REP REWARD
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
-- DAILY QUESTS (JacobTurner) 
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

    awardsrep = "LaResistenza;1200", -- REP REWARD
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
-- DAILY QUESTS (JacobTurner) 
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

    awardsrep = "LaResistenza;1200", -- REP REWARD
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
-- DAILY QUESTS (JacobTurner) 
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

    awardsrep = "LaResistenza;1600", -- REP REWARD
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
-- DAILY QUESTS (JacobTurner) 
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

    awardsrep = "LaResistenza;1850", -- REP REWARD
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
-- DAILY QUESTS (JacobTurner) 
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

    awardsrep = "LaResistenza;1850", -- REP REWARD
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
-- DAILY QUESTS (JacobTurner) 
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

    awardsrep = "LaResistenza;850", -- REP REWARD
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
-- DAILY QUESTS (JacobTurner) 
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

    awardsrep = "LaResistenza;1250", -- REP REWARD
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
-- DAILY QUESTS (JacobTurner) 
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

    awardsrep = "LaResistenza;1250", -- REP REWARD
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

--[[
            *** MalachiBlevins ***
            Elenco:
                intro. Parla con MalachiBlevins per sbloccare le daily.
                1. Recupera Newspaper;100 (650rep)
                2. Recupera ComicBook;80 (550rep)
                3. Recupera Magazine;80 (500rep)
]]--

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MalachiBlevins_Intro",

    awardsrep = "MalachiBlevins;100", -- REP REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_MalachiBlevins_Intro_Lore" },
    text = "IGUI_SFQuest_Questyno_MalachiBlevins_Intro_Text",
    texture = "media/textures/Item_MalachiBlevins.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_MalachiBlevins;SFQuest_Questyno_MalachiBlevins_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_MalachiBlevins_Intro_Title",
});

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_MalachiBlevins1",

    awardsrep = "LaResistenza;650", -- REP REWARD
    needsitem = "Newspaper;100", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_MalachiBlevins",
    lore = { "IGUI_SFQuest_Questyno_MalachiBlevins1_Lore" },
    text = "IGUI_SFQuest_Questyno_MalachiBlevins1_Text",
    texture = "media/textures/Item_MalachiBlevins.png",
    onobtained = "unlockworldevent;Questyno_MalachiBlevins;SFQuest_Questyno_MalachiBlevins1_Complete",
    title = "IGUI_SFQuest_Questyno_MalachiBlevins1_Title",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_MalachiBlevins2",

    awardsrep = "LaResistenza;550", -- REP REWARD
    needsitem = "ComicBook;80", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_MalachiBlevins",
    lore = { "IGUI_SFQuest_Questyno_MalachiBlevins2_Lore" },
    text = "IGUI_SFQuest_Questyno_MalachiBlevins2_Text",
    texture = "media/textures/Item_MalachiBlevins.png",
    onobtained = "unlockworldevent;Questyno_MalachiBlevins;SFQuest_Questyno_MalachiBlevins2_Complete",
    title = "IGUI_SFQuest_Questyno_MalachiBlevins2_Title",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_MalachiBlevins3",

    awardsrep = "LaResistenza;500", -- REP REWARD
    needsitem = "Magazine;80", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_MalachiBlevins",
    lore = { "IGUI_SFQuest_Questyno_MalachiBlevins3_Lore" },
    text = "IGUI_SFQuest_Questyno_MalachiBlevins3_Text",
    texture = "media/textures/Item_MalachiBlevins.png",
    onobtained = "unlockworldevent;Questyno_MalachiBlevins;SFQuest_Questyno_MalachiBlevins3_Complete",
    title = "IGUI_SFQuest_Questyno_MalachiBlevins3_Title",
    unlockedsound = "QuestUnlocked"
})

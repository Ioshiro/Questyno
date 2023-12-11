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

local pozzoIntro = {
    guid = "Questyno_MikePozzo_Intro",

    awardsrep = "LaResistenza;1", -- REP REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo_Intro_Lore" },
    ondone = "randomcodedworldfrompool;Questyno_MikePozzo;Questyno;MikePozzo",
    text = "IGUI_SFQuest_Questyno_MikePozzo_Intro_Text",
    texture = "Item_Money",
    unique = true,
    unlocks = "unlockworldevent;Questyno_MikePozzo;SFQuest_Questyno_MikePozzo_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_MikePozzo_Intro_Title",
}
table.insert(SFQuest_Database.QuestPool, pozzoIntro);

local pozzoQuest1 = {
    guid = "Questyno_MikePozzo1",

    awardsrep = "LaResistenza;25",      -- REP REWARD
    awardsitem = "Money;10;Base.Pot;1", -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo1_Lore" },
    needsitem = "Base.PotOfSoupRecipe;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_MikePozzo;SFQuest_Questyno_MikePozzo1_Complete",
    text = "IGUI_SFQuest_Questyno_MikePozzo1_Text",
    texture = "Item_Pizza",
    title = "IGUI_SFQuest_Questyno_MikePozzo1_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, pozzoQuest1);

local pozzoQuest2 = {
    guid = "Questyno_MikePozzo2",

    awardsrep = "LaResistenza;30",      -- REP REWARD
    awardsitem = "Money;15;Base.Pan;1", -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo2_Lore" },
    needsitem = "Base.PanFriedVegetables;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_MikePozzo;SFQuest_Questyno_MikePozzo2_Complete",
    text = "IGUI_SFQuest_Questyno_MikePozzo2_Text",
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_MikePozzo2_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, pozzoQuest2);

local pozzoQuest3 = {
    guid = "Questyno_MikePozzo3",

    awardsrep = "LaResistenza;100", -- REP REWARD
    awardsitem = "Money;20",        -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo3_Lore" },
    needsitem = "farming.Cabbage;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_MikePozzo;SFQuest_Questyno_MikePozzo3_Complete",
    text = "IGUI_SFQuest_Questyno_MikePozzo3_Text",
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_MikePozzo3_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, pozzoQuest3);

local pozzoQuest4 = {
    guid = "Questyno_MikePozzo4",

    awardsrep = "LaResistenza;80", -- REP REWARD
    awardsitem = "Base.Bowl;1",    -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo4_Lore" },
    needsitem = "Base.Salad;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_MikePozzo;SFQuest_Questyno_MikePozzo4_Complete",
    text = "IGUI_SFQuest_Questyno_MikePozzo4_Text",
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_MikePozzo4_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, pozzoQuest4);

local pozzoQuest5 = {
    guid = "Questyno_MikePozzo5",

    awardstask = "Questyno_MikePozzo5_A", -- TASK REWARD
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo5_Lore" },
    objectives = { {
        guid = "Questyno_MikePozzo5_A",
        text = "IGUI_SFQuest_Questyno_MikePozzo5_A",
        icon = "Item_Butter",
        hidden = false,
        oncompleted = "removeclickevent;EventoMikePozzo5;additem;Butter;1"
    } }, -- REQUIRE
    text = "IGUI_SFQuest_Questyno_MikePozzo5_Text",
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_MikePozzo5_Title",
    unlockedsound = "QuestUnlocked",
    unlocks =
    "clickevent;8145x11482x0:EventoMikePozzo5;time:50:anim:loot;updateobjective:Questyno_MikePozzo5:1:Completed",
}
table.insert(SFQuest_Database.QuestPool, pozzoQuest5);

local pozzoQuest5A = {
    guid = "Questyno_MikePozzo5_A",

    awardsrep = "LaResistenza;35", -- REP REWARD
    awardsitem = "Money;50",       -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo5_Lore" },
    needsitem = "Base.Butter;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_MikePozzo;SFQuest_Questyno_MikePozzo5_Complete",
    text = "IGUI_SFQuest_Questyno_MikePozzo5_A_Text",
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_MikePozzo5_Title",
}
table.insert(SFQuest_Database.QuestPool, pozzoQuest5A);

local pozzoQuest6 = {
    guid = "Questyno_MikePozzo6",

    awardstask = "Questyno_MikePozzo6_A", -- TASK REWARD
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo6_Lore" },
    objectives = { {
        guid = "Questyno_MikePozzo6_A",
        text = "IGUI_SFQuest_Questyno_MikePozzo6_A",
        icon = "Item_SushiEgg",
        hidden = false,
        oncompleted = "removeclickevent;EventoMikePozzo6;additem;Hotsauce;1;additem;Pepper;1;additem;FishRoe;1"
    } }, -- REQUIRE
    text = "IGUI_SFQuest_Questyno_MikePozzo6_Text",
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_MikePozzo6_Title",
    unlockedsound = "QuestUnlocked",
    unlocks =
    "clickevent;9685x10570x0:EventoMikePozzo6;time:50:anim:loot;updateobjective:Questyno_MikePozzo6:1:Completed",
}
table.insert(SFQuest_Database.QuestPool, pozzoQuest6);

local pozzoQuest6A = {
    guid = "Questyno_MikePozzo6A",

    awardstask = "Questyno_MikePozzo6_B", -- TASK REWARD
    completesound = "levelup",
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo6_Lore" },
    objectives = { {
        guid = "Questyno_MikePozzo6_B",
        text = "IGUI_SFQuest_Questyno_MikePozzo6_B",
        icon = "Item_SushiEgg",
        hidden = false,
        needsitem = "Base.Hotsauce;1",
        oncompleted = "updateobjective;Questyno_MikePozzo6;1;Completed;removeitem;Base.Hotsauce;1"
    }, {
        guid = "Questyno_MikePozzo6_C",
        text = "IGUI_SFQuest_Questyno_MikePozzo6_C",
        icon = "Item_SushiEgg",
        hidden = false,
        needsitem = "Base.Pepper;1",
        oncompleted = "updateobjective;Questyno_MikePozzo6;2;Completed;removeitem;Base.Pepper;1"
    }, {
        guid = "Questyno_MikePozzo6_D",
        text = "IGUI_SFQuest_Questyno_MikePozzo6_D",
        icon = "Item_SushiEgg",
        hidden = false,
        needsitem = "Base.FishRoe;1",
        oncompleted = "updateobjective;Questyno_MikePozzo6;3;Completed;removeitem;Base.FishRoe;1"
    } }, -- REQUIRE
    text = "IGUI_SFQuest_Questyno_MikePozzo6_Text",
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_MikePozzo6_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, pozzoQuest6A);

local pozzoQuest6B = {
    guid = "Questyno_MikePozzo6_B",

    awardsrep = "LaResistenza;50",  -- REP REWARD
    awardsitem = "Base.SushiEgg;1", -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo6_Lore" },
    unlocks = "unlockworldevent;Questyno_MikePozzo;SFQuest_Questyno_MikePozzo6_Complete",
    text = "IGUI_SFQuest_Questyno_MikePozzo6_B_Text",
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_MikePozzo6_Title",
}
table.insert(SFQuest_Database.QuestPool, pozzoQuest6B);

local pozzoQuest7 = {
    guid = "Questyno_MikePozzo7",

    awardsrep = "LaResistenza;50", -- REP REWARD
    awardsitem = "Base.Burger;1",  -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo7_Lore" },
    needsitem = "Rabbitmeat;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_MikePozzo;SFQuest_Questyno_MikePozzo7_Complete",
    text = "IGUI_SFQuest_Questyno_MikePozzo7_Text",
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_MikePozzo7_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, pozzoQuest7);

local pozzoQuest8 = {
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
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_MikePozzo8_Title",
    unlockedsound = "QuestUnlocked",
    unlocks =
    "clickevent;8403x7621x0:EventoMikePozzo8;time:50:anim:loot;updateobjective:Questyno_MikePozzo8:1:Completed",
}
table.insert(SFQuest_Database.QuestPool, pozzoQuest8);

local pozzoQuest8A = {
    guid = "Questyno_MikePozzo8_A",

    awardstask = "Questyno_MikePozzo8_B", -- TASK REWARD
    completesound = "levelup",
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo8_Lore" },
    objectives = { {
        guid = "Questyno_MikePozzo8_B",
        text = "IGUI_SFQuest_Questyno_MikePozzo8_B",
        needsitem = "Salt;1",
        icon = "Item_Salt",
        onobtained = "updateobjective;Questyno_MikePozzo8;1;Completed;removeitem;Salt;1",
        hidden = false,
    }, {
        guid = "Questyno_MikePozzo8_C",
        text = "IGUI_SFQuest_Questyno_MikePozzo8_C",
        needsitem = "Flour;1",
        icon = "Item_Flour",
        onobtained = "updateobjective;Questyno_MikePozzo8;2;Completed;removeitem;Flour;1",
        hidden = false,
    }, {
        guid = "Questyno_MikePozzo8_D",
        text = "IGUI_SFQuest_Questyno_MikePozzo8_D",
        needsitem = "Yeast;1",
        icon = "Item_Yeast",
        onobtained = "updateobjective;Questyno_MikePozzo8;3;Completed;removeitem;Yeast;1",
        hidden = false,
    } }, -- REQUIRE
    text = "IGUI_SFQuest_Questyno_MikePozzo8_A_Text",
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_MikePozzo8_Title",
}
table.insert(SFQuest_Database.QuestPool, pozzoQuest8A);

local pozzoQuest8B = {
    guid = "Questyno_MikePozzo8_B",

    awardsrep = "LaResistenza;40", -- REP REWARD
    awardsitem = "Base.Baguette;1", -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo8_Lore" },
    unlocks = "unlockworldevent;Questyno_MikePozzo;SFQuest_Questyno_MikePozzo8_Complete",
    text = "IGUI_SFQuest_Questyno_MikePozzo8_B_Text",
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_MikePozzo8_Title",
}
table.insert(SFQuest_Database.QuestPool, pozzoQuest8B);

local pozzoQuest9 = {
    guid = "Questyno_MikePozzo9",

    awardsrep = "LaResistenza;60", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo9_Lore" },
    needsitem = "Base.GridlePan;1", -- ITEM REQUEST
    onobtained = "unlockworldevent;Questyno_MikePozzo;SFQuest_Questyno_MikePozzo9_Complete",
    text = "IGUI_SFQuest_Questyno_MikePozzo9_Text",
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_MikePozzo9_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, pozzoQuest9);

local pozzoQuest10 = {
    guid = "Questyno_MikePozzo10",

    awardsrep = "LaResistenza;50", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo10_Lore" },
    needsitem = "Base.Saucepan;1", -- ITEM REQUEST
    onobtained = "unlockworldevent;Questyno_MikePozzo;SFQuest_Questyno_MikePozzo10_Complete",
    text = "IGUI_SFQuest_Questyno_MikePozzo10_Text",
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_MikePozzo10_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, pozzoQuest10);

local pozzoQuest11 = {
    guid = "Questyno_MikePozzo11",

    awardstask = "Questyno_MikePozzo11_A", -- TASK REWARD
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo11_Lore" },
    objectives = { {
        guid = "Questyno_MikePozzo11_A",
        text = "IGUI_SFQuest_Questyno_MikePozzo11_A",
        icon = "Item_KitchenKnife",
        hidden = false,
        needsitem = "Base.KitchenKnife;1",
        oncompleted = "updateobjective;Questyno_MikePozzo11;1;Completed;removeitem;Base.KitchenKnife;1"
    }, {
        guid = "Questyno_MikePozzo11_B",
        text = "IGUI_SFQuest_Questyno_MikePozzo11_B",
        icon = "Item_BreadKnife",
        hidden = false,
        needsitem = "Base.BreadKnife;1",
        oncompleted = "updateobjective;Questyno_MikePozzo11;2;Completed;removeitem;Base.BreadKnife;1"
    }, {
        guid = "Questyno_MikePozzo11_C",
        text = "IGUI_SFQuest_Questyno_MikePozzo11_C",
        icon = "Item_ButcherKnife",
        hidden = false,
        needsitem = "Base.ButterKnife;1",
        oncompleted = "updateobjective;Questyno_MikePozzo11;3;Completed;removeitem;Base.ButterKnife;1"
    } }, -- REQUIRE
    text = "IGUI_SFQuest_Questyno_MikePozzo11_Text",
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_MikePozzo11_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, pozzoQuest11);

local pozzoQuest11A = {
    guid = "Questyno_MikePozzo11_A",

    awardsrep = "LaResistenza;100", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo11_Lore" },
    unlocks = "unlockworldevent;Questyno_MikePozzo;SFQuest_Questyno_MikePozzo11_Complete",
    text = "IGUI_SFQuest_Questyno_MikePozzo11_A_Text",
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_MikePozzo11_Title",
}
table.insert(SFQuest_Database.QuestPool, pozzoQuest11A);

local pozzoQuest12 = {
    guid = "Questyno_MikePozzo12",

    awardstask = "Questyno_MikePozzo12_A", -- TASK REWARD
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo12_Lore" },
    objectives = { {
        guid = "Questyno_MikePozzo12_A",
        text = "IGUI_SFQuest_Questyno_MikePozzo12_A",
        icon = "Item_Sugar",
        hidden = false,
        needsitem = "Base.Cereal;2",
        oncompleted = "removeclickevent;EventoMikePozzo12;additem;Cereal;2"
    } }, -- REQUIRE
    text = "IGUI_SFQuest_Questyno_MikePozzo12_Text",
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_MikePozzo12_Title",
    unlockedsound = "QuestUnlocked",
    unlocks =
    "clickevent;7373x9734x0:EventoMikePozzo12;time:50:anim:loot;updateobjective:Questyno_MikePozzo12:1:Completed",
}
table.insert(SFQuest_Database.QuestPool, pozzoQuest12);

local pozzoQuest12A = {
    guid = "Questyno_MikePozzo12_A",

    awardsrep = "LaResistenza;30", -- REP REWARD
    awardsitem = "Base.Sugar;1",   -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo12_Lore" },
    needsitem = "Base.Cereal;2", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_MikePozzo;SFQuest_Questyno_MikePozzo12_Complete",
    text = "IGUI_SFQuest_Questyno_MikePozzo12_A_Text",
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_MikePozzo12_Title",
}
table.insert(SFQuest_Database.QuestPool, pozzoQuest12A);

local pozzoQuest13 = {
    guid = "Questyno_MikePozzo13",

    awardsrep = "LaResistenza;150", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo13_Lore" },
    needsitem = "Base.BeerCan;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_MikePozzo;SFQuest_Questyno_MikePozzo13_Complete",
    text = "IGUI_SFQuest_Questyno_MikePozzo13_Text",
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_MikePozzo13_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, pozzoQuest13);

local pozzoQuest14 = {
    guid = "Questyno_MikePozzo14",

    awardsrep = "LaResistenza;30", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo14_Lore" },
    needsitem = "Base.WaterBottleFull;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_MikePozzo;SFQuest_Questyno_MikePozzo14_Complete",
    text = "IGUI_SFQuest_Questyno_MikePozzo14_Text",
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_MikePozzo14_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, pozzoQuest14);

local pozzoQuest15 = {
    guid = "Questyno_MikePozzo15",

    awardstask = "Questyno_MikePozzo15_A", -- TASK REWARD
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo15_Lore" },
    objectives = { {
        guid = "Questyno_MikePozzo15_A",
        text = "IGUI_SFQuest_Questyno_MikePozzo15_A",
        icon = "Item_TVDinner",
        hidden = false,
        oncompleted = "removeclickevent;EventoMikePozzo15;additem;CannedCornedBeef;2;additem;TVDinner;3;additem;CannedChili;3;additem;CandyPackage;1"
    } }, -- REQUIRE
    text = "IGUI_SFQuest_Questyno_MikePozzo15_Text",
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_MikePozzo15_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;8192x7516x0:EventoMikePozzo15;time:50:anim:loot;updateobjective:Questyno_MikePozzo15:1:Completed",
}
table.insert(SFQuest_Database.QuestPool, pozzoQuest15);

local pozzoQuest15A = {
    guid = "Questyno_MikePozzo15_A",

    awardstask = "Questyno_MikePozzo15_B", -- TASK REWARD
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo15_Lore" },
    objectives = { {
        guid = "Questyno_MikePozzo15_B",
        text = "IGUI_SFQuest_Questyno_MikePozzo15_B",
        icon = "Item_TVDinner",
        hidden = false,
        needsitem = "Base.CannedCornedBeef;2",
        oncompleted = "updateobjective;Questyno_MikePozzo15;1;Completed;removeitem;Base.CannedCornedBeef;2"
    }, {
        guid = "Questyno_MikePozzo15_C",
        text = "IGUI_SFQuest_Questyno_MikePozzo15_C",
        icon = "Item_TVDinner",
        hidden = false,
        needsitem = "Base.TVDinner;3",
        oncompleted = "updateobjective;Questyno_MikePozzo15;2;Completed;removeitem;Base.TVDinner;3"
    }, {
        guid = "Questyno_MikePozzo15_D",
        text = "IGUI_SFQuest_Questyno_MikePozzo15_D",
        icon = "Item_TVDinner",
        hidden = false,
        needsitem = "Base.CannedChili;3",
        oncompleted = "updateobjective;Questyno_MikePozzo15;3;Completed;removeitem;Base.CannedChili;3"
    }, {
        guid = "Questyno_MikePozzo15_E",
        text = "IGUI_SFQuest_Questyno_MikePozzo15_E",
        icon = "Item_TVDinner",
        hidden = false,
        needsitem = "Base.CandyPackage;1",
        oncompleted = "updateobjective;Questyno_MikePozzo15;4;Completed;removeitem;Base.CandyPackage;1"
    } }, -- REQUIRE
    text = "IGUI_SFQuest_Questyno_MikePozzo15_A_Text",
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_MikePozzo15_Title",
}
table.insert(SFQuest_Database.QuestPool, pozzoQuest15A);

local pozzoQuest15B = {
    guid = "Questyno_MikePozzo15_B",

    awardsrep = "LaResistenza;50", -- REP REWARD
    awardsitem = "Base.TVDinner;1", -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo15_Lore" },
    unlocks = "unlockworldevent;Questyno_MikePozzo;SFQuest_Questyno_MikePozzo15_Complete",
    text = "IGUI_SFQuest_Questyno_MikePozzo15_B_Text",
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_MikePozzo15_Title",
}
table.insert(SFQuest_Database.QuestPool, pozzoQuest15B);

local pozzoQuest16 = {
    guid = "Questyno_MikePozzo16",

    awardstask = "Questyno_MikePozzo16_A", -- TASK REWARD
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo16_Lore" },
    objectives = { {
        guid = "Questyno_MikePozzo16_A",
        text = "IGUI_SFQuest_Questyno_MikePozzo16_A",
        icon = "Item_Cheese",
        hidden = false,
        oncompleted = "removeclickevent;EventoMikePozzo16;additem;Lard;1"
    } }, -- REQUIRE
    text = "IGUI_SFQuest_Questyno_MikePozzo16_Text",
    texture = "Item_Lard",
    title = "IGUI_SFQuest_Questyno_MikePozzo16_Title",
    unlockedsound = "QuestUnlocked",
    unlocks =
    "clickevent;7244x8179x0:EventoMikePozzo16;time:50:anim:loot;updateobjective:Questyno_MikePozzo16:1:Completed",
}
table.insert(SFQuest_Database.QuestPool, pozzoQuest16);

local pozzoQuest16A = {
    guid = "Questyno_MikePozzo16_A",

    awardsrep = "LaResistenza;35", -- REP REWARD
    awardsitem = "Base.Cheese;1;Base.DriedChickpeas;1",  -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo16_Lore" },
    needsitem = "Base.Lard;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_MikePozzo;SFQuest_Questyno_MikePozzo16_Complete",
    text = "IGUI_SFQuest_Questyno_MikePozzo16_A_Text",
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_MikePozzo16_Title",
}
table.insert(SFQuest_Database.QuestPool, pozzoQuest16A);

local pozzoQuest17 = {
    guid = "Questyno_MikePozzo17",

    awardsrep = "LaResistenza;50", -- REP REWARD
    awardsitem = "Butter",  -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo17_Lore" },
    needsitem = "Money;35", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_MikePozzo;SFQuest_Questyno_MikePozzo17_Complete",
    text = "IGUI_SFQuest_Questyno_MikePozzo17_Text",
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_MikePozzo17_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, pozzoQuest17);

local pozzoQuest18 = {
    guid = "Questyno_MikePozzo18",

    awardstask = "Questyno_MikePozzo18_A", -- TASK REWARD
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo18_Lore" },
    objectives = { {
        guid = "Questyno_MikePozzo18_A",
        text = "IGUI_SFQuest_Questyno_MikePozzo18_A",
        icon = "Item_Egg",
        hidden = false,
        oncompleted = "removeclickevent;EventoMikePozzo18;additem;Egg;4"
    } }, -- REQUIRE
    text = "IGUI_SFQuest_Questyno_MikePozzo18_Text",
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_MikePozzo18_Title",
    unlockedsound = "QuestUnlocked",
    unlocks =
    "clickevent;6130x8757x0:EventoMikePozzo18;time:50:anim:loot;updateobjective:Questyno_MikePozzo18:1:Completed",
}
table.insert(SFQuest_Database.QuestPool, pozzoQuest18);

local pozzoQuest18A = {
    guid = "Questyno_MikePozzo18_A",

    awardsrep = "LaResistenza;25", -- REP REWARD
    awardsitem = "Base.PieBlueberry;1",  -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo18_Lore" },
    needsitem = "Base.Egg;4", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_MikePozzo;SFQuest_Questyno_MikePozzo18_Complete",
    text = "IGUI_SFQuest_Questyno_MikePozzo18_A_Text",
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_MikePozzo18_Title",
}
table.insert(SFQuest_Database.QuestPool, pozzoQuest18A);

local pozzoQuest19 = {
    guid = "Questyno_MikePozzo19",

    awardsrep = "LaResistenza;50", -- REP REWARD
    awardsitem = "Money;20",  -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo19_Lore" },
    needsitem = "Base.Spoon;3", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_MikePozzo;SFQuest_Questyno_MikePozzo19_Complete",
    text = "IGUI_SFQuest_Questyno_MikePozzo19_Text",
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_MikePozzo19_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, pozzoQuest19);

local pozzoQuest20 = {
    guid = "Questyno_MikePozzo20",

    awardsrep = "LaResistenza;100", -- REP REWARD
    awardsitem = "Base.Pan;1",  -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo20_Lore" },
    needsitem = "Base.PanFriedVegetables;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_MikePozzo;SFQuest_Questyno_MikePozzo20_Complete",
    text = "IGUI_SFQuest_Questyno_MikePozzo20_Text",
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_MikePozzo20_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, pozzoQuest20);

local pozzoQuest21 = {
    guid = "Questyno_MikePozzo21",

    awardsrep = "LaResistenza;25", -- REP REWARD
    awardsitem = "Base.Pot;1",  -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo21_Lore" },
    needsitem = "Base.PotOfSoupRecipe;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_MikePozzo;SFQuest_Questyno_MikePozzo21_Complete",
    text = "IGUI_SFQuest_Questyno_MikePozzo21_Text",
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_MikePozzo21_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, pozzoQuest21);

local pozzoQuest22 = {
    guid = "Questyno_MikePozzo22",

    awardsrep = "LaResistenza;100", -- REP REWARD
    awardsitem = "Money;20",  -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo22_Lore" },
    needsitem = "Base.CleaningLiquid2;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_MikePozzo;SFQuest_Questyno_MikePozzo22_Complete",
    text = "IGUI_SFQuest_Questyno_MikePozzo22_Text",
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_MikePozzo22_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, pozzoQuest22);

local pozzoQuest23 = {
    guid = "Questyno_MikePozzo23",

    awardsrep = "LaResistenza;70", -- REP REWARD
    awardsitem = "Base.Smallanimalmeat;1",  -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo23_Lore" },
    needsitem = "Base.RoastingPan;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_MikePozzo;SFQuest_Questyno_MikePozzo23_Complete",
    text = "IGUI_SFQuest_Questyno_MikePozzo23_Text",
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_MikePozzo23_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, pozzoQuest23);

local pozzoQuest24 = {
    guid = "Questyno_MikePozzo24",

    awardsrep = "LaResistenza;100", -- REP REWARD
    awardsitem = "Money;20",  -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo24_Lore" },
    needsitem = "Base.Fork;3", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_MikePozzo;SFQuest_Questyno_MikePozzo24_Complete",
    text = "IGUI_SFQuest_Questyno_MikePozzo24_Text",
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_MikePozzo24_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, pozzoQuest24);


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
				17. Recuperare Base.ThreeBrench;2 (30rep + Base.WoodenLance)
				18. Recuperare Base.ThreeBrench,Base.SharpedStone (25rep + Base.WoodenLance)
				19. Recuperare MushroomGeneric3 (250rep)
				20. Recuperare Pentola di Base.PotOfSoupRecipe (35rep + 20$ + Pentola)
				21. Recuperare Moveables.vegetation_farm_01_16 parlando con (8314,8902,0) (35rep)
				22. Recuperare Base.SharpedStone (20rep + Base.Pestle)
				23. Recuperare Base.ComfreyCataplas (50rep)
				24. Recuperare Base.WildGarlicCataplasm (50rep)
]]

local chinaIntro = {
    guid = "Questyno_RosaChina_Intro",

    awardsrep = "LaResistenza;1", -- REP REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_RosaChina_Intro_Lore" },
    ondone = "randomcodedworldfrompool;Questyno_RosaChina;Questyno;RosaChina",
    text = "IGUI_SFQuest_Questyno_RosaChina_Intro_Text",
    texture = "Item_Money",
    unique = true,
    unlocks = "unlockworldevent;Questyno_RosaChina;SFQuest_Questyno_RosaChina_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_RosaChina_Intro_Title",
}
table.insert(SFQuest_Database.QuestPool, chinaIntro);

local chinaQuest1 = {
    guid = "Questyno_RosaChina1",

    awardsrep = "LaResistenza;30", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_RosaChina",
    lore = { "IGUI_SFQuest_Questyno_RosaChina1_Lore" },
    needsitem = "Base.Stone;5", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_RosaChina;SFQuest_Questyno_RosaChina1_Complete",
    text = "IGUI_SFQuest_Questyno_RosaChina1_Text",
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_RosaChina1_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, chinaQuest1);

local chinaQuest2 = {
    guid = "Questyno_RosaChina2",

    awardsrep = "LaResistenza;50", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_RosaChina",
    lore = { "IGUI_SFQuest_Questyno_RosaChina2_Lore" },
    needsitem = "Base.Stone;10", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_RosaChina;SFQuest_Questyno_RosaChina2_Complete",
    text = "IGUI_SFQuest_Questyno_RosaChina2_Text",
    texture = "Item_Money",
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
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_RosaChina3_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, chinaQuest3);

local chinaQuest4 = {
    guid = "Questyno_RosaChina4",

    awardsrep = "LaResistenza;80", -- REP REWARD
    awardsitem = "Base.WildEggs;2",  -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_RosaChina",
    lore = { "IGUI_SFQuest_Questyno_RosaChina4_Lore" },
    needsitem = "Base.SharpedStone;10", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_RosaChina;SFQuest_Questyno_RosaChina4_Complete",
    text = "IGUI_SFQuest_Questyno_RosaChina4_Text",
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_RosaChina4_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, chinaQuest4);

local chinaQuest5 = {
    guid = "Questyno_RosaChina5",

    awardsrep = "LaResistenza;35", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_RosaChina",
    lore = { "IGUI_SFQuest_Questyno_RosaChina5_Lore" },
    needsitem = "Base.SpearCrafted;10", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_RosaChina;SFQuest_Questyno_RosaChina5_Complete",
    text = "IGUI_SFQuest_Questyno_RosaChina5_Text",
    texture = "Item_Money",
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
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_RosaChina6_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, chinaQuest6);

local chinaQuest7 = {
    guid = "Questyno_RosaChina7",

    awardsrep = "LaResistenza;70", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_RosaChina",
    lore = { "IGUI_SFQuest_Questyno_RosaChina7_Lore" },
    needsitem = "Base.TreeBranch;20", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_RosaChina;SFQuest_Questyno_RosaChina7_Complete",
    text = "IGUI_SFQuest_Questyno_RosaChina7_Text",
    texture = "Item_Money",
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
        icon = "Item_Grasshopper",
        hidden = false,
        needsitem = "Base.Grasshopper;5",
        oncompleted = "updateobjective;Questyno_RosaChina8;1;Completed;removeitem;Base.Grasshopper;5"
    }, { 
        guid = "Questyno_RosaChina8_B",
        text = "IGUI_SFQuest_Questyno_RosaChina8_B",
        icon = "Item_Pillbug",
        hidden = false,
        needsitem = "Base.Pillbug;5",
        oncompleted = "updateobjective;Questyno_RosaChina8;2;Completed;removeitem;Base.Pillbug;5"
    }, {
        guid = "Questyno_RosaChina8_C",
        text = "IGUI_SFQuest_Questyno_RosaChina8_C",
        icon = "Item_Cockroach",
        hidden = false,
        needsitem = "Base.Cockroach;5",
        oncompleted = "updateobjective;Questyno_RosaChina8;3;Completed;removeitem;Base.Cockroach;5"
    } }, -- REQUIRE
    text = "IGUI_SFQuest_Questyno_RosaChina8_Text",
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_RosaChina8_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, chinaQuest8);

local chinaQuest8A = {
    guid = "Questyno_RosaChina8_A",

    awardsrep = "LaResistenza;60", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_RosaChina",
    lore = { "IGUI_SFQuest_Questyno_RosaChina8_Lore" },
    unlocks = "unlockworldevent;Questyno_RosaChina;SFQuest_Questyno_RosaChina8_Complete",
    text = "IGUI_SFQuest_Questyno_RosaChina8_A_Text",
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_RosaChina8_Title",
}
table.insert(SFQuest_Database.QuestPool, chinaQuest8A);

local chinaQuest9 = {
    guid = "Questyno_RosaChina9",

    awardstask = "Questyno_RosaChina9_A", -- TASK REWARD
    dailycode = "Questyno_RosaChina",
    lore = { "IGUI_SFQuest_Questyno_RosaChina9_Lore" },
    objectives = { {
        guid = "Questyno_RosaChina8_A",
        text = "IGUI_SFQuest_Questyno_RosaChina8_A",
        icon = "Item_Grasshopper",
        hidden = false,
        needsitem = "Base.LemonGrass;3",
        oncompleted = "updateobjective;Questyno_RosaChina8;1;Completed;removeitem;Base.LemonGrass;3"
    }, { 
        guid = "Questyno_RosaChina8_B",
        text = "IGUI_SFQuest_Questyno_RosaChina8_B",
        icon = "Item_Pillbug",
        hidden = false,
        needsitem = "Base.BlackSage;2",
        oncompleted = "updateobjective;Questyno_RosaChina8;2;Completed;removeitem;Base.BlackSage;2"
    }}, -- REQUIRE
    text = "IGUI_SFQuest_Questyno_RosaChina9_Text",
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_RosaChina9_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, chinaQuest9);

local chinaQuest9A = {
    guid = "Questyno_RosaChina9_A",

    awardsrep = "LaResistenza;60", -- REP REWARD
    awardsitem = "Base.PlantainCataplasm",  -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_RosaChina",
    lore = { "IGUI_SFQuest_Questyno_RosaChina9_Lore" },
    unlocks = "unlockworldevent;Questyno_RosaChina;SFQuest_Questyno_RosaChina9_Complete",
    text = "IGUI_SFQuest_Questyno_RosaChina9_A_Text",
    texture = "Item_Money",
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
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_RosaChina10_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, chinaQuest10);

local chinaQuest11 = {
    guid = "Questyno_RosaChina11",

    awardsrep = "LaResistenza;60", -- REP REWARD
    awardsitem = "Base.Pumpkin",  -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_RosaChina",
    lore = { "IGUI_SFQuest_Questyno_RosaChina11_Lore" },
    needsitem = "Base.NailsBox;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_RosaChina;SFQuest_Questyno_RosaChina11_Complete",
    text = "IGUI_SFQuest_Questyno_RosaChina11_Text",
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_RosaChina11_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, chinaQuest11);

local chinaQuest12 = {
    guid = "Questyno_RosaChina12",

    awardsrep = "LaResistenza;30", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_RosaChina",
    lore = { "IGUI_SFQuest_Questyno_RosaChina12_Lore" },
    needsitem = "Base.Plank;10", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_RosaChina;SFQuest_Questyno_RosaChina12_Complete",
    text = "IGUI_SFQuest_Questyno_RosaChina12_Text",
    texture = "Item_Money",
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
    texture = "Item_Money",
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
    texture = "Item_Money",
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
        icon = "Item_HammerStone",
        hidden = false,
        needsitem = "Base.HammerStone;4",
        oncompleted = "updateobjective;Questyno_RosaChina15;1;Completed;removeitem;Base.HammerStone;4"
    }, { 
        guid = "Questyno_RosaChina15_B",
        text = "IGUI_SFQuest_Questyno_RosaChina15_B",
        icon = "Item_AxeStone",
        hidden = false,
        needsitem = "Base.AxeStone;2",
        oncompleted = "updateobjective;Questyno_RosaChina15;2;Completed;removeitem;Base.AxeStone;2"
    } }, -- REQUIRE
    text = "IGUI_SFQuest_Questyno_RosaChina15_Text",
    texture = "Item_Money",
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
    texture = "Item_Money",
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
        icon = "Item_AxeStone",
        hidden = false,
        needsitem = "Base.AxeStone;2",
        oncompleted = "updateobjective;Questyno_RosaChina16;1;Completed;removeitem;Base.AxeStone;2"
    }, { 
        guid = "Questyno_RosaChina16_B",
        text = "IGUI_SFQuest_Questyno_RosaChina16_B",
        icon = "Item_SpearCrafted",
        hidden = false,
        needsitem = "Base.SpearCrafted;2",
        oncompleted = "updateobjective;Questyno_RosaChina16;2;Completed;removeitem;Base.SpearCrafted;2"
    }, {
        guid = "Questyno_RosaChina16_C",
        text = "IGUI_SFQuest_Questyno_RosaChina16_C",
        icon = "Item_FlintKnife",
        hidden = false,
        needsitem = "Base.FlintKnife;2",
        oncompleted = "updateobjective;Questyno_RosaChina16;3;Completed;removeitem;Base.FlintKnife;2"
    } }, -- REQUIRE
    text = "IGUI_SFQuest_Questyno_RosaChina16_Text",
    texture = "Item_Money",
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
    texture = "Item_Money",
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
    needsitem = "Base.ThreeBrench;2", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_RosaChina;SFQuest_Questyno_RosaChina17_Complete",
    text = "IGUI_SFQuest_Questyno_RosaChina17_Text",
    texture = "Item_Money",
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
        icon = "Item_ThreeBrench",
        hidden = false,
        needsitem = "Base.ThreeBrench;1",
        oncompleted = "updateobjective;Questyno_RosaChina18;1;Completed;removeitem;Base.ThreeBrench;1"
    }, { 
        guid = "Questyno_RosaChina18_B",
        text = "IGUI_SFQuest_Questyno_RosaChina18_B",
        icon = "Item_SharpStone",
        hidden = false,
        needsitem = "Base.SharpedStone;1",
        oncompleted = "updateobjective;Questyno_RosaChina18;2;Completed;removeitem;Base.SharpedStone;1"
    } }, -- REQUIRE
    text = "IGUI_SFQuest_Questyno_RosaChina18_Text",
    texture = "Item_Money",
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
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_RosaChina18_Title",
}
table.insert(SFQuest_Database.QuestPool, chinaQuest18A);

local chinaQuest19 = {
    guid = "Questyno_RosaChina19",

    awardsrep = "LaResistenza;250", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_RosaChina",
    lore = { "IGUI_SFQuest_Questyno_RosaChina19_Lore" },
    needsitem = "MushroomGeneric3;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_RosaChina;SFQuest_Questyno_RosaChina19_Complete",
    text = "IGUI_SFQuest_Questyno_RosaChina19_Text",
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_RosaChina19_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, chinaQuest19);

local chinaQuest20 = {
    guid = "Questyno_RosaChina20",

    awardsrep = "LaResistenza;35", -- REP REWARD
    awardsitem = "Pot;1",  -- ITEM REWARD
    awardsmoney = 20,
    completesound = "levelup",
    dailycode = "Questyno_RosaChina",
    lore = { "IGUI_SFQuest_Questyno_RosaChina20_Lore" },
    needsitem = "Base.PotOfSoupRecipe;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_RosaChina;SFQuest_Questyno_RosaChina20_Complete",
    text = "IGUI_SFQuest_Questyno_RosaChina20_Text",
    texture = "Item_Money",
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
        oncompleted = "removeclickevent;EventoRosaChina21;additem;Moveables.vegetation_farm_01_16;1"
    } }, -- REQUIRE
    text = "IGUI_SFQuest_Questyno_RosaChina21_Text",
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_RosaChina21_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;8314x8902x0:EventoRosaChina21;time:50:anim:loot;updateobjective:Questyno_RosaChina21:1:Completed",
}
table.insert(SFQuest_Database.QuestPool, chinaQuest21);

local chinaQuest21A = {
    guid = "Questyno_RosaChina21_A",

    awardsrep = "LaResistenza;35", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_RosaChina",
    lore = { "IGUI_SFQuest_Questyno_RosaChina21_Lore" },
    needsitem = "Moveables.vegetation_farm_01_16;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_RosaChina;SFQuest_Questyno_RosaChina21_Complete",
    text = "IGUI_SFQuest_Questyno_RosaChina21_A_Text",
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_RosaChina21_Title",
}
table.insert(SFQuest_Database.QuestPool, chinaQuest21A);

local chinaQuest22 = {
    guid = "Questyno_RosaChina22",

    awardsrep = "LaResistenza;20", -- REP REWARD
    awardsitem = "Base.Pestle",  -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_RosaChina",
    lore = { "IGUI_SFQuest_Questyno_RosaChina22_Lore" },
    needsitem = "Base.SharpedStone;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_RosaChina;SFQuest_Questyno_RosaChina22_Complete",
    text = "IGUI_SFQuest_Questyno_RosaChina22_Text",
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_RosaChina22_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, chinaQuest22);

local chinaQuest23 = {
    guid = "Questyno_RosaChina23",

    awardsrep = "LaResistenza;50", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_RosaChina",
    lore = { "IGUI_SFQuest_Questyno_RosaChina23_Lore" },
    needsitem = "Base.ComfreyCataplas;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_RosaChina;SFQuest_Questyno_RosaChina23_Complete",
    text = "IGUI_SFQuest_Questyno_RosaChina23_Text",
    texture = "Item_Money",
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
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_RosaChina24_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, chinaQuest24);

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
				7. Recuperare Base.ThreeBrench;10 (35rep)
				8. Recuperare Base.Grasshopper;5 (40rep)
				9. Recuperare Base.LemonGrass;5 (50rep + Base.PlantainCataplasm)
				10. Recuperare Base.BlackSage;5 (50rep)
				11. Recuperare Base.NailsBox (60rep + Base.Smallanimalmeat;2)
				12. Recuperare Base.LogStacks2;4 (30rep)
				13. Recuperare Base.LogStacks2;3 (20rep + Base.CommonMallow;5)
				14. Recuperare Base.PercedWood,Base.ThreeBrench (25rep)
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

    awardsrep = "LaResistenza;1", -- REP REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_EmilyTerry_Intro_Lore" },
    ondone = "randomcodedworldfrompool;Questyno_EmilyTerry;Questyno;EmilyTerry",
    text = "IGUI_SFQuest_Questyno_EmilyTerry_Intro_Text",
    texture = "Item_Money",
    unique = true,
    unlocks = "unlockworldevent;Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_EmilyTerry_Intro_Title",
});

local emilyTerryQuest1 = {
    guid = "Questyno_EmilyTerry1",

    awardsrep = "LaResistenza;50", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_EmilyTerry",
    lore = { "IGUI_SFQuest_Questyno_EmilyTerry1_Lore" },
    needsitem = "farming.RedRadishSeed;12", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry1_Complete",
    text = "IGUI_SFQuest_Questyno_EmilyTerry1_Text",
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_EmilyTerry1_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, emilyTerryQuest1);

local emilyTerryQuest2 = {
    guid = "Questyno_EmilyTerry2",

    awardsrep = "LaResistenza;50", -- REP REWARD
    awardsitem = "Base.Strawberry",  -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_EmilyTerry",
    lore = { "IGUI_SFQuest_Questyno_EmilyTerry2_Lore" },
    needsitem = "farming.StrawberrySeed;12", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry2_Complete",
    text = "IGUI_SFQuest_Questyno_EmilyTerry2_Text",
    texture = "Item_Money",
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
    texture = "Item_Money",
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
    texture = "Item_Money",
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
    texture = "Item_Money",
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
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_EmilyTerry6_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, emilyTerryQuest6);

local emilyTerryQuest7 = {
    guid = "Questyno_EmilyTerry7",

    awardsrep = "LaResistenza;35", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_EmilyTerry",
    lore = { "IGUI_SFQuest_Questyno_EmilyTerry7_Lore" },
    needsitem = "Base.ThreeBrench;10", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry7_Complete",
    text = "IGUI_SFQuest_Questyno_EmilyTerry7_Text",
    texture = "Item_Money",
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
    needsitem = "Base.Grasshopper;5", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry8_Complete",
    text = "IGUI_SFQuest_Questyno_EmilyTerry8_Text",
    texture = "Item_Money",
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
    needsitem = "Base.LemonGrass;5", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry9_Complete",
    text = "IGUI_SFQuest_Questyno_EmilyTerry9_Text",
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_EmilyTerry9_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, emilyTerryQuest9);

local emilyTerryQuest10 = {
    guid = "Questyno_EmilyTerry10",

    awardsrep = "LaResistenza;50", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_EmilyTerry",
    lore = { "IGUI_SFQuest_Questyno_EmilyTerry10_Lore" },
    needsitem = "Base.BlackSage;5", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry10_Complete",
    text = "IGUI_SFQuest_Questyno_EmilyTerry10_Text",
    texture = "Item_Money",
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
    texture = "Item_Money",
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
    texture = "Item_Money",
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
    texture = "Item_Money",
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
        icon = "Item_PercedWood",
        hidden = false,
        needsitem = "Base.PercedWood;1",
        oncompleted = "updateobjective;Questyno_EmilyTerry14;1;Completed;removeitem;Base.PercedWood;1"
    }, { 
        guid = "Questyno_EmilyTerry14_B",
        text = "IGUI_SFQuest_Questyno_EmilyTerry14_B",
        icon = "Item_ThreeBrench",
        hidden = false,
        needsitem = "Base.ThreeBrench;1",
        oncompleted = "updateobjective;Questyno_EmilyTerry14;2;Completed;removeitem;Base.ThreeBrench;1"
    } }, -- REQUIRE
    text = "IGUI_SFQuest_Questyno_EmilyTerry14_Text",
    texture = "Item_Money",
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
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_EmilyTerry14_Title",
}
table.insert(SFQuest_Database.QuestPool, emilyTerryQuest14A);

local emilyTerryQuest15 = {
    guid = "Questyno_EmilyTerry15",

    awardstask = "Questyno_EmilyTerry15_A", -- TASK REWARD
    dailycode = "Questyno_EmilyTerry",
    lore = { "IGUI_SFQuest_Questyno_EmilyTerry15_Lore" },
    objectives = { {
        guid = "Questyno_EmilyTerry15_A",
        text = "IGUI_SFQuest_Questyno_EmilyTerry15_A",
        icon = "Item_MushroomGeneric6",
        hidden = false,
        needsitem = "MushroomGeneric6;1",
        oncompleted = "updateobjective;Questyno_EmilyTerry15;1;Completed;removeitem;MushroomGeneric6;1"
    }, { 
        guid = "Questyno_EmilyTerry15_B",
        text = "IGUI_SFQuest_Questyno_EmilyTerry15_B",
        icon = "Item_MushroomGeneric7",
        hidden = false,
        needsitem = "MushroomGeneric7;1",
        oncompleted = "updateobjective;Questyno_EmilyTerry15;2;Completed;removeitem;MushroomGeneric7;1"
    } }, -- REQUIRE
    text = "IGUI_SFQuest_Questyno_EmilyTerry15_Text",
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_EmilyTerry15_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, emilyTerryQuest15);

local emilyTerryQuest15A = {
    guid = "Questyno_EmilyTerry15_A",

    awardsrep = "LaResistenza;250", -- REP REWARD
    awardsitem = "Base.OilOlive",  -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_EmilyTerry",
    lore = { "IGUI_SFQuest_Questyno_EmilyTerry15_Lore" },
    unlocks = "unlockworldevent;Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry15_Complete",
    text = "IGUI_SFQuest_Questyno_EmilyTerry15_A_Text",
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_EmilyTerry15_Title",
}
table.insert(SFQuest_Database.QuestPool, emilyTerryQuest15A);

local emilyTerryQuest16 = {
    guid = "Questyno_EmilyTerry16",

    awardstask = "Questyno_EmilyTerry16_A", -- TASK REWARD
    dailycode = "Questyno_EmilyTerry",
    lore = { "IGUI_SFQuest_Questyno_EmilyTerry16_Lore" },
    objectives = { {
        guid = "Questyno_EmilyTerry16_A",
        text = "IGUI_SFQuest_Questyno_EmilyTerry16_A",
        icon = "Item_AxeStone",
        hidden = false,
        needsitem = "Base.AxeStone;2",
        oncompleted = "updateobjective;Questyno_EmilyTerry16;1;Completed;removeitem;Base.AxeStone;2"
    }, { 
        guid = "Questyno_EmilyTerry16_B",
        text = "IGUI_SFQuest_Questyno_EmilyTerry16_B",
        icon = "Item_SpearCrafted",
        hidden = false,
        needsitem = "Base.SpearCrafted;2",
        oncompleted = "updateobjective;Questyno_EmilyTerry16;2;Completed;removeitem;Base.SpearCrafted;2"
    }, { 
        guid = "Questyno_EmilyTerry16_C",
        text = "IGUI_SFQuest_Questyno_EmilyTerry16_C",
        icon = "Item_FlintKnife",
        hidden = false,
        needsitem = "FlintKnife;2",
        oncompleted = "updateobjective;Questyno_EmilyTerry16;3;Completed;removeitem;FlintKnife;2"
    } }, -- REQUIRE
    text = "IGUI_SFQuest_Questyno_EmilyTerry16_Text",
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_EmilyTerry16_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, emilyTerryQuest16);

local emilyTerryQuest16A = {
    guid = "Questyno_EmilyTerry16_A",

    awardsrep = "LaResistenza;50", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_EmilyTerry",
    lore = { "IGUI_SFQuest_Questyno_EmilyTerry16_Lore" },
    unlocks = "unlockworldevent;Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry16_Complete",
    text = "IGUI_SFQuest_Questyno_EmilyTerry16_A_Text",
    texture = "Item_Money",
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
        icon = "Item_ScrapMetal",
        hidden = false,
        needsitem = "Base.ScrapMetal;2",
        oncompleted = "updateobjective;Questyno_EmilyTerry17;1;Completed;removeitem;Base.ScrapMetal;2"
    }, { 
        guid = "Questyno_EmilyTerry17_B",
        text = "IGUI_SFQuest_Questyno_EmilyTerry17_B",
        icon = "Item_Plank",
        hidden = false,
        needsitem = "Base.Plank;1",
        oncompleted = "updateobjective;Questyno_EmilyTerry17;2;Completed;removeitem;Base.Plank;1"
    } }, -- REQUIRE
    text = "IGUI_SFQuest_Questyno_EmilyTerry17_Text",
    texture = "Item_Money",
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
    texture = "Item_Money",
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
    texture = "Item_Money",
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
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_EmilyTerry19_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;7901x8180x0:EventoEmilyTerry19;time:50:anim:loot;updateobjective:Questyno_EmilyTerry19:1:Completed",
}
table.insert(SFQuest_Database.QuestPool, emilyTerryQuest19);

local emilyTerryQuest19A = {
    guid = "Questyno_EmilyTerry19_A",

    awardsrep = "LaResistenza;35", -- REP REWARD
    awardsitem = "Base.BerryBlack;5",  -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_EmilyTerry",
    lore = { "IGUI_SFQuest_Questyno_EmilyTerry19_Lore" },
    needsitem = "Doll;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry19_Complete",
    text = "IGUI_SFQuest_Questyno_EmilyTerry19_A_Text",
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_EmilyTerry19_Title",
}
table.insert(SFQuest_Database.QuestPool, emilyTerryQuest19A);

local emilyTerryQuest20 = {
    guid = "Questyno_EmilyTerry20",

    awardsrep = "LaResistenza;35", -- REP REWARD
    awardsitem = "Base.Pot;1;Money;20",  -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_EmilyTerry",
    lore = { "IGUI_SFQuest_Questyno_EmilyTerry20_Lore" },
    needsitem = "Base.PotOfSoupRecipe;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry20_Complete",
    text = "IGUI_SFQuest_Questyno_EmilyTerry20_Text",
    texture = "Item_Money",
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
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_EmilyTerry21_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;10934x8492x0:EventoEmilyTerry21;time:50:anim:loot;updateobjective:Questyno_EmilyTerry21:1:Completed",
}
table.insert(SFQuest_Database.QuestPool, emilyTerryQuest21);

local emilyTerryQuest21A = {
    guid = "Questyno_EmilyTerry21_A",

    awardsrep = "LaResistenza;35", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_EmilyTerry",
    lore = { "IGUI_SFQuest_Questyno_EmilyTerry21_Lore" },
    needsitem = "Mattress;2", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry21_Complete",
    text = "IGUI_SFQuest_Questyno_EmilyTerry21_A_Text",
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_EmilyTerry21_Title",
}
table.insert(SFQuest_Database.QuestPool, emilyTerryQuest21A);

local emilyTerryQuest22 = {
    guid = "Questyno_EmilyTerry22",

    awardsrep = "LaResistenza;40", -- REP REWARD
    awardsitem = "Money;10",
    completesound = "levelup",
    dailycode = "Questyno_EmilyTerry",
    lore = { "IGUI_SFQuest_Questyno_EmilyTerry22_Lore" },
    needsitem = "Base.AxeStone;4", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry22_Complete",
    text = "IGUI_SFQuest_Questyno_EmilyTerry22_Text",
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_EmilyTerry22_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, emilyTerryQuest22);

local emilyTerryQuest23 = {
    guid = "Questyno_EmilyTerry23",

    awardsrep = "LaResistenza;30", -- REP REWARD
    awardsitem = "Money;10",
    completesound = "levelup",
    dailycode = "Questyno_EmilyTerry",
    lore = { "IGUI_SFQuest_Questyno_EmilyTerry23_Lore" },
    needsitem = "Base.HammerStone;4", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry23_Complete",
    text = "IGUI_SFQuest_Questyno_EmilyTerry23_Text",
    texture = "Item_Money",
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
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_EmilyTerry24_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, emilyTerryQuest24);


require 'SFQuest_Database'

-- Quest per MikePozzo
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
    needsitem = "PredicateFoodWeight#Base.PanFriedVegetables;1;1.5", -- REQUIRE
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
    unlocks = "clickevent;8659x9963x0:EventoMikePozzo5;time:50:anim:loot;updateobjective:Questyno_MikePozzo5:1:Completed",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MikePozzo5_A",

    awardsrep = "LaResistenza;250", -- REP REWARD
    awardsitem = "Money;50",       -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_MikePozzo",
    lore = { "IGUI_SFQuest_Questyno_MikePozzo5_Lore" },
    needsitem = "PredicateFoodWeight#Base.Butter;1;0.3", -- REQUIRE
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
    needsitem = "FrogMeat;1", -- REQUIRE
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

    awardsrep = "LaResistenza;80", -- REP REWARD
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

    awardsrep = "LaResistenza;350", -- REP REWARD
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
    needsitem = "PredicateFoodWeight#Base.Cereal;2;0.2", -- REQUIRE
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

    awardsrep = "LaResistenza;200", -- REP REWARD
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
    needsitem = "PredicateFoodWeight#Base.Lard;1;0.22", -- REQUIRE
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
    needsitem = "PredicateFoodWeight#Base.Egg;4;0.1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_MikePozzo;SFQuest_Questyno_MikePozzo18_Complete",
    text = "IGUI_SFQuest_Questyno_MikePozzo18_A_Text",
    texture = "media/textures/Item_MikePozzo.png",
    title = "IGUI_SFQuest_Questyno_MikePozzo18_Title",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MikePozzo19",

    awardsrep = "LaResistenza;300", -- REP REWARD
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
    needsitem = "PredicateFoodWeight#Base.PanFriedVegetables;1;1.5", -- REQUIRE
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



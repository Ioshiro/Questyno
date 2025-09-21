require 'SFQuest_Database'

-- Quest per ChristopherDavis
table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ChristopherDavis_Intro",

    awardsrep = "ChristopherDavis;100",
    -- dailycode = "Questyno_ChristopherDavis",
    lore = { "IGUI_SFQuest_Questyno_ChristopherDavis_Intro_Lore" },
    ondone = "randomcodedworldfrompool;Questyno_ChristopherDavis;Questyno;ChristopherDavis",
    text = "IGUI_SFQuest_Questyno_ChristopherDavis_Intro_Text",
    texture = "media/textures/Item_ChristopherDavis.png",
    title = "IGUI_SFQuest_Questyno_ChristopherDavis_Intro_Title",
    unique = true,
    unlockedsound = "QuestUnlocked",
    unlocks = "unlockworldevent;Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis_Intro_Complete",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ChristopherDavis1",
    awardsrep = "LaResistenza;350",
    awardsitem = "Money;10;Pot;2",
    completesound = "levelup",
    dailycode = "Questyno_ChristopherDavis",
    lore = { "IGUI_SFQuest_Questyno_ChristopherDavis1_Lore" },
    needsitem = "PredicateFoodWeight#Base.PotOfSoupRecipe;2;4",
    onobtained = "unlockworldevent;Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis1_Complete",
    text = "IGUI_SFQuest_Questyno_ChristopherDavis1_Text",
    texture = "media/textures/Item_ChristopherDavis.png",
    title = "IGUI_SFQuest_Questyno_ChristopherDavis1_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ChristopherDavis2",
    awardsrep = "LaResistenza;350",
    awardsitem = "Money;15;Pan;2",
    completesound = "levelup",
    dailycode = "Questyno_ChristopherDavis",
    lore = { "IGUI_SFQuest_Questyno_ChristopherDavis2_Lore" },
    needsitem = "PredicateFoodWeight#Base.PanFriedVegetables;2;1.5",
    onobtained = "unlockworldevent;Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis2_Complete",
    text = "IGUI_SFQuest_Questyno_ChristopherDavis2_Text",
    texture = "media/textures/Item_ChristopherDavis.png",
    title = "IGUI_SFQuest_Questyno_ChristopherDavis2_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ChristopherDavis3",
    awardsrep = "LaResistenza;200",
    awardsitem = "Money;30",
    completesound = "levelup",
    dailycode = "Questyno_ChristopherDavis",
    lore = { "IGUI_SFQuest_Questyno_ChristopherDavis3_Lore" },
    needsitem = "PredicateFreshFood#farming.Cabbage;3",
    onobtained = "unlockworldevent;Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis3_Complete",
    text = "IGUI_SFQuest_Questyno_ChristopherDavis3_Text",
    texture = "media/textures/Item_ChristopherDavis.png",
    title = "IGUI_SFQuest_Questyno_ChristopherDavis3_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ChristopherDavis4",
    awardsrep = "LaResistenza;250",
    awardsitem = "Money;20;Base.Bowl;2",
    completesound = "levelup",
    dailycode = "Questyno_ChristopherDavis",
    lore = { "IGUI_SFQuest_Questyno_ChristopherDavis4_Lore" },
    needsitem = "PredicateFoodWeight#farming.Salad;2;1",
    onobtained = "unlockworldevent;Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis4_Complete",
    text = "IGUI_SFQuest_Questyno_ChristopherDavis4_Text",
    texture = "media/textures/Item_ChristopherDavis.png",
    title = "IGUI_SFQuest_Questyno_ChristopherDavis4_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ChristopherDavis5",
    awardstask = "Questyno_ChristopherDavis5_A",
    dailycode = "Questyno_ChristopherDavis",
    lore = { "IGUI_SFQuest_Questyno_ChristopherDavis5_Lore" },
    objectives = { {
        guid = "Questyno_ChristopherDavis5_A",
        text = "IGUI_SFQuest_Questyno_ChristopherDavis5_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoChristopherDavis5;additem;Base.Butter;2",
    } },
    text = "IGUI_SFQuest_Questyno_ChristopherDavis5_Text",
    texture = "media/textures/Item_ChristopherDavis.png",
    title = "IGUI_SFQuest_Questyno_ChristopherDavis5_Title",
    unlocks = "clickevent;12315x11739x0:EventoChristopherDavis5;time:50:anim:loot;updateobjective:Questyno_ChristopherDavis5:1:Completed",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ChristopherDavis5_A",
    awardsrep = "LaResistenza;2000",
    awardsitem = "Money;70",
    completesound = "levelup",
    dailycode = "Questyno_ChristopherDavis",
    lore = { "IGUI_SFQuest_Questyno_ChristopherDavis5_Lore" },
    needsitem = "PredicateFoodWeight#Base.Butter;2;0.3",
    onobtained = "unlockworldevent;Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis5_Complete",
    text = "IGUI_SFQuest_Questyno_ChristopherDavis5_A_Text",
    texture = "media/textures/Item_ChristopherDavis.png",
    title = "IGUI_SFQuest_Questyno_ChristopherDavis5_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ChristopherDavis6",
    awardstask = "Questyno_ChristopherDavis6_A",
    dailycode = "Questyno_ChristopherDavis",
    lore = { "IGUI_SFQuest_Questyno_ChristopherDavis6_Lore" },
    objectives = { {
        guid = "Questyno_ChristopherDavis6_A",
        text = "IGUI_SFQuest_Questyno_ChristopherDavis6_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoChristopherDavis6;additem;Base.Hotsauce;1;additem;Base.Pepper;1;additem;Base.FishRoe;1",
    } },
    text = "IGUI_SFQuest_Questyno_ChristopherDavis6_Text",
    texture = "media/textures/Item_ChristopherDavis.png",
    title = "IGUI_SFQuest_Questyno_ChristopherDavis6_Title",
    unlocks = "clickevent;8199x11177x0:EventoChristopherDavis6;time:50:anim:loot;updateobjective:Questyno_ChristopherDavis6:1:Completed",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ChristopherDavis6_A",
    awardstask = "Questyno_ChristopherDavis6_B",
    dailycode = "Questyno_ChristopherDavis",
    lore = { "IGUI_SFQuest_Questyno_ChristopherDavis6_A_Lore" },
    objectives = { {
        guid = "Questyno_ChristopherDavis6_B",
        text = "IGUI_SFQuest_Questyno_ChristopherDavis6_B",
        hidden = false,
        needsitem = "Base.Hotsauce;1",
        onobtained = "updateobjective;Questyno_ChristopherDavis6_A;1;Completed;removeitem;Base.Hotsauce;1",
    },{
        guid = "Questyno_ChristopherDavis6_C",
        text = "IGUI_SFQuest_Questyno_ChristopherDavis6_C",
        hidden = false,
        needsitem = "Base.Pepper;1",
        onobtained = "updateobjective;Questyno_ChristopherDavis6_A;2;Completed;removeitem;Base.Pepper;1",
    },{
        guid = "Questyno_ChristopherDavis6_D",
        text = "IGUI_SFQuest_Questyno_ChristopherDavis6_D",
        hidden = false,
        needsitem = "Base.FishRoe;1",
        onobtained = "updateobjective;Questyno_ChristopherDavis6_A;3;Completed;removeitem;Base.FishRoe;1",
    }},
    text = "IGUI_SFQuest_Questyno_ChristopherDavis6_A_Text",
    texture = "media/textures/Item_ChristopherDavis.png",
    title = "IGUI_SFQuest_Questyno_ChristopherDavis6_Title",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ChristopherDavis6_B",
    awardsrep = "LaResistenza;300",
    awardsitem = "Base.SushiEgg;4",
    completesound = "levelup",
    dailycode = "Questyno_ChristopherDavis",
    lore = { "IGUI_SFQuest_Questyno_ChristopherDavis6_Lore" },
    text = "IGUI_SFQuest_Questyno_ChristopherDavis6_B_Text",
    texture = "media/textures/Item_ChristopherDavis.png",
    title = "IGUI_SFQuest_Questyno_ChristopherDavis6_Title",
    unlocks = "unlockworldevent;Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis6_Complete",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ChristopherDavis7",
    awardsrep = "LaResistenza;65",
    awardsitem = "Base.Burger;1",
    completesound = "levelup",
    dailycode = "Questyno_ChristopherDavis",
    lore = { "IGUI_SFQuest_Questyno_ChristopherDavis7_Lore" },
    needsitem = "PredicateFreshFood#Base.Rabbitmeat;1",
    onobtained = "unlockworldevent;Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis7_Complete",
    text = "IGUI_SFQuest_Questyno_ChristopherDavis7_Text",
    texture = "media/textures/Item_ChristopherDavis.png",
    title = "IGUI_SFQuest_Questyno_ChristopherDavis7_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ChristopherDavis8",
    awardsrep = "LaResistenza;150",
    awardsitem = "Money;50",
    completesound = "levelup",
    dailycode = "Questyno_ChristopherDavis",
    lore = { "IGUI_SFQuest_Questyno_ChristopherDavis8_Lore" },
    needsitem = "Base.Apron_Black;1",
    onobtained = "unlockworldevent;Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis8_Complete",
    text = "IGUI_SFQuest_Questyno_ChristopherDavis8_Text",
    texture = "media/textures/Item_ChristopherDavis.png",
    title = "IGUI_SFQuest_Questyno_ChristopherDavis8_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ChristopherDavis9",
    awardsrep = "LaResistenza;500",
    completesound = "levelup",
    dailycode = "Questyno_ChristopherDavis",
    lore = { "IGUI_SFQuest_Questyno_ChristopherDavis9_Lore" },
    needsitem = "Base.GridlePan;2",
    onobtained = "unlockworldevent;Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis9_Complete",
    text = "IGUI_SFQuest_Questyno_ChristopherDavis9_Text",
    texture = "media/textures/Item_ChristopherDavis.png",
    title = "IGUI_SFQuest_Questyno_ChristopherDavis9_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ChristopherDavis10",
    awardsrep = "LaResistenza;1000",
    completesound = "levelup",
    dailycode = "Questyno_ChristopherDavis",
    lore = { "IGUI_SFQuest_Questyno_ChristopherDavis10_Lore" },
    needsitem = "Base.Saucepan;2",
    onobtained = "unlockworldevent;Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis10_Complete",
    text = "IGUI_SFQuest_Questyno_ChristopherDavis10_Text",
    texture = "media/textures/Item_ChristopherDavis.png",
    title = "IGUI_SFQuest_Questyno_ChristopherDavis10_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ChristopherDavis11",
    awardsrep = "LaResistenza;200",
    completesound = "levelup",
    dailycode = "Questyno_ChristopherDavis",
    lore = { "IGUI_SFQuest_Questyno_ChristopherDavis11_Lore" },
    needsitem = "Base.KitchenKnife;4",
    onobtained = "unlockworldevent;Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis11_Complete",
    text = "IGUI_SFQuest_Questyno_ChristopherDavis11_Text",
    texture = "media/textures/Item_ChristopherDavis.png",
    title = "IGUI_SFQuest_Questyno_ChristopherDavis11_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ChristopherDavis12",
    awardstask = "Questyno_ChristopherDavis12_A",
    dailycode = "Questyno_ChristopherDavis",
    lore = { "IGUI_SFQuest_Questyno_ChristopherDavis12_Lore" },
    objectives = { {
        guid = "Questyno_ChristopherDavis12_A",
        text = "IGUI_SFQuest_Questyno_ChristopherDavis12_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoChristopherDavis12;additem;Base.Cereal;2",
    } },
    text = "IGUI_SFQuest_Questyno_ChristopherDavis12_Text",
    texture = "media/textures/Item_ChristopherDavis.png",
    title = "IGUI_SFQuest_Questyno_ChristopherDavis12_Title",
    unlocks = "clickevent;7373x9732x0:EventoChristopherDavis12;time:50:anim:loot;updateobjective:Questyno_ChristopherDavis12:1:Completed",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ChristopherDavis12_A",
    awardsrep = "LaResistenza;200",
    completesound = "levelup",
    dailycode = "Questyno_ChristopherDavis",
    lore = { "IGUI_SFQuest_Questyno_ChristopherDavis12_Lore" },
    needsitem = "PredicateFoodWeight#Base.Cereal;2;0.2",
    onobtained = "unlockworldevent;Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis12_Complete",
    text = "IGUI_SFQuest_Questyno_ChristopherDavis12_A_Text",
    texture = "media/textures/Item_ChristopherDavis.png",
    title = "IGUI_SFQuest_Questyno_ChristopherDavis12_Title",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ChristopherDavis13",
    awardsrep = "LaResistenza;300",
    completesound = "levelup",
    dailycode = "Questyno_ChristopherDavis",
    lore = { "IGUI_SFQuest_Questyno_ChristopherDavis13_Lore" },
    needsitem = "Base.BeerCan",
    onobtained = "unlockworldevent;Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis13_Complete",
    text = "IGUI_SFQuest_Questyno_ChristopherDavis13_Text",
    texture = "media/textures/Item_ChristopherDavis.png",
    title = "IGUI_SFQuest_Questyno_ChristopherDavis13_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ChristopherDavis14",
    awardsrep = "LaResistenza;40",
    completesound = "levelup",
    dailycode = "Questyno_ChristopherDavis",
    lore = { "IGUI_SFQuest_Questyno_ChristopherDavis14_Lore" },
    needsitem = "Tag#FullWaterBottle;1",
    onobtained = "unlockworldevent;Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis14_Complete",
    text = "IGUI_SFQuest_Questyno_ChristopherDavis14_Text",
    texture = "media/textures/Item_ChristopherDavis.png",
    title = "IGUI_SFQuest_Questyno_ChristopherDavis14_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ChristopherDavis15",
    awardstask = "Questyno_ChristopherDavis15_A",
    dailycode = "Questyno_ChristopherDavis",
    lore = { "IGUI_SFQuest_Questyno_ChristopherDavis15_Lore" },
    objectives = { {
        guid = "Questyno_ChristopherDavis15_A",
        text = "IGUI_SFQuest_Questyno_ChristopherDavis15_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoChristopherDavis15;additem;Base.CannedCornedBeef;3;additem;Base.Cereal;2;additem;Base.CannedChili;2;additem;Base.Lobster;3",
    } },
    text = "IGUI_SFQuest_Questyno_ChristopherDavis15_Text",
    texture = "media/textures/Item_ChristopherDavis.png",
    title = "IGUI_SFQuest_Questyno_ChristopherDavis15_Title",
    unlocks = "clickevent;8108x9699x0:EventoChristopherDavis15;time:50:anim:loot;updateobjective:Questyno_ChristopherDavis15:1:Completed",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ChristopherDavis15_A",
    awardstask = "Questyno_ChristopherDavis15_B",
    dailycode = "Questyno_ChristopherDavis",
    lore = { "IGUI_SFQuest_Questyno_ChristopherDavis15_A_Lore" },
    objectives = { {
        guid = "Questyno_ChristopherDavis15_B",
        text = "IGUI_SFQuest_Questyno_ChristopherDavis15_B",
        hidden = false,
        needsitem = "Base.CannedCornedBeef;3",
        onobtained = "updateobjective;Questyno_ChristopherDavis15_A;1;Completed;removeitem;Base.CannedCornedBeef;3",
    },{
        guid = "Questyno_ChristopherDavis15_C",
        text = "IGUI_SFQuest_Questyno_ChristopherDavis15_C",
        hidden = false,
        needsitem = "Base.Cereal;2",
        onobtained = "updateobjective;Questyno_ChristopherDavis15_A;2;Completed;removeitem;Base.Cereal;2",
    },{
        guid = "Questyno_ChristopherDavis15_D",
        text = "IGUI_SFQuest_Questyno_ChristopherDavis15_D",
        hidden = false,
        needsitem = "Base.CannedChili;2",
        onobtained = "updateobjective;Questyno_ChristopherDavis15_A;3;Completed;removeitem;Base.CannedChili;2",
    },{
        guid = "Questyno_ChristopherDavis15_E",
        text = "IGUI_SFQuest_Questyno_ChristopherDavis15_E",
        hidden = false,
        needsitem = "Base.Lobster;3",
        onobtained = "updateobjective;Questyno_ChristopherDavis15_A;4;Completed;removeitem;Base.Lobster;3",
    }},
    text = "IGUI_SFQuest_Questyno_ChristopherDavis15_A_Text",
    texture = "media/textures/Item_ChristopherDavis.png",
    title = "IGUI_SFQuest_Questyno_ChristopherDavis15_Title",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ChristopherDavis15_B",
    awardsrep = "LaResistenza;300",
    awardsitem = "Base.Lobster;1",
    completesound = "levelup",
    dailycode = "Questyno_ChristopherDavis",
    lore = { "IGUI_SFQuest_Questyno_ChristopherDavis15_Lore" },
    text = "IGUI_SFQuest_Questyno_ChristopherDavis15_B_Text",
    texture = "media/textures/Item_ChristopherDavis.png",
    title = "IGUI_SFQuest_Questyno_ChristopherDavis15_Title",
    unlocks = "unlockworldevent;Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis15_Complete",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ChristopherDavis16",
    awardstask = "Questyno_ChristopherDavis16_A",
    dailycode = "Questyno_ChristopherDavis",
    lore = { "IGUI_SFQuest_Questyno_ChristopherDavis16_Lore" },
    objectives = { {
        guid = "Questyno_ChristopherDavis16_A",
        text = "IGUI_SFQuest_Questyno_ChristopherDavis16_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoChristopherDavis16;additem;Base.Lard;1",
    } },
    text = "IGUI_SFQuest_Questyno_ChristopherDavis16_Text",
    texture = "media/textures/Item_ChristopherDavis.png",
    title = "IGUI_SFQuest_Questyno_ChristopherDavis16_Title",
    unlocks = "clickevent;11287x8287x0:EventoChristopherDavis16;time:50:anim:loot;updateobjective:Questyno_ChristopherDavis16:1:Completed",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ChristopherDavis16_A",
    awardsrep = "LaResistenza;70",
    awardsitem = "Base.Salt;1",
    completesound = "levelup",
    dailycode = "Questyno_ChristopherDavis",
    lore = { "IGUI_SFQuest_Questyno_ChristopherDavis16_Lore" },
    needsitem = "PredicateFoodWeight#Base.Lard;0.22",
    onobtained = "unlockworldevent;Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis16_Complete",
    text = "IGUI_SFQuest_Questyno_ChristopherDavis16_A_Text",
    texture = "media/textures/Item_ChristopherDavis.png",
    title = "IGUI_SFQuest_Questyno_ChristopherDavis16_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ChristopherDavis17",
    awardsrep = "LaResistenza;50",
    awardsitem = "Base.Butter;1",
    completesound = "levelup",
    dailycode = "Questyno_ChristopherDavis",
    lore = { "IGUI_SFQuest_Questyno_ChristopherDavis17_Lore" },
    needsitem = "Money;35",
    onobtained = "unlockworldevent;Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis17_Complete",
    text = "IGUI_SFQuest_Questyno_ChristopherDavis17_Text",
    texture = "media/textures/Item_ChristopherDavis.png",
    title = "IGUI_SFQuest_Questyno_ChristopherDavis17_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ChristopherDavis18",
    awardstask = "Questyno_ChristopherDavis18_A",
    dailycode = "Questyno_ChristopherDavis",
    lore = { "IGUI_SFQuest_Questyno_ChristopherDavis18_Lore" },
    objectives = { {
        guid = "Questyno_ChristopherDavis18_A",
        text = "IGUI_SFQuest_Questyno_ChristopherDavis18_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoChristopherDavis18;additem;Base.Egg;4",
    } },
    text = "IGUI_SFQuest_Questyno_ChristopherDavis18_Text",
    texture = "media/textures/Item_ChristopherDavis.png",
    title = "IGUI_SFQuest_Questyno_ChristopherDavis18_Title",
    unlocks = "clickevent;13603x6883x0:EventoChristopherDavis18;time:50:anim:loot;updateobjective:Questyno_ChristopherDavis18:1:Completed",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ChristopherDavis18_A",
    awardsrep = "LaResistenza;300",
    awardsitem = "Base.Pineapple;1",
    completesound = "levelup",
    dailycode = "Questyno_ChristopherDavis",
    lore = { "IGUI_SFQuest_Questyno_ChristopherDavis18_Lore" },
    needsitem = "Base.Egg;4",
    onobtained = "unlockworldevent;Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis18_Complete",
    text = "IGUI_SFQuest_Questyno_ChristopherDavis18_A_Text",
    texture = "media/textures/Item_ChristopherDavis.png",
    title = "IGUI_SFQuest_Questyno_ChristopherDavis18_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ChristopherDavis19",
    awardsrep = "LaResistenza;500",
    awardsitem = "Money;20",
    completesound = "levelup",
    dailycode = "Questyno_ChristopherDavis",
    lore = { "IGUI_SFQuest_Questyno_ChristopherDavis19_Lore" },
    needsitem = "Base.Spoon;6",
    onobtained = "unlockworldevent;Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis19_Complete",
    text = "IGUI_SFQuest_Questyno_ChristopherDavis19_Text",
    texture = "media/textures/Item_ChristopherDavis.png",
    title = "IGUI_SFQuest_Questyno_ChristopherDavis19_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ChristopherDavis20",
    awardsrep = "LaResistenza;30",
    awardsitem = "Base.Pan;1",
    completesound = "levelup",
    dailycode = "Questyno_ChristopherDavis",
    lore = { "IGUI_SFQuest_Questyno_ChristopherDavis20_Lore" },
    needsitem = "Base.PanFriedVegetables;1",
    onobtained = "unlockworldevent;Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis20_Complete",
    text = "IGUI_SFQuest_Questyno_ChristopherDavis20_Text",
    texture = "media/textures/Item_ChristopherDavis.png",
    title = "IGUI_SFQuest_Questyno_ChristopherDavis20_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ChristopherDavis21",
    awardsrep = "LaResistenza;450",
    awardsitem = "Base.Pot;2",
    completesound = "levelup",
    dailycode = "Questyno_ChristopherDavis",
    lore = { "IGUI_SFQuest_Questyno_ChristopherDavis21_Lore" },
    needsitem = "PredicateFoodWeight#Base.PotOfSoupRecipe;2;4",
    onobtained = "unlockworldevent;Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis21_Complete",
    text = "IGUI_SFQuest_Questyno_ChristopherDavis21_Text",
    texture = "media/textures/Item_ChristopherDavis.png",
    title = "IGUI_SFQuest_Questyno_ChristopherDavis21_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ChristopherDavis22",
    awardsrep = "LaResistenza;1500",
    awardsitem = "Money;30",
    completesound = "levelup",
    dailycode = "Questyno_ChristopherDavis",
    lore = { "IGUI_SFQuest_Questyno_ChristopherDavis22_Lore" },
    needsitem = "Base.Bleach;4",
    onobtained = "unlockworldevent;Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis22_Complete",
    text = "IGUI_SFQuest_Questyno_ChristopherDavis22_Text",
    texture = "media/textures/Item_ChristopherDavis.png",
    title = "IGUI_SFQuest_Questyno_ChristopherDavis22_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ChristopherDavis23",
    awardsrep = "LaResistenza;300",
    awardsitem = "Base.Smallanimalmeat;1",
    completesound = "levelup",
    dailycode = "Questyno_ChristopherDavis",
    lore = { "IGUI_SFQuest_Questyno_ChristopherDavis23_Lore" },
    needsitem = "Base.RoastingPan;1",
    onobtained = "unlockworldevent;Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis23_Complete",
    text = "IGUI_SFQuest_Questyno_ChristopherDavis23_Text",
    texture = "media/textures/Item_ChristopherDavis.png",
    title = "IGUI_SFQuest_Questyno_ChristopherDavis23_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ChristopherDavis24",
    awardsrep = "LaResistenza;450",
    awardsitem = "Money;30",
    completesound = "levelup",
    dailycode = "Questyno_ChristopherDavis",
    lore = { "IGUI_SFQuest_Questyno_ChristopherDavis24_Lore" },
    needsitem = "Base.BreadKnife;12",
    onobtained = "unlockworldevent;Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis24_Complete",
    text = "IGUI_SFQuest_Questyno_ChristopherDavis24_Text",
    texture = "media/textures/Item_ChristopherDavis.png",
    title = "IGUI_SFQuest_Questyno_ChristopherDavis24_Title",
    unlockedsound = "QuestUnlocked"
});



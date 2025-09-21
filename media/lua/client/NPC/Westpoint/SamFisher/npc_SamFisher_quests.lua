require 'SFQuest_Database'

-- Quest per SamFisher
table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher_Intro",

    awardsrep = "SamFisher;100",
    -- dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher_Intro_Lore" },
    ondone = "randomcodedworldfrompool;Questyno_SamFisher;Questyno;SamFisher",
    text = "IGUI_SFQuest_Questyno_SamFisher_Intro_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher_Intro_Title",
    unique = true,
    unlockedsound = "QuestUnlocked",
    unlocks = "unlockworldevent;Questyno_SamFisher;SFQuest_Questyno_SamFisher_Intro_Complete",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher1",
    awardsrep = "LaResistenza;100",
    awardsitem = "Base.Panfish;1",
    completesound = "levelup",
    dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher1_Lore" },
    needsitem = "PredicateFreshFood#Base.Worm;10",
    onobtained = "unlockworldevent;Questyno_SamFisher;SFQuest_Questyno_SamFisher1_Complete",
    text = "IGUI_SFQuest_Questyno_SamFisher1_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher1_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher2",
    awardsrep = "LaResistenza;50",
    awardsitem = "Money;30",
    completesound = "levelup",
    dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher2_Lore" },
    needsitem = "Base.FishingLine;1",
    onobtained = "unlockworldevent;Questyno_SamFisher;SFQuest_Questyno_SamFisher2_Complete",
    text = "IGUI_SFQuest_Questyno_SamFisher2_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher2_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher3",
    awardstask = "Questyno_SamFisher3_A",
    dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher3_Lore" },
    objectives = { {
        guid = "Questyno_SamFisher3_A",
        text = "IGUI_SFQuest_Questyno_SamFisher3_A",
        hidden = false,
        needsitem = "Base.WoodenStick;1",
        onobtained = "updateobjective;Questyno_SamFisher3;1;Completed;removeitem;Base.WoodenStick;1",
    }, {
        guid = "Questyno_SamFisher3_B",
        text = "IGUI_SFQuest_Questyno_SamFisher3_B",
        hidden = false,
        needsitem = "Base.Paperclip;1",
        onobtained = "updateobjective;Questyno_SamFisher3;2;Completed;removeitem;Base.Paperclip;1",
    } },
    text = "IGUI_SFQuest_Questyno_SamFisher3_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher3_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher3_A",
    awardsrep = "LaResistenza;50",
    awardsitem = "Base.FishingMag1;1",
    completesound = "levelup",
    dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher3_A_Lore" },
    text = "IGUI_SFQuest_Questyno_SamFisher3_A_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher3_Title",
    unlocks = "unlockworldevent;Questyno_SamFisher;SFQuest_Questyno_SamFisher3_Complete",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher4",
    awardsrep = "LaResistenza;250",
    awardsitem = "Base.FishingTackle;1",
    completesound = "levelup",
    dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher4_Lore" },
    needsitem = "Base.Panfish;1",
    onobtained = "unlockworldevent;Questyno_SamFisher;SFQuest_Questyno_SamFisher4_Complete",
    text = "IGUI_SFQuest_Questyno_SamFisher4_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher4_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher5",
    awardsrep = "LaResistenza;250",
    awardsitem = "Base.BeerBottle;1",
    completesound = "levelup",
    dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher5_Lore" },
    needsitem = "TagPredicateBigFish#Catfish;1",
    onobtained = "unlockworldevent;Questyno_SamFisher;SFQuest_Questyno_SamFisher5_Complete",
    text = "IGUI_SFQuest_Questyno_SamFisher5_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher5_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher6",
    awardsrep = "LaResistenza;40",
    awardsitem = "Base.Bass;1",
    completesound = "levelup",
    dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher6_Lore" },
    needsitem = "Base.BaitFish;3",
    onobtained = "unlockworldevent;Questyno_SamFisher;SFQuest_Questyno_SamFisher6_Complete",
    text = "IGUI_SFQuest_Questyno_SamFisher6_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher6_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher7",
    awardsrep = "LaResistenza;70",
    awardsitem = "Base.Wire;1",
    completesound = "levelup",
    dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher7_Lore" },
    needsitem = "Base.FishingNet;1",
    onobtained = "unlockworldevent;Questyno_SamFisher;SFQuest_Questyno_SamFisher7_Complete",
    text = "IGUI_SFQuest_Questyno_SamFisher7_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher7_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher8",
    awardstask = "Questyno_SamFisher8_A",
    dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher8_Lore" },
    objectives = { {
        guid = "Questyno_SamFisher8_A",
        text = "IGUI_SFQuest_Questyno_SamFisher8_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoSamFisher8;additem;Snail;2;additem;Grasshopper;2;additem;Worm;3"
    } },
    text = "IGUI_SFQuest_Questyno_SamFisher8_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher8_Title",
    unlocks = "clickevent;8633x7477x0:EventoSamFisher8;time:50:anim:loot;updateobjective:Questyno_SamFisher8:1:Completed",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher8_A",
    awardstask = "Questyno_SamFisher8_B",
    dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher8_A_Lore" },
    objectives = { {
        guid = "Questyno_SamFisher8_B",
        text = "IGUI_SFQuest_Questyno_SamFisher8_B",
        hidden = false,
        needsitem = "PredicateFreshFood#Base.Snail;2",
        onobtained = "updateobjective;Questyno_SamFisher8_A;1;Completed;removeitem;Base.Snail;2",
    }, {
        guid = "Questyno_SamFisher8_C",
        text = "IGUI_SFQuest_Questyno_SamFisher8_C",
        hidden = false,
        needsitem = "PredicateFreshFood#Base.Grasshopper;2",
        onobtained = "updateobjective;Questyno_SamFisher8_A;2;Completed;removeitem;Base.Grasshopper;2",
    }, {
        guid = "Questyno_SamFisher8_D",
        text = "IGUI_SFQuest_Questyno_SamFisher8_D",
        hidden = false,
        needsitem = "PredicateFreshFood#Base.Worm;3",
        onobtained = "updateobjective;Questyno_SamFisher8_A;3;Completed;removeitem;Base.Worm;3",
    } },
    text = "IGUI_SFQuest_Questyno_SamFisher8_A_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher8_Title",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher8_B",
    awardsrep = "LaResistenza;60",
    awardsitem = "Base.Wine;1",
    completesound = "levelup",
    dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher8_B_Lore" },
    text = "IGUI_SFQuest_Questyno_SamFisher8_B_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher8_Title",
    unlocks = "unlockworldevent;Questyno_SamFisher;SFQuest_Questyno_SamFisher8_Complete",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher9",
    awardsrep = "LaResistenza;150",
    awardsitem = "Money;50",
    completesound = "levelup",
    dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher9_Lore" },
    needsitem = "TagPredicateBigFish#Perch;1",
    onobtained = "unlockworldevent;Questyno_SamFisher;SFQuest_Questyno_SamFisher9_Complete",
    text = "IGUI_SFQuest_Questyno_SamFisher9_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher9_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher10",
    awardstask = "Questyno_SamFisher10_A",
    dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher10_Lore" },
    objectives = { {
        guid = "Questyno_SamFisher10_A",
        text = "IGUI_SFQuest_Questyno_SamFisher10_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoSamFisher10;additem;Base.FishingRod;1"
    } },
    text = "IGUI_SFQuest_Questyno_SamFisher10_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher10_Title",
    unlocks = "clickevent;11218x8961x0:EventoSamFisher10;time:50:anim:loot;updateobjective:Questyno_SamFisher10:1:Completed",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher10_A",
    awardsrep = "LaResistenza;100",
    awardsitem = "Money;50",
    completesound = "levelup",
    dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher10_A_Lore" },
    needsitem = "FishingRod;1",
    onobtained = "unlockworldevent;Questyno_SamFisher;SFQuest_Questyno_SamFisher10_Complete",
    text = "IGUI_SFQuest_Questyno_SamFisher10_A_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher10_Title",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher11",
    awardstask = "Questyno_SamFisher11_A",
    dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher11_Lore" },
    objectives = { {
        guid = "Questyno_SamFisher11_A",
        text = "IGUI_SFQuest_Questyno_SamFisher11_A",
        hidden = false,
        needsitem = "PredicateFreshFood#Catfish;1",
        onobtained = "updateobjective;Questyno_SamFisher11;1;Completed;removeitem;Catfish;1",
    }, {
        guid = "Questyno_SamFisher11_B",
        text = "IGUI_SFQuest_Questyno_SamFisher11_B",
        hidden = false,
        needsitem = "PredicateFreshFood#Panfish;1",
        onobtained = "updateobjective;Questyno_SamFisher11;2;Completed;removeitem;Panfish;1",
    } },
    text = "IGUI_SFQuest_Questyno_SamFisher11_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher11_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher11_A",
    awardsrep = "LaResistenza;120",
    awardsitem = "Base.Twine;1",
    completesound = "levelup",
    dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher11_A_Lore" },
    text = "IGUI_SFQuest_Questyno_SamFisher11_A_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher11_Title",
    unlocks = "unlockworldevent;Questyno_SamFisher;SFQuest_Questyno_SamFisher11_Complete",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher12",
    awardsrep = "LaResistenza;150",
    completesound = "levelup",
    dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher12_Lore" },
    needsitem = "PredicateFreshFood#Crappie;1",
    onobtained = "unlockworldevent;Questyno_SamFisher;SFQuest_Questyno_SamFisher12_Complete",
    text = "IGUI_SFQuest_Questyno_SamFisher12_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher12_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher13",
    awardsrep = "LaResistenza;100",
    awardsitem = "Base.FishFillet;1;Base.BeerCanEmpty;1",
    completesound = "levelup",
    dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher13_Lore" },
    needsitem = "Base.BeerCan;2",
    onobtained = "unlockworldevent;Questyno_SamFisher;SFQuest_Questyno_SamFisher13_Complete",
    text = "IGUI_SFQuest_Questyno_SamFisher13_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher13_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher14",
    awardsrep = "LaResistenza;150",
    completesound = "levelup",
    dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher14_Lore" },
    needsitem = "PredicateFreshFood#Base.Worm;20",
    onobtained = "unlockworldevent;Questyno_SamFisher;SFQuest_Questyno_SamFisher14_Complete",
    text = "IGUI_SFQuest_Questyno_SamFisher14_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher14_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher15",
    awardstask = "Questyno_SamFisher15_A",
    dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher15_Lore" },
    objectives = { {
        guid = "Questyno_SamFisher15_A",
        text = "IGUI_SFQuest_Questyno_SamFisher15_A",
        hidden = false,
        needsitem = "Base.Parsley;1",
        onobtained = "updateobjective;Questyno_SamFisher15;1;Completed;removeitem;Base.Parsley;1",
    }, {
        guid = "Questyno_SamFisher15_B",
        text = "IGUI_SFQuest_Questyno_SamFisher15_B",
        hidden = false,
        needsitem = "PredicateFreshFood#Base.LemonGrass;1",
        onobtained = "updateobjective;Questyno_SamFisher15;2;Completed;removeitem;Base.LemonGrass;1",
    } },
    text = "IGUI_SFQuest_Questyno_SamFisher15_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher15_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher15_A",
    awardsrep = "LaResistenza;80",
    awardsitem = "Base.PanFriedVegetables;1;Base.BeerBottle;1",
    completesound = "levelup",
    dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher15_A_Lore" },
    text = "IGUI_SFQuest_Questyno_SamFisher15_A_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher15_Title",
    unlocks = "unlockworldevent;Questyno_SamFisher;SFQuest_Questyno_SamFisher15_Complete",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher16",
    awardsrep = "LaResistenza;150",
    completesound = "levelup",
    dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher16_Lore" },
    needsitem = "Base.PaperclipBox;3",
    onobtained = "unlockworldevent;Questyno_SamFisher;SFQuest_Questyno_SamFisher16_Complete",
    text = "IGUI_SFQuest_Questyno_SamFisher16_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher16_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher17",
    awardstask = "Questyno_SamFisher17_A",
    dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher17_Lore" },
    needsitem = "Money;50",
    onobtained = "unlockworldevent;Questyno_SamFisher;SFQuest_Questyno_SamFisher17_Complete",
    text = "IGUI_SFQuest_Questyno_SamFisher17_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher17_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher17_A",
    awardsrep = "LaResistenza;100",
    awardsitem = "Money;100",
    completesound = "levelup",
    dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher17_Lore" },
    needsitem = "TagPredicateBigFish#Catfish;1",
    onobtained = "unlockworldevent;Questyno_SamFisher;SFQuest_Questyno_SamFisher17_A_Complete",
    text = "IGUI_SFQuest_Questyno_SamFisher17_A_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher17_Title",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher18",
    awardstask = "Questyno_SamFisher18_A",
    dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher18_Lore" },
    needsitem = "Money;50",
    onobtained = "unlockworldevent;Questyno_SamFisher;SFQuest_Questyno_SamFisher18_Complete",
    text = "IGUI_SFQuest_Questyno_SamFisher18_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher18_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher18_A",
    awardsrep = "LaResistenza;100",
    awardsitem = "Money;100",
    completesound = "levelup",
    dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher18_Lore" },
    needsitem = "TagPredicateBigFish#Trout;1",
    onobtained = "unlockworldevent;Questyno_SamFisher;SFQuest_Questyno_SamFisher18_A_Complete",
    text = "IGUI_SFQuest_Questyno_SamFisher18_A_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher18_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher19",
    awardsrep = "LaResistenza;100", -- REP REWARD
    awardsitem = "Base.HuntingKnife;1", -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher19_Lore" },
    text = "IGUI_SFQuest_Questyno_SamFisher19_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher19_Title",
    unlocks = "actionevent;killzombies:30;unlockworldevent:Questyno_SamFisher:SFQuest_Questyno_SamFisher19_Complete", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher20",
    awardstask = "Questyno_SamFisher20_A",
    dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher20_Lore" },
    objectives = { {
        guid = "Questyno_SamFisher20_A",
        text = "IGUI_SFQuest_Questyno_SamFisher20_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoSamFisher20;additem;Base.Seaweed;50"
    } },
    text = "IGUI_SFQuest_Questyno_SamFisher20_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher20_Title",
    unlocks = "clickevent;11286x6582x0:EventoSamFisher20;time:50:anim:loot;updateobjective:Questyno_SamFisher20:1:Completed",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher20_A",
    awardsrep = "LaResistenza;50",
    awardsitem = "Base.Seaweed;15;Base.PlateBlue;1;Base.FishFried;1",
    completesound = "levelup",
    dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher20_A_Lore" },
    needsitem = "Base.Seaweed;50",
    onobtained = "unlockworldevent;Questyno_SamFisher;SFQuest_Questyno_SamFisher20_Complete",
    text = "IGUI_SFQuest_Questyno_SamFisher20_A_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher20_Title",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher21",
    awardsrep = "LaResistenza;60",
    awardsitem = "Money;20",
    completesound = "levelup",
    dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher21_Lore" },
    needsitem = "Base.LogStacks4;2",
    onobtained = "unlockworldevent;Questyno_SamFisher;SFQuest_Questyno_SamFisher21_Complete",
    text = "IGUI_SFQuest_Questyno_SamFisher21_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher21_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher22",
    awardsrep = "LaResistenza;200",
    completesound = "levelup",
    dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher22_Lore" },
    needsitem = "PredicateFreshFood#Base.Worm;20",
    onobtained = "unlockworldevent;Questyno_SamFisher;SFQuest_Questyno_SamFisher22_Complete",
    text = "IGUI_SFQuest_Questyno_SamFisher22_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher22_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher23",
    awardsrep = "LaResistenza;40",
    awardsitem = "Base.BaseballBat;1",
    completesound = "levelup",
    dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher23_Lore" },
    text = "IGUI_SFQuest_Questyno_SamFisher23_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher23_Title",
    unlocks = "actionevent;killzombies:25;unlockworldevent:Questyno_SamFisher:SFQuest_Questyno_SamFisher23_Complete",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher24",
    awardsrep = "LaResistenza;80",
    awardsitem = "Money;30",
    completesound = "levelup",
    dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher24_Lore" },
    needsitem = "Base.BaitFish;5",
    onobtained = "unlockworldevent;Questyno_SamFisher;SFQuest_Questyno_SamFisher24_Complete",
    text = "IGUI_SFQuest_Questyno_SamFisher24_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher24_Title",
    unlockedsound = "QuestUnlocked"
});



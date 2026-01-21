require 'SFQuest_Database'

-- Quest per PamelaPerez
table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PamelaPerez_Intro",

    awardsrep = "PamelaPerez;100",
    -- dailycode = "Questyno_PamelaPerez",
    lore = { "IGUI_SFQuest_Questyno_PamelaPerez_Intro_Lore" },
    ondone = "randomcodedworldfrompool;Questyno_PamelaPerez;Questyno;PamelaPerez",
    text = "IGUI_SFQuest_Questyno_PamelaPerez_Intro_Text",
    texture = "media/textures/Item_PamelaPerez.png",
    title = "IGUI_SFQuest_Questyno_PamelaPerez_Intro_Title",
    unique = true,
    unlockedsound = "QuestUnlocked",
    unlocks = "unlockworldevent;Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez_Intro_Complete",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PamelaPerez1",
    awardsrep = "LaResistenza;100",
    completesound = "levelup",
    dailycode = "Questyno_PamelaPerez",
    lore = { "IGUI_SFQuest_Questyno_PamelaPerez1_Lore" },
    needsitem = "farming.CarrotSeed;24",
    onobtained = "unlockworldevent;Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez1_Complete",
    text = "IGUI_SFQuest_Questyno_PamelaPerez1_Text",
    texture = "media/textures/Item_PamelaPerez.png",
    title = "IGUI_SFQuest_Questyno_PamelaPerez1_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PamelaPerez2",
    awardsrep = "LaResistenza;100",
    awardsitem = "farming.Strewberrie;1",
    completesound = "levelup",
    dailycode = "Questyno_PamelaPerez",
    lore = { "IGUI_SFQuest_Questyno_PamelaPerez2_Lore" },
    needsitem = "farming.BroccoliSeed;24",
    onobtained = "unlockworldevent;Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez2_Complete",
    text = "IGUI_SFQuest_Questyno_PamelaPerez2_Text",
    texture = "media/textures/Item_PamelaPerez.png",
    title = "IGUI_SFQuest_Questyno_PamelaPerez2_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PamelaPerez3",
    awardsrep = "LaResistenza;150",
    awardsitem = "Base.SackProduce_Pear;1",
    completesound = "levelup",
    dailycode = "Questyno_PamelaPerez",
    lore = { "IGUI_SFQuest_Questyno_PamelaPerez3_Lore" },
    needsitem = "Pencil;20",
    onobtained = "unlockworldevent;Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez3_Complete",
    text = "IGUI_SFQuest_Questyno_PamelaPerez3_Text",
    texture = "media/textures/Item_PamelaPerez.png",
    title = "IGUI_SFQuest_Questyno_PamelaPerez3_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PamelaPerez4",
    awardsrep = "LaResistenza;100",
    awardsitem = "Base.CannedBellPepper;1;Base.Carrots;1;Base.Tomato;1;Base.Onion;1;Base.Zucchini;1",
    completesound = "levelup",
    dailycode = "Questyno_PamelaPerez",
    lore = { "IGUI_SFQuest_Questyno_PamelaPerez4_Lore" },
    needsitem = "Base.BoxOfJars;1",
    onobtained = "unlockworldevent;Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez4_Complete",
    text = "IGUI_SFQuest_Questyno_PamelaPerez4_Text",
    texture = "media/textures/Item_PamelaPerez.png",
    title = "IGUI_SFQuest_Questyno_PamelaPerez4_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PamelaPerez5",
    awardsrep = "LaResistenza;200",
    completesound = "levelup",
    dailycode = "Questyno_PamelaPerez",
    lore = { "IGUI_SFQuest_Questyno_PamelaPerez5_Lore" },
    needsitem = "Tag#BottigliaPlastica;20",
    onobtained = "unlockworldevent;Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez5_Complete",
    text = "IGUI_SFQuest_Questyno_PamelaPerez5_Text",
    texture = "media/textures/Item_PamelaPerez.png",
    title = "IGUI_SFQuest_Questyno_PamelaPerez5_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PamelaPerez6",
    awardsrep = "LaResistenza;60",
    completesound = "levelup",
    dailycode = "Questyno_PamelaPerez",
    lore = { "IGUI_SFQuest_Questyno_PamelaPerez6_Lore" },
    needsitem = "Base.SheetRope;60",
    onobtained = "unlockworldevent;Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez6_Complete",
    text = "IGUI_SFQuest_Questyno_PamelaPerez6_Text",
    texture = "media/textures/Item_PamelaPerez.png",
    title = "IGUI_SFQuest_Questyno_PamelaPerez6_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PamelaPerez7",
    awardsrep = "LaResistenza;60",
    completesound = "levelup",
    dailycode = "Questyno_PamelaPerez",
    lore = { "IGUI_SFQuest_Questyno_PamelaPerez7_Lore" },
    needsitem = "Base.TreeBranch;20",
    onobtained = "unlockworldevent;Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez7_Complete",
    text = "IGUI_SFQuest_Questyno_PamelaPerez7_Text",
    texture = "media/textures/Item_PamelaPerez.png",
    title = "IGUI_SFQuest_Questyno_PamelaPerez7_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PamelaPerez8",
    awardsrep = "LaResistenza;70",
    completesound = "levelup",
    dailycode = "Questyno_PamelaPerez",
    lore = { "IGUI_SFQuest_Questyno_PamelaPerez8_Lore" },
    needsitem = "PredicateFreshFood#Base.Grasshopper;10",
    onobtained = "unlockworldevent;Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez8_Complete",
    text = "IGUI_SFQuest_Questyno_PamelaPerez8_Text",
    texture = "media/textures/Item_PamelaPerez.png",
    title = "IGUI_SFQuest_Questyno_PamelaPerez8_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PamelaPerez9",
    awardsrep = "LaResistenza;75",
    awardsitem = "Base.ComfreyCataplasm;1",
    completesound = "levelup",
    dailycode = "Questyno_PamelaPerez",
    lore = { "IGUI_SFQuest_Questyno_PamelaPerez9_Lore" },
    needsitem = "PredicateFreshFood#Base.LemonGrass;10",
    onobtained = "unlockworldevent;Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez9_Complete",
    text = "IGUI_SFQuest_Questyno_PamelaPerez9_Text",
    texture = "media/textures/Item_PamelaPerez.png",
    title = "IGUI_SFQuest_Questyno_PamelaPerez9_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PamelaPerez10",
    awardsrep = "LaResistenza;80",
    completesound = "levelup",
    dailycode = "Questyno_PamelaPerez",
    lore = { "IGUI_SFQuest_Questyno_PamelaPerez10_Lore" },
    needsitem = "PredicateFreshFood#Base.BlackSage;10",
    onobtained = "unlockworldevent;Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez10_Complete",
    text = "IGUI_SFQuest_Questyno_PamelaPerez10_Text",
    texture = "media/textures/Item_PamelaPerez.png",
    title = "IGUI_SFQuest_Questyno_PamelaPerez10_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PamelaPerez11",
    awardsrep = "LaResistenza;95",
    awardsitem = "Base.Smallanimalmeat;2",
    completesound = "levelup",
    dailycode = "Questyno_PamelaPerez",
    lore = { "IGUI_SFQuest_Questyno_PamelaPerez11_Lore" },
    needsitem = "Base.NailsBox;2",
    onobtained = "unlockworldevent;Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez11_Complete",
    text = "IGUI_SFQuest_Questyno_PamelaPerez11_Text",
    texture = "media/textures/Item_PamelaPerez.png",
    title = "IGUI_SFQuest_Questyno_PamelaPerez11_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PamelaPerez12",
    awardsrep = "LaResistenza;120",
    completesound = "levelup",
    dailycode = "Questyno_PamelaPerez",
    lore = { "IGUI_SFQuest_Questyno_PamelaPerez12_Lore" },
    needsitem = "Base.KitchenKnife;3",
    onobtained = "unlockworldevent;Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez12_Complete",
    text = "IGUI_SFQuest_Questyno_PamelaPerez12_Text",
    texture = "media/textures/Item_PamelaPerez.png",
    title = "IGUI_SFQuest_Questyno_PamelaPerez12_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PamelaPerez13",
    awardsrep = "LaResistenza;150",
    awardsitem = "Base.Apple",
    completesound = "levelup",
    dailycode = "Questyno_PamelaPerez",
    lore = { "IGUI_SFQuest_Questyno_PamelaPerez13_Lore" },
    needsitem = "Base.Rake;1",
    onobtained = "unlockworldevent;Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez13_Complete",
    text = "IGUI_SFQuest_Questyno_PamelaPerez13_Text",
    texture = "media/textures/Item_PamelaPerez.png",
    title = "IGUI_SFQuest_Questyno_PamelaPerez13_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PamelaPerez14",
    awardsrep = "LaResistenza;300",
    completesound = "levelup",
    dailycode = "Questyno_PamelaPerez",
    lore = { "IGUI_SFQuest_Questyno_PamelaPerez14_Lore" },
    needsitem = "Tag#BottigliaVetro;20",
    onobtained = "unlockworldevent;Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez14_Complete",
    text = "IGUI_SFQuest_Questyno_PamelaPerez14_Text",
    texture = "media/textures/Item_PamelaPerez.png",
    title = "IGUI_SFQuest_Questyno_PamelaPerez14_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PamelaPerez15",
    awardsrep = "LaResistenza;250",
    awardsitem = "Base.RiceVinegar;1",
    completesound = "levelup",
    dailycode = "Questyno_PamelaPerez",
    lore = { "IGUI_SFQuest_Questyno_PamelaPerez15_Lore" },
    needsitem = "PredicateFreshFood#MushroomGeneric6;1",
    onobtained = "unlockworldevent;Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez15_Complete",
    text = "IGUI_SFQuest_Questyno_PamelaPerez15_Text",
    texture = "media/textures/Item_PamelaPerez.png",
    title = "IGUI_SFQuest_Questyno_PamelaPerez15_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PamelaPerez16",
    awardstask = "Questyno_PamelaPerez16_A",
    dailycode = "Questyno_PamelaPerez",
    lore = { "IGUI_SFQuest_Questyno_PamelaPerez16_Lore" },
    objectives = { {
        guid = "Questyno_PamelaPerez16_A",
        text = "IGUI_SFQuest_Questyno_PamelaPerez16_A",
        hidden = false,
        needsitem = "Base.AxeStone;4",
        onobtained = "updateobjective;Questyno_PamelaPerez16;1;Completed;removeitem;Base.AxeStone;4",
    }, {
        guid = "Questyno_PamelaPerez16_B",
        text = "IGUI_SFQuest_Questyno_PamelaPerez16_B",
        hidden = false,
        needsitem = "Base.SpearCrafted;4",
        onobtained = "updateobjective;Questyno_PamelaPerez16;2;Completed;removeitem;Base.SpearCrafted;4",
    }, {
        guid = "Questyno_PamelaPerez16_C",
        text = "IGUI_SFQuest_Questyno_PamelaPerez16_C",
        hidden = false,
        needsitem = "FlintKnife;4",
        onobtained = "updateobjective;Questyno_PamelaPerez16;3;Completed;removeitem;FlintKnife;4",
    } },
    text = "IGUI_SFQuest_Questyno_PamelaPerez16_Text",
    texture = "media/textures/Item_PamelaPerez.png",
    title = "IGUI_SFQuest_Questyno_PamelaPerez16_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PamelaPerez16_A",
    awardsrep = "LaResistenza;150",
    completesound = "levelup",
    dailycode = "Questyno_PamelaPerez",
    lore = { "IGUI_SFQuest_Questyno_PamelaPerez16_Lore" },
    text = "IGUI_SFQuest_Questyno_PamelaPerez16_A_Text",
    texture = "media/textures/Item_PamelaPerez.png",
    title = "IGUI_SFQuest_Questyno_PamelaPerez16_Title",
    unlocks = "unlockworldevent;Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez16_Complete",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PamelaPerez17",
    awardstask = "Questyno_PamelaPerez17_A",
    dailycode = "Questyno_PamelaPerez",
    lore = { "IGUI_SFQuest_Questyno_PamelaPerez17_Lore" },
    objectives = { {
        guid = "Questyno_PamelaPerez17_A",
        text = "IGUI_SFQuest_Questyno_PamelaPerez17_A",
        hidden = false,
        needsitem = "Base.ScrapMetal;4",
        onobtained = "updateobjective;Questyno_PamelaPerez17;1;Completed;removeitem;Base.ScrapMetal;4",
    }, {
        guid = "Questyno_PamelaPerez17_B",
        text = "IGUI_SFQuest_Questyno_PamelaPerez17_B",
        hidden = false,
        needsitem = "Base.Plank;1",
        onobtained = "updateobjective;Questyno_PamelaPerez17;2;Completed;removeitem;Base.Plank;1",
    } },
    text = "IGUI_SFQuest_Questyno_PamelaPerez17_Text",
    texture = "media/textures/Item_PamelaPerez.png",
    title = "IGUI_SFQuest_Questyno_PamelaPerez17_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PamelaPerez17_A",
    awardsrep = "LaResistenza;50",
    awardsitem = "Base.PickAxe;1",
    completesound = "levelup",
    dailycode = "Questyno_PamelaPerez",
    lore = { "IGUI_SFQuest_Questyno_PamelaPerez17_A_Lore" },
    text = "IGUI_SFQuest_Questyno_PamelaPerez17_A_Text",
    texture = "media/textures/Item_PamelaPerez.png",
    title = "IGUI_SFQuest_Questyno_PamelaPerez17_Title",
    unlocks = "unlockworldevent;Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez17_Complete",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PamelaPerez18",
    awardsrep = "LaResistenza;70",
    completesound = "levelup",
    dailycode = "Questyno_PamelaPerez",
    lore = { "IGUI_SFQuest_Questyno_PamelaPerez18_Lore" },
    needsitem = "RippedSheets;100",
    onobtained = "unlockworldevent;Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez18_Complete",
    text = "IGUI_SFQuest_Questyno_PamelaPerez18_Text",
    texture = "media/textures/Item_PamelaPerez.png",
    title = "IGUI_SFQuest_Questyno_PamelaPerez18_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PamelaPerez19",
    awardstask = "Questyno_PamelaPerez19_A",
    dailycode = "Questyno_PamelaPerez",
    lore = { "IGUI_SFQuest_Questyno_PamelaPerez19_Lore" },
    objectives = { {
        guid = "Questyno_PamelaPerez19_A",
        text = "IGUI_SFQuest_Questyno_PamelaPerez19_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoPamelaPerez19;additem;Base.Doll;1"
    } },
    text = "IGUI_SFQuest_Questyno_PamelaPerez19_Text",
    texture = "media/textures/Item_PamelaPerez.png",
    title = "IGUI_SFQuest_Questyno_PamelaPerez19_Title",
    unlocks = "clickevent;9504x6857x0:EventoPamelaPerez19;time:50:anim:loot;updateobjective:Questyno_PamelaPerez19:1:Completed",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PamelaPerez19_A",
    awardsrep = "LaResistenza;100",
    awardsitem = "Base.BerryBlack;2",
    completesound = "levelup",
    dailycode = "Questyno_PamelaPerez",
    lore = { "IGUI_SFQuest_Questyno_PamelaPerez19_A_Lore" },
    needsitem = "Base.Doll;1",
    onobtained = "unlockworldevent;Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez19_Complete",
    text = "IGUI_SFQuest_Questyno_PamelaPerez19_A_Text",
    texture = "media/textures/Item_PamelaPerez.png",
    title = "IGUI_SFQuest_Questyno_PamelaPerez19_Title",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PamelaPerez20",
    awardsrep = "LaResistenza;100",
    awardsitem = "Money;20;Pot;2",
    completesound = "levelup",
    dailycode = "Questyno_PamelaPerez",
    lore = { "IGUI_SFQuest_Questyno_PamelaPerez20_Lore" },
    needsitem = "PredicateFoodWeight#Base.PotOfSoupRecipe;2;4",
    onobtained = "unlockworldevent;Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez20_Complete",
    text = "IGUI_SFQuest_Questyno_PamelaPerez20_Text",
    texture = "media/textures/Item_PamelaPerez.png",
    title = "IGUI_SFQuest_Questyno_PamelaPerez20_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PamelaPerez21",
    awardstask = "Questyno_PamelaPerez21_A",
    dailycode = "Questyno_PamelaPerez",
    lore = { "IGUI_SFQuest_Questyno_PamelaPerez21_Lore" },
    objectives = { {
        guid = "Questyno_PamelaPerez21_A",
        text = "IGUI_SFQuest_Questyno_PamelaPerez21_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoPamelaPerez21;additem;Base.Mattress;2"
    } },
    text = "IGUI_SFQuest_Questyno_PamelaPerez21_Text",
    texture = "media/textures/Item_PamelaPerez.png",
    title = "IGUI_SFQuest_Questyno_PamelaPerez21_Title",
    unlocks = "clickevent;10934x8492x0:EventoPamelaPerez21;time:50:anim:loot;updateobjective:Questyno_PamelaPerez21:1:Completed",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PamelaPerez21_A",
    awardsrep = "LaResistenza;120",
    completesound = "levelup",
    dailycode = "Questyno_PamelaPerez",
    lore = { "IGUI_SFQuest_Questyno_PamelaPerez21_A_Lore" },
    needsitem = "Base.Mattress;2",
    onobtained = "unlockworldevent;Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez21_Complete",
    text = "IGUI_SFQuest_Questyno_PamelaPerez21_A_Text",
    texture = "media/textures/Item_PamelaPerez.png",
    title = "IGUI_SFQuest_Questyno_PamelaPerez21_Title",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PamelaPerez22",
    awardsrep = "LaResistenza;150",
    completesound = "levelup",
    dailycode = "Questyno_PamelaPerez",
    lore = { "IGUI_SFQuest_Questyno_PamelaPerez22_Lore" },
    needsitem = "Base.AxeStone;15",
    onobtained = "unlockworldevent;Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez22_Complete",
    text = "IGUI_SFQuest_Questyno_PamelaPerez22_Text",
    texture = "media/textures/Item_PamelaPerez.png",
    title = "IGUI_SFQuest_Questyno_PamelaPerez22_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PamelaPerez23",
    awardsrep = "LaResistenza;350",
    awardsitem = "Base.SackProduce_Corn;1",
    completesound = "levelup",
    dailycode = "Questyno_PamelaPerez",
    lore = { "IGUI_SFQuest_Questyno_PamelaPerez23_Lore" },
    needsitem = "Tag#Asciugamano;20",
    onobtained = "unlockworldevent;Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez23_Complete",
    text = "IGUI_SFQuest_Questyno_PamelaPerez23_Text",
    texture = "media/textures/Item_PamelaPerez.png",
    title = "IGUI_SFQuest_Questyno_PamelaPerez23_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PamelaPerez24",
    awardsrep = "LaResistenza;200",
    completesound = "levelup",
    dailycode = "Questyno_PamelaPerez",
    lore = { "IGUI_SFQuest_Questyno_PamelaPerez24_Lore" },
    needsitem = "Tag#Penna;20",
    onobtained = "unlockworldevent;Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez24_Complete",
    text = "IGUI_SFQuest_Questyno_PamelaPerez24_Text",
    texture = "media/textures/Item_PamelaPerez.png",
    title = "IGUI_SFQuest_Questyno_PamelaPerez24_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PamelaPerez25",
    awardstask = "Questyno_PamelaPerez25_A",
    dailycode = "Questyno_PamelaPerez",
    lore = { "IGUI_SFQuest_Questyno_PamelaPerez25_Lore" },
    objectives = { {
        guid = "Questyno_PamelaPerez25_A",
        text = "IGUI_SFQuest_Questyno_PamelaPerez25_A",
        hidden = false,
        needsitem = "farming.BroccoliBagSeed;1",
        onobtained = "updateobjective;Questyno_PamelaPerez25;1;Completed;removeitem;farming.BroccoliBagSeed;1",
    }, {
        guid = "Questyno_PamelaPerez25_B",
        text = "IGUI_SFQuest_Questyno_PamelaPerez25_B",
        hidden = false,
        needsitem = "farming.CarrotBagSeed;1",
        onobtained = "updateobjective;Questyno_PamelaPerez25;2;Completed;removeitem;farming.CarrotBagSeed;1",
    }, {
        guid = "Questyno_PamelaPerez25_C",
        text = "IGUI_SFQuest_Questyno_PamelaPerez25_C",
        hidden = false,
        needsitem = "farming.StrewberrieBagSeed;1",
        onobtained = "updateobjective;Questyno_PamelaPerez25;3;Completed;removeitem;farming.StrewberrieBagSeed;1",
    }, {
        guid = "Questyno_PamelaPerez25_D",
        text = "IGUI_SFQuest_Questyno_PamelaPerez25_D",
        hidden = false,
        needsitem = "farming.PotatoBagSeed;1",
        onobtained = "updateobjective;Questyno_PamelaPerez25;4;Completed;removeitem;farming.PotatoBagSeed;1",
    }, {
        guid = "Questyno_PamelaPerez25_E",
        text = "IGUI_SFQuest_Questyno_PamelaPerez25_E",
        hidden = false,
        needsitem = "farming.TomatoBagSeed;1",
        onobtained = "updateobjective;Questyno_PamelaPerez25;5;Completed;removeitem;farming.TomatoBagSeed;1",
    } },
    text = "IGUI_SFQuest_Questyno_PamelaPerez25_Text",
    texture = "media/textures/Item_PamelaPerez.png",
    title = "IGUI_SFQuest_Questyno_PamelaPerez25_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PamelaPerez25_A",
    awardsrep = "LaResistenza;450",
    awardsitem = "Base.SackProduce_Lettuce;1",
    completesound = "levelup",
    dailycode = "Questyno_PamelaPerez",
    lore = { "IGUI_SFQuest_Questyno_PamelaPerez25_Lore" },
    text = "IGUI_SFQuest_Questyno_PamelaPerez25_A_Text",
    texture = "media/textures/Item_PamelaPerez.png",
    title = "IGUI_SFQuest_Questyno_PamelaPerez25_Title",
    unlocks = "unlockworldevent;Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez25_Complete",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PamelaPerez26",

    awardsrep = "LaResistenza;400", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_PamelaPerez",
    lore = { "IGUI_SFQuest_Questyno_PamelaPerez26_Lore" },
    needsitem = "PredicateFreshFood#MushroomGeneric3;1", -- REQUIRE
    onobtained ="unlockworldevent;Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez26_Complete",
    text = "IGUI_SFQuest_Questyno_PamelaPerez26_Text",
    texture = "media/textures/Item_PamelaPerez.png",
    title = "IGUI_SFQuest_Questyno_PamelaPerez26_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PamelaPerez27",

    awardsrep = "LaResistenza;350", -- REP REWARD
    awardsitem = "Base.GardenFork",  -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_PamelaPerez",
    lore = { "IGUI_SFQuest_Questyno_PamelaPerez27_Lore" },
    needsitem = "PredicateFreshFood#MushroomGeneric2;1", -- REQUIRE
    onobtained ="unlockworldevent;Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez27_Complete",
    text = "IGUI_SFQuest_Questyno_PamelaPerez27_Text",
    texture = "media/textures/Item_PamelaPerez.png",
    title = "IGUI_SFQuest_Questyno_PamelaPerez27_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool,  {
    guid = "Questyno_PamelaPerez28",

    awardsrep = "LaResistenza;350", -- REP REWARD
    awardsitem = "SOMW.CricketBatNails",  -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_PamelaPerez",
    lore = { "IGUI_SFQuest_Questyno_PamelaPerez28_Lore" },
    needsitem = "PredicateFreshFood#MushroomGeneric1;1", -- REQUIRE
    onobtained ="unlockworldevent;Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez28_Complete",
    text = "IGUI_SFQuest_Questyno_PamelaPerez28_Text",
    texture = "media/textures/Item_PamelaPerez.png",
    title = "IGUI_SFQuest_Questyno_PamelaPerez28_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PamelaPerez29",

    awardsrep = "LaResistenza;350", -- REP REWARD
    awardsitem = "Base.OilOlive",  -- ITEM REWARD
    dailycode = "Questyno_PamelaPerez",
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_PamelaPerez29_Lore" },
    needsitem = "PredicateFreshFood#MushroomGeneric7;1",
    onobtained = "unlockworldevent;Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez29_Complete",
    text = "IGUI_SFQuest_Questyno_PamelaPerez29_Text",
    texture = "media/textures/Item_PamelaPerez.png",
    title = "IGUI_SFQuest_Questyno_PamelaPerez29_Title",
    unlockedsound = "QuestUnlocked"
})



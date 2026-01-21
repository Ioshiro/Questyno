require 'SFQuest_Database'

-- Quest per RyanParker
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
    awardsrep = "LaResistenza;600",
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
    awardsrep = "LaResistenza;600",
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
    unlocks = "clickevent;3977x7672x0:EventoRyanParker6;time:50:anim:loot;updateobjective:Questyno_RyanParker6:1:Completed",
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
    awardsrep = "LaResistenza;2000",
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
    unlocks = "clickevent;4187x9236x1:EventoRyanParker12;time:50:anim:loot;updateobjective:Questyno_RyanParker12:1:Completed",
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
    awardsrep = "LaResistenza;1000",
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
    awardsrep = "LaResistenza;1800",
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
    awardsrep = "LaResistenza;1600",
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
    awardsrep = "LaResistenza;3000",
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
    awardsrep = "LaResistenza;3000",
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



require 'SFQuest_Database'

-- Quest per GabrielWalker
table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_GabrielWalker_Intro",

    awardsrep = "GabrielWalker;100",
    completesound = "levelup",
    dailycode = "Questyno_GabrielWalker",
    lore = { "IGUI_SFQuest_Questyno_GabrielWalker_Intro_Lore" },
    text = "IGUI_SFQuest_Questyno_GabrielWalker_Intro_Text",
    texture = "media/textures/Item_GabrielWalker.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_GabrielWalker;SFQuest_Questyno_GabrielWalker_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_GabrielWalker_Intro_Title",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_GabrielWalker1",

    awardstask = "Questyno_GabrielWalker1_A",
    dailycode = "Questyno_GabrielWalker",
    lore = { "IGUI_SFQuest_Questyno_GabrielWalker1_Lore" },
    needsitem = "Money;20",
    onobtained = "unlockworldevent;Questyno_GabrielWalker;SFQuest_Questyno_GabrielWalker1_Complete",
    text = "IGUI_SFQuest_Questyno_GabrielWalker1_Text",
    texture = "media/textures/Item_GabrielWalker.png",
    title = "IGUI_SFQuest_Questyno_GabrielWalker1_Title",
    unlockedsound = "QuestUnlocked",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_GabrielWalker1_A",

    awardsrep = "LaResistenza;50",
    awardsitem = "MoneyToXP.Droga2;1",
    completesound = "levelup",
    dailycode = "Questyno_GabrielWalker",
    lore = { "IGUI_SFQuest_Questyno_GabrielWalker1_A_Lore" },
    objectives = {{
        guid = "Questyno_GabrielWalker1_A",
        text = "IGUI_SFQuest_Questyno_GabrielWalker1_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoGabrielWalker1",
    }},
    text = "IGUI_SFQuest_Questyno_GabrielWalker1_A_Text",
    texture = "media/textures/Item_GabrielWalker.png",
    title = "IGUI_SFQuest_Questyno_GabrielWalker1_Title",
    unlocks = "clickevent;8353x7515x0:EventoGabrielWalker1;time:50:anim:loot;updateobjective:Questyno_GabrielWalker1_A:1:Completed",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_GabrielWalker2",

    awardstask = "Questyno_GabrielWalker2_A",
    dailycode = "Questyno_GabrielWalker",
    lore = { "IGUI_SFQuest_Questyno_GabrielWalker2_Lore" },
    needsitem = "Money;15",
    onobtained = "unlockworldevent;Questyno_GabrielWalker;SFQuest_Questyno_GabrielWalker2_Complete",
    text = "IGUI_SFQuest_Questyno_GabrielWalker2_Text",
    texture = "media/textures/Item_GabrielWalker.png",
    title = "IGUI_SFQuest_Questyno_GabrielWalker2_Title",
    unlockedsound = "QuestUnlocked",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_GabrielWalker2_A",

    awardsrep = "LaResistenza;50",
    awardsitem = "MoneyToXP.Droga2;1",
    completesound = "levelup",
    dailycode = "Questyno_GabrielWalker",
    lore = { "IGUI_SFQuest_Questyno_GabrielWalker2_A_Lore" },
    objectives = {{
        guid = "Questyno_GabrielWalker2_A",
        text = "IGUI_SFQuest_Questyno_GabrielWalker2_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoGabrielWalker2",
    }},
    text = "IGUI_SFQuest_Questyno_GabrielWalker2_A_Text",
    texture = "media/textures/Item_GabrielWalker.png",
    title = "IGUI_SFQuest_Questyno_GabrielWalker2_Title",
    unlocks = "clickevent;10230x8317x0:EventoGabrielWalker2;time:50:anim:loot;updateobjective:Questyno_GabrielWalker2_A:1:Completed",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_GabrielWalker3",

    awardstask = "Questyno_GabrielWalker3_A",
    dailycode = "Questyno_GabrielWalker",
    lore = { "IGUI_SFQuest_Questyno_GabrielWalker3_Lore" },
    needsitem = "Money;10",
    onobtained = "unlockworldevent;Questyno_GabrielWalker;SFQuest_Questyno_GabrielWalker3_Complete",
    text = "IGUI_SFQuest_Questyno_GabrielWalker3_Text",
    texture = "media/textures/Item_GabrielWalker.png",
    title = "IGUI_SFQuest_Questyno_GabrielWalker3_Title",
    unlockedsound = "QuestUnlocked",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_GabrielWalker3_A",

    awardsrep = "LaResistenza;50",
    awardsitem = "MoneyToXP.Droga2;1",
    completesound = "levelup",
    dailycode = "Questyno_GabrielWalker",
    lore = { "IGUI_SFQuest_Questyno_GabrielWalker3_A_Lore" },
    objectives = {{
        guid = "Questyno_GabrielWalker3_A",
        text = "IGUI_SFQuest_Questyno_GabrielWalker3_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoGabrielWalker3",
    }},
    text = "IGUI_SFQuest_Questyno_GabrielWalker3_A_Text",
    texture = "media/textures/Item_GabrielWalker.png",
    title = "IGUI_SFQuest_Questyno_GabrielWalker3_Title",
    unlocks = "clickevent;9196x9997x0:EventoGabrielWalker3;time:50:anim:loot;updateobjective:Questyno_GabrielWalker3_A:1:Completed",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_GabrielWalker4",

    awardstask = "Questyno_GabrielWalker4_A",
    dailycode = "Questyno_GabrielWalker",
    lore = { "IGUI_SFQuest_Questyno_GabrielWalker4_Lore" },
    needsitem = "Money;10",
    onobtained = "unlockworldevent;Questyno_GabrielWalker;SFQuest_Questyno_GabrielWalker4_Complete",
    text = "IGUI_SFQuest_Questyno_GabrielWalker4_Text",
    texture = "media/textures/Item_GabrielWalker.png",
    title = "IGUI_SFQuest_Questyno_GabrielWalker4_Title",
    unlockedsound = "QuestUnlocked",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_GabrielWalker4_A",

    awardsrep = "LaResistenza;50",
    awardsitem = "MoneyToXP.Droga2;1",
    completesound = "levelup",
    dailycode = "Questyno_GabrielWalker",
    lore = { "IGUI_SFQuest_Questyno_GabrielWalker4_A_Lore" },
    objectives = {{
        guid = "Questyno_GabrielWalker4_A",
        text = "IGUI_SFQuest_Questyno_GabrielWalker4_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoGabrielWalker4",
    }},
    text = "IGUI_SFQuest_Questyno_GabrielWalker4_A_Text",
    texture = "media/textures/Item_GabrielWalker.png",
    title = "IGUI_SFQuest_Questyno_GabrielWalker4_Title",
    unlocks = "clickevent;7019x8211x0:EventoGabrielWalker4;time:50:anim:loot;updateobjective:Questyno_GabrielWalker4_A:1:Completed",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_GabrielWalker5",

    awardstask = "Questyno_GabrielWalker5_A",
    dailycode = "Questyno_GabrielWalker",
    lore = { "IGUI_SFQuest_Questyno_GabrielWalker5_Lore" },
    needsitem = "Money;20",
    onobtained = "unlockworldevent;Questyno_GabrielWalker;SFQuest_Questyno_GabrielWalker5_Complete",
    text = "IGUI_SFQuest_Questyno_GabrielWalker5_Text",
    texture = "media/textures/Item_GabrielWalker.png",
    title = "IGUI_SFQuest_Questyno_GabrielWalker5_Title",
    unlockedsound = "QuestUnlocked",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_GabrielWalker5_A",

    awardsrep = "LaResistenza;50",
    awardsitem = "MoneyToXP.Droga2;1",
    completesound = "levelup",
    dailycode = "Questyno_GabrielWalker",
    lore = { "IGUI_SFQuest_Questyno_GabrielWalker5_A_Lore" },
    objectives = {{
        guid = "Questyno_GabrielWalker5_A",
        text = "IGUI_SFQuest_Questyno_GabrielWalker5_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoGabrielWalker5",
    }},
    text = "IGUI_SFQuest_Questyno_GabrielWalker5_A_Text",
    texture = "media/textures/Item_GabrielWalker.png",
    title = "IGUI_SFQuest_Questyno_GabrielWalker5_Title",
    unlocks = "clickevent;8835x9942x0:EventoGabrielWalker5;time:50:anim:loot;updateobjective:Questyno_GabrielWalker5_A:1:Completed",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_GabrielWalker6",

    awardstask = "Questyno_GabrielWalker6_A",
    dailycode = "Questyno_GabrielWalker",
    lore = { "IGUI_SFQuest_Questyno_GabrielWalker6_Lore" },
    needsitem = "Money;25",
    onobtained = "unlockworldevent;Questyno_GabrielWalker;SFQuest_Questyno_GabrielWalker6_Complete",
    text = "IGUI_SFQuest_Questyno_GabrielWalker6_Text",
    texture = "media/textures/Item_GabrielWalker.png",
    title = "IGUI_SFQuest_Questyno_GabrielWalker6_Title",
    unlockedsound = "QuestUnlocked",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_GabrielWalker6_A",

    awardsrep = "LaResistenza;50",
    awardsitem = "MoneyToXP.Droga2;1",
    completesound = "levelup",
    dailycode = "Questyno_GabrielWalker",
    lore = { "IGUI_SFQuest_Questyno_GabrielWalker6_A_Lore" },
    objectives = {{
        guid = "Questyno_GabrielWalker6_A",
        text = "IGUI_SFQuest_Questyno_GabrielWalker6_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoGabrielWalker6",
    }},
    text = "IGUI_SFQuest_Questyno_GabrielWalker6_A_Text",
    texture = "media/textures/Item_GabrielWalker.png",
    title = "IGUI_SFQuest_Questyno_GabrielWalker6_Title",
    unlocks = "clickevent;8185x9628x0:EventoGabrielWalker6;time:50:anim:loot;updateobjective:Questyno_GabrielWalker6_A:1:Completed",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_GabrielWalker7",

    awardstask = "Questyno_GabrielWalker7_A",
    dailycode = "Questyno_GabrielWalker",
    lore = { "IGUI_SFQuest_Questyno_GabrielWalker7_Lore" },
    needsitem = "Money;20",
    onobtained = "unlockworldevent;Questyno_GabrielWalker;SFQuest_Questyno_GabrielWalker7_Complete",
    text = "IGUI_SFQuest_Questyno_GabrielWalker7_Text",
    texture = "media/textures/Item_GabrielWalker.png",
    title = "IGUI_SFQuest_Questyno_GabrielWalker7_Title",
    unlockedsound = "QuestUnlocked",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_GabrielWalker7_A",

    awardsrep = "LaResistenza;50",
    awardsitem = "MoneyToXP.Droga2;1",
    completesound = "levelup",
    dailycode = "Questyno_GabrielWalker",
    lore = { "IGUI_SFQuest_Questyno_GabrielWalker7_A_Lore" },
    objectives = {{
        guid = "Questyno_GabrielWalker7_A",
        text = "IGUI_SFQuest_Questyno_GabrielWalker7_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoGabrielWalker7",
    }},
    text = "IGUI_SFQuest_Questyno_GabrielWalker7_A_Text",
    texture = "media/textures/Item_GabrielWalker.png",
    title = "IGUI_SFQuest_Questyno_GabrielWalker7_Title",
    unlocks = "clickevent;8034x9761x1:EventoGabrielWalker7;time:50:anim:loot;updateobjective:Questyno_GabrielWalker7_A:1:Completed",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_GabrielWalker8",

    awardstask = "Questyno_GabrielWalker8_A",
    dailycode = "Questyno_GabrielWalker",
    lore = { "IGUI_SFQuest_Questyno_GabrielWalker8_Lore" },
    needsitem = "Money;25",
    onobtained = "unlockworldevent;Questyno_GabrielWalker;SFQuest_Questyno_GabrielWalker8_Complete",
    text = "IGUI_SFQuest_Questyno_GabrielWalker8_Text",
    texture = "media/textures/Item_GabrielWalker.png",
    title = "IGUI_SFQuest_Questyno_GabrielWalker8_Title",
    unlockedsound = "QuestUnlocked",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_GabrielWalker8_A",

    awardsrep = "LaResistenza;50",
    awardsitem = "MoneyToXP.Droga2;1",
    completesound = "levelup",
    dailycode = "Questyno_GabrielWalker",
    lore = { "IGUI_SFQuest_Questyno_GabrielWalker8_A_Lore" },
    objectives = {{
        guid = "Questyno_GabrielWalker8_A",
        text = "IGUI_SFQuest_Questyno_GabrielWalker8_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoGabrielWalker8",
    }},
    text = "IGUI_SFQuest_Questyno_GabrielWalker8_A_Text",
    texture = "media/textures/Item_GabrielWalker.png",
    title = "IGUI_SFQuest_Questyno_GabrielWalker8_Title",
    unlocks = "clickevent;10751x9563x0:EventoGabrielWalker8;time:50:anim:loot;updateobjective:Questyno_GabrielWalker8_A:1:Completed",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_GabrielWalker9",

    awardstask = "Questyno_GabrielWalker9_A",
    dailycode = "Questyno_GabrielWalker",
    lore = { "IGUI_SFQuest_Questyno_GabrielWalker9_Lore" },
    needsitem = "Money;30",
    onobtained = "unlockworldevent;Questyno_GabrielWalker;SFQuest_Questyno_GabrielWalker9_Complete",
    text = "IGUI_SFQuest_Questyno_GabrielWalker9_Text",
    texture = "media/textures/Item_GabrielWalker.png",
    title = "IGUI_SFQuest_Questyno_GabrielWalker9_Title",
    unlockedsound = "QuestUnlocked",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_GabrielWalker9_A",

    awardsrep = "LaResistenza;50",
    awardsitem = "MoneyToXP.Droga3;1",
    completesound = "levelup",
    dailycode = "Questyno_GabrielWalker",
    lore = { "IGUI_SFQuest_Questyno_GabrielWalker9_A_Lore" },
    objectives = {{
        guid = "Questyno_GabrielWalker9_A",
        text = "IGUI_SFQuest_Questyno_GabrielWalker9_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoGabrielWalker9",
    }},
    text = "IGUI_SFQuest_Questyno_GabrielWalker9_A_Text",
    texture = "media/textures/Item_GabrielWalker.png",
    title = "IGUI_SFQuest_Questyno_GabrielWalker9_Title",
    unlocks = "clickevent;7651x10397x0:EventoGabrielWalker9;time:50:anim:loot;updateobjective:Questyno_GabrielWalker9_A:1:Completed",
});



require 'SFQuest_Database'

-- Quest per DorianPrescott
table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DorianPrescott_Intro",

    awardsrep = "DorianPrescott;100",
    completesound = "levelup",
    dailycode = "Questyno_DorianPrescott",
    lore = { "IGUI_SFQuest_Questyno_DorianPrescott_Intro_Lore" },
    text = "IGUI_SFQuest_Questyno_DorianPrescott_Intro_Text",
    texture = "media/textures/Item_DorianPrescott.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_DorianPrescott;SFQuest_Questyno_DorianPrescott_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_DorianPrescott_Intro_Title",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DorianPrescott1",

    awardstask = "Questyno_DorianPrescott1_A",
    dailycode = "Questyno_DorianPrescott",
    lore = { "IGUI_SFQuest_Questyno_DorianPrescott1_Lore" },
    needsitem = "Money;30",
    onobtained = "unlockworldevent;Questyno_DorianPrescott;SFQuest_Questyno_DorianPrescott1_Complete",
    text = "IGUI_SFQuest_Questyno_DorianPrescott1_Text",
    texture = "media/textures/Item_DorianPrescott.png",
    title = "IGUI_SFQuest_Questyno_DorianPrescott1_Title",
    unlockedsound = "QuestUnlocked",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DorianPrescott1_A",

    awardsrep = "LaResistenza;150",
    awardsitem = "MoneyToXP.Droga3;1",
    completesound = "levelup",
    dailycode = "Questyno_DorianPrescott",
    lore = { "IGUI_SFQuest_Questyno_DorianPrescott1_A_Lore" },
    objectives = {{
        guid = "Questyno_DorianPrescott1_A",
        text = "IGUI_SFQuest_Questyno_DorianPrescott1_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoDorianPrescott1",
    }},
    text = "IGUI_SFQuest_Questyno_DorianPrescott1_A_Text",
    texture = "media/textures/Item_DorianPrescott.png",
    title = "IGUI_SFQuest_Questyno_DorianPrescott1_Title",
    unlocks = "clickevent;3716x7674x1:EventoDorianPrescott1;time:50:anim:loot;updateobjective:Questyno_DorianPrescott1_A:1:Completed",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DorianPrescott2",

    awardstask = "Questyno_DorianPrescott2_A",
    dailycode = "Questyno_DorianPrescott",
    lore = { "IGUI_SFQuest_Questyno_DorianPrescott2_Lore" },
    needsitem = "Money;30",
    onobtained = "unlockworldevent;Questyno_DorianPrescott;SFQuest_Questyno_DorianPrescott2_Complete",
    text = "IGUI_SFQuest_Questyno_DorianPrescott2_Text",
    texture = "media/textures/Item_DorianPrescott.png",
    title = "IGUI_SFQuest_Questyno_DorianPrescott2_Title",
    unlockedsound = "QuestUnlocked",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DorianPrescott2_A",

    awardsrep = "LaResistenza;150",
    awardsitem = "MoneyToXP.Droga3;1",
    completesound = "levelup",
    dailycode = "Questyno_DorianPrescott",
    lore = { "IGUI_SFQuest_Questyno_DorianPrescott2_A_Lore" },
    objectives = {{
        guid = "Questyno_DorianPrescott2_A",
        text = "IGUI_SFQuest_Questyno_DorianPrescott2_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoDorianPrescott2",
    }},
    text = "IGUI_SFQuest_Questyno_DorianPrescott2_A_Text",
    texture = "media/textures/Item_DorianPrescott.png",
    title = "IGUI_SFQuest_Questyno_DorianPrescott2_Title",
    unlocks = "clickevent;5288x9431x0:EventoDorianPrescott2;time:50:anim:loot;updateobjective:Questyno_DorianPrescott2_A:1:Completed",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DorianPrescott3",

    awardstask = "Questyno_DorianPrescott3_A",
    dailycode = "Questyno_DorianPrescott",
    lore = { "IGUI_SFQuest_Questyno_DorianPrescott3_Lore" },
    needsitem = "Money;30",
    onobtained = "unlockworldevent;Questyno_DorianPrescott;SFQuest_Questyno_DorianPrescott3_Complete",
    text = "IGUI_SFQuest_Questyno_DorianPrescott3_Text",
    texture = "media/textures/Item_DorianPrescott.png",
    title = "IGUI_SFQuest_Questyno_DorianPrescott3_Title",
    unlockedsound = "QuestUnlocked",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DorianPrescott3_A",

    awardsrep = "LaResistenza;150",
    awardsitem = "MoneyToXP.Droga3;1",
    completesound = "levelup",
    dailycode = "Questyno_DorianPrescott",
    lore = { "IGUI_SFQuest_Questyno_DorianPrescott3_A_Lore" },
    objectives = {{
        guid = "Questyno_DorianPrescott3_A",
        text = "IGUI_SFQuest_Questyno_DorianPrescott3_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoDorianPrescott3",
    }},
    text = "IGUI_SFQuest_Questyno_DorianPrescott3_A_Text",
    texture = "media/textures/Item_DorianPrescott.png",
    title = "IGUI_SFQuest_Questyno_DorianPrescott3_Title",
    unlocks = "clickevent;5546x10914x0:EventoDorianPrescott3;time:50:anim:loot;updateobjective:Questyno_DorianPrescott3_A:1:Completed",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DorianPrescott4",

    awardstask = "Questyno_DorianPrescott4_A",
    dailycode = "Questyno_DorianPrescott",
    lore = { "IGUI_SFQuest_Questyno_DorianPrescott4_Lore" },
    needsitem = "Money;30",
    onobtained = "unlockworldevent;Questyno_DorianPrescott;SFQuest_Questyno_DorianPrescott4_Complete",
    text = "IGUI_SFQuest_Questyno_DorianPrescott4_Text",
    texture = "media/textures/Item_DorianPrescott.png",
    title = "IGUI_SFQuest_Questyno_DorianPrescott4_Title",
    unlockedsound = "QuestUnlocked",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DorianPrescott4_A",

    awardsrep = "LaResistenza;150",
    awardsitem = "MoneyToXP.Droga3;1",
    completesound = "levelup",
    dailycode = "Questyno_DorianPrescott",
    lore = { "IGUI_SFQuest_Questyno_DorianPrescott4_A_Lore" },
    objectives = {{
        guid = "Questyno_DorianPrescott4_A",
        text = "IGUI_SFQuest_Questyno_DorianPrescott4_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoDorianPrescott4",
    }},
    text = "IGUI_SFQuest_Questyno_DorianPrescott4_A_Text",
    texture = "media/textures/Item_DorianPrescott.png",
    title = "IGUI_SFQuest_Questyno_DorianPrescott4_Title",
    unlocks = "clickevent;7682x10299x0:EventoDorianPrescott4;time:50:anim:loot;updateobjective:Questyno_DorianPrescott4_A:1:Completed",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DorianPrescott5",

    awardstask = "Questyno_DorianPrescott5_A",
    dailycode = "Questyno_DorianPrescott",
    lore = { "IGUI_SFQuest_Questyno_DorianPrescott5_Lore" },
    needsitem = "Money;30",
    onobtained = "unlockworldevent;Questyno_DorianPrescott;SFQuest_Questyno_DorianPrescott5_Complete",
    text = "IGUI_SFQuest_Questyno_DorianPrescott5_Text",
    texture = "media/textures/Item_DorianPrescott.png",
    title = "IGUI_SFQuest_Questyno_DorianPrescott5_Title",
    unlockedsound = "QuestUnlocked",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DorianPrescott5_A",

    awardsrep = "LaResistenza;150",
    awardsitem = "MoneyToXP.Droga3;1",
    completesound = "levelup",
    dailycode = "Questyno_DorianPrescott",
    lore = { "IGUI_SFQuest_Questyno_DorianPrescott5_A_Lore" },
    objectives = {{
        guid = "Questyno_DorianPrescott5_A",
        text = "IGUI_SFQuest_Questyno_DorianPrescott5_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoDorianPrescott5",
    }},
    text = "IGUI_SFQuest_Questyno_DorianPrescott5_A_Text",
    texture = "media/textures/Item_DorianPrescott.png",
    title = "IGUI_SFQuest_Questyno_DorianPrescott5_Title",
    unlocks = "clickevent;8208x11673x0:EventoDorianPrescott5;time:50:anim:loot;updateobjective:Questyno_DorianPrescott5_A:1:Completed",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DorianPrescott6",

    awardstask = "Questyno_DorianPrescott6_A",
    dailycode = "Questyno_DorianPrescott",
    lore = { "IGUI_SFQuest_Questyno_DorianPrescott6_Lore" },
    needsitem = "Money;30",
    onobtained = "unlockworldevent;Questyno_DorianPrescott;SFQuest_Questyno_DorianPrescott6_Complete",
    text = "IGUI_SFQuest_Questyno_DorianPrescott6_Text",
    texture = "media/textures/Item_DorianPrescott.png",
    title = "IGUI_SFQuest_Questyno_DorianPrescott6_Title",
    unlockedsound = "QuestUnlocked",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DorianPrescott6_A",

    awardsrep = "LaResistenza;150",
    awardsitem = "MoneyToXP.Droga3;1",
    completesound = "levelup",
    dailycode = "Questyno_DorianPrescott",
    lore = { "IGUI_SFQuest_Questyno_DorianPrescott6_A_Lore" },
    objectives = {{
        guid = "Questyno_DorianPrescott6_A",
        text = "IGUI_SFQuest_Questyno_DorianPrescott6_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoDorianPrescott6",
    }},
    text = "IGUI_SFQuest_Questyno_DorianPrescott6_A_Text",
    texture = "media/textures/Item_DorianPrescott.png",
    title = "IGUI_SFQuest_Questyno_DorianPrescott6_Title",
    unlocks = "clickevent;6823x11516x0:EventoDorianPrescott6;time:50:anim:loot;updateobjective:Questyno_DorianPrescott6_A:1:Completed",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DorianPrescott7",

    awardstask = "Questyno_DorianPrescott7_A",
    dailycode = "Questyno_DorianPrescott",
    lore = { "IGUI_SFQuest_Questyno_DorianPrescott7_Lore" },
    needsitem = "Money;30",
    onobtained = "unlockworldevent;Questyno_DorianPrescott;SFQuest_Questyno_DorianPrescott7_Complete",
    text = "IGUI_SFQuest_Questyno_DorianPrescott7_Text",
    texture = "media/textures/Item_DorianPrescott.png",
    title = "IGUI_SFQuest_Questyno_DorianPrescott7_Title",
    unlockedsound = "QuestUnlocked",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DorianPrescott7_A",

    awardsrep = "LaResistenza;150",
    awardsitem = "MoneyToXP.Droga3;1",
    completesound = "levelup",
    dailycode = "Questyno_DorianPrescott",
    lore = { "IGUI_SFQuest_Questyno_DorianPrescott7_A_Lore" },
    objectives = {{
        guid = "Questyno_DorianPrescott7_A",
        text = "IGUI_SFQuest_Questyno_DorianPrescott7_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoDorianPrescott7",
    }},
    text = "IGUI_SFQuest_Questyno_DorianPrescott7_A_Text",
    texture = "media/textures/Item_DorianPrescott.png",
    title = "IGUI_SFQuest_Questyno_DorianPrescott7_Title",
    unlocks = "clickevent;4677x10060x1:EventoDorianPrescott7;time:50:anim:loot;updateobjective:Questyno_DorianPrescott7_A:1:Completed",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DorianPrescott8",

    awardstask = "Questyno_DorianPrescott8_A",
    dailycode = "Questyno_DorianPrescott",
    lore = { "IGUI_SFQuest_Questyno_DorianPrescott8_Lore" },
    needsitem = "Money;30",
    onobtained = "unlockworldevent;Questyno_DorianPrescott;SFQuest_Questyno_DorianPrescott8_Complete",
    text = "IGUI_SFQuest_Questyno_DorianPrescott8_Text",
    texture = "media/textures/Item_DorianPrescott.png",
    title = "IGUI_SFQuest_Questyno_DorianPrescott8_Title",
    unlockedsound = "QuestUnlocked",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DorianPrescott8_A",

    awardsrep = "LaResistenza;200",
    awardsitem = "MoneyToXP.Droga3;1",
    completesound = "levelup",
    dailycode = "Questyno_DorianPrescott",
    lore = { "IGUI_SFQuest_Questyno_DorianPrescott8_A_Lore" },
    objectives = {{
        guid = "Questyno_DorianPrescott8_A",
        text = "IGUI_SFQuest_Questyno_DorianPrescott8_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoDorianPrescott8",
    }},
    text = "IGUI_SFQuest_Questyno_DorianPrescott8_A_Text",
    texture = "media/textures/Item_DorianPrescott.png",
    title = "IGUI_SFQuest_Questyno_DorianPrescott8_Title",
    unlocks = "clickevent;5046x5862x0:EventoDorianPrescott8;time:50:anim:loot;updateobjective:Questyno_DorianPrescott8_A:1:Completed",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DorianPrescott9",

    awardstask = "Questyno_DorianPrescott9_A",
    dailycode = "Questyno_DorianPrescott",
    lore = { "IGUI_SFQuest_Questyno_DorianPrescott9_Lore" },
    needsitem = "Money;30",
    onobtained = "unlockworldevent;Questyno_DorianPrescott;SFQuest_Questyno_DorianPrescott9_Complete",
    text = "IGUI_SFQuest_Questyno_DorianPrescott9_Text",
    texture = "media/textures/Item_DorianPrescott.png",
    title = "IGUI_SFQuest_Questyno_DorianPrescott9_Title",
    unlockedsound = "QuestUnlocked",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DorianPrescott9_A",

    awardsrep = "LaResistenza;150",
    awardsitem = "MoneyToXP.Droga3;1",
    completesound = "levelup",
    dailycode = "Questyno_DorianPrescott",
    lore = { "IGUI_SFQuest_Questyno_DorianPrescott9_A_Lore" },
    objectives = {{
        guid = "Questyno_DorianPrescott9_A",
        text = "IGUI_SFQuest_Questyno_DorianPrescott9_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoDorianPrescott9",
    }},
    text = "IGUI_SFQuest_Questyno_DorianPrescott9_A_Text",
    texture = "media/textures/Item_DorianPrescott.png",
    title = "IGUI_SFQuest_Questyno_DorianPrescott9_Title",
    unlocks = "clickevent;3474x7215x1:EventoDorianPrescott9;time:50:anim:loot;updateobjective:Questyno_DorianPrescott9_A:1:Completed",
});



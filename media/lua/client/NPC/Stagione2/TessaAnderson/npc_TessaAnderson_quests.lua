require 'SFQuest_Database'

-- Quest per TessaAnderson
table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TessaAnderson_Intro",

    awardsrep = "TessaAnderson;100",
    completesound = "levelup",
    dailycode = "Questyno_TessaAnderson",
    lore = { "IGUI_SFQuest_Questyno_TessaAnderson_Intro_Lore" },
    text = "IGUI_SFQuest_Questyno_TessaAnderson_Intro_Text",
    texture = "media/textures/Item_TessaAnderson.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_TessaAnderson;SFQuest_Questyno_TessaAnderson_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_TessaAnderson_Intro_Title",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TessaAnderson1",

    awardstask = "Questyno_TessaAnderson1_A",
    dailycode = "Questyno_TessaAnderson",
    lore = { "IGUI_SFQuest_Questyno_TessaAnderson1_Lore" },
    needsitem = "Tag#Golden;150",
    onobtained = "unlockworldevent;Questyno_TessaAnderson;SFQuest_Questyno_TessaAnderson1_Complete",
    text = "IGUI_SFQuest_Questyno_TessaAnderson1_Text",
    texture = "media/textures/Item_TessaAnderson.png",
    title = "IGUI_SFQuest_Questyno_TessaAnderson1_Title",
    unlockedsound = "QuestUnlocked",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TessaAnderson1_A",

    awardsrep = "LaResistenza;1500",
    awardsitem = "MoneyToXP.Rotolo;3",
    completesound = "levelup",
    dailycode = "Questyno_TessaAnderson",
    lore = { "IGUI_SFQuest_Questyno_TessaAnderson1_A_Lore" },
    objectives = {{
        guid = "Questyno_TessaAnderson1_A",
        text = "IGUI_SFQuest_Questyno_TessaAnderson1_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoTessaAnderson1",
    }},        
    text = "IGUI_SFQuest_Questyno_TessaAnderson1_A_Text",
    texture = "media/textures/Item_TessaAnderson.png",
    title = "IGUI_SFQuest_Questyno_TessaAnderson1_Title",
    unlocks = "clickevent;7665x7559x0:EventoTessaAnderson1;time:50:anim:loot;updateobjective:Questyno_TessaAnderson1_A:1:Completed",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TessaAnderson2",

    awardstask = "Questyno_TessaAnderson2_A",
    dailycode = "Questyno_TessaAnderson",
    lore = { "IGUI_SFQuest_Questyno_TessaAnderson2_Lore" },
    needsitem = "Tag#Golden;200",
    onobtained = "unlockworldevent;Questyno_TessaAnderson;SFQuest_Questyno_TessaAnderson2_Complete",
    text = "IGUI_SFQuest_Questyno_TessaAnderson2_Text",
    texture = "media/textures/Item_TessaAnderson.png",
    title = "IGUI_SFQuest_Questyno_TessaAnderson2_Title",
    unlockedsound = "QuestUnlocked",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TessaAnderson2_A",

    awardsrep = "LaResistenza;2000",
    awardsitem = "MoneyToXP.Rotolo;4",
    completesound = "levelup",
    dailycode = "Questyno_TessaAnderson",
    lore = { "IGUI_SFQuest_Questyno_TessaAnderson2_A_Lore" },
    objectives = {{
        guid = "Questyno_TessaAnderson2_A",
        text = "IGUI_SFQuest_Questyno_TessaAnderson2_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoTessaAnderson2",
    }},
    text = "IGUI_SFQuest_Questyno_TessaAnderson2_A_Text",
    texture = "media/textures/Item_TessaAnderson.png",
    title = "IGUI_SFQuest_Questyno_TessaAnderson2_Title",
    unlocks = "clickevent;7370x7254x0:EventoTessaAnderson2;time:50:anim:loot;updateobjective:Questyno_TessaAnderson2_A:1:Completed",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TessaAnderson3",

    awardstask = "Questyno_TessaAnderson3_A",
    dailycode = "Questyno_TessaAnderson",
    lore = { "IGUI_SFQuest_Questyno_TessaAnderson3_Lore" },
    needsitem = "Tag#Golden;300",
    onobtained = "unlockworldevent;Questyno_TessaAnderson;SFQuest_Questyno_TessaAnderson3_Complete",
    text = "IGUI_SFQuest_Questyno_TessaAnderson3_Text",
    texture = "media/textures/Item_TessaAnderson.png",
    title = "IGUI_SFQuest_Questyno_TessaAnderson3_Title",
    unlockedsound = "QuestUnlocked",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TessaAnderson3_A",

    awardsrep = "LaResistenza;1800",
    awardsitem = "MoneyToXP.Rotolo;5",
    completesound = "levelup",
    dailycode = "Questyno_TessaAnderson",
    lore = { "IGUI_SFQuest_Questyno_TessaAnderson3_A_Lore" },
    objectives = {{
        guid = "Questyno_TessaAnderson3_A",
        text = "IGUI_SFQuest_Questyno_TessaAnderson3_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoTessaAnderson3",
    }},
    text = "IGUI_SFQuest_Questyno_TessaAnderson3_A_Text",
    texture = "media/textures/Item_TessaAnderson.png",
    title = "IGUI_SFQuest_Questyno_TessaAnderson3_Title",
    unlocks = "clickevent;7032x7435x1:EventoTessaAnderson3;time:50:anim:loot;updateobjective:Questyno_TessaAnderson3_A:1:Completed",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TessaAnderson4",

    awardstask = "Questyno_TessaAnderson4_A",
    dailycode = "Questyno_TessaAnderson",
    lore = { "IGUI_SFQuest_Questyno_TessaAnderson4_Lore" },
    needsitem = "Tag#Golden;250",
    onobtained = "unlockworldevent;Questyno_TessaAnderson;SFQuest_Questyno_TessaAnderson4_Complete",
    text = "IGUI_SFQuest_Questyno_TessaAnderson4_Text",
    texture = "media/textures/Item_TessaAnderson.png",
    title = "IGUI_SFQuest_Questyno_TessaAnderson4_Title",
    unlockedsound = "QuestUnlocked",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TessaAnderson4_A",

    awardsrep = "LaResistenza;1500",
    awardsitem = "MoneyToXP.Rotolo;6",
    completesound = "levelup",
    dailycode = "Questyno_TessaAnderson",
    lore = { "IGUI_SFQuest_Questyno_TessaAnderson4_A_Lore" },
    objectives = {{
        guid = "Questyno_TessaAnderson4_A",
        text = "IGUI_SFQuest_Questyno_TessaAnderson4_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoTessaAnderson4",
    }},
    text = "IGUI_SFQuest_Questyno_TessaAnderson4_A_Text",
    texture = "media/textures/Item_TessaAnderson.png",
    title = "IGUI_SFQuest_Questyno_TessaAnderson4_Title",
    unlocks = "clickevent;7365x6694x0:EventoTessaAnderson4;time:50:anim:loot;updateobjective:Questyno_TessaAnderson4_A:1:Completed",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TessaAnderson5",

    awardstask = "Questyno_TessaAnderson5_A",
    dailycode = "Questyno_TessaAnderson",
    lore = { "IGUI_SFQuest_Questyno_TessaAnderson5_Lore" },
    needsitem = "Tag#Golden;220",
    onobtained = "unlockworldevent;Questyno_TessaAnderson;SFQuest_Questyno_TessaAnderson5_Complete",
    text = "IGUI_SFQuest_Questyno_TessaAnderson5_Text",
    texture = "media/textures/Item_TessaAnderson.png",
    title = "IGUI_SFQuest_Questyno_TessaAnderson5_Title",
    unlockedsound = "QuestUnlocked",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TessaAnderson5_A",

    awardsrep = "LaResistenza;1800",
    awardsitem = "MoneyToXP.Rotolo;4",
    completesound = "levelup",
    dailycode = "Questyno_TessaAnderson",
    lore = { "IGUI_SFQuest_Questyno_TessaAnderson5_A_Lore" },
    objectives = {{
        guid = "Questyno_TessaAnderson5_A",
        text = "IGUI_SFQuest_Questyno_TessaAnderson5_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoTessaAnderson5",
    }},
    text = "IGUI_SFQuest_Questyno_TessaAnderson5_A_Text",
    texture = "media/textures/Item_TessaAnderson.png",
    title = "IGUI_SFQuest_Questyno_TessaAnderson5_Title",
    unlocks = "clickevent;6781x7359x0:EventoTessaAnderson5;time:50:anim:loot;updateobjective:Questyno_TessaAnderson5_A:1:Completed",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TessaAnderson6",

    awardstask = "Questyno_TessaAnderson6_A",
    dailycode = "Questyno_TessaAnderson",
    lore = { "IGUI_SFQuest_Questyno_TessaAnderson6_Lore" },
    needsitem = "Tag#Golden;400",
    onobtained = "unlockworldevent;Questyno_TessaAnderson;SFQuest_Questyno_TessaAnderson6_Complete",
    text = "IGUI_SFQuest_Questyno_TessaAnderson6_Text",
    texture = "media/textures/Item_TessaAnderson.png",
    title = "IGUI_SFQuest_Questyno_TessaAnderson6_Title",
    unlockedsound = "QuestUnlocked",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TessaAnderson6_A",

    awardsrep = "LaResistenza;1500",
    awardsitem = "MoneyToXP.Rotolo;5",
    completesound = "levelup",
    dailycode = "Questyno_TessaAnderson",
    lore = { "IGUI_SFQuest_Questyno_TessaAnderson6_A_Lore" },
    objectives = {{
        guid = "Questyno_TessaAnderson6_A",
        text = "IGUI_SFQuest_Questyno_TessaAnderson6_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoTessaAnderson6",
    }},
    text = "IGUI_SFQuest_Questyno_TessaAnderson6_A_Text",
    texture = "media/textures/Item_TessaAnderson.png",
    title = "IGUI_SFQuest_Questyno_TessaAnderson6_Title",
    unlocks = "clickevent;7257x6860x1:EventoTessaAnderson6;time:50:anim:loot;updateobjective:Questyno_TessaAnderson6_A:1:Completed",
});


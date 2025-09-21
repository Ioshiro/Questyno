require 'SFQuest_Database'

-- Quest per LucasMiller
table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_LucasMiller_Intro",

    awardsrep = "LucasMiller;100",
    completesound = "levelup",
    dailycode = "Questyno_LucasMiller",
    lore = { "IGUI_SFQuest_Questyno_LucasMiller_Intro_Lore" },
    text = "IGUI_SFQuest_Questyno_LucasMiller_Intro_Text",
    texture = "media/textures/Item_LucasMiller.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_LucasMiller;SFQuest_Questyno_LucasMiller_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_LucasMiller_Intro_Title",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_LucasMiller1",

    awardstask = "Questyno_LucasMiller1_A",
    dailycode = "Questyno_LucasMiller",
    lore = { "IGUI_SFQuest_Questyno_LucasMiller1_Lore" },
    needsitem = "Tag#Golden;120",
    onobtained = "unlockworldevent;Questyno_LucasMiller;SFQuest_Questyno_LucasMiller1_Complete",
    text = "IGUI_SFQuest_Questyno_LucasMiller1_Text",
    texture = "media/textures/Item_LucasMiller.png",
    title = "IGUI_SFQuest_Questyno_LucasMiller1_Title",
    unlockedsound = "QuestUnlocked",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_LucasMiller1_A",

    awardsrep = "LaResistenza;500",
    awardsitem = "MoneyToXP.Rotolo;2",
    completesound = "levelup",
    dailycode = "Questyno_LucasMiller",
    lore = { "IGUI_SFQuest_Questyno_LucasMiller1_A_Lore" },
    objectives = {{
        guid = "Questyno_LucasMiller1_A",
        text = "IGUI_SFQuest_Questyno_LucasMiller1_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoLucasMiller1",
    }},        
    text = "IGUI_SFQuest_Questyno_LucasMiller1_A_Text",
    texture = "media/textures/Item_LucasMiller.png",
    title = "IGUI_SFQuest_Questyno_LucasMiller1_Title",
    unlocks = "clickevent;10420x12758x1:EventoLucasMiller1;time:50:anim:loot;updateobjective:Questyno_LucasMiller1_A:1:Completed",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_LucasMiller2",

    awardstask = "Questyno_LucasMiller2_A",
    dailycode = "Questyno_LucasMiller",
    lore = { "IGUI_SFQuest_Questyno_LucasMiller2_Lore" },
    needsitem = "Tag#Golden;150",
    onobtained = "unlockworldevent;Questyno_LucasMiller;SFQuest_Questyno_LucasMiller2_Complete",
    text = "IGUI_SFQuest_Questyno_LucasMiller2_Text",
    texture = "media/textures/Item_LucasMiller.png",
    title = "IGUI_SFQuest_Questyno_LucasMiller2_Title",
    unlockedsound = "QuestUnlocked",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_LucasMiller2_A",

    awardsrep = "LaResistenza;500",
    awardsitem = "MoneyToXP.Rotolo;3",
    completesound = "levelup",
    dailycode = "Questyno_LucasMiller",
    lore = { "IGUI_SFQuest_Questyno_LucasMiller2_A_Lore" },
    objectives = {{
        guid = "Questyno_LucasMiller2_A",
        text = "IGUI_SFQuest_Questyno_LucasMiller2_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoLucasMiller2",
    }},
    text = "IGUI_SFQuest_Questyno_LucasMiller2_A_Text",
    texture = "media/textures/Item_LucasMiller.png",
    title = "IGUI_SFQuest_Questyno_LucasMiller2_Title",
    unlocks = "clickevent;10223x12769x1:EventoLucasMiller2;time:50:anim:loot;updateobjective:Questyno_LucasMiller2_A:1:Completed",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_LucasMiller3",

    awardstask = "Questyno_LucasMiller3_A",
    dailycode = "Questyno_LucasMiller",
    lore = { "IGUI_SFQuest_Questyno_LucasMiller3_Lore" },
    needsitem = "Tag#Golden;200",
    onobtained = "unlockworldevent;Questyno_LucasMiller;SFQuest_Questyno_LucasMiller3_Complete",
    text = "IGUI_SFQuest_Questyno_LucasMiller3_Text",
    texture = "media/textures/Item_LucasMiller.png",
    title = "IGUI_SFQuest_Questyno_LucasMiller3_Title",
    unlockedsound = "QuestUnlocked",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_LucasMiller3_A",

    awardsrep = "LaResistenza;500",
    awardsitem = "MoneyToXP.Rotolo;3",
    completesound = "levelup",
    dailycode = "Questyno_LucasMiller",
    lore = { "IGUI_SFQuest_Questyno_LucasMiller3_A_Lore" },
    objectives = {{
        guid = "Questyno_LucasMiller3_A",
        text = "IGUI_SFQuest_Questyno_LucasMiller3_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoLucasMiller3",
    }},
    text = "IGUI_SFQuest_Questyno_LucasMiller3_A_Text",
    texture = "media/textures/Item_LucasMiller.png",
    title = "IGUI_SFQuest_Questyno_LucasMiller3_Title",
    unlocks = "clickevent;9976x12745x1:EventoLucasMiller3;time:50:anim:loot;updateobjective:Questyno_LucasMiller3_A:1:Completed",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_LucasMiller4",

    awardstask = "Questyno_LucasMiller4_A",
    dailycode = "Questyno_LucasMiller",
    lore = { "IGUI_SFQuest_Questyno_LucasMiller4_Lore" },
    needsitem = "Tag#Golden;220",
    onobtained = "unlockworldevent;Questyno_LucasMiller;SFQuest_Questyno_LucasMiller4_Complete",
    text = "IGUI_SFQuest_Questyno_LucasMiller4_Text",
    texture = "media/textures/Item_LucasMiller.png",
    title = "IGUI_SFQuest_Questyno_LucasMiller4_Title",
    unlockedsound = "QuestUnlocked",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_LucasMiller4_A",

    awardsrep = "LaResistenza;500",
    awardsitem = "MoneyToXP.Rotolo;4",
    completesound = "levelup",
    dailycode = "Questyno_LucasMiller",
    lore = { "IGUI_SFQuest_Questyno_LucasMiller4_A_Lore" },
    objectives = {{
        guid = "Questyno_LucasMiller4_A",
        text = "IGUI_SFQuest_Questyno_LucasMiller4_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoLucasMiller4",
    }},
    text = "IGUI_SFQuest_Questyno_LucasMiller4_A_Text",
    texture = "media/textures/Item_LucasMiller.png",
    title = "IGUI_SFQuest_Questyno_LucasMiller4_Title",
    unlocks = "clickevent;9916x12880x1:EventoLucasMiller4;time:50:anim:loot;updateobjective:Questyno_LucasMiller4_A:1:Completed",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_LucasMiller5",

    awardstask = "Questyno_LucasMiller5_A",
    dailycode = "Questyno_LucasMiller",
    lore = { "IGUI_SFQuest_Questyno_LucasMiller5_Lore" },
    needsitem = "Tag#Golden;250",
    onobtained = "unlockworldevent;Questyno_LucasMiller;SFQuest_Questyno_LucasMiller5_Complete",
    text = "IGUI_SFQuest_Questyno_LucasMiller5_Text",
    texture = "media/textures/Item_LucasMiller.png",
    title = "IGUI_SFQuest_Questyno_LucasMiller5_Title",
    unlockedsound = "QuestUnlocked",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_LucasMiller5_A",

    awardsrep = "LaResistenza;500",
    awardsitem = "MoneyToXP.Rotolo;5",
    completesound = "levelup",
    dailycode = "Questyno_LucasMiller",
    lore = { "IGUI_SFQuest_Questyno_LucasMiller5_A_Lore" },
    objectives = {{
        guid = "Questyno_LucasMiller5_A",
        text = "IGUI_SFQuest_Questyno_LucasMiller5_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoLucasMiller5",
    }},
    text = "IGUI_SFQuest_Questyno_LucasMiller5_A_Text",
    texture = "media/textures/Item_LucasMiller.png",
    title = "IGUI_SFQuest_Questyno_LucasMiller5_Title",
    unlocks = "clickevent;9942x13020x1:EventoLucasMiller5;time:50:anim:loot;updateobjective:Questyno_LucasMiller5_A:1:Completed",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_LucasMiller6",

    awardstask = "Questyno_LucasMiller6_A",
    dailycode = "Questyno_LucasMiller",
    lore = { "IGUI_SFQuest_Questyno_LucasMiller6_Lore" },
    needsitem = "Tag#Golden;100",
    onobtained = "unlockworldevent;Questyno_LucasMiller;SFQuest_Questyno_LucasMiller6_Complete",
    text = "IGUI_SFQuest_Questyno_LucasMiller6_Text",
    texture = "media/textures/Item_LucasMiller.png",
    title = "IGUI_SFQuest_Questyno_LucasMiller6_Title",
    unlockedsound = "QuestUnlocked",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_LucasMiller6_A",

    awardsrep = "LaResistenza;500",
    awardsitem = "MoneyToXP.Rotolo;1",
    completesound = "levelup",
    dailycode = "Questyno_LucasMiller",
    lore = { "IGUI_SFQuest_Questyno_LucasMiller6_A_Lore" },
    objectives = {{
        guid = "Questyno_LucasMiller6_A",
        text = "IGUI_SFQuest_Questyno_LucasMiller6_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoLucasMiller6",
    }},
    text = "IGUI_SFQuest_Questyno_LucasMiller6_A_Text",
    texture = "media/textures/Item_LucasMiller.png",
    title = "IGUI_SFQuest_Questyno_LucasMiller6_Title",
    unlocks = "clickevent;9929x12681x1:EventoLucasMiller6;time:50:anim:loot;updateobjective:Questyno_LucasMiller6_A:1:Completed",
});



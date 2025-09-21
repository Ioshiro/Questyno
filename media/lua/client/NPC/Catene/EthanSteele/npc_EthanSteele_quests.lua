require 'SFQuest_Database'

-- Quest per EthanSteele
table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_EthanSteele_Intro",

    awardsrep = "EthanSteele;1", -- REP REWARD
    awardsworld = "Questyno_EthanSteele;SFQuest_Questyno_EthanSteele1_Begin;Questyno_EthanSteele1", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_EthanSteele_Intro_Lore" },
    text = "IGUI_SFQuest_Questyno_EthanSteele_Intro_Text",
    texture = "media/textures/Item_EthanSteele.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_EthanSteele;SFQuest_Questyno_EthanSteele_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_EthanSteele_Intro_Title",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_EthanSteele1",

    awardstask = "Questyno_EthanSteele1_A", -- TASK REWARD
    lore = { "IGUI_SFQuest_Questyno_EthanSteele1_Lore" },
    objectives = {{
        guid = "Questyno_EthanSteele1_A",
        text = "IGUI_SFQuest_Questyno_EthanSteele1_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoEthanSteele1;additem;Base.Army_Duffle_Bag;1",
    },{
        guid = "Questyno_EthanSteele1_B",
        text = "IGUI_SFQuest_Questyno_EthanSteele1_B",
        hidden = false,
    }},
    text = "IGUI_SFQuest_Questyno_EthanSteele1_Text",
    texture = "media/textures/Item_EthanSteele.png",
    title = "IGUI_SFQuest_Questyno_EthanSteele1_Title",
    unique = true,
    unlocks = "actionevent;killzombies:50;updateobjective:Questyno_EthanSteele1:2:Completed;clickevent;10102x11172x0:EventoEthanSteele1;time:50:anim:loot;updateobjective:Questyno_EthanSteele1:1:Completed",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_EthanSteele1_A",

    awardsrep = "LaResistenza;40;EthanSteele;33", -- REP REWARD
    awardsitem = "Base.Money;25", -- ITEM REWARD
    awardsworld = "Questyno_EthanSteele;SFQuest_Questyno_EthanSteele2_Begin;Questyno_EthanSteele2", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_EthanSteele1_Lore" },
    needsitem = "Base.Army_Duffle_Bag;1",
    onobtained = "unlockworldevent;Questyno_EthanSteele;SFQuest_Questyno_EthanSteele1_Complete",
    text = "IGUI_SFQuest_Questyno_EthanSteele1_A_Text",
    texture = "media/textures/Item_EthanSteele.png",
    title = "IGUI_SFQuest_Questyno_EthanSteele1_Title",
    unique = true,
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_EthanSteele2",

    awardstask = "Questyno_EthanSteele2_A", -- TASK REWARD
    lore = { "IGUI_SFQuest_Questyno_EthanSteele2_Lore" },
    objectives = {{
        guid = "Questyno_EthanSteele2_A",
        text = "IGUI_SFQuest_Questyno_EthanSteele2_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoEthanSteele2;additem;EHE.Jacket_DenimCutoff;1",
    },{
        guid = "Questyno_EthanSteele2_B",
        text = "IGUI_SFQuest_Questyno_EthanSteele2_B",
        hidden = false,
    }},
    text = "IGUI_SFQuest_Questyno_EthanSteele2_Text",
    texture = "media/textures/Item_EthanSteele.png",
    title = "IGUI_SFQuest_Questyno_EthanSteele2_Title",
    unique = true,
    unlocks = "actionevent;killzombies:50;updateobjective:Questyno_EthanSteele2:2:Completed;clickevent;11264x8219x0:EventoEthanSteele2;time:50:anim:loot;updateobjective:Questyno_EthanSteele2:1:Completed",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_EthanSteele2_A",

    awardsrep = "LaResistenza;60;EthanSteele;33", -- REP REWARD
    awardsitem = "Base.Money;25", -- ITEM REWARD
    awardsworld = "Questyno_EthanSteele;SFQuest_Questyno_EthanSteele3_Begin;Questyno_EthanSteele3", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_EthanSteele2_Lore" },
    needsitem = "EHE.Jacket_DenimCutoff;1",
    onobtained = "unlockworldevent;Questyno_EthanSteele;SFQuest_Questyno_EthanSteele2_Complete",
    text = "IGUI_SFQuest_Questyno_EthanSteele2_A_Text",
    texture = "media/textures/Item_EthanSteele.png",
    title = "IGUI_SFQuest_Questyno_EthanSteele2_Title",
    unique = true,
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_EthanSteele3",

    awardsrep = "LaResistenza;120;EthanSteele;132", -- REP REWARD
    awardsitem = "Base.EmptyCAN6;1", -- ITEM REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_EthanSteele3_Lore" },
    needsitem = "Base.Money;250",
    onobtained = "unlockworldevent;Questyno_EthanSteele;SFQuest_Questyno_EthanSteele3_Complete",
    text = "IGUI_SFQuest_Questyno_EthanSteele3_Text",
    texture = "media/textures/Item_EthanSteele.png",
    title = "IGUI_SFQuest_Questyno_EthanSteele3_Title",
    unlockedsound = "QuestUnlocked",
    unique = true,
});



require 'SFQuest_Database'

-- Quest per TomasJoger
table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TomasJoger_Intro",

    awardsrep = "TomasJoger;1", -- REP REWARD
    awardsworld = "Questyno_TomasJoger;SFQuest_Questyno_TomasJoger1_Begin;Questyno_TomasJoger1", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_TomasJoger_Intro_Lore" },
    text = "IGUI_SFQuest_Questyno_TomasJoger_Intro_Text",
    texture = "media/textures/Item_TomasJoger.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_TomasJoger;SFQuest_Questyno_TomasJoger_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_TomasJoger_Intro_Title",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TomasJoger1",

    awardstask = "Questyno_TomasJoger1_A", -- TASK REWARD
    lore = { "IGUI_SFQuest_Questyno_TomasJoger1_Lore" },
    objectives = {{
        guid = "Questyno_TomasJoger1_A",
        text = "IGUI_SFQuest_Questyno_TomasJoger1_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoTomasJoger1;additem;Base.MetalPipe;4",
    }},
    text = "IGUI_SFQuest_Questyno_TomasJoger1_Text",
    texture = "media/textures/Item_TomasJoger.png",
    title = "IGUI_SFQuest_Questyno_TomasJoger1_Title",
    unique = true,
    unlocks = "clickevent;7129x8246x0:EventoTomasJoger1;time:50:anim:loot;updateobjective:Questyno_TomasJoger1:1:Completed",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TomasJoger1_A",

    awardsrep = "LaResistenza;100;TomasJoger;14", -- REP REWARD
    awardsworld = "Questyno_TomasJoger;SFQuest_Questyno_TomasJoger2_Begin;Questyno_TomasJoger2", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_TomasJoger1_Lore" },
    needsitem = "MetalPipe;4",
    onobtained = "unlockworldevent;Questyno_TomasJoger;SFQuest_Questyno_TomasJoger1_Complete",
    text = "IGUI_SFQuest_Questyno_TomasJoger1_A_Text",
    texture = "media/textures/Item_TomasJoger.png",
    title = "IGUI_SFQuest_Questyno_TomasJoger1_Title",
    unique = true,
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TomasJoger2",

    awardstask = "Questyno_TomasJoger2_A",
    lore = { "IGUI_SFQuest_Questyno_TomasJoger2_Lore" },
    objectives = { {
        guid = "Questyno_TomasJoger2_A",
        text = "IGUI_SFQuest_Questyno_TomasJoger2_A",
        hidden = false,
        needsitem = "SheetMetal;1",
        onobtained = "updateobjective;Questyno_TomasJoger2;1;Completed;removeitem;SheetMetal;1"
    }, {
        guid = "Questyno_TomasJoger2_C",
        text = "IGUI_SFQuest_Questyno_TomasJoger2_C",
        hidden = false,
        needsitem = "ScrapMetal;1",
        onobtained = "updateobjective;Questyno_TomasJoger2;2;Completed;removeitem;ScrapMetal;1"
    }},
    text = "IGUI_SFQuest_Questyno_TomasJoger2_Text",
    texture = "media/textures/Item_TomasJoger.png",
    title = "IGUI_SFQuest_Questyno_TomasJoger2_Title",
    unique = true,
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_TomasJoger2_A",

    awardsrep = "LaResistenza;150;TomasJoger;14",
    awardsworld = "Questyno_TomasJoger;SFQuest_Questyno_TomasJoger3_Begin;Questyno_TomasJoger3", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_TomasJoger2_Lore" },
    unlocks = "unlockworldevent;Questyno_TomasJoger;SFQuest_Questyno_TomasJoger2_Complete",
    text = "IGUI_SFQuest_Questyno_TomasJoger2_A_Text",
    texture = "media/textures/Item_TomasJoger.png",
    title = "IGUI_SFQuest_Questyno_TomasJoger2_Title",
    unique = true,
})


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TomasJoger3",

    awardstask = "Questyno_TomasJoger3_A", -- TASK REWARD
    lore = { "IGUI_SFQuest_Questyno_TomasJoger3_Lore" },
    objectives = {{
        guid = "Questyno_TomasJoger3_A",
        text = "IGUI_SFQuest_Questyno_TomasJoger3_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoTomasJoger3;additem;Base.ModernBrake3;2",
    }},
    text = "IGUI_SFQuest_Questyno_TomasJoger3_Text",
    texture = "media/textures/Item_TomasJoger.png",
    title = "IGUI_SFQuest_Questyno_TomasJoger3_Title",
    unique = true,
    unlocks = "clickevent;9922x10578x0:EventoTomasJoger3;time:50:anim:loot;updateobjective:Questyno_TomasJoger3:1:Completed",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TomasJoger3_A",

    awardsrep = "LaResistenza;70;TomasJoger;14", -- REP REWARD
    awardsworld = "Questyno_TomasJoger;SFQuest_Questyno_TomasJoger4_Begin;Questyno_TomasJoger4", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_TomasJoger3_Lore" },
    needsitem = "ModernBrake3;2",
    onobtained = "unlockworldevent;Questyno_TomasJoger;SFQuest_Questyno_TomasJoger3_Complete",
    text = "IGUI_SFQuest_Questyno_TomasJoger3_A_Text",
    texture = "media/textures/Item_TomasJoger.png",
    title = "IGUI_SFQuest_Questyno_TomasJoger3_Title",
    unique = true,
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TomasJoger4",

    awardstask = "Questyno_TomasJoger4_A", -- TASK REWARD
    lore = { "IGUI_SFQuest_Questyno_TomasJoger4_Lore" },
    objectives = {{
        guid = "Questyno_TomasJoger4_A",
        text = "IGUI_SFQuest_Questyno_TomasJoger4_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoTomasJoger4;additem;Base.BicycleTireRegularScrap;1",
    },
    {
        guid = "Questyno_TomasJoger4_B",
        text = "IGUI_SFQuest_Questyno_TomasJoger4_B",
        hidden = false,
        oncompleted = "removeclickevent;EventoTomasJoger4A;additem;Base.BicycleTireRegularScrap;1",
    }},
    text = "IGUI_SFQuest_Questyno_TomasJoger4_Text",
    texture = "media/textures/Item_TomasJoger.png",
    title = "IGUI_SFQuest_Questyno_TomasJoger4_Title",
    unique = true,
    unlocks = "clickevent;8306x7507x0:EventoTomasJoger4;time:50:anim:loot;updateobjective:Questyno_TomasJoger4:1:Completed;clickevent;8308x7506x0:EventoTomasJoger4A;time:50:anim:loot;updateobjective:Questyno_TomasJoger4:2:Completed",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TomasJoger4_A",

    awardsrep = "LaResistenza;80;TomasJoger;14", -- REP REWARD
    awardsitem = "Base.WhiskeyFull;1", -- ITEM REWARD
    awardsworld = "Questyno_TomasJoger;SFQuest_Questyno_TomasJoger5_Begin;Questyno_TomasJoger5", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_TomasJoger4_Lore" },
    needsitem = "BicycleTireRegularScrap;2",
    onobtained = "unlockworldevent;Questyno_TomasJoger;SFQuest_Questyno_TomasJoger4_Complete",
    text = "IGUI_SFQuest_Questyno_TomasJoger4_A_Text",
    texture = "media/textures/Item_TomasJoger.png",
    title = "IGUI_SFQuest_Questyno_TomasJoger4_Title",
    unique = true,
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TomasJoger5",

    awardstask = "Questyno_TomasJoger5_A",
    lore = { "IGUI_SFQuest_Questyno_TomasJoger5_Lore" },
    objectives = { {
        guid = "Questyno_TomasJoger5_A",
        text = "IGUI_SFQuest_Questyno_TomasJoger5_A",
        hidden = false,
        needsitem = "SOMW.LongMetalPipe;1",
        onobtained = "updateobjective;Questyno_TomasJoger5;1;Completed;removeitem;SOMW.LongMetalPipe;1"
    }, {
        guid = "Questyno_TomasJoger5_B",
        text = "IGUI_SFQuest_Questyno_TomasJoger5_B",
        hidden = false,
        needsitem = "Scotchtape;1",
        onobtained = "updateobjective;Questyno_TomasJoger5;2;Completed;removeitem;Scotchtape;1"
    }},
    text = "IGUI_SFQuest_Questyno_TomasJoger5_Text",
    texture = "media/textures/Item_TomasJoger.png",
    title = "IGUI_SFQuest_Questyno_TomasJoger5_Title",
    unique = true,
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_TomasJoger5_A",

    awardsrep = "LaResistenza;90;TomasJoger;14",
    awardsworld = "Questyno_TomasJoger;SFQuest_Questyno_TomasJoger6_Begin;Questyno_TomasJoger7", -- DIALOGUE REWARD 
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_TomasJoger5_Lore" },
    unlocks = "unlockworldevent;Questyno_TomasJoger;SFQuest_Questyno_TomasJoger5_Complete",
    text = "IGUI_SFQuest_Questyno_TomasJoger5_A_Text",
    texture = "media/textures/Item_TomasJoger.png",
    title = "IGUI_SFQuest_Questyno_TomasJoger5_Title",
    unique = true,
})


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TomasJoger6",

    awardstask = "Questyno_TomasJoger6_A", -- TASK REWARD
    lore = { "IGUI_SFQuest_Questyno_TomasJoger6_Lore" },
    objectives = {{
        guid = "Questyno_TomasJoger6_A",
        text = "IGUI_SFQuest_Questyno_TomasJoger6_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoTomasJoger6;additem;Base.ATAProtectionWheelsChain;2",
    }},
    text = "IGUI_SFQuest_Questyno_TomasJoger6_Text",
    texture = "media/textures/Item_TomasJoger.png",
    title = "IGUI_SFQuest_Questyno_TomasJoger6_Title",
    unique = true,
    unlocks = "clickevent;7947x9786x0:EventoTomasJoger6;time:50:anim:loot;updateobjective:Questyno_TomasJoger6:1:Completed",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TomasJoger6_A",

    awardsrep = "LaResistenza;100;TomasJoger;14", -- REP REWARD
    awardsitem = "MoneyToXP.Rotolo;1;Base.LindenMap;1", -- ITEM REWARD
    awardsworld = "Questyno_TomasJoger;SFQuest_Questyno_TomasJoger7_Begin;Questyno_TomasJoger7", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_TomasJoger6_Lore" },
    needsitem = "ATAProtectionWheelsChain;2",
    onobtained = "unlockworldevent;Questyno_TomasJoger;SFQuest_Questyno_TomasJoger6_Complete",
    text = "IGUI_SFQuest_Questyno_TomasJoger6_A_Text",
    texture = "media/textures/Item_TomasJoger.png",
    title = "IGUI_SFQuest_Questyno_TomasJoger6_Title",
    unique = true,
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TomasJoger7",

    awardstask = "Questyno_TomasJoger7_A", -- TASK REWARD
    lore = { "IGUI_SFQuest_Questyno_TomasJoger7_Lore" },
    objectives = { {
        guid = "Questyno_TomasJoger7_A",
        text = "IGUI_SFQuest_Questyno_TomasJoger7_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoTomasJoger7;additem;PynoTweaks.Cannabis;4"
    }, {
        guid = "Questyno_TomasJoger7_B",
        text = "IGUI_SFQuest_Questyno_TomasJoger7_B",
        hidden = false,
        oncompleted = "removeclickevent;EventoTomasJoger7A;additem;PynoTweaks.RollingPapers;3"
    }, {
        guid = "Questyno_TomasJoger7_C",
        text = "IGUI_SFQuest_Questyno_TomasJoger7_C",
        hidden = false,
        oncompleted = "removeclickevent;EventoTomasJoger7B;additem;HottieZ;3"
    } },
    text = "IGUI_SFQuest_Questyno_TomasJoger7_Text",
    texture = "media/textures/Item_TomasJoger.png",
    title = "IGUI_SFQuest_Questyno_TomasJoger7_Title",
    unlockedsound = "QuestUnlocked",
    unique = true,
    unlocks = "clickevent;11530x8517x0:EventoTomasJoger7;anim:loot:time:50;updateobjective:Questyno_TomasJoger7:1:Completed;clickevent;11529x8505x0:EventoTomasJoger7A;anim:loot:time:50;updateobjective:Questyno_TomasJoger7:2:Completed;clickevent;11528x8507x0:EventoTomasJoger7B;anim:loot:time:50;updateobjective:Questyno_TomasJoger7:3:Completed"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TomasJoger7_A",

    awardstask = "Questyno_TomasJoger7_B", -- TASK REWARD
    lore = { "IGUI_SFQuest_Questyno_TomasJoger7_Lore" },
    objectives = { {
        guid = "Questyno_TomasJoger7_D",
        text = "IGUI_SFQuest_Questyno_TomasJoger7_D",
        hidden = false,
        needsitem = "PynoTweaks.Cannabis;12",
        onobtained = "updateobjective;Questyno_TomasJoger7_A;1;Completed;removeitem;PynoTweaks.Cannabis;10"
    },{
        guid = "Questyno_TomasJoger7_E",
        text = "IGUI_SFQuest_Questyno_TomasJoger7_E",
        hidden = false,
        needsitem = "PynoTweaks.RollingPapers;3",
        onobtained = "updateobjective;Questyno_TomasJoger7_A;2;Completed;removeitem;PynoTweaks.RollingPapers;3"
    }, {
        guid = "Questyno_TomasJoger7_F",
        text = "IGUI_SFQuest_Questyno_TomasJoger7_F",
        hidden = false,
        needsitem = "HottieZ;3",
        onobtained = "updateobjective;Questyno_TomasJoger7_A;3;Completed;removeitem;HottieZ;3"
    } },
    text = "IGUI_SFQuest_Questyno_TomasJoger7_A_Text",
    texture = "media/textures/Item_TomasJoger.png",
    title = "IGUI_SFQuest_Questyno_TomasJoger7_Title",
    unique = true,
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TomasJoger7_B",

    awardsrep = "LaResistenza;250;TomasJoger;114", -- REP REWARD
    awardsitem = "LR.ChiaveBicicletta;1;PynoTweaks.Joint;1", -- ITEM REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_TomasJoger7_Lore" },
    unlocks = "unlockworldevent;Questyno_TomasJoger;SFQuest_Questyno_TomasJoger7_Complete",
    text = "IGUI_SFQuest_Questyno_TomasJoger7_B_Text",
    texture = "media/textures/Item_TomasJoger.png",
    title = "IGUI_SFQuest_Questyno_TomasJoger7_Title",
    unique = true,
});



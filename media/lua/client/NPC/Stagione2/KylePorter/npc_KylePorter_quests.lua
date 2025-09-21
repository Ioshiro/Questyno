require 'SFQuest_Database'

-- Quest per KylePorter
table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_KylePorter_Intro",

    awardsrep = "KylePorter;1", -- REP REWARD
    awardsworld = "Questyno_KylePorter;SFQuest_Questyno_KylePorter1_Begin;Questyno_KylePorter1", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_KylePorter_Intro_Lore" },
    text = "IGUI_SFQuest_Questyno_KylePorter_Intro_Text",
    texture = "media/textures/Item_KylePorter.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_KylePorter;SFQuest_Questyno_KylePorter_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_KylePorter_Intro_Title",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_KylePorter1",

    awardstask = "Questyno_KylePorter1_A", -- TASK REWARD
    lore = { "IGUI_SFQuest_Questyno_KylePorter1_Lore" },
    objectives = { {
        guid = "Questyno_KylePorter1_A",
        text = "IGUI_SFQuest_Questyno_KylePorter1_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoKylePorter1;additem;Base.BlowTorch;1;additem;Base.WeldingMask;1;additem;Base.Wrench;1;additem;Base.ClubHammer;1;additem;Base.Dungarees;1"
    }, {
        guid = "Questyno_KylePorter1_B",
        text = "IGUI_SFQuest_Questyno_KylePorter1_B",
        hidden = true,
        oncompleted = "removeclickevent;EventoKylePorter1A;additem;MetalPipe;20"
    } },
    text = "IGUI_SFQuest_Questyno_KylePorter1_Text",
    texture = "media/textures/Item_KylePorter.png",
    title = "IGUI_SFQuest_Questyno_KylePorter1_Title",
    unlockedsound = "QuestUnlocked",
    unique = true,
    unlocks = "clickevent;13104x1753x0:EventoKylePorter1;anim:loot:time:50;updateobjective:Questyno_KylePorter1:1:Completed;clickevent;12267x1820x0:EventoKylePorter1A;anim:loot:time:50;updateobjective:Questyno_KylePorter1:2:Completed"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_KylePorter1_A",

    awardstask = "Questyno_KylePorter1_B", -- TASK REWARD
    lore = { "IGUI_SFQuest_Questyno_KylePorter1_Lore" },
    objectives = { {
        guid = "Questyno_KylePorter1_C",
        text = "IGUI_SFQuest_Questyno_KylePorter1_C",
        hidden = false,
        needsitem = "PredicateFullDrainable#BlowTorch;1",
        onobtained = "updateobjective;Questyno_KylePorter1_A;1;Completed;removeitem;BlowTorch;1"
    },{
        guid = "Questyno_KylePorter1_D",
        text = "IGUI_SFQuest_Questyno_KylePorter1_D",
        hidden = false,
        needsitem = "WeldingMask;1",
        onobtained = "updateobjective;Questyno_KylePorter1_A;2;Completed;removeitem;WeldingMask;1"
    }, {
        guid = "Questyno_KylePorter1_E",
        text = "IGUI_SFQuest_Questyno_KylePorter1_E",
        hidden = false,
        needsitem = "Wrench;1",
        onobtained = "updateobjective;Questyno_KylePorter1_A;3;Completed;removeitem;Wrench;1"
    }, {
        guid = "Questyno_KylePorter1_F",
        text = "IGUI_SFQuest_Questyno_KylePorter1_F",
        hidden = false,
        needsitem = "ClubHammer;1",
        onobtained = "updateobjective;Questyno_KylePorter1_A;4;Completed;removeitem;ClubHammer;1"
    } , {
        guid = "Questyno_KylePorter1_G",
        text = "IGUI_SFQuest_Questyno_KylePorter1_G",
        hidden = false,
        needsitem = "Dungarees;1",
        onobtained = "updateobjective;Questyno_KylePorter1_A;5;Completed;removeitem;Dungarees;1"
    } , {
        guid = "Questyno_KylePorter1_H",
        text = "IGUI_SFQuest_Questyno_KylePorter1_H",
        hidden = false,
        needsitem = "MetalPipe;20",
        onobtained = "updateobjective;Questyno_KylePorter1_A;6;Completed;removeitem;MetalPipe;20"
    } },
    text = "IGUI_SFQuest_Questyno_KylePorter1_A_Text",
    texture = "media/textures/Item_KylePorter.png",
    unique = true,
    title = "IGUI_SFQuest_Questyno_KylePorter1_Title",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_KylePorter1_B",

    awardsrep = "LaResistenza;500;KylePorter;10", -- REP REWARD
    awardsitem = "Burger;1;Fries;1;Pop2;1", -- ITEM REWARD
    awardsworld = "Questyno_KylePorter;SFQuest_Questyno_KylePorter2_Begin;Questyno_KylePorter2", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_KylePorter1_Lore" },
    unlocks = "unlockworldevent;Questyno_KylePorter;SFQuest_Questyno_KylePorter1_Complete",
    text = "IGUI_SFQuest_Questyno_KylePorter1_B_Text",
    texture = "media/textures/Item_KylePorter.png",
    title = "IGUI_SFQuest_Questyno_KylePorter1_Title",
    unique = true,
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_KylePorter2",

    awardstask = "Questyno_KylePorter2_A", -- TASK REWARD
    lore = { "IGUI_SFQuest_Questyno_KylePorter2_Lore" },
    objectives = { {
        guid = "Questyno_KylePorter2_A",
        text = "IGUI_SFQuest_Questyno_KylePorter2_A",
        hidden = false,
        needsitem = "SheetMetal;10",
        onobtained = "updateobjective;Questyno_KylePorter2;1;Completed;removeitem;SheetMetal;10"
    }, {
        guid = "Questyno_KylePorter2_B",
        text = "IGUI_SFQuest_Questyno_KylePorter2_B",
        hidden = false,
        needsitem = "SmallSheetMetal;5",
        onobtained = "updateobjective;Questyno_KylePorter2;2;Completed;removeitem;SmallSheetMetal;5"
    }, {
        guid = "Questyno_KylePorter2_C",
        text = "IGUI_SFQuest_Questyno_KylePorter2_C",
        hidden = false,
        needsitem = "ScrapMetal;50",
        onobtained = "updateobjective;Questyno_KylePorter2;3;Completed;removeitem;ScrapMetal;50"
    } },
    text = "IGUI_SFQuest_Questyno_KylePorter2_Text",
    texture = "media/textures/Item_KylePorter.png",
    title = "IGUI_SFQuest_Questyno_KylePorter2_Title",
    unique = true,
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_KylePorter2_A",

    awardsrep = "LaResistenza;500;KylePorter;10",
    awardsworld = "Questyno_KylePorter;SFQuest_Questyno_KylePorter3_Begin;Questyno_KylePorter3", -- DIALOGUE REWARD
    completesound = "levelup",                                                                                          -- Suono completamento quest, sempre uguale
    lore = { "IGUI_SFQuest_Questyno_KylePorter2_Lore" },
    unlocks = "unlockworldevent;Questyno_KylePorter;SFQuest_Questyno_KylePorter2_Complete",
    text = "IGUI_SFQuest_Questyno_KylePorter2_A_Text",
    texture = "media/textures/Item_KylePorter.png",
    title = "IGUI_SFQuest_Questyno_KylePorter2_Title",
    unique = true,
})


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_KylePorter3",

    awardstask = "Questyno_KylePorter3_A", -- TASK REWARD
    lore = { "IGUI_SFQuest_Questyno_KylePorter3_Lore" },
    objectives = {{
        guid = "Questyno_KylePorter3_A",
        text = "IGUI_SFQuest_Questyno_KylePorter3_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoKylePorter3;additem;Base.ModernBrake3;4;additem;Base.ModernSuspension3;4;additem;Base.ModernCarMuffler3;4",
    }},
    text = "IGUI_SFQuest_Questyno_KylePorter3_Text",
    texture = "media/textures/Item_KylePorter.png",
    title = "IGUI_SFQuest_Questyno_KylePorter3_Title",
    unique = true,
    unlocks = "clickevent;13728x1657x0:EventoKylePorter3;time:50:anim:loot;updateobjective:Questyno_KylePorter3:1:Completed",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_KylePorter3_A",

    awardstask = "Questyno_KylePorter3_B", -- TASK REWARD
    lore = { "IGUI_SFQuest_Questyno_KylePorter3_Lore" },
    objectives = { {
        guid = "Questyno_KylePorter3_B",
        text = "IGUI_SFQuest_Questyno_KylePorter3_B",
        hidden = false,
        needsitem = "ModernBrake3;4",
        onobtained = "updateobjective;Questyno_KylePorter3_A;1;Completed;removeitem;ModernBrake3;4"
    },{
        guid = "Questyno_KylePorter3_C",
        text = "IGUI_SFQuest_Questyno_KylePorter3_C",
        hidden = false,
        needsitem = "ModernSuspension3;4",
        onobtained = "updateobjective;Questyno_KylePorter3_A;2;Completed;removeitem;ModernSuspension3;4"
    }, {
        guid = "Questyno_KylePorter3_D",
        text = "IGUI_SFQuest_Questyno_KylePorter3_D",
        hidden = false,
        needsitem = "ModernCarMuffler3;4",
        onobtained = "updateobjective;Questyno_KylePorter3_A;3;Completed;removeitem;ModernCarMuffler3;4"
    } },
    text = "IGUI_SFQuest_Questyno_KylePorter3_A_Text",
    texture = "media/textures/Item_KylePorter.png",
    title = "IGUI_SFQuest_Questyno_KylePorter3_Title",
    unique = true,
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_KylePorter3_B",

    awardsrep = "LaResistenza;500;KylePorter;10", -- REP REWARD
    awardsitem = "WhiskeyFull;2", -- ITEM REWARD
    awardsworld = "Questyno_KylePorter;SFQuest_Questyno_KylePorter4_Begin;Questyno_KylePorter4", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_KylePorter3_Lore" },
    unlocks = "unlockworldevent;Questyno_KylePorter;SFQuest_Questyno_KylePorter3_Complete",
    text = "IGUI_SFQuest_Questyno_KylePorter3_B_Text",
    texture = "media/textures/Item_KylePorter.png",
    title = "IGUI_SFQuest_Questyno_KylePorter3_Title",
    unique = true,
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_KylePorter4",

    awardstask = "Questyno_KylePorter4_A", -- TASK REWARD
    lore = { "IGUI_SFQuest_Questyno_KylePorter4_Lore" },
    objectives = {{
        guid = "Questyno_KylePorter4_A",
        text = "IGUI_SFQuest_Questyno_KylePorter4_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoKylePorter4;additem;Base.ModernTire3;2",
    },
    {
        guid = "Questyno_KylePorter4_B",
        text = "IGUI_SFQuest_Questyno_KylePorter4_B",
        hidden = false,
        oncompleted = "removeclickevent;EventoKylePorter4A;additem;Base.ModernTire3;2",
    }},
    text = "IGUI_SFQuest_Questyno_KylePorter4_Text",
    texture = "media/textures/Item_KylePorter.png",
    title = "IGUI_SFQuest_Questyno_KylePorter4_Title",
    unique = true,
    unlocks = "clickevent;7049x7168x0:EventoKylePorter4;time:50:anim:loot;updateobjective:Questyno_KylePorter4:1:Completed;clickevent;7289x6912x0:EventoKylePorter4A;time:50:anim:loot;updateobjective:Questyno_KylePorter4:2:Completed",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_KylePorter4_A",

    awardsrep = "LaResistenza;500;KylePorter;10", -- REP REWARD
    awardsitem = "WhiskeyFull;2", -- ITEM REWARD
    needsitem = "ModernTire3;4",
    awardsworld = "Questyno_KylePorter;SFQuest_Questyno_KylePorter5_Begin;Questyno_KylePorter5", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_KylePorter4_Lore" },
    unlocks = "unlockworldevent;Questyno_KylePorter;SFQuest_Questyno_KylePorter4_Complete",
    text = "IGUI_SFQuest_Questyno_KylePorter4_A_Text",
    texture = "media/textures/Item_KylePorter.png",
    title = "IGUI_SFQuest_Questyno_KylePorter4_Title",
    unique = true,
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_KylePorter5",

    awardstask = "Questyno_KylePorter5_A", -- TASK REWARD
    lore = { "IGUI_SFQuest_Questyno_KylePorter5_Lore" },
    objectives = { {
        guid = "Questyno_KylePorter5_A",
        text = "IGUI_SFQuest_Questyno_KylePorter5_A",
        hidden = false,
        needsitem = "TW.Motor;1",
        onobtained = "updateobjective;Questyno_KylePorter5;1;Completed;removeitem;TW.Motor;1"
    }, {
        guid = "Questyno_KylePorter5_B",
        text = "IGUI_SFQuest_Questyno_KylePorter5_B",
        hidden = false,
        needsitem = "TW.Spring;4",
        onobtained = "updateobjective;Questyno_KylePorter5;2;Completed;removeitem;TW.Spring;4"
    }, {
        guid = "Questyno_KylePorter5_C",
        text = "IGUI_SFQuest_Questyno_KylePorter5_C",
        hidden = false,
        needsitem = "ATAProtectionWheelsChain;2",
        onobtained = "updateobjective;Questyno_KylePorter5;3;Completed;removeitem;ATAProtectionWheelsChain;2"
    }, {
        guid = "Questyno_KylePorter5_D",
        text = "IGUI_SFQuest_Questyno_KylePorter5_D",
        hidden = false,
        needsitem = "TW.BoxLargeBolts;2",
        onobtained = "updateobjective;Questyno_KylePorter5;4;Completed;removeitem;TW.BoxLargeBolts;2"
    }, {
        guid = "Questyno_KylePorter5_E",
        text = "IGUI_SFQuest_Questyno_KylePorter5_E",
        hidden = false,
        needsitem = "SOMW.LongMetalPipe;4",
        onobtained = "updateobjective;Questyno_KylePorter5;5;Completed;removeitem;SOMW.LongMetalPipe;4"
    }, {
        guid = "Questyno_KylePorter5_F",
        text = "IGUI_SFQuest_Questyno_KylePorter5_F",
        hidden = false,
        needsitem = "SOMW.LongLeadPipe;4",
        onobtained = "updateobjective;Questyno_KylePorter5;6;Completed;removeitem;SOMW.LongLeadPipe;4"
    } },
    text = "IGUI_SFQuest_Questyno_KylePorter5_Text",
    texture = "media/textures/Item_KylePorter.png",
    title = "IGUI_SFQuest_Questyno_KylePorter5_Title",
    unique = true,
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_KylePorter5_A",

    awardsrep = "LaResistenza;500;KylePorter;10",
    awardsworld = "Questyno_KylePorter;SFQuest_Questyno_KylePorter6_Begin;Questyno_KylePorter6", -- DIALOGUE REWARD
    completesound = "levelup",                                                                                          -- Suono completamento quest, sempre uguale
    lore = { "IGUI_SFQuest_Questyno_KylePorter5_Lore" },
    unlocks = "unlockworldevent;Questyno_KylePorter;SFQuest_Questyno_KylePorter5_Complete",
    text = "IGUI_SFQuest_Questyno_KylePorter5_A_Text",
    texture = "media/textures/Item_KylePorter.png",
    unique = true,
    title = "IGUI_SFQuest_Questyno_KylePorter5_Title",
})


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_KylePorter6",

    awardstask = "Questyno_KylePorter6_A", -- TASK REWARD
    lore = { "IGUI_SFQuest_Questyno_KylePorter6_Lore" },
    objectives = {{
        guid = "Questyno_KylePorter6_A",
        text = "IGUI_SFQuest_Questyno_KylePorter6_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoKylePorter6;additem;PropaneTank;2;additem;WeldingRods;5",
    }},
    text = "IGUI_SFQuest_Questyno_KylePorter6_Text",
    texture = "media/textures/Item_KylePorter.png",
    title = "IGUI_SFQuest_Questyno_KylePorter6_Title",
    unique = true,
    unlocks = "clickevent;13891x9976x0:EventoKylePorter6;time:50:anim:loot;updateobjective:Questyno_KylePorter6:1:Completed",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_KylePorter6_A",

    awardstask = "Questyno_KylePorter6_B", -- TASK REWARD
    lore = { "IGUI_SFQuest_Questyno_KylePorter6_Lore" },
    objectives = { {
        guid = "Questyno_KylePorter6_B",
        text = "IGUI_SFQuest_Questyno_KylePorter6_B",
        hidden = false,
        needsitem = "PropaneTank;2",
        onobtained = "updateobjective;Questyno_KylePorter6_A;1;Completed;removeitem;PropaneTank;2"
    },{
        guid = "Questyno_KylePorter6_C",
        text = "IGUI_SFQuest_Questyno_KylePorter6_C",
        hidden = false,
        needsitem = "WeldingRods;5",
        onobtained = "updateobjective;Questyno_KylePorter6_A;2;Completed;removeitem;WeldingRods;5"
    } },
    text = "IGUI_SFQuest_Questyno_KylePorter6_A_Text",
    texture = "media/textures/Item_KylePorter.png",
    title = "IGUI_SFQuest_Questyno_KylePorter6_Title",
    unique = true,
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_KylePorter6_B",

    awardsrep = "LaResistenza;500;KylePorter;10", -- REP REWARD
    awardsitem = "MoneyToXP.Rotolo;4", -- ITEM REWARD
    awardsworld = "Questyno_KylePorter;SFQuest_Questyno_KylePorter7_Begin;Questyno_KylePorter7", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_KylePorter6_Lore" },
    unlocks = "unlockworldevent;Questyno_KylePorter;SFQuest_Questyno_KylePorter6_Complete",
    text = "IGUI_SFQuest_Questyno_KylePorter6_B_Text",
    texture = "media/textures/Item_KylePorter.png",
    title = "IGUI_SFQuest_Questyno_KylePorter6_Title",
    unique = true,
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_KylePorter7",

    awardstask = "Questyno_KylePorter7_A", -- TASK REWARD
    lore = { "IGUI_SFQuest_Questyno_KylePorter7_Lore" },
    objectives = {{
        guid = "Questyno_KylePorter7_A",
        text = "IGUI_SFQuest_Questyno_KylePorter7_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoKylePorter7;additem;RadiatedZones.Iodine;1",
    }},
    text = "IGUI_SFQuest_Questyno_KylePorter7_Text",
    texture = "media/textures/Item_KylePorter.png",
    title = "IGUI_SFQuest_Questyno_KylePorter7_Title",
    unique = true,
    unlocks = "clickevent;4121x13304x2:EventoKylePorter7;time:50:anim:loot;updateobjective:Questyno_KylePorter7:1:Completed",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_KylePorter7_A",

    awardsrep = "LaResistenza;500;KylePorter;10", -- REP REWARD
    awardsitem = "RadiatedZones.Hat_EmptyGasMask;1;RadiatedZones.GasMaskFilter;2", -- ITEM REWARD
    awardsworld = "Questyno_KylePorter;SFQuest_Questyno_KylePorter8_Begin;Questyno_KylePorter8", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_KylePorter7_Lore" },
    needsitem = "RadiatedZones.Iodine;6",
    onobtained = "unlockworldevent;Questyno_KylePorter;SFQuest_Questyno_KylePorter7_Complete",
    text = "IGUI_SFQuest_Questyno_KylePorter7_A_Text",
    texture = "media/textures/Item_KylePorter.png",
    title = "IGUI_SFQuest_Questyno_KylePorter7_Title",
    unique = true,
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_KylePorter8",

    awardstask = "Questyno_KylePorter8_A", -- TASK REWARD
    lore = { "IGUI_SFQuest_Questyno_KylePorter8_Lore" },
    objectives = {{
        guid = "Questyno_KylePorter8_A",
        text = "IGUI_SFQuest_Questyno_KylePorter8_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoKylePorter8;additem;PaintWhite;1;additem;PaintBlue;1;additem;PaintBlack;1;additem;PaintRed;1",
    }},
    text = "IGUI_SFQuest_Questyno_KylePorter8_Text",
    texture = "media/textures/Item_KylePorter.png",
    title = "IGUI_SFQuest_Questyno_KylePorter8_Title",
    unique = true,
    unlocks = "clickevent;12107x1259x0:EventoKylePorter8;time:50:anim:loot;updateobjective:Questyno_KylePorter8:1:Completed",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_KylePorter8_A",

    awardstask = "Questyno_KylePorter8_B", -- TASK REWARD
    lore = { "IGUI_SFQuest_Questyno_KylePorter8_Lore" },
    objectives = { {
        guid = "Questyno_KylePorter8_B",
        text = "IGUI_SFQuest_Questyno_KylePorter8_B",
        hidden = false,
        needsitem = "PaintWhite;1",
        onobtained = "updateobjective;Questyno_KylePorter8_A;1;Completed;removeitem;PaintWhite;1"
    },{
        guid = "Questyno_KylePorter8_C",
        text = "IGUI_SFQuest_Questyno_KylePorter8_C",
        hidden = false,
        needsitem = "PaintBlue;1",
        onobtained = "updateobjective;Questyno_KylePorter8_A;2;Completed;removeitem;PaintBlue;1"
    }, {
        guid = "Questyno_KylePorter8_D",
        text = "IGUI_SFQuest_Questyno_KylePorter8_D",
        hidden = false,
        needsitem = "PaintBlack;1",
        onobtained = "updateobjective;Questyno_KylePorter8_A;3;Completed;removeitem;PaintBlack;1"
    }, {
        guid = "Questyno_KylePorter8_E",
        text = "IGUI_SFQuest_Questyno_KylePorter8_E",
        hidden = false,
        needsitem = "PaintRed;1",
        onobtained = "updateobjective;Questyno_KylePorter8_A;4;Completed;removeitem;PaintRed;1"
    } },
    text = "IGUI_SFQuest_Questyno_KylePorter8_A_Text",
    texture = "media/textures/Item_KylePorter.png",
    unique = true,
    title = "IGUI_SFQuest_Questyno_KylePorter8_Title",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_KylePorter8_B",

    awardsrep = "LaResistenza;500;KylePorter;10", -- REP REWARD
    awardsworld = "Questyno_KylePorter;SFQuest_Questyno_KylePorter9_Begin;Questyno_KylePorter9", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_KylePorter8_Lore" },
    text = "IGUI_SFQuest_Questyno_KylePorter8_B_Text",
    texture = "media/textures/Item_KylePorter.png",
    title = "IGUI_SFQuest_Questyno_KylePorter8_Title",
    unique = true,
    unlocks = "unlockworldevent;Questyno_KylePorter;SFQuest_Questyno_KylePorter8_Complete",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_KylePorter9",

    awardsrep = "LaResistenza;500;KylePorter;10", -- REP REWARD
    awardsitem = "Wine;1", -- ITEM REWARD
    awardsworld = "Questyno_KylePorter;SFQuest_Questyno_KylePorter10_Begin;Questyno_KylePorter10", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_KylePorter9_Lore" },
    needsitem = "EngineParts;50",
    onobtained = "unlockworldevent;Questyno_KylePorter;SFQuest_Questyno_KylePorter9_Complete",
    text = "IGUI_SFQuest_Questyno_KylePorter9_Text",
    texture = "media/textures/Item_KylePorter.png",
    title = "IGUI_SFQuest_Questyno_KylePorter9_Title",
    unique = true,
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_KylePorter10",

    awardstask = "Questyno_KylePorter10_A", -- TASK REWARD
    lore = { "IGUI_SFQuest_Questyno_KylePorter10_Lore" },
    objectives = {{
        guid = "Questyno_KylePorter10_A",
        text = "IGUI_SFQuest_Questyno_KylePorter10_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoKylePorter10;additem;Key1;1",
    },
    {
        guid = "Questyno_KylePorter10_B",
        text = "IGUI_SFQuest_Questyno_KylePorter10_B",
        hidden = false,
        oncompleted = "removeclickevent;EventoKylePorter10A;additem;Key2;1",
    }},
    text = "IGUI_SFQuest_Questyno_KylePorter10_Text",
    texture = "media/textures/Item_KylePorter.png",
    title = "IGUI_SFQuest_Questyno_KylePorter10_Title",
    unique = true,
    unlocks = "clickevent;3138x11274x0:EventoKylePorter10;time:50:anim:loot;updateobjective:Questyno_KylePorter10:1:Completed;clickevent;3734x11700x0:EventoKylePorter10A;time:50:anim:loot;updateobjective:Questyno_KylePorter10:2:Completed",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_KylePorter10_A",

    awardstask = "Questyno_KylePorter10_B", -- TASK REWARD
    lore = { "IGUI_SFQuest_Questyno_KylePorter10_Lore" },
    objectives = { {
        guid = "Questyno_KylePorter10_B",
        text = "IGUI_SFQuest_Questyno_KylePorter10_B",
        hidden = false,
        needsitem = "Key1;1",
        onobtained = "updateobjective;Questyno_KylePorter10_A;1;Completed;removeitem;Key1;1"
    },{
        guid = "Questyno_KylePorter10_C",
        text = "IGUI_SFQuest_Questyno_KylePorter10_C",
        hidden = false,
        needsitem = "Key2;1",
        onobtained = "updateobjective;Questyno_KylePorter10_A;2;Completed;removeitem;Key2;1"
    } },
    text = "IGUI_SFQuest_Questyno_KylePorter10_A_Text",
    texture = "media/textures/Item_KylePorter.png",
    title = "IGUI_SFQuest_Questyno_KylePorter10_Title",
    unique = true,
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_KylePorter10_B",

    awardsrep = "LaResistenza;500;KylePorter;109", -- REP REWARD
    --awardsworld = "Questyno_KylePorter;SFQuest_Questyno_KylePorter11_Begin;Questyno_KylePorter11", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_KylePorter10_Lore" },
    unlocks = "unlockworldevent;Questyno_KylePorter;SFQuest_Questyno_KylePorter10_Complete",
    text = "IGUI_SFQuest_Questyno_KylePorter10_B_Text",
    texture = "media/textures/Item_KylePorter.png",
    title = "IGUI_SFQuest_Questyno_KylePorter10_Title",
    unique = true,
});


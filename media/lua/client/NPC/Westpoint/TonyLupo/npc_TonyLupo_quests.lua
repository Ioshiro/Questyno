require 'SFQuest_Database'

-- Quest per Lupo
table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_Lupo_Intro",

    awardsrep = "TonyLupo;100", -- REP REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_Lupo_Intro_Lore" },
    ondone = "randomcodedworldfrompool;Questyno_Lupo;Questyno;Lupo",
    text = "IGUI_SFQuest_Questyno_Lupo_Intro_Text",
    texture = "media/textures/Item_TonyLupo.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_Lupo_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_Lupo_Intro_Title",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_Lupo1",

    awardsrep = "LaResistenza;150", -- REP REWARD
    awardsitem = "Money;20",       -- MONEY REWARD
    completesound = "levelup",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo1_Lore" },
    needsitem = "308Box;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_Lupo1_Complete",
    text = "IGUI_SFQuest_Questyno_Lupo1_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo1_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_Lupo2",

    awardsrep = "LaResistenza;300", -- REP REWARD
    awardsitem = "Money;25",       -- MONEY REWARD
    completesound = "levelup",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo2_Lore" },
    needsitem = "Bullets9mmBox;2", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_Lupo2_Complete",
    text = "IGUI_SFQuest_Questyno_Lupo2_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo2_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_Lupo3",

    awardsrep = "LaResistenza;450", -- REP REWARD
    awardsitem = "Money;50",       -- MONEY REWARD
    completesound = "levelup",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo3_Lore" },
    needsitem = "Shotgun;3", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_Lupo3_Complete",
    text = "IGUI_SFQuest_Questyno_Lupo3_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo3_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_Lupo4",
    
    awardstask = "Questyno_Lupo4_A",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo4_Lore" },                                                        
    objectives = { {
        guid = "Questyno_Lupo4_A",
        text = "IGUI_SFQuest_Questyno_Lupo4_A",
        hidden = false,
        needsitem = "AssaultRifle;1",
        onobtained = "updateobjective;Questyno_Lupo4;1;Completed;removeitem;AssaultRifle;1"
    }, {
        guid = "Questyno_Lupo4_B",
        text = "IGUI_SFQuest_Questyno_Lupo4_B",
        hidden = false,
        needsitem = "556Box;1",
        onobtained = "updateobjective;Questyno_Lupo4;2;Completed;removeitem;556Box;1"
    } },
    text = "IGUI_SFQuest_Questyno_Lupo4_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo4_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_Lupo4_A",
    
    awardsrep = "LaResistenza;500",
    awardsitem = "Money;20",
    completesound = "levelup",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo4_Lore" },
    unlocks = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_Lupo4_Complete",
    text = "IGUI_SFQuest_Questyno_Lupo4_A_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo4_Title",
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_Lupo5",
    
    awardstask = "Questyno_Lupo5_A",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo5_Lore" },
    objectives = { {
        guid = "Questyno_Lupo5_A",
        text = "IGUI_SFQuest_Questyno_Lupo5_A",
        hidden = false,
        needsitem = "AssaultRifle2;1",
        onobtained = "updateobjective;Questyno_Lupo5;1;Completed;removeitem;AssaultRifle2;1"
    }, {
        guid = "Questyno_Lupo5_B",
        text = "IGUI_SFQuest_Questyno_Lupo5_B",
        hidden = false,
        needsitem = "308Box;1",
        onobtained = "updateobjective;Questyno_Lupo5;2;Completed;removeitem;308Box;1"
    } },
    text = "IGUI_SFQuest_Questyno_Lupo5_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo5_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_Lupo5_A",
    
    awardsrep = "LaResistenza;600",
    completesound = "levelup",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo5_Lore" },
    unlocks = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_Lupo5_Complete",
    text = "IGUI_SFQuest_Questyno_Lupo5_A_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo5_Title",
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_Lupo6",
    
    awardstask = "Questyno_Lupo6_A",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo6_Lore" },
    objectives = { {
        guid = "Questyno_Lupo6_A",
        text = "IGUI_SFQuest_Questyno_Lupo6_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoLupo6;additem;Bullets38Box;10",
    } },
    text = "IGUI_SFQuest_Questyno_Lupo6_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo6_Title",
    unlocks = "clickevent;10633x10401x0:EventoLupo6;time:50:anim:loot;updateobjective:Questyno_Lupo6:1:Completed",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_Lupo6_A",
    
    awardsrep = "LaResistenza;350",
    completesound = "levelup",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo6_Lore" },
    needsitem = "Bullets38Box;10",
    onobtained = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_Lupo6_Complete",
    text = "IGUI_SFQuest_Questyno_Lupo6_A_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo6_Title",
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_Lupo7",
    
    awardstask = "Questyno_Lupo7_A",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo7_Lore" },
    objectives = { {
        guid = "Questyno_Lupo7_A",
        text = "IGUI_SFQuest_Questyno_Lupo7_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoLupo7;additem;Bullets45Box;10",
    } },
    text = "IGUI_SFQuest_Questyno_Lupo7_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo7_Title",
    unlocks = "clickevent;9745x10566x2:EventoLupo7;time:50:anim:loot;updateobjective:Questyno_Lupo7:1:Completed",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_Lupo7_A",
    
    awardsrep = "LaResistenza;150",
    awardsitem = "Money;25",
    completesound = "levelup",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo7_Lore" },
    needsitem = "Bullets45Box;10",
    onobtained = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_Lupo7_Complete",
    text = "IGUI_SFQuest_Questyno_Lupo7_A_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo7_Title",
})


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_Lupo8",

    awardsrep = "LaResistenza;200", -- REP REWARD
    awardsitem = "Money;40",       -- MONEY REWARD
    completesound = "levelup",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo8_Lore" },
    needsitem = "762Box;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_Lupo8_Complete",
    text = "IGUI_SFQuest_Questyno_Lupo8_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo8_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_Lupo9",
    
    awardstask = "Questyno_Lupo9_A",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo9_Lore" },                                                        
    objectives = { {
        guid = "Questyno_Lupo9_A",
        text = "IGUI_SFQuest_Questyno_Lupo9_A",
        hidden = false,
        needsitem = "Pistol;1",
        onobtained = "updateobjective;Questyno_Lupo9;1;Completed;removeitem;Pistol;1"
    }, {
        guid = "Questyno_Lupo9_B",
        text = "IGUI_SFQuest_Questyno_Lupo9_B",
        hidden = false,
        needsitem = "Bullets9mmBox;1",
        onobtained = "updateobjective;Questyno_Lupo9;2;Completed;removeitem;Bullets9mmBox;1"
    } },
    text = "IGUI_SFQuest_Questyno_Lupo9_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo9_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_Lupo9_A",
    
    awardsrep = "LaResistenza;250",
    awardsitem = "Money;20",
    completesound = "levelup",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo9_Lore" },
    unlocks = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_Lupo9_Complete",
    text = "IGUI_SFQuest_Questyno_Lupo9_A_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo9_Title",
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_Lupo10",
    
    awardstask = "Questyno_Lupo10_A",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo10_Lore" },
    objectives = { {
        guid = "Questyno_Lupo10_A",
        text = "IGUI_SFQuest_Questyno_Lupo10_A",
        hidden = false,
        needsitem = "Bullets45Box;2",
        onobtained = "updateobjective;Questyno_Lupo10;1;Completed;removeitem;Bullets45Box;2"
    }, {
        guid = "Questyno_Lupo10_B",
        text = "IGUI_SFQuest_Questyno_Lupo10_B",
        hidden = false,
        needsitem = "45Clip;2",
        onobtained = "updateobjective;Questyno_Lupo10;2;Completed;removeitem;45Clip;2"
    } },
    text = "IGUI_SFQuest_Questyno_Lupo10_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo10_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_Lupo10_A",
    
    awardsrep = "LaResistenza;500",
    completesound = "levelup",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo10_Lore" },
    unlocks = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_Lupo10_Complete",
    text = "IGUI_SFQuest_Questyno_Lupo10_A_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo10_Title",
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_Lupo11",
    
    awardstask = "Questyno_Lupo11_A",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo11_Lore" },
    objectives = { {
        guid = "Questyno_Lupo11_A",
        text = "IGUI_SFQuest_Questyno_Lupo11_A",
        hidden = false,
        needsitem = "ShotgunShellsBox;2",
        onobtained = "updateobjective;Questyno_Lupo11;1;Completed;removeitem;ShotgunShellsBox;2"
    },
    {
        guid = "Questyno_Lupo11_B",
        text = "IGUI_SFQuest_Questyno_Lupo11_B",
        hidden = false,
        needsitem = "Shotgun;2",
        onobtained = "updateobjective;Questyno_Lupo11;2;Completed;removeitem;Shotgun;2"
    } },
    text = "IGUI_SFQuest_Questyno_Lupo11_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo11_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_Lupo11_A",

    awardsrep = "LaResistenza;500",
    completesound = "levelup",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo11_Lore" },
    unlocks = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_Lupo11_Complete",
    text = "IGUI_SFQuest_Questyno_Lupo11_A_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo11_Title",
})


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_Lupo12",

    awardsrep = "LaResistenza;400", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo12_Lore" },
    needsitem = "Molotov;3", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_Lupo12_Complete",
    text = "IGUI_SFQuest_Questyno_Lupo12_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo12_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_Lupo13",

    awardsrep = "LaResistenza;150", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo13_Lore" },
    needsitem = "Molotov;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_Lupo13_Complete",
    text = "IGUI_SFQuest_Questyno_Lupo13_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo13_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_Lupo14",
    
    awardstask = "Questyno_Lupo14_A",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo14_Lore" },                                                        
    objectives = { {
        guid = "Questyno_Lupo14_A",
        text = "IGUI_SFQuest_Questyno_Lupo14_A",
        hidden = false,
        needsitem = "DoubleBarrelShotgun;1",
        onobtained = "updateobjective;Questyno_Lupo14;1;Completed;removeitem;DoubleBarrelShotgun;1"
    }, {
        guid = "Questyno_Lupo14_B",
        text = "IGUI_SFQuest_Questyno_Lupo14_B",
        hidden = false,
        needsitem = "ShotgunShellsBox;2",
        onobtained = "updateobjective;Questyno_Lupo14;2;Completed;removeitem;ShotgunShellsBox;2"
    } },
    text = "IGUI_SFQuest_Questyno_Lupo14_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo14_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_Lupo14_A",
    
    awardsrep = "LaResistenza;400",
    awardsitem = "Money;30",
    completesound = "levelup",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo14_Lore" },
    unlocks = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_Lupo14_Complete",
    text = "IGUI_SFQuest_Questyno_Lupo14_A_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo14_Title",
})


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_Lupo15",
    
    awardstask = "Questyno_Lupo15_A",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo15_Lore" },                                                        
    objectives = { {
        guid = "Questyno_Lupo15_A",
        text = "IGUI_SFQuest_Questyno_Lupo15_A",
        hidden = false,
        needsitem = "Revolver_Long;1",
        onobtained = "updateobjective;Questyno_Lupo15;1;Completed;removeitem;Revolver_Long;1"
    }, {
        guid = "Questyno_Lupo15_B",
        text = "IGUI_SFQuest_Questyno_Lupo15_B",
        hidden = false,
        needsitem = "Bullets44Box;3",
        onobtained = "updateobjective;Questyno_Lupo15;2;Completed;removeitem;Bullets44Box;3"
    } },
    text = "IGUI_SFQuest_Questyno_Lupo15_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo15_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_Lupo15_A",
    
    awardsrep = "LaResistenza;600",
    completesound = "levelup",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo15_Lore" },
    unlocks = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_Lupo15_Complete",
    text = "IGUI_SFQuest_Questyno_Lupo15_A_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo15_Title",
})


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_Lupo16",
    
    awardstask = "Questyno_Lupo16_A",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo16_Lore" },                                                        
    objectives = { {
        guid = "Questyno_Lupo16_A",
        text = "IGUI_SFQuest_Questyno_Lupo16_A",
        hidden = false,
        needsitem = "Bullets44Box;1",
        onobtained = "updateobjective;Questyno_Lupo16;1;Completed;removeitem;Bullets44Box;1"
    }, {
        guid = "Questyno_Lupo16_B",
        text = "IGUI_SFQuest_Questyno_Lupo16_B",
        hidden = false,
        needsitem = "Bullets9mmBox;1",
        onobtained = "updateobjective;Questyno_Lupo16;2;Completed;removeitem;Bullets9mmBox;1"
    }, {
        guid = "Questyno_Lupo16_C",
        text = "IGUI_SFQuest_Questyno_Lupo16_C",
        hidden = false,
        needsitem = "Bullets38Box;1",
        onobtained = "updateobjective;Questyno_Lupo16;3;Completed;removeitem;Bullets38Box;1"
    }, {
        guid = "Questyno_Lupo16_D",
        text = "IGUI_SFQuest_Questyno_Lupo16_D",
        hidden = false,
        needsitem = "Bullets45Box;1",
        onobtained = "updateobjective;Questyno_Lupo16;4;Completed;removeitem;Bullets45Box;1"
    } },
    text = "IGUI_SFQuest_Questyno_Lupo16_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo16_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_Lupo16_A",
    
    awardsrep = "LaResistenza;600",
    completesound = "levelup",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo16_Lore" },
    unlocks = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_Lupo16_Complete",
    text = "IGUI_SFQuest_Questyno_Lupo16_A_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo16_Title",
})


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_Lupo17",

    awardsrep = "LaResistenza;300", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo17_Lore" },
    needsitem = "Bullets44Box;2", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_Lupo17_Complete",
    text = "IGUI_SFQuest_Questyno_Lupo17_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo17_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_Lupo18",

    awardsrep = "LaResistenza;150", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo18_Lore" },
    needsitem = "Bullets9mmBox;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_Lupo18_Complete",
    text = "IGUI_SFQuest_Questyno_Lupo18_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo18_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_Lupo19",

    awardsrep = "LaResistenza;150", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo19_Lore" },
    needsitem = "308Box;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_Lupo19_Complete",
    text = "IGUI_SFQuest_Questyno_Lupo19_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo19_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_Lupo20",

    awardsrep = "LaResistenza;200", -- REP REWARD
    awardsitem = "Money;30",       -- MONEY REWARD
    completesound = "levelup",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo20_Lore" },
    needsitem = "Revolver;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_Lupo20_Complete",
    text = "IGUI_SFQuest_Questyno_Lupo20_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo20_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_Lupo21",

    awardsrep = "LaResistenza;200", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo21_Lore" },
    needsitem = "Pistol3;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_Lupo21_Complete",
    text = "IGUI_SFQuest_Questyno_Lupo21_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo21_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_Lupo22",

    awardsrep = "LaResistenza;200", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo22_Lore" },
    needsitem = "Revolver_Long;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_Lupo22_Complete",
    text = "IGUI_SFQuest_Questyno_Lupo22_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo22_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_Lupo23",

    awardsrep = "LaResistenza;100", -- REP REWARD
    awardsitem = "ShotgunShellsBox;4;Money;50",       -- MONEY REWARD
    completesound = "levelup",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo23_Lore" },
    needsitem = "ShotgunShellsBox;5", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_Lupo23_Complete",
    text = "IGUI_SFQuest_Questyno_Lupo23_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo23_Title",
    unlockedsound = "QuestUnlocked"
});



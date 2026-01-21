require 'SFQuest_Database'

-- Quest per Lupo
table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TonyLupo_Intro",

    awardsrep = "TonyLupo;100", -- REP REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_TonyLupo_Intro_Lore" },
    ondone = "randomcodedworldfrompool;Questyno_TonyLupo;Questyno;TonyLupo",
    text = "IGUI_SFQuest_Questyno_TonyLupo_Intro_Text",
    texture = "media/textures/Item_TonyLupo.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_TonyLupo_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_TonyLupo_Intro_Title",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TonyLupo1",

    awardsrep = "LaResistenza;150", -- REP REWARD
    awardsitem = "Money;20",       -- MONEY REWARD
    completesound = "levelup",
    dailycode = "Questyno_TonyLupo",
    lore = { "IGUI_SFQuest_Questyno_TonyLupo1_Lore" },
    needsitem = "308Box;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_TonyLupo1_Complete",
    text = "IGUI_SFQuest_Questyno_TonyLupo1_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_TonyLupo1_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TonyLupo2",

    awardsrep = "LaResistenza;300", -- REP REWARD
    awardsitem = "Money;25",       -- MONEY REWARD
    completesound = "levelup",
    dailycode = "Questyno_TonyLupo",
    lore = { "IGUI_SFQuest_Questyno_TonyLupo2_Lore" },
    needsitem = "Bullets9mmBox;2", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_TonyLupo2_Complete",
    text = "IGUI_SFQuest_Questyno_TonyLupo2_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_TonyLupo2_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TonyLupo3",

    awardsrep = "LaResistenza;450", -- REP REWARD
    awardsitem = "Money;50",       -- MONEY REWARD
    completesound = "levelup",
    dailycode = "Questyno_TonyLupo",
    lore = { "IGUI_SFQuest_Questyno_TonyLupo3_Lore" },
    needsitem = "Shotgun;3", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_TonyLupo3_Complete",
    text = "IGUI_SFQuest_Questyno_TonyLupo3_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_TonyLupo3_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TonyLupo4",
    
    awardstask = "Questyno_TonyLupo4_A",
    dailycode = "Questyno_TonyLupo",
    lore = { "IGUI_SFQuest_Questyno_TonyLupo4_Lore" },                                                        
    objectives = { {
        guid = "Questyno_TonyLupo4_A",
        text = "IGUI_SFQuest_Questyno_TonyLupo4_A",
        hidden = false,
        needsitem = "AssaultRifle;1",
        onobtained = "updateobjective;Questyno_TonyLupo4;1;Completed;removeitem;AssaultRifle;1"
    }, {
        guid = "Questyno_TonyLupo4_B",
        text = "IGUI_SFQuest_Questyno_TonyLupo4_B",
        hidden = false,
        needsitem = "556Box;1",
        onobtained = "updateobjective;Questyno_TonyLupo4;2;Completed;removeitem;556Box;1"
    } },
    text = "IGUI_SFQuest_Questyno_TonyLupo4_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_TonyLupo4_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_TonyLupo4_A",
    
    awardsrep = "LaResistenza;500",
    awardsitem = "Money;20",
    completesound = "levelup",
    dailycode = "Questyno_TonyLupo",
    lore = { "IGUI_SFQuest_Questyno_TonyLupo4_Lore" },
    unlocks = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_TonyLupo4_Complete",
    text = "IGUI_SFQuest_Questyno_TonyLupo4_A_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_TonyLupo4_Title",
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_TonyLupo5",
    
    awardstask = "Questyno_TonyLupo5_A",
    dailycode = "Questyno_TonyLupo",
    lore = { "IGUI_SFQuest_Questyno_TonyLupo5_Lore" },
    objectives = { {
        guid = "Questyno_TonyLupo5_A",
        text = "IGUI_SFQuest_Questyno_TonyLupo5_A",
        hidden = false,
        needsitem = "AssaultRifle2;1",
        onobtained = "updateobjective;Questyno_TonyLupo5;1;Completed;removeitem;AssaultRifle2;1"
    }, {
        guid = "Questyno_TonyLupo5_B",
        text = "IGUI_SFQuest_Questyno_TonyLupo5_B",
        hidden = false,
        needsitem = "308Box;1",
        onobtained = "updateobjective;Questyno_TonyLupo5;2;Completed;removeitem;308Box;1"
    } },
    text = "IGUI_SFQuest_Questyno_TonyLupo5_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_TonyLupo5_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_TonyLupo5_A",
    
    awardsrep = "LaResistenza;600",
    completesound = "levelup",
    dailycode = "Questyno_TonyLupo",
    lore = { "IGUI_SFQuest_Questyno_TonyLupo5_Lore" },
    unlocks = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_TonyLupo5_Complete",
    text = "IGUI_SFQuest_Questyno_TonyLupo5_A_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_TonyLupo5_Title",
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_TonyLupo6",
    
    awardstask = "Questyno_TonyLupo6_A",
    dailycode = "Questyno_TonyLupo",
    lore = { "IGUI_SFQuest_Questyno_TonyLupo6_Lore" },
    objectives = { {
        guid = "Questyno_TonyLupo6_A",
        text = "IGUI_SFQuest_Questyno_TonyLupo6_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoLupo6;additem;Bullets38Box;10",
    } },
    text = "IGUI_SFQuest_Questyno_TonyLupo6_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_TonyLupo6_Title",
    unlocks = "clickevent;10633x10401x0:EventoLupo6;time:50:anim:loot;updateobjective:Questyno_TonyLupo6:1:Completed",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_TonyLupo6_A",
    
    awardsrep = "LaResistenza;350",
    completesound = "levelup",
    dailycode = "Questyno_TonyLupo",
    lore = { "IGUI_SFQuest_Questyno_TonyLupo6_Lore" },
    needsitem = "Bullets38Box;10",
    onobtained = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_TonyLupo6_Complete",
    text = "IGUI_SFQuest_Questyno_TonyLupo6_A_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_TonyLupo6_Title",
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_TonyLupo7",
    
    awardstask = "Questyno_TonyLupo7_A",
    dailycode = "Questyno_TonyLupo",
    lore = { "IGUI_SFQuest_Questyno_TonyLupo7_Lore" },
    objectives = { {
        guid = "Questyno_TonyLupo7_A",
        text = "IGUI_SFQuest_Questyno_TonyLupo7_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoLupo7;additem;Bullets45Box;10",
    } },
    text = "IGUI_SFQuest_Questyno_TonyLupo7_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_TonyLupo7_Title",
    unlocks = "clickevent;9745x10566x2:EventoLupo7;time:50:anim:loot;updateobjective:Questyno_TonyLupo7:1:Completed",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_TonyLupo7_A",
    
    awardsrep = "LaResistenza;150",
    awardsitem = "Money;25",
    completesound = "levelup",
    dailycode = "Questyno_TonyLupo",
    lore = { "IGUI_SFQuest_Questyno_TonyLupo7_Lore" },
    needsitem = "Bullets45Box;10",
    onobtained = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_TonyLupo7_Complete",
    text = "IGUI_SFQuest_Questyno_TonyLupo7_A_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_TonyLupo7_Title",
})


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TonyLupo8",

    awardsrep = "LaResistenza;200", -- REP REWARD
    awardsitem = "Money;40",       -- MONEY REWARD
    completesound = "levelup",
    dailycode = "Questyno_TonyLupo",
    lore = { "IGUI_SFQuest_Questyno_TonyLupo8_Lore" },
    needsitem = "762Box;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_TonyLupo8_Complete",
    text = "IGUI_SFQuest_Questyno_TonyLupo8_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_TonyLupo8_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TonyLupo9",
    
    awardstask = "Questyno_TonyLupo9_A",
    dailycode = "Questyno_TonyLupo",
    lore = { "IGUI_SFQuest_Questyno_TonyLupo9_Lore" },                                                        
    objectives = { {
        guid = "Questyno_TonyLupo9_A",
        text = "IGUI_SFQuest_Questyno_TonyLupo9_A",
        hidden = false,
        needsitem = "Pistol;1",
        onobtained = "updateobjective;Questyno_TonyLupo9;1;Completed;removeitem;Pistol;1"
    }, {
        guid = "Questyno_TonyLupo9_B",
        text = "IGUI_SFQuest_Questyno_TonyLupo9_B",
        hidden = false,
        needsitem = "Bullets9mmBox;1",
        onobtained = "updateobjective;Questyno_TonyLupo9;2;Completed;removeitem;Bullets9mmBox;1"
    } },
    text = "IGUI_SFQuest_Questyno_TonyLupo9_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_TonyLupo9_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_TonyLupo9_A",
    
    awardsrep = "LaResistenza;250",
    awardsitem = "Money;20",
    completesound = "levelup",
    dailycode = "Questyno_TonyLupo",
    lore = { "IGUI_SFQuest_Questyno_TonyLupo9_Lore" },
    unlocks = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_TonyLupo9_Complete",
    text = "IGUI_SFQuest_Questyno_TonyLupo9_A_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_TonyLupo9_Title",
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_TonyLupo10",
    
    awardstask = "Questyno_TonyLupo10_A",
    dailycode = "Questyno_TonyLupo",
    lore = { "IGUI_SFQuest_Questyno_TonyLupo10_Lore" },
    objectives = { {
        guid = "Questyno_TonyLupo10_A",
        text = "IGUI_SFQuest_Questyno_TonyLupo10_A",
        hidden = false,
        needsitem = "Bullets45Box;2",
        onobtained = "updateobjective;Questyno_TonyLupo10;1;Completed;removeitem;Bullets45Box;2"
    }, {
        guid = "Questyno_TonyLupo10_B",
        text = "IGUI_SFQuest_Questyno_TonyLupo10_B",
        hidden = false,
        needsitem = "45Clip;2",
        onobtained = "updateobjective;Questyno_TonyLupo10;2;Completed;removeitem;45Clip;2"
    } },
    text = "IGUI_SFQuest_Questyno_TonyLupo10_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_TonyLupo10_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_TonyLupo10_A",
    
    awardsrep = "LaResistenza;500",
    completesound = "levelup",
    dailycode = "Questyno_TonyLupo",
    lore = { "IGUI_SFQuest_Questyno_TonyLupo10_Lore" },
    unlocks = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_TonyLupo10_Complete",
    text = "IGUI_SFQuest_Questyno_TonyLupo10_A_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_TonyLupo10_Title",
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_TonyLupo11",
    
    awardstask = "Questyno_TonyLupo11_A",
    dailycode = "Questyno_TonyLupo",
    lore = { "IGUI_SFQuest_Questyno_TonyLupo11_Lore" },
    objectives = { {
        guid = "Questyno_TonyLupo11_A",
        text = "IGUI_SFQuest_Questyno_TonyLupo11_A",
        hidden = false,
        needsitem = "ShotgunShellsBox;2",
        onobtained = "updateobjective;Questyno_TonyLupo11;1;Completed;removeitem;ShotgunShellsBox;2"
    },
    {
        guid = "Questyno_TonyLupo11_B",
        text = "IGUI_SFQuest_Questyno_TonyLupo11_B",
        hidden = false,
        needsitem = "Shotgun;2",
        onobtained = "updateobjective;Questyno_TonyLupo11;2;Completed;removeitem;Shotgun;2"
    } },
    text = "IGUI_SFQuest_Questyno_TonyLupo11_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_TonyLupo11_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_TonyLupo11_A",

    awardsrep = "LaResistenza;500",
    completesound = "levelup",
    dailycode = "Questyno_TonyLupo",
    lore = { "IGUI_SFQuest_Questyno_TonyLupo11_Lore" },
    unlocks = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_TonyLupo11_Complete",
    text = "IGUI_SFQuest_Questyno_TonyLupo11_A_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_TonyLupo11_Title",
})


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TonyLupo12",

    awardsrep = "LaResistenza;400", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_TonyLupo",
    lore = { "IGUI_SFQuest_Questyno_TonyLupo12_Lore" },
    needsitem = "Molotov;3", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_TonyLupo12_Complete",
    text = "IGUI_SFQuest_Questyno_TonyLupo12_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_TonyLupo12_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TonyLupo13",

    awardsrep = "LaResistenza;150", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_TonyLupo",
    lore = { "IGUI_SFQuest_Questyno_TonyLupo13_Lore" },
    needsitem = "Molotov;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_TonyLupo13_Complete",
    text = "IGUI_SFQuest_Questyno_TonyLupo13_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_TonyLupo13_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TonyLupo14",
    
    awardstask = "Questyno_TonyLupo14_A",
    dailycode = "Questyno_TonyLupo",
    lore = { "IGUI_SFQuest_Questyno_TonyLupo14_Lore" },                                                        
    objectives = { {
        guid = "Questyno_TonyLupo14_A",
        text = "IGUI_SFQuest_Questyno_TonyLupo14_A",
        hidden = false,
        needsitem = "DoubleBarrelShotgun;1",
        onobtained = "updateobjective;Questyno_TonyLupo14;1;Completed;removeitem;DoubleBarrelShotgun;1"
    }, {
        guid = "Questyno_TonyLupo14_B",
        text = "IGUI_SFQuest_Questyno_TonyLupo14_B",
        hidden = false,
        needsitem = "ShotgunShellsBox;2",
        onobtained = "updateobjective;Questyno_TonyLupo14;2;Completed;removeitem;ShotgunShellsBox;2"
    } },
    text = "IGUI_SFQuest_Questyno_TonyLupo14_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_TonyLupo14_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_TonyLupo14_A",
    
    awardsrep = "LaResistenza;400",
    awardsitem = "Money;30",
    completesound = "levelup",
    dailycode = "Questyno_TonyLupo",
    lore = { "IGUI_SFQuest_Questyno_TonyLupo14_Lore" },
    unlocks = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_TonyLupo14_Complete",
    text = "IGUI_SFQuest_Questyno_TonyLupo14_A_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_TonyLupo14_Title",
})


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TonyLupo15",
    
    awardstask = "Questyno_TonyLupo15_A",
    dailycode = "Questyno_TonyLupo",
    lore = { "IGUI_SFQuest_Questyno_TonyLupo15_Lore" },                                                        
    objectives = { {
        guid = "Questyno_TonyLupo15_A",
        text = "IGUI_SFQuest_Questyno_TonyLupo15_A",
        hidden = false,
        needsitem = "Revolver_Long;1",
        onobtained = "updateobjective;Questyno_TonyLupo15;1;Completed;removeitem;Revolver_Long;1"
    }, {
        guid = "Questyno_TonyLupo15_B",
        text = "IGUI_SFQuest_Questyno_TonyLupo15_B",
        hidden = false,
        needsitem = "Bullets44Box;3",
        onobtained = "updateobjective;Questyno_TonyLupo15;2;Completed;removeitem;Bullets44Box;3"
    } },
    text = "IGUI_SFQuest_Questyno_TonyLupo15_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_TonyLupo15_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_TonyLupo15_A",
    
    awardsrep = "LaResistenza;600",
    completesound = "levelup",
    dailycode = "Questyno_TonyLupo",
    lore = { "IGUI_SFQuest_Questyno_TonyLupo15_Lore" },
    unlocks = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_TonyLupo15_Complete",
    text = "IGUI_SFQuest_Questyno_TonyLupo15_A_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_TonyLupo15_Title",
})


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TonyLupo16",
    
    awardstask = "Questyno_TonyLupo16_A",
    dailycode = "Questyno_TonyLupo",
    lore = { "IGUI_SFQuest_Questyno_TonyLupo16_Lore" },                                                        
    objectives = { {
        guid = "Questyno_TonyLupo16_A",
        text = "IGUI_SFQuest_Questyno_TonyLupo16_A",
        hidden = false,
        needsitem = "Bullets44Box;1",
        onobtained = "updateobjective;Questyno_TonyLupo16;1;Completed;removeitem;Bullets44Box;1"
    }, {
        guid = "Questyno_TonyLupo16_B",
        text = "IGUI_SFQuest_Questyno_TonyLupo16_B",
        hidden = false,
        needsitem = "Bullets9mmBox;1",
        onobtained = "updateobjective;Questyno_TonyLupo16;2;Completed;removeitem;Bullets9mmBox;1"
    }, {
        guid = "Questyno_TonyLupo16_C",
        text = "IGUI_SFQuest_Questyno_TonyLupo16_C",
        hidden = false,
        needsitem = "Bullets38Box;1",
        onobtained = "updateobjective;Questyno_TonyLupo16;3;Completed;removeitem;Bullets38Box;1"
    }, {
        guid = "Questyno_TonyLupo16_D",
        text = "IGUI_SFQuest_Questyno_TonyLupo16_D",
        hidden = false,
        needsitem = "Bullets45Box;1",
        onobtained = "updateobjective;Questyno_TonyLupo16;4;Completed;removeitem;Bullets45Box;1"
    } },
    text = "IGUI_SFQuest_Questyno_TonyLupo16_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_TonyLupo16_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_TonyLupo16_A",
    
    awardsrep = "LaResistenza;600",
    completesound = "levelup",
    dailycode = "Questyno_TonyLupo",
    lore = { "IGUI_SFQuest_Questyno_TonyLupo16_Lore" },
    unlocks = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_TonyLupo16_Complete",
    text = "IGUI_SFQuest_Questyno_TonyLupo16_A_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_TonyLupo16_Title",
})


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TonyLupo17",

    awardsrep = "LaResistenza;300", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_TonyLupo",
    lore = { "IGUI_SFQuest_Questyno_TonyLupo17_Lore" },
    needsitem = "Bullets44Box;2", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_TonyLupo17_Complete",
    text = "IGUI_SFQuest_Questyno_TonyLupo17_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_TonyLupo17_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TonyLupo18",

    awardsrep = "LaResistenza;150", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_TonyLupo",
    lore = { "IGUI_SFQuest_Questyno_TonyLupo18_Lore" },
    needsitem = "Bullets9mmBox;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_TonyLupo18_Complete",
    text = "IGUI_SFQuest_Questyno_TonyLupo18_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_TonyLupo18_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TonyLupo19",

    awardsrep = "LaResistenza;150", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_TonyLupo",
    lore = { "IGUI_SFQuest_Questyno_TonyLupo19_Lore" },
    needsitem = "308Box;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_TonyLupo19_Complete",
    text = "IGUI_SFQuest_Questyno_TonyLupo19_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_TonyLupo19_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TonyLupo20",

    awardsrep = "LaResistenza;200", -- REP REWARD
    awardsitem = "Money;30",       -- MONEY REWARD
    completesound = "levelup",
    dailycode = "Questyno_TonyLupo",
    lore = { "IGUI_SFQuest_Questyno_TonyLupo20_Lore" },
    needsitem = "Revolver;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_TonyLupo20_Complete",
    text = "IGUI_SFQuest_Questyno_TonyLupo20_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_TonyLupo20_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TonyLupo21",

    awardsrep = "LaResistenza;200", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_TonyLupo",
    lore = { "IGUI_SFQuest_Questyno_TonyLupo21_Lore" },
    needsitem = "Pistol3;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_TonyLupo21_Complete",
    text = "IGUI_SFQuest_Questyno_TonyLupo21_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_TonyLupo21_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TonyLupo22",

    awardsrep = "LaResistenza;200", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_TonyLupo",
    lore = { "IGUI_SFQuest_Questyno_TonyLupo22_Lore" },
    needsitem = "Revolver_Long;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_TonyLupo22_Complete",
    text = "IGUI_SFQuest_Questyno_TonyLupo22_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_TonyLupo22_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TonyLupo23",

    awardsrep = "LaResistenza;100", -- REP REWARD
    awardsitem = "ShotgunShellsBox;4;Money;50",       -- MONEY REWARD
    completesound = "levelup",
    dailycode = "Questyno_TonyLupo",
    lore = { "IGUI_SFQuest_Questyno_TonyLupo23_Lore" },
    needsitem = "ShotgunShellsBox;5", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_TonyLupo23_Complete",
    text = "IGUI_SFQuest_Questyno_TonyLupo23_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_TonyLupo23_Title",
    unlockedsound = "QuestUnlocked"
});



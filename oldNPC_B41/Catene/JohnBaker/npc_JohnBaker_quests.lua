require 'SFQuest_Database'

-- Quest per JohnBaker
table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JohnBaker_Intro",

    awardsrep = "JohnBaker;1", -- REP REWARD
    awardsworld = "Questyno_JohnBaker;SFQuest_Questyno_JohnBaker1_Begin;Questyno_JohnBaker1", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_JohnBaker_Intro_Lore" },
    -- ondone = "randomcodedworldfrompool;Questyno_JohnBaker;Questyno;JohnBaker",
    text = "IGUI_SFQuest_Questyno_JohnBaker_Intro_Text",
    texture = "media/textures/Item_JohnBaker.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_JohnBaker;SFQuest_Questyno_JohnBaker_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_JohnBaker_Intro_Title",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JohnBaker1",

    awardsrep = "LaResistenza;200;JohnBaker;8", -- REP REWARD
    awardsitem = "SWeapons.ScrapBlade;1", -- ITEM REWARD
    awardsworld = "Questyno_JohnBaker;SFQuest_Questyno_JohnBaker2_Begin;Questyno_JohnBaker2", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_JohnBaker1_Lore" },
    text = "IGUI_SFQuest_Questyno_JohnBaker1_Text",
    texture = "media/textures/Item_JohnBaker.png",
    title = "IGUI_SFQuest_Questyno_JohnBaker1_Title",
    unique = true,
    unlocks = "actionevent;killzombies:50:tierlevel:3;updatequeststatus:Questyno_JohnBaker1:Obtained", -- ZOMBIE REQUEST
    onobtained = "unlockworldevent;Questyno_JohnBaker;SFQuest_Questyno_JohnBaker1_Complete", --updatequeststatus triggher onobtained?
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JohnBaker2",

    awardsrep = "LaResistenza;300;JohnBaker;8", -- REP REWARD
    awardsitem = "SWeapons.ScrapMachete;1", -- ITEM REWARD
    awardsworld = "Questyno_JohnBaker;SFQuest_Questyno_JohnBaker3_Begin;Questyno_JohnBaker3", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_JohnBaker2_Lore" },
    text = "IGUI_SFQuest_Questyno_JohnBaker2_Text",
    texture = "media/textures/Item_JohnBaker.png",
    title = "IGUI_SFQuest_Questyno_JohnBaker2_Title",
    unique = true,
    unlocks = "actionevent;killzombies:100:tierlevel:4;unlockworldevent:Questyno_JohnBaker:SFQuest_Questyno_JohnBaker2_Complete:placeholder:updatequeststatus:Questyno_JohnBaker2:Obtained", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JohnBaker3",

    awardstask = "Questyno_JohnBaker3_A", -- TASK REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_JohnBaker3_Lore" },
    objectives = {{
        guid = "Questyno_JohnBaker3_A",
        text = "IGUI_SFQuest_Questyno_JohnBaker3_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoJohnBaker3;additem;Book;1",
    }},
    text = "IGUI_SFQuest_Questyno_JohnBaker3_Text",
    texture = "media/textures/Item_JohnBaker.png",
    title = "IGUI_SFQuest_Questyno_JohnBaker3_Title",
    unique = true,
    unlocks = "clickevent;10009x13072x1:EventoJohnBaker3;time:50:anim:loot;updateobjective:Questyno_JohnBaker3:1:Completed",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JohnBaker3_A",

    awardsrep = "LaResistenza;400;JohnBaker;8", -- REP REWARD
    awardsitem = "SWeapons.SpearScrapMachete;1", -- ITEM REWARD
    awardsworld = "Questyno_JohnBaker;SFQuest_Questyno_JohnBaker4_Begin;Questyno_JohnBaker4", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_JohnBaker3_Lore" },
    needsitem = "Base.Book;1",
    onobtained = "unlockworldevent;Questyno_JohnBaker;SFQuest_Questyno_JohnBaker3_Complete",
    text = "IGUI_SFQuest_Questyno_JohnBaker3_A_Text",
    texture = "media/textures/Item_JohnBaker.png",
    title = "IGUI_SFQuest_Questyno_JohnBaker3_Title",
    unique = true,
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JohnBaker4",

    awardsrep = "LaResistenza;500;JohnBaker;8", -- REP REWARD
    awardsitem = "SWeapons.ScrapSword;1", -- ITEM REWARD
    awardsworld = "Questyno_JohnBaker;SFQuest_Questyno_JohnBaker5_Begin;Questyno_JohnBaker5", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_JohnBaker4_Lore" },
    text = "IGUI_SFQuest_Questyno_JohnBaker4_Text",
    texture = "media/textures/Item_JohnBaker.png",
    title = "IGUI_SFQuest_Questyno_JohnBaker4_Title",
    unique = true,
    unlocks = "actionevent;killzombies:200:tierlevel:4;unlockworldevent:Questyno_JohnBaker:SFQuest_Questyno_JohnBaker4_Complete:placeholder:updatequeststatus:Questyno_JohnBaker4:Obtained", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JohnBaker5",

    awardstask = "Questyno_JohnBaker5_A", -- TASK REWARD
    lore = { "IGUI_SFQuest_Questyno_JohnBaker5_Lore" },
    objectives = {{
        guid = "Questyno_JohnBaker5_A",
        text = "IGUI_SFQuest_Questyno_JohnBaker5_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoJohnBaker5;additem;Base.DriedChickpeas;1;additem;Base.CannedChili;3;additem;Base.CannedPineapple;3;additem;Base.CannedCornedBeef;3",
    }},
    text = "IGUI_SFQuest_Questyno_JohnBaker5_Text",
    texture = "media/textures/Item_JohnBaker.png",
    title = "IGUI_SFQuest_Questyno_JohnBaker5_Title",
    unique = true,
    unlocks = "clickevent;4417x6236x0:EventoJohnBaker5;time:50:anim:loot;updateobjective:Questyno_JohnBaker5:1:Completed",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JohnBaker5_A",

    awardstask = "Questyno_JohnBaker5_B", -- TASK REWARD
    lore = { "IGUI_SFQuest_Questyno_JohnBaker5_Lore" },
    objectives = {{
        guid = "Questyno_JohnBaker5_B",
        text = "IGUI_SFQuest_Questyno_JohnBaker5_B",
        hidden = false,
        needsitem = "Base.CannedChili;3",
        onobtained = "updateobjective;Questyno_JohnBaker5_A;1;Completed;removeitem;Base.CannedChili;3",
    },{
        guid = "Questyno_JohnBaker5_C",
        text = "IGUI_SFQuest_Questyno_JohnBaker5_C",
        hidden = false,
        needsitem = "Base.CannedPineapple;3",
        onobtained = "updateobjective;Questyno_JohnBaker5_A;2;Completed;removeitem;Base.CannedPineapple;3",
    },{
        guid = "Questyno_JohnBaker5_D",
        text = "IGUI_SFQuest_Questyno_JohnBaker5_D",
        hidden = false,
        needsitem = "Base.CannedCornedBeef;3",
        onobtained = "updateobjective;Questyno_JohnBaker5_A;3;Completed;removeitem;Base.CannedCornedBeef;3",
    },{
        guid = "Questyno_JohnBaker5_E",
        text = "IGUI_SFQuest_Questyno_JohnBaker5_E",
        hidden = false,
        needsitem = "Base.DriedChickpeas;1",
        onobtained = "updateobjective;Questyno_JohnBaker5_A;4;Completed;removeitem;Base.DriedChickpeas;1",
    }},
    text = "IGUI_SFQuest_Questyno_JohnBaker5_A_Text",
    texture = "media/textures/Item_JohnBaker.png",
    title = "IGUI_SFQuest_Questyno_JohnBaker5_Title",
    unique = true,
})


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JohnBaker5_B",

    awardsrep = "LaResistenza;600;JohnBaker;8", -- REP REWARD
    awardsitem = "SWeapons.SalvagedNightstick;1", -- ITEM REWARD
    awardsworld = "Questyno_JohnBaker;SFQuest_Questyno_JohnBaker6_Begin;Questyno_JohnBaker6", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_JohnBaker5_Lore" },
    text = "IGUI_SFQuest_Questyno_JohnBaker5_B_Text",
    texture = "media/textures/Item_JohnBaker.png",
    title = "IGUI_SFQuest_Questyno_JohnBaker5_Title",
    unique = true,
    unlocks = "unlockworldevent;Questyno_JohnBaker;SFQuest_Questyno_JohnBaker5_Complete",
})


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JohnBaker6",

    awardsrep = "LaResistenza;700;JohnBaker;8", -- REP REWARD
    awardsitem = "MoneyToXP.Droga4;1", -- ITEM REWARD
    awardsworld = "Questyno_JohnBaker;SFQuest_Questyno_JohnBaker7_Begin;Questyno_JohnBaker7", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_JohnBaker6_Lore" },
    text = "IGUI_SFQuest_Questyno_JohnBaker6_Text",
    texture = "media/textures/Item_JohnBaker.png",
    title = "IGUI_SFQuest_Questyno_JohnBaker6_Title",
    unique = true,
    unlocks = "actionevent;killzombies:100:tierlevel:5;unlockworldevent:Questyno_JohnBaker:SFQuest_Questyno_JohnBaker6_Complete:placeholder:updatequeststatus:Questyno_JohnBaker6:Obtained", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JohnBaker7",

    awardsrep = "LaResistenza;800;JohnBaker;8", -- REP REWARD
    awardsitem = "Base.SalvagedPipe;1", -- ITEM REWARD
    awardsworld = "Questyno_JohnBaker;SFQuest_Questyno_JohnBaker8_Begin;Questyno_JohnBaker8", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_JohnBaker7_Lore" },
    text = "IGUI_SFQuest_Questyno_JohnBaker7_Text",
    texture = "media/textures/Item_JohnBaker.png",
    title = "IGUI_SFQuest_Questyno_JohnBaker7_Title",
    unique = true,
    unlocks = "actionevent;killzombies:400:tierlevel:3;unlockworldevent:Questyno_JohnBaker:SFQuest_Questyno_JohnBaker7_Complete:placeholder:updatequeststatus:Questyno_JohnBaker7:Obtained", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JohnBaker8",

    awardsrep = "LaResistenza;400;JohnBaker;8", -- REP REWARD
    awardsitem = "SWeapons.WireBat;1", -- ITEM REWARD
    awardsworld = "Questyno_JohnBaker;SFQuest_Questyno_JohnBaker9_Begin;Questyno_JohnBaker9", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_JohnBaker8_Lore" },
    text = "IGUI_SFQuest_Questyno_JohnBaker8_Text",
    texture = "media/textures/Item_JohnBaker.png",
    title = "IGUI_SFQuest_Questyno_JohnBaker8_Title",
    unique = true,
    unlocks = "actionevent;killzombies:300:tierlevel:4;unlockworldevent:Questyno_JohnBaker:SFQuest_Questyno_JohnBaker8_Complete:placeholder:updatequeststatus:Questyno_JohnBaker8:Obtained", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JohnBaker9",

    awardsrep = "LaResistenza;900;JohnBaker;8", -- REP REWARD
    awardsitem = "SWeapons.SalvagedPipe;1", -- ITEM REWARD
    awardsworld = "Questyno_JohnBaker;SFQuest_Questyno_JohnBaker10_Begin;Questyno_JohnBaker10", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_JohnBaker9_Lore" },
    text = "IGUI_SFQuest_Questyno_JohnBaker9_Text",
    texture = "media/textures/Item_JohnBaker.png",
    title = "IGUI_SFQuest_Questyno_JohnBaker9_Title",
    unique = true,
    unlocks = "actionevent;killzombies:100:tierlevel:5;unlockworldevent:Questyno_JohnBaker:SFQuest_Questyno_JohnBaker9_Complete:placeholder:updatequeststatus:Questyno_JohnBaker9:Obtained", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JohnBaker10",

    awardsrep = "LaResistenza;1000;JohnBaker;8", -- REP REWARD
    awardsitem = "Table:GoldWeapons1", -- ITEM REWARD
    awardsworld = "Questyno_JohnBaker;SFQuest_Questyno_JohnBaker11_Begin;Questyno_JohnBaker11", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_JohnBaker10_Lore" },
    text = "IGUI_SFQuest_Questyno_JohnBaker10_Text",
    texture = "media/textures/Item_JohnBaker.png",
    title = "IGUI_SFQuest_Questyno_JohnBaker10_Title",
    unique = true,
    unlocks = "actionevent;killzombies:200:tierlevel:5;unlockworldevent:Questyno_JohnBaker:SFQuest_Questyno_JohnBaker10_Complete:placeholder:updatequeststatus:Questyno_JohnBaker10:Obtained", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JohnBaker11",

    awardsrep = "LaResistenza;1200;JohnBaker;8", -- REP REWARD
    awardsitem = "Table:GoldWeapons2", -- ITEM REWARD
    awardsworld = "Questyno_JohnBaker;SFQuest_Questyno_JohnBaker12_Begin;Questyno_JohnBaker12", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_JohnBaker11_Lore" },
    text = "IGUI_SFQuest_Questyno_JohnBaker11_Text",
    texture = "media/textures/Item_JohnBaker.png",
    title = "IGUI_SFQuest_Questyno_JohnBaker11_Title",
    unique = true,
    unlocks = "actionevent;killzombies:500:tierlevel:4;unlockworldevent:Questyno_JohnBaker:SFQuest_Questyno_JohnBaker11_Complete:placeholder:updatequeststatus:Questyno_JohnBaker11:Obtained", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JohnBaker12",

    awardsrep = "LaResistenza;1400;JohnBaker;8", -- REP REWARD
    awardsitem = "Table:GoldWeapons2", -- ITEM REWARD
    awardsworld = "Questyno_JohnBaker;SFQuest_Questyno_JohnBaker13_Begin;Questyno_JohnBaker13", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_JohnBaker12_Lore" },
    text = "IGUI_SFQuest_Questyno_JohnBaker12_Text",
    texture = "media/textures/Item_JohnBaker.png",
    title = "IGUI_SFQuest_Questyno_JohnBaker12_Title",
    unique = true,
    unlocks = "actionevent;killzombies:1500:tierlevel:3;unlockworldevent:Questyno_JohnBaker:SFQuest_Questyno_JohnBaker12_Complete:placeholder:updatequeststatus:Questyno_JohnBaker12:Obtained", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JohnBaker13",

    awardsrep = "LaResistenza;2000;JohnBaker;105", -- REP REWARD
    awardsitem = "Table:GoldWeapons3", -- ITEM REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_JohnBaker13_Lore" },
    text = "IGUI_SFQuest_Questyno_JohnBaker13_Text",
    texture = "media/textures/Item_JohnBaker.png",
    title = "IGUI_SFQuest_Questyno_JohnBaker13_Title",
    unique = true,
    unlocks = "actionevent;killzombies:500:tierlevel:4;unlockworldevent:Questyno_JohnBaker:SFQuest_Questyno_JohnBaker13_Complete:placeholder:updatequeststatus:Questyno_JohnBaker13:Obtained", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});



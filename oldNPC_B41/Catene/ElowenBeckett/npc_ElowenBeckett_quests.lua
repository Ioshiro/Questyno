require 'SFQuest_Database'

-- Quest per ElowenBeckett
table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ElowenBeckett_Intro",

    awardsrep = "ElowenBeckett;1", -- REP REWARD
    awardsworld = "Questyno_ElowenBeckett;SFQuest_Questyno_ElowenBeckett1_Begin;Questyno_ElowenBeckett1", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_ElowenBeckett_Intro_Lore" },
    -- ondone = "randomcodedworldfrompool;Questyno_ElowenBeckett;Questyno;ElowenBeckett",
    text = "IGUI_SFQuest_Questyno_ElowenBeckett_Intro_Text",
    texture = "media/textures/Item_ElowenBeckett.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_ElowenBeckett;SFQuest_Questyno_ElowenBeckett_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_ElowenBeckett_Intro_Title",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ElowenBeckett1",

    awardsrep = "LaResistenza;10;ElowenBeckett;20", -- REP REWARD
    awardsworld = "Questyno_ElowenBeckett;SFQuest_Questyno_ElowenBeckett2_Begin;Questyno_ElowenBeckett2", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_ElowenBeckett1_Lore" },
    text = "IGUI_SFQuest_Questyno_ElowenBeckett1_Text",
    texture = "media/textures/Item_ElowenBeckett.png",
    title = "IGUI_SFQuest_Questyno_ElowenBeckett1_Title",
    unlocks = "actionevent;killzombies:50:tierlevel:1;unlockworldevent:Questyno_ElowenBeckett:SFQuest_Questyno_ElowenBeckett1_Complete:placeholder:updatequeststatus:Questyno_ElowenBeckett1:Obtained", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ElowenBeckett2",

    awardsrep = "LaResistenza;15;ElowenBeckett;20", -- REP REWARD
    awardsworld = "Questyno_ElowenBeckett;SFQuest_Questyno_ElowenBeckett3_Begin;Questyno_ElowenBeckett3", -- DIALOGUE REWARD
    needsitem = "Nails;20", -- ITEM REQUEST
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_ElowenBeckett2_Lore" },
    text = "IGUI_SFQuest_Questyno_ElowenBeckett2_Text",
    texture = "media/textures/Item_ElowenBeckett.png",
    onobtained = "unlockworldevent;Questyno_ElowenBeckett;SFQuest_Questyno_ElowenBeckett2_Complete",
    title = "IGUI_SFQuest_Questyno_ElowenBeckett2_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ElowenBeckett3",

    awardsrep = "LaResistenza;20;ElowenBeckett;20", -- REP REWARD
    awardsitem = "BeefJerky;1;Base.MuldraughMap;1;Base.SpringwoodMap;1;Base.GreenportLootableMap;1", -- ITEM REWARD
    awardsworld = "Questyno_ElowenBeckett;SFQuest_Questyno_ElowenBeckett4_Begin;Questyno_ElowenBeckett4", -- DIALOGUE REWARD
    needsitem = "LogStacks2;1", -- ITEM REQUEST
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_ElowenBeckett3_Lore" },
    text = "IGUI_SFQuest_Questyno_ElowenBeckett3_Text",
    texture = "media/textures/Item_ElowenBeckett.png",
    onobtained = "unlockworldevent;Questyno_ElowenBeckett;SFQuest_Questyno_ElowenBeckett3_Complete",
    title = "IGUI_SFQuest_Questyno_ElowenBeckett3_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ElowenBeckett4",

    awardsrep = "LaResistenza;25;ElowenBeckett;20", -- REP REWARD
    awardsitem = "Table:SleepingBags", -- ITEM REWARD
    awardsworld = "Questyno_ElowenBeckett;SFQuest_Questyno_ElowenBeckett5_Begin;Questyno_ElowenBeckett5", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_ElowenBeckett4_Lore" },
    text = "IGUI_SFQuest_Questyno_ElowenBeckett4_Text",
    texture = "media/textures/Item_ElowenBeckett.png",
    title = "IGUI_SFQuest_Questyno_ElowenBeckett4_Title",
    unlocks = "actionevent;killzombies:50:tierlevel:2;unlockworldevent:Questyno_ElowenBeckett:SFQuest_Questyno_ElowenBeckett4_Complete:placeholder:updatequeststatus:Questyno_ElowenBeckett4:Obtained", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ElowenBeckett5",

    awardsrep = "LaResistenza;30;ElowenBeckett;119", -- REP REWARD
    awardsitem = "Wheelbarrow.HCWoodenwheelbarrow;1;Base.EkronMap;1;", -- ITEM REWARD
    needsitem = "ScrapMetal;2", -- ITEM REQUEST
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_ElowenBeckett5_Lore" },
    text = "IGUI_SFQuest_Questyno_ElowenBeckett5_Text",
    texture = "media/textures/Item_ElowenBeckett.png",
    onobtained = "unlockworldevent;Questyno_ElowenBeckett;SFQuest_Questyno_ElowenBeckett5_Complete",
    title = "IGUI_SFQuest_Questyno_ElowenBeckett5_Title",
    unlockedsound = "QuestUnlocked"
});



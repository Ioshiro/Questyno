require 'SFQuest_Database'

-- Quest per LincolnReed
table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_LincolnReed_Intro",

    awardsrep = "LincolnReed;100",
    completesound = "levelup",
    -- dailycode = "Questyno_LincolnReed",
    lore = { "IGUI_SFQuest_Questyno_LincolnReed_Intro_Lore" },
    text = "IGUI_SFQuest_Questyno_LincolnReed_Intro_Text",
    texture = "media/textures/Item_LincolnReed.png",
    unique = true,
    ondone = "randomcodedworldfrompool;Questyno_LincolnReed;Questyno;LincolnReed",
    unlocks = "addreputation;LincolnReed;100;unlockworldevent;Questyno_LincolnReed;SFQuest_Questyno_LincolnReed_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_LincolnReed_Intro_Title",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_LincolnReed1",

    awardsrep = "LaResistenza;250",
    completesound = "levelup",
    dailycode = "Questyno_LincolnReed",
    lore = { "IGUI_SFQuest_Questyno_LincolnReed1_Lore" },
    needsitem = "MoneyToXP.Rotolo;1",
    onobtained = "unlockworldevent;Questyno_LincolnReed;SFQuest_Questyno_LincolnReed1_Complete",
    text = "IGUI_SFQuest_Questyno_LincolnReed1_Text",
    texture = "media/textures/Item_LincolnReed.png",
    title = "IGUI_SFQuest_Questyno_LincolnReed1_Title",
    unlockedsound = "QuestUnlocked",
});



require 'SFQuest_Database'

-- Quest per AnselMerrick
table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_AnselMerrick_Intro",

    awardsrep = "AnselMerrick;100", -- REP REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_AnselMerrick_Intro_Lore" },
    ondone = "randomcodedworldfrompool;Questyno_AnselMerrick;Questyno;AnselMerrick",
    text = "IGUI_SFQuest_Questyno_AnselMerrick_Intro_Text",
    texture = "media/textures/Item_AnselMerrick.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_AnselMerrick;SFQuest_Questyno_AnselMerrick_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_AnselMerrick_Intro_Title",
})


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_AnselMerrick1",

    awardsrep = "LaResistenza;400", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_AnselMerrick",
    lore = { "IGUI_SFQuest_Questyno_AnselMerrick1_Lore" },
    text = "IGUI_SFQuest_Questyno_AnselMerrick1_Text",
    texture = "media/textures/Item_AnselMerrick.png",
    title = "IGUI_SFQuest_Questyno_AnselMerrick1_Title",
    unlocks = "actionevent;killzombies:320:tierlevel:3;unlockworldevent:Questyno_AnselMerrick:SFQuest_Questyno_AnselMerrick1_Complete:placeholder:updatequeststatus:Questyno_AnselMerrick1:Obtained", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_AnselMerrick2",

    awardsrep = "LaResistenza;500", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_AnselMerrick",
    lore = { "IGUI_SFQuest_Questyno_AnselMerrick2_Lore" },
    text = "IGUI_SFQuest_Questyno_AnselMerrick2_Text",
    texture = "media/textures/Item_AnselMerrick.png",
    title = "IGUI_SFQuest_Questyno_AnselMerrick2_Title",
    unlocks = "actionevent;killzombies:420:tierlevel:3;unlockworldevent:Questyno_AnselMerrick:SFQuest_Questyno_AnselMerrick2_Complete:placeholder:updatequeststatus:Questyno_AnselMerrick2:Obtained", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_AnselMerrick3",

    awardsrep = "LaResistenza;600", -- REP REWARD
    awardsitem = "Money;20", -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_AnselMerrick",
    lore = { "IGUI_SFQuest_Questyno_AnselMerrick3_Lore" },
    text = "IGUI_SFQuest_Questyno_AnselMerrick3_Text",
    texture = "media/textures/Item_AnselMerrick.png",
    title = "IGUI_SFQuest_Questyno_AnselMerrick3_Title",
    unlocks = "actionevent;killzombies:520:tierlevel:3;unlockworldevent:Questyno_AnselMerrick:SFQuest_Questyno_AnselMerrick3_Complete:placeholder:updatequeststatus:Questyno_AnselMerrick3:Obtained", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});


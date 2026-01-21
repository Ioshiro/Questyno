require 'SFQuest_Database'

-- Quest per HuxleyThorne
table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_HuxleyThorne_Intro",

    awardsrep = "HuxleyThorne;100", -- REP REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_HuxleyThorne_Intro_Lore" },
    text = "IGUI_SFQuest_Questyno_HuxleyThorne_Intro_Text",
    texture = "media/textures/Item_HuxleyThorne.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_HuxleyThorne;SFQuest_Questyno_HuxleyThorne_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_HuxleyThorne_Intro_Title",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_HuxleyThorne1",

    awardsrep = "LaResistenza;4000", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_HuxleyThorne",
    lore = { "IGUI_SFQuest_Questyno_HuxleyThorne1_Lore" },
    text = "IGUI_SFQuest_Questyno_HuxleyThorne1_Text",
    texture = "media/textures/Item_HuxleyThorne.png",
    title = "IGUI_SFQuest_Questyno_HuxleyThorne1_Title",
    unlocks = "actionevent;killzombies:1000:tierlevel:5;unlockworldevent:Questyno_HuxleyThorne:SFQuest_Questyno_HuxleyThorne1_Complete:placeholder:updatequeststatus:Questyno_HuxleyThorne1:Obtained", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_HuxleyThorne2",

    awardsrep = "LaResistenza;5000", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_HuxleyThorne",
    lore = { "IGUI_SFQuest_Questyno_HuxleyThorne2_Lore" },
    text = "IGUI_SFQuest_Questyno_HuxleyThorne2_Text",
    texture = "media/textures/Item_HuxleyThorne.png",
    title = "IGUI_SFQuest_Questyno_HuxleyThorne2_Title",
    unlocks = "actionevent;killzombies:1500:tierlevel:5;unlockworldevent:Questyno_HuxleyThorne:SFQuest_Questyno_HuxleyThorne2_Complete:placeholder:updatequeststatus:Questyno_HuxleyThorne2:Obtained", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_HuxleyThorne3",

    awardsrep = "LaResistenza;6000", -- REP REWARD
    awardsitem = "Katana;1",
    completesound = "levelup",
    dailycode = "Questyno_HuxleyThorne",
    lore = { "IGUI_SFQuest_Questyno_HuxleyThorne3_Lore" },
    text = "IGUI_SFQuest_Questyno_HuxleyThorne3_Text",
    texture = "media/textures/Item_HuxleyThorne.png",
    title = "IGUI_SFQuest_Questyno_HuxleyThorne3_Title",
    unlocks = "actionevent;killzombies:2000:tierlevel:5;unlockworldevent:Questyno_HuxleyThorne:SFQuest_Questyno_HuxleyThorne3_Complete:placeholder:updatequeststatus:Questyno_HuxleyThorne3:Obtained", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});



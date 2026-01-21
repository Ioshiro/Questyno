require 'SFQuest_Database'

-- Quest per PaigeTurner
table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_PaigeTurner_Intro",

    awardsrep = "PaigeTurner;100", -- REP REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_PaigeTurner_Intro_Lore" },
    ondone = "randomcodedworldfrompool;Questyno_PaigeTurner;Questyno;PaigeTurner",
    text = "IGUI_SFQuest_Questyno_PaigeTurner_Intro_Text",
    texture = "media/textures/Item_PaigeTurner.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_PaigeTurner;SFQuest_Questyno_PaigeTurner_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_PaigeTurner_Intro_Title",
})


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PaigeTurner1",

    awardsrep = "LaResistenza;200", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_PaigeTurner",
    lore = { "IGUI_SFQuest_Questyno_PaigeTurner1_Lore" },
    text = "IGUI_SFQuest_Questyno_PaigeTurner1_Text",
    texture = "media/textures/Item_PaigeTurner.png",
    title = "IGUI_SFQuest_Questyno_PaigeTurner1_Title",
    unlocks = "actionevent;killzombies:200:tierlevel:2;unlockworldevent:Questyno_PaigeTurner:SFQuest_Questyno_PaigeTurner1_Complete:placeholder:updatequeststatus:Questyno_PaigeTurner1:Obtained", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PaigeTurner2",

    awardsrep = "LaResistenza;250", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_PaigeTurner",
    lore = { "IGUI_SFQuest_Questyno_PaigeTurner2_Lore" },
    text = "IGUI_SFQuest_Questyno_PaigeTurner2_Text",
    texture = "media/textures/Item_PaigeTurner.png",
    title = "IGUI_SFQuest_Questyno_PaigeTurner2_Title",
    unlocks = "actionevent;killzombies:300:tierlevel:2;unlockworldevent:Questyno_PaigeTurner:SFQuest_Questyno_PaigeTurner2_Complete:placeholder:updatequeststatus:Questyno_PaigeTurner2:Obtained", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PaigeTurner3",

    awardsrep = "LaResistenza;300", -- REP REWARD
    awardsitem = "Money;20", -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_PaigeTurner",
    lore = { "IGUI_SFQuest_Questyno_PaigeTurner3_Lore" },
    text = "IGUI_SFQuest_Questyno_PaigeTurner3_Text",
    texture = "media/textures/Item_PaigeTurner.png",
    title = "IGUI_SFQuest_Questyno_PaigeTurner3_Title",
    unlocks = "actionevent;killzombies:350:tierlevel:2;unlockworldevent:Questyno_PaigeTurner:SFQuest_Questyno_PaigeTurner3_Complete:placeholder:updatequeststatus:Questyno_PaigeTurner3:Obtained", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});


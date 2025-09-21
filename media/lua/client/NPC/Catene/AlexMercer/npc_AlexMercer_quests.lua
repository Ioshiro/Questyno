require 'SFQuest_Database'

-- Quest per AlexMercer
table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_AlexMercer_Intro",

    awardsrep = "AlexMercer;100", -- REP REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_AlexMercer_Intro_Lore" },
    text = "IGUI_SFQuest_Questyno_AlexMercer_Intro_Text",
    texture = "media/textures/Item_AlexMercer.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_AlexMercer;SFQuest_Questyno_AlexMercer_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_AlexMercer_Intro_Title",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_AlexMercer1",

    awardsrep = "LaResistenza;4000", -- REP REWARD
    awardsitem = "SWeapons.WireBat;1",
    completesound = "levelup",
    dailycode = "Questyno_AlexMercer",
    lore = { "IGUI_SFQuest_Questyno_AlexMercer1_Lore" },
    text = "IGUI_SFQuest_Questyno_AlexMercer1_Text",
    texture = "media/textures/Item_AlexMercer.png",
    title = "IGUI_SFQuest_Questyno_AlexMercer1_Title",
    unlocks = "actionevent;killzombies:1400:tierlevel:4;unlockworldevent:Questyno_AlexMercer:SFQuest_Questyno_AlexMercer1_Complete:placeholder:updatequeststatus:Questyno_AlexMercer1:Obtained", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_AlexMercer2",

    awardsrep = "LaResistenza;3800", -- REP REWARD
    awardsitem = "SWeapons.BoltBat;1",
    completesound = "levelup",
    dailycode = "Questyno_AlexMercer",
    lore = { "IGUI_SFQuest_Questyno_AlexMercer2_Lore" },
    text = "IGUI_SFQuest_Questyno_AlexMercer2_Text",
    texture = "media/textures/Item_AlexMercer.png",
    title = "IGUI_SFQuest_Questyno_AlexMercer2_Title",
    unlocks = "actionevent;killzombies:1600:tierlevel:4;unlockworldevent:Questyno_AlexMercer:SFQuest_Questyno_AlexMercer2_Complete:placeholder:updatequeststatus:Questyno_AlexMercer2:Obtained", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_AlexMercer3",

    awardsrep = "LaResistenza;4200", -- REP REWARD
    awardsitem = "SWeapons.ChainBat;1",
    -- awardstask = "Questyno_AlexMercer1",
    completesound = "levelup",
    dailycode = "Questyno_AlexMercer",
    lore = { "IGUI_SFQuest_Questyno_AlexMercer3_Lore" },
    text = "IGUI_SFQuest_Questyno_AlexMercer3_Text",
    texture = "media/textures/Item_AlexMercer.png",
    title = "IGUI_SFQuest_Questyno_AlexMercer3_Title",
    unlocks = "actionevent;killzombies:2000:tierlevel:4;unlockworldevent:Questyno_AlexMercer:SFQuest_Questyno_AlexMercer3_Complete:placeholder:updatequeststatus:Questyno_AlexMercer3:Obtained", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});



require 'SFQuest_Database'

-- Quest per VivianParker
table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_VivianParker_Intro",

    awardsrep = "VivianParker;100", -- REP REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_VivianParker_Intro_Lore" },
    text = "IGUI_SFQuest_Questyno_VivianParker_Intro_Text",
    texture = "media/textures/Item_VivianParker.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_VivianParker;SFQuest_Questyno_VivianParker_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_VivianParker_Intro_Title",
});


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_VivianParker1",

    awardsrep = "LaResistenza;2000", -- REP REWARD
    awardsitem = "TW.LargePropaneTank;1",
    needsitem = "PredicateDrainable#BlowTorch;8;0.1", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_VivianParker",
    lore = { "IGUI_SFQuest_Questyno_VivianParker1_Lore" },
    text = "IGUI_SFQuest_Questyno_VivianParker1_Text",
    texture = "media/textures/Item_VivianParker.png",
    onobtained = "unlockworldevent;Questyno_VivianParker;SFQuest_Questyno_VivianParker1_Complete",
    title = "IGUI_SFQuest_Questyno_VivianParker1_Title",
    unlockedsound = "QuestUnlocked"
})



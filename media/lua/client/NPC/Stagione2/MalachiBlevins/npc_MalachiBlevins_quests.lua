require 'SFQuest_Database'

-- Quest per MalachiBlevins
table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MalachiBlevins_Intro",

    awardsrep = "MalachiBlevins;100", -- REP REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_MalachiBlevins_Intro_Lore" },
    text = "IGUI_SFQuest_Questyno_MalachiBlevins_Intro_Text",
    texture = "media/textures/Item_MalachiBlevins.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_MalachiBlevins;SFQuest_Questyno_MalachiBlevins_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_MalachiBlevins_Intro_Title",
});


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_MalachiBlevins1",

    awardsrep = "LaResistenza;1000", -- REP REWARD
    awardsitem = "Money;120", -- ITEM REWARD
    needsitem = "Newspaper;50", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_MalachiBlevins",
    lore = { "IGUI_SFQuest_Questyno_MalachiBlevins1_Lore" },
    text = "IGUI_SFQuest_Questyno_MalachiBlevins1_Text",
    texture = "media/textures/Item_MalachiBlevins.png",
    onobtained = "unlockworldevent;Questyno_MalachiBlevins;SFQuest_Questyno_MalachiBlevins1_Complete",
    title = "IGUI_SFQuest_Questyno_MalachiBlevins1_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_MalachiBlevins2",

    awardsrep = "LaResistenza;800", -- REP REWARD
    awardsitem = "Money;100", -- ITEM REWARD
    needsitem = "ComicBook;10", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_MalachiBlevins",
    lore = { "IGUI_SFQuest_Questyno_MalachiBlevins2_Lore" },
    text = "IGUI_SFQuest_Questyno_MalachiBlevins2_Text",
    texture = "media/textures/Item_MalachiBlevins.png",
    onobtained = "unlockworldevent;Questyno_MalachiBlevins;SFQuest_Questyno_MalachiBlevins2_Complete",
    title = "IGUI_SFQuest_Questyno_MalachiBlevins2_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_MalachiBlevins3",

    awardsrep = "LaResistenza;800", -- REP REWARD
    awardsitem = "Money;100", -- ITEM REWARD
    needsitem = "Magazine;50", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_MalachiBlevins",
    lore = { "IGUI_SFQuest_Questyno_MalachiBlevins3_Lore" },
    text = "IGUI_SFQuest_Questyno_MalachiBlevins3_Text",
    texture = "media/textures/Item_MalachiBlevins.png",
    onobtained = "unlockworldevent;Questyno_MalachiBlevins;SFQuest_Questyno_MalachiBlevins3_Complete",
    title = "IGUI_SFQuest_Questyno_MalachiBlevins3_Title",
    unlockedsound = "QuestUnlocked"
})



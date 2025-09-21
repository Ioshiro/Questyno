require 'SFQuest_Database'

-- Quest per BobRepair
table.insert(SFQuest_Database.QuestPool, bobQuest22A);

local bobQuest23 = {
    guid = "Questyno_BobRepair23",

    awardsrep = "LaResistenza;300", -- REP REWARD
    dailycode = "Questyno_BobRepair",
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_BobRepair23_Lore" },
    needsitem = "Aluminum;30", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_BobRepair;SFQuest_Questyno_BobRepair23_Complete",
    text = "IGUI_SFQuest_Questyno_BobRepair23_Text",
    texture = "media/textures/Item_BobRepair.png",
    title = "IGUI_SFQuest_Questyno_BobRepair23_Title",
    unlockedsound = "QuestUnlocked",
}
table.insert(SFQuest_Database.QuestPool, bobQuest23);

-- Stagione 2

--[[
            *** Paige Turner ***
            Elenco:
                intro. Parla con Paige per sbloccare le daily.
                1. Uccidi 200 Zombie in Tier 2 (200rep)
                2. Uccidi 300 Zombie in Tier 2 (250rep)
                3. Uccidi 350 Zombie in Tier 2 (300rep + 20$)
]]--

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



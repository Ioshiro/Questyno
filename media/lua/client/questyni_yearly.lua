require 'SFQuest_Database'

--[[
            *** Alex Mercer ***
            Elenco:
                intro. Incontra Alex Mercer.
				1. Uccidere 1500 Zombie (1800rep)
				2. Uccidere 2000 Zombie (2000rep)
				3. Uccidere 2500 Zombie (3000rep)
]]

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_AlexMercer_Intro",

    awardstask = "Questyno_AlexMercer1",
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

    awardsrep = "LaResistenza;1800", -- REP REWARD
    awardstask = "Questyno_AlexMercer2",
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_AlexMercer1_Lore" },
    text = "IGUI_SFQuest_Questyno_AlexMercer1_Text",
    texture = "media/textures/Item_AlexMercer.png",
    title = "IGUI_SFQuest_Questyno_AlexMercer1_Title",
    unlocks = "actionevent;killzombies:15;unlockworldevent:Questyno_AlexMercer:SFQuest_Questyno_AlexMercer1_Complete", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_AlexMercer2",

    awardsrep = "LaResistenza;2000", -- REP REWARD
    awardstask = "Questyno_AlexMercer3",
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_AlexMercer2_Lore" },
    text = "IGUI_SFQuest_Questyno_AlexMercer2_Text",
    texture = "media/textures/Item_AlexMercer.png",
    title = "IGUI_SFQuest_Questyno_AlexMercer2_Title",
    unlocks = "actionevent;killzombies:20;unlockworldevent:Questyno_AlexMercer:SFQuest_Questyno_AlexMercer2_Complete", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_AlexMercer3",

    awardsrep = "LaResistenza;3000", -- REP REWARD
    awardstask = "Questyno_AlexMercer1",
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_AlexMercer3_Lore" },
    text = "IGUI_SFQuest_Questyno_AlexMercer3_Text",
    texture = "media/textures/Item_AlexMercer.png",
    title = "IGUI_SFQuest_Questyno_AlexMercer3_Title",
    unlocks = "actionevent;killzombies:25;unlockworldevent:Questyno_AlexMercer:SFQuest_Questyno_AlexMercer3_Complete", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});
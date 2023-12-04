require 'SFQuest_Database'
--[[
                        *** Ezekiel Flynn ***
                Elenco:
                    intro. Parla con Ezekiel per sbloccare la catena.
                    1. Uccidere 25 zombie (5 rep)
                    2. Uccidere 50 zombie e recupera 1 Stivali Militari (10 rep)
                    3. Recupera 20 Orologi digitali (15 rep)
                    4. Recupera 200 Stracci (20 rep)
                    5. Recupera 1 Ascia di pietra (25 rep + piede di porco)
]]


local ezekielIntro = {
    guid = "Questyno_EzekielFlynn_Intro",

    awardsworld = "Questyno_EzekielFlynn;SFQuest_Questyno_EzekielFlynn1_Begin;Questyno_EzekielFlynn1", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_EzekielFlynn_Intro_Lore" },
    ondone = "randomcodedworldfrompool;Questyno_EzekielFlynn;Questyno;EzekielFlynn",
    text = "IGUI_SFQuest_Questyno_EzekielFlynn_Intro_Text",
    texture = "Item_HoodieWhite",
    unique = true,
    unlocks = "unlockworldevent;Questyno_EzekielFlynn;SFQuest_Questyno_EzekielFlynn_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_EzekielFlynn_Intro_Title",
}
table.insert(SFQuest_Database.QuestPool, ezekielIntro);

local ezekielQuest1 = {
    guid = "Questyno_EzekielFlynn1",

    awardsrep = "LaResistenza;5", -- REP REWARD
    awardsworld = "Questyno_EzekielFlynn;SFQuest_Questyno_EzekielFlynn2_Begin;Questyno_EzekielFlynn2", -- DIALOGUE REWARD
    completesound = "levelup",
    dailycode = "Questyno_EzekielFlynn",
    lore = { "IGUI_SFQuest_Questyno_EzekielFlynn1_Lore" },
    text = "IGUI_SFQuest_Questyno_EzekielFlynn1_Text",
    texture = "Item_HoodieWhite",
    title = "IGUI_SFQuest_Questyno_EzekielFlynn1_Title",
    unlocks = "actionevent;killzombies:25;unlockworldevent:Questyno_EzekielFlynn:SFQuest_Questyno_EzekielFlynn1_Complete", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, ezekielQuest1);

local ezekielQuest2 = {
    guid = "Questyno_EzekielFlynn2",

    awardstask = "Questyno_EzekielFlynn2_A", -- TASK REWARD
    completesound = "levelup",
    dailycode = "Questyno_EzekielFlynn",
    lore = { "IGUI_SFQuest_Questyno_EzekielFlynn2_Lore" },
    objectives = {{
        guid = "Questyno_EzekielFlynn2_A",
        text = "IGUI_SFQuest_Questyno_EzekielFlynn2_B", -- loso l'ho fatto apposta.. sono pigro
        needsitem = "Shoes_ArmyBoots;1",
        onobtained = "updateobjective;Questyno_EzekielFlynn2;1;Completed;removeitem;Shoes_ArmyBoots;1",
        hidden = false,
    },{
        guid = "Questyno_EzekielFlynn2_B",
        text = "IGUI_SFQuest_Questyno_EzekielFlynn2_A",
        hidden = false,
    }},
    text = "IGUI_SFQuest_Questyno_EzekielFlynn2_Text",
    texture = "Item_HoodieWhite",
    title = "IGUI_SFQuest_Questyno_EzekielFlynn2_Title",
    unlocks = "actionevent;killzombies:50;updateobjective:Questyno_EzekielFlynn2:2:Completed", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, ezekielQuest2);

local ezekielQuest2A = {
    guid = "Questyno_EzekielFlynn2_A",

    awardsrep = "LaResistenza;10", -- REP REWARD
    awardsworld = "Questyno_EzekielFlynn;SFQuest_Questyno_EzekielFlynn3_Begin;Questyno_EzekielFlynn3", -- DIALOGUE REWARD
    completesound = "levelup",
    dailycode = "Questyno_EzekielFlynn",
    lore = { "IGUI_SFQuest_Questyno_EzekielFlynn2_Lore" },
    text = "IGUI_SFQuest_Questyno_EzekielFlynn2A_Text",
    texture = "Item_HoodieWhite",
    title = "IGUI_SFQuest_Questyno_EzekielFlynn2A_Title",
    unlocks = "unlockworldevent;Questyno_EzekielFlynn;SFQuest_Questyno_EzekielFlynn2_Complete", -- ZOMBIE REQUEST
}
table.insert(SFQuest_Database.QuestPool, ezekielQuest2A);

local ezekielQuest3 = {
    guid = "Questyno_EzekielFlynn3",

    awardsrep = "LaResistenza;15", -- REP REWARD
    awardsworld = "Questyno_EzekielFlynn;SFQuest_Questyno_EzekielFlynn4_Begin;Questyno_EzekielFlynn4", -- DIALOGUE REWARD
    needsitem = "Tag#Digital;20", -- ITEM REQUEST
    completesound = "levelup",
    dailycode = "Questyno_EzekielFlynn",
    lore = { "IGUI_SFQuest_Questyno_EzekielFlynn3_Lore" },
    text = "IGUI_SFQuest_Questyno_EzekielFlynn3_Text",
    texture = "Item_DigitalWatch",
    onobtained = "unlockworldevent;Questyno_EzekielFlynn;SFQuest_Questyno_EzekielFlynn3_Complete",
    title = "IGUI_SFQuest_Questyno_EzekielFlynn3_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, ezekielQuest3);

local ezekielQuest4 = {
    guid = "Questyno_EzekielFlynn4",

    awardsrep = "LaResistenza;20", -- REP REWARD
    awardsworld = "Questyno_EzekielFlynn;SFQuest_Questyno_EzekielFlynn5_Begin;Questyno_EzekielFlynn5", -- DIALOGUE REWARD
    needsitem = "RippedSheets;200", -- ITEM REQUEST
    completesound = "levelup",
    dailycode = "Questyno_EzekielFlynn",
    lore = { "IGUI_SFQuest_Questyno_EzekielFlynn4_Lore" },
    text = "IGUI_SFQuest_Questyno_EzekielFlynn4_Text",
    texture = "Item_Rag",
    onobtained = "unlockworldevent;Questyno_EzekielFlynn;SFQuest_Questyno_EzekielFlynn4_Complete",
    title = "IGUI_SFQuest_Questyno_EzekielFlynn4_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, ezekielQuest4);

local ezekielQuest5 = {
    guid = "Questyno_EzekielFlynn5",

    awardsrep = "LaResistenza;25", -- REP REWARD
    awardsitem = "Crowbar;1", -- ITEM REWARD
    needsitem = "AxeStone;1", -- ITEM REQUEST
    completesound = "levelup",
    dailycode = "Questyno_EzekielFlynn",
    lore = { "IGUI_SFQuest_Questyno_EzekielFlynn5_Lore" },
    text = "IGUI_SFQuest_Questyno_EzekielFlynn5_Text",
    texture = "Item_Crowbar",
    onobtained = "unlockworldevent;Questyno_EzekielFlynn;SFQuest_Questyno_EzekielFlynn5_Complete",
    title = "IGUI_SFQuest_Questyno_EzekielFlynn5_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, ezekielQuest5);



--[[
                        *** Elowen Beckett ***
                Elenco:
                    intro. Parla con Elowen per sbloccare la catena.
                    1. Uccidere 30 zombie (10 rep)
                    2. Recupera 20 chiodi e 5 assi (15 rep)
                    3. Uccidi 50 zombie (20 rep + carne essicata)
                    4. Recupera 1 Ceppo (25 rep)
                    5. Recupera 4 metalli di scarto (30 rep + carriola)
]]

local elowenIntro = {
    guid = "Questyno_ElowenBeckett_Intro",

    awardsworld = "Questyno_ElowenBeckett;SFQuest_Questyno_ElowenBeckett1_Begin;Questyno_ElowenBeckett1", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_ElowenBeckett_Intro_Lore" },
    ondone = "randomcodedworldfrompool;Questyno_ElowenBeckett;Questyno;ElowenBeckett",
    text = "IGUI_SFQuest_Questyno_ElowenBeckett_Intro_Text",
    texture = "Item_HoodieWhite",
    unique = true,
    unlocks = "unlockworldevent;Questyno_ElowenBeckett;SFQuest_Questyno_ElowenBeckett_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_ElowenBeckett_Intro_Title",
}
table.insert(SFQuest_Database.QuestPool, elowenIntro);

local elowenQuest1 = {
    guid = "Questyno_ElowenBeckett1",

    awardsrep = "LaResistenza;10", -- REP REWARD
    awardsworld = "Questyno_ElowenBeckett;SFQuest_Questyno_ElowenBeckett2_Begin;Questyno_ElowenBeckett2", -- DIALOGUE REWARD
    completesound = "levelup",
    dailycode = "Questyno_ElowenBeckett",
    lore = { "IGUI_SFQuest_Questyno_ElowenBeckett1_Lore" },
    text = "IGUI_SFQuest_Questyno_ElowenBeckett1_Text",
    texture = "Item_HoodieWhite",
    title = "IGUI_SFQuest_Questyno_ElowenBeckett1_Title",
    unlocks = "actionevent;killzombies:30;unlockworldevent:Questyno_ElowenBeckett:SFQuest_Questyno_ElowenBeckett1_Complete", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, elowenQuest1);

local elowenQuest2 = {
    guid = "Questyno_ElowenBeckett2",

    awardstask = "Questyno_ElowenBeckett2_A", -- TASK REWARD
    objectives = {{
        guid = "Questyno_ElowenBeckett2_A",
        text = "IGUI_SFQuest_Questyno_ElowenBeckett2_A",
        needsitem = "Nails;20",
        onobtained = "updateobjective;Questyno_ElowenBeckett2;1;Completed;removeitem;Nails;20",
        hidden = false,
    },{
        guid = "Questyno_ElowenBeckett2_B",
        text = "IGUI_SFQuest_Questyno_ElowenBeckett2_B",
        needsitem = "Plank;5",
        onobtained = "updateobjective;Questyno_ElowenBeckett2;2;Completed;removeitem;Plank;5",
        hidden = false,
    }},
    dailycode = "Questyno_ElowenBeckett",
    lore = { "IGUI_SFQuest_Questyno_ElowenBeckett2_Lore" },
    text = "IGUI_SFQuest_Questyno_ElowenBeckett2_Text",
    texture = "Item_Nails",
    title = "IGUI_SFQuest_Questyno_ElowenBeckett2_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, elowenQuest2);

local elowenQuest2A = {
    guid = "Questyno_ElowenBeckett2_A",

    awardsrep = "LaResistenza;15", -- REP REWARD
    awardsworld = "Questyno_ElowenBeckett;SFQuest_Questyno_ElowenBeckett3_Begin;Questyno_ElowenBeckett3", -- DIALOGUE REWARD
    completesound = "levelup",
    dailycode = "Questyno_ElowenBeckett",
    lore = { "IGUI_SFQuest_Questyno_ElowenBeckett2_Lore" },
    text = "IGUI_SFQuest_Questyno_ElowenBeckett2A_Text",
    texture = "Item_HoodieWhite",
    title = "IGUI_SFQuest_Questyno_ElowenBeckett2A_Title",
    unlocks = "unlockworldevent;Questyno_ElowenBeckett;SFQuest_Questyno_ElowenBeckett2_Complete", -- ZOMBIE REQUEST
}
table.insert(SFQuest_Database.QuestPool, elowenQuest2A);

local elowenQuest3 = {
    guid = "Questyno_ElowenBeckett3",

    awardsrep = "LaResistenza;20", -- REP REWARD
    awardsitem = "BeefJerky;1", -- ITEM REWARD
    awardsworld = "Questyno_ElowenBeckett;SFQuest_Questyno_ElowenBeckett4_Begin;Questyno_ElowenBeckett4", -- DIALOGUE REWARD
    unlocks = "actionevent;killzombies:50;unlockworldevent:Questyno_ElowenBeckett:SFQuest_Questyno_ElowenBeckett3_Complete", -- ZOMBIE REQUEST
    completesound = "levelup",
    dailycode = "Questyno_ElowenBeckett",
    lore = { "IGUI_SFQuest_Questyno_ElowenBeckett3_Lore" },
    text = "IGUI_SFQuest_Questyno_ElowenBeckett3_Text",
    texture = "Item_BeefJerky",
    title = "IGUI_SFQuest_Questyno_ElowenBeckett3_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, elowenQuest3);

local elowenQuest4 = {
    guid = "Questyno_ElowenBeckett4",

    awardsrep = "LaResistenza;25", -- REP REWARD
    awardsworld = "Questyno_ElowenBeckett;SFQuest_Questyno_ElowenBeckett5_Begin;Questyno_ElowenBeckett5", -- DIALOGUE REWARD
    needsitem = "Log;1", -- ITEM REQUEST
    completesound = "levelup",
    dailycode = "Questyno_ElowenBeckett",
    lore = { "IGUI_SFQuest_Questyno_ElowenBeckett4_Lore" },
    text = "IGUI_SFQuest_Questyno_ElowenBeckett4_Text",
    texture = "Item_Logs",
    onobtained = "unlockworldevent;Questyno_ElowenBeckett;SFQuest_Questyno_ElowenBeckett4_Complete",
    title = "IGUI_SFQuest_Questyno_ElowenBeckett4_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, elowenQuest4);

local elowenQuest5 = {
    guid = "Questyno_ElowenBeckett5",

    awardsrep = "LaResistenza;30", -- REP REWARD
    awardsitem = "Wheelbarrow;1", -- ITEM REWARD
    needsitem = "ScrapMetal;4", -- ITEM REQUEST
    completesound = "levelup",
    dailycode = "Questyno_ElowenBeckett",
    lore = { "IGUI_SFQuest_Questyno_ElowenBeckett5_Lore" },
    text = "IGUI_SFQuest_Questyno_ElowenBeckett5_Text",
    texture = "Item_ScrapMetal",
    onobtained = "unlockworldevent;Questyno_ElowenBeckett;SFQuest_Questyno_ElowenBeckett5_Complete",
    title = "IGUI_SFQuest_Questyno_ElowenBeckett5_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, elowenQuest5);

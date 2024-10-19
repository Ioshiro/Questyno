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


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_EzekielFlynn_Intro",

    awardsrep = "EzekielFlynn;1", -- REP REWARD
    awardsworld = "Questyno_EzekielFlynn;SFQuest_Questyno_EzekielFlynn1_Begin;Questyno_EzekielFlynn1", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_EzekielFlynn_Intro_Lore" },
    ondone = "randomcodedworldfrompool;Questyno_EzekielFlynn;Questyno;EzekielFlynn",
    text = "IGUI_SFQuest_Questyno_EzekielFlynn_Intro_Text",
    texture = "media/textures/Item_EzekielFlynn.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_EzekielFlynn;SFQuest_Questyno_EzekielFlynn_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_EzekielFlynn_Intro_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_EzekielFlynn1",

    awardsrep = "LaResistenza;5;EzekielFlynn;20", -- REP REWARD
    awardsworld = "Questyno_EzekielFlynn;SFQuest_Questyno_EzekielFlynn2_Begin;Questyno_EzekielFlynn2", -- DIALOGUE REWARD
    completesound = "levelup",
    dailycode = "Questyno_EzekielFlynn",
    lore = { "IGUI_SFQuest_Questyno_EzekielFlynn1_Lore" },
    text = "IGUI_SFQuest_Questyno_EzekielFlynn1_Text",
    texture = "media/textures/Item_EzekielFlynn.png",
    title = "IGUI_SFQuest_Questyno_EzekielFlynn1_Title",
    unlocks = "actionevent;killzombies:25;unlockworldevent:Questyno_EzekielFlynn:SFQuest_Questyno_EzekielFlynn1_Complete:placeholder:updatequeststatus:Questyno_EzekielFlynn1:Obtained", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_EzekielFlynn2",

    awardstask = "Questyno_EzekielFlynn2_A", -- TASK REWARD
    completesound = "levelup",
    dailycode = "Questyno_EzekielFlynn",
    lore = { "IGUI_SFQuest_Questyno_EzekielFlynn2_Lore" },
    objectives = {{
        guid = "Questyno_EzekielFlynn2_A",
        text = "IGUI_SFQuest_Questyno_EzekielFlynn2_B", -- loso l'ho fatto apposta.. sono pigro
        needsitem = "Tag#ArmyBoots;1",
        onobtained = "updateobjective;Questyno_EzekielFlynn2;1;Completed;removeitem;Tag#ArmyBoots;1",
        hidden = false,
    },{
        guid = "Questyno_EzekielFlynn2_B",
        text = "IGUI_SFQuest_Questyno_EzekielFlynn2_A",
        hidden = false,
    }},
    text = "IGUI_SFQuest_Questyno_EzekielFlynn2_Text",
    texture = "media/textures/Item_EzekielFlynn.png",
    title = "IGUI_SFQuest_Questyno_EzekielFlynn2_Title",
    unlocks = "actionevent;killzombies:50;updateobjective:Questyno_EzekielFlynn2:2:Completed", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_EzekielFlynn2_A",

    awardsrep = "LaResistenza;10;EzekielFlynn;20", -- REP REWARD
    awardsworld = "Questyno_EzekielFlynn;SFQuest_Questyno_EzekielFlynn3_Begin;Questyno_EzekielFlynn3", -- DIALOGUE REWARD
    completesound = "levelup",
    dailycode = "Questyno_EzekielFlynn",
    lore = { "IGUI_SFQuest_Questyno_EzekielFlynn2_Lore" },
    text = "IGUI_SFQuest_Questyno_EzekielFlynn2_A_Text",
    texture = "media/textures/Item_EzekielFlynn.png",
    title = "IGUI_SFQuest_Questyno_EzekielFlynn2_Title",
    unlocks = "unlockworldevent;Questyno_EzekielFlynn;SFQuest_Questyno_EzekielFlynn2_Complete", -- ZOMBIE REQUEST
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_EzekielFlynn3",

    awardsrep = "LaResistenza;15;EzekielFlynn;20", -- REP REWARD
    awardsworld = "Questyno_EzekielFlynn;SFQuest_Questyno_EzekielFlynn4_Begin;Questyno_EzekielFlynn4", -- DIALOGUE REWARD
    needsitem = "Tag#Digital;20", -- ITEM REQUEST
    completesound = "levelup",
    dailycode = "Questyno_EzekielFlynn",
    lore = { "IGUI_SFQuest_Questyno_EzekielFlynn3_Lore" },
    text = "IGUI_SFQuest_Questyno_EzekielFlynn3_Text",
    texture = "media/textures/Item_EzekielFlynn.png",
    onobtained = "unlockworldevent;Questyno_EzekielFlynn;SFQuest_Questyno_EzekielFlynn3_Complete",
    title = "IGUI_SFQuest_Questyno_EzekielFlynn3_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_EzekielFlynn4",

    awardsrep = "LaResistenza;20;EzekielFlynn;20", -- REP REWARD
    awardsworld = "Questyno_EzekielFlynn;SFQuest_Questyno_EzekielFlynn5_Begin;Questyno_EzekielFlynn5", -- DIALOGUE REWARD
    needsitem = "RippedSheets;200", -- ITEM REQUEST
    completesound = "levelup",
    dailycode = "Questyno_EzekielFlynn",
    lore = { "IGUI_SFQuest_Questyno_EzekielFlynn4_Lore" },
    text = "IGUI_SFQuest_Questyno_EzekielFlynn4_Text",
    texture = "media/textures/Item_EzekielFlynn.png",
    onobtained = "unlockworldevent;Questyno_EzekielFlynn;SFQuest_Questyno_EzekielFlynn4_Complete",
    title = "IGUI_SFQuest_Questyno_EzekielFlynn4_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_EzekielFlynn5",

    awardsrep = "LaResistenza;25;EzekielFlynn;119", -- REP REWARD
    awardsitem = "Crowbar;1", -- ITEM REWARD
    needsitem = "AxeStone;1", -- ITEM REQUEST
    completesound = "levelup",
    dailycode = "Questyno_EzekielFlynn",
    lore = { "IGUI_SFQuest_Questyno_EzekielFlynn5_Lore" },
    text = "IGUI_SFQuest_Questyno_EzekielFlynn5_Text",
    texture = "media/textures/Item_EzekielFlynn.png",
    onobtained = "unlockworldevent;Questyno_EzekielFlynn;SFQuest_Questyno_EzekielFlynn5_Complete",
    title = "IGUI_SFQuest_Questyno_EzekielFlynn5_Title",
    unlockedsound = "QuestUnlocked"
});



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

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ElowenBeckett_Intro",

    awardsrep = "ElowenBeckett;1", -- REP REWARD
    awardsworld = "Questyno_ElowenBeckett;SFQuest_Questyno_ElowenBeckett1_Begin;Questyno_ElowenBeckett1", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_ElowenBeckett_Intro_Lore" },
    ondone = "randomcodedworldfrompool;Questyno_ElowenBeckett;Questyno;ElowenBeckett",
    text = "IGUI_SFQuest_Questyno_ElowenBeckett_Intro_Text",
    texture = "media/textures/Item_ElowenBeckett.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_ElowenBeckett;SFQuest_Questyno_ElowenBeckett_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_ElowenBeckett_Intro_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ElowenBeckett1",

    awardsrep = "LaResistenza;10;ElowenBeckett;20", -- REP REWARD
    awardsworld = "Questyno_ElowenBeckett;SFQuest_Questyno_ElowenBeckett2_Begin;Questyno_ElowenBeckett2", -- DIALOGUE REWARD
    completesound = "levelup",
    dailycode = "Questyno_ElowenBeckett",
    lore = { "IGUI_SFQuest_Questyno_ElowenBeckett1_Lore" },
    text = "IGUI_SFQuest_Questyno_ElowenBeckett1_Text",
    texture = "media/textures/Item_ElowenBeckett.png",
    title = "IGUI_SFQuest_Questyno_ElowenBeckett1_Title",
    unlocks = "actionevent;killzombies:30;unlockworldevent:Questyno_ElowenBeckett:SFQuest_Questyno_ElowenBeckett1_Complete:placeholder:updatequeststatus:Questyno_ElowenBeckett1:Obtained", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
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
    texture = "media/textures/Item_ElowenBeckett.png",
    title = "IGUI_SFQuest_Questyno_ElowenBeckett2_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ElowenBeckett2_A",

    awardsrep = "LaResistenza;15;ElowenBeckett;20", -- REP REWARD
    awardsworld = "Questyno_ElowenBeckett;SFQuest_Questyno_ElowenBeckett3_Begin;Questyno_ElowenBeckett3", -- DIALOGUE REWARD
    completesound = "levelup",
    dailycode = "Questyno_ElowenBeckett",
    lore = { "IGUI_SFQuest_Questyno_ElowenBeckett2_Lore" },
    text = "IGUI_SFQuest_Questyno_ElowenBeckett2_A_Text",
    texture = "media/textures/Item_ElowenBeckett.png",
    title = "IGUI_SFQuest_Questyno_ElowenBeckett2_Title",
    unlocks = "unlockworldevent;Questyno_ElowenBeckett;SFQuest_Questyno_ElowenBeckett2_Complete", -- ZOMBIE REQUEST
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ElowenBeckett3",

    awardsrep = "LaResistenza;20;ElowenBeckett;20", -- REP REWARD
    awardsitem = "BeefJerky;1", -- ITEM REWARD
    awardsworld = "Questyno_ElowenBeckett;SFQuest_Questyno_ElowenBeckett4_Begin;Questyno_ElowenBeckett4", -- DIALOGUE REWARD
    unlocks = "actionevent;killzombies:50;unlockworldevent:Questyno_ElowenBeckett:SFQuest_Questyno_ElowenBeckett3_Complete:placeholder:updatequeststatus:Questyno_ElowenBeckett3:Obtained", -- ZOMBIE REQUEST
    completesound = "levelup",
    dailycode = "Questyno_ElowenBeckett",
    lore = { "IGUI_SFQuest_Questyno_ElowenBeckett3_Lore" },
    text = "IGUI_SFQuest_Questyno_ElowenBeckett3_Text",
    texture = "media/textures/Item_ElowenBeckett.png",
    title = "IGUI_SFQuest_Questyno_ElowenBeckett3_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ElowenBeckett4",

    awardsrep = "LaResistenza;25;ElowenBeckett;20", -- REP REWARD
    awardsworld = "Questyno_ElowenBeckett;SFQuest_Questyno_ElowenBeckett5_Begin;Questyno_ElowenBeckett5", -- DIALOGUE REWARD
    needsitem = "Log;1", -- ITEM REQUEST
    completesound = "levelup",
    dailycode = "Questyno_ElowenBeckett",
    lore = { "IGUI_SFQuest_Questyno_ElowenBeckett4_Lore" },
    text = "IGUI_SFQuest_Questyno_ElowenBeckett4_Text",
    texture = "media/textures/Item_ElowenBeckett.png",
    onobtained = "unlockworldevent;Questyno_ElowenBeckett;SFQuest_Questyno_ElowenBeckett4_Complete",
    title = "IGUI_SFQuest_Questyno_ElowenBeckett4_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ElowenBeckett5",

    awardsrep = "LaResistenza;30;ElowenBeckett;119", -- REP REWARD
    awardsitem = "Wheelbarrow.HCWoodenwheelbarrow;1", -- ITEM REWARD
    needsitem = "ScrapMetal;4", -- ITEM REQUEST
    completesound = "levelup",
    dailycode = "Questyno_ElowenBeckett",
    lore = { "IGUI_SFQuest_Questyno_ElowenBeckett5_Lore" },
    text = "IGUI_SFQuest_Questyno_ElowenBeckett5_Text",
    texture = "media/textures/Item_ElowenBeckett.png",
    onobtained = "unlockworldevent;Questyno_ElowenBeckett;SFQuest_Questyno_ElowenBeckett5_Complete",
    title = "IGUI_SFQuest_Questyno_ElowenBeckett5_Title",
    unlockedsound = "QuestUnlocked"
});

--[[
            *** Brian White ***
            Elenco:
                intro. Incontra Brian White per sbloccare la catena.
				1. Uccidere 50 Zombie (20rep + 10$)
				2. Uccidere 100 Zombie (30rep + 10$)
				3. Uccidere 200 Zombie (40rep + 10$)
				4. Recuperare Base.CarBattery2 parlando con (9159,6127,0) (50rep + 10$)
				5. Recuperare Base.NormalTire2 parlando con (10606,9409,0) (60rep + 10$)
				6. Recuperare Base.NormalCarMuffler2 parlando con (8219,11552,0) (100rep + 50$ + Base.CarTicket)
]]

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_BrianWhite_Intro",

    awardsrep = "BrianWhite;1", -- REP REWARD
    awardsworld = "Questyno_BrianWhite;SFQuest_Questyno_BrianWhite1_Begin;Questyno_BrianWhite1", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_BrianWhite_Intro_Lore" },
    text = "IGUI_SFQuest_Questyno_BrianWhite_Intro_Text",
    texture = "media/textures/Item_BrianWhite.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_BrianWhite;SFQuest_Questyno_BrianWhite_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_BrianWhite_Intro_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_BrianWhite1",

    awardsrep = "LaResistenza;20;BrianWhite;20", -- REP REWARD
    awardsitem = "Money;10", -- MONEY REWARD
    awardsworld = "Questyno_BrianWhite;SFQuest_Questyno_BrianWhite2_Begin;Questyno_BrianWhite2", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_BrianWhite1_Lore" },
    text = "IGUI_SFQuest_Questyno_BrianWhite1_Text",
    texture = "media/textures/Item_BrianWhite.png",
    title = "IGUI_SFQuest_Questyno_BrianWhite1_Title",
    unique = true,
    unlocks = "actionevent;killzombies:50;unlockworldevent:Questyno_BrianWhite:SFQuest_Questyno_BrianWhite1_Complete:placeholder:updatequeststatus:Questyno_BrianWhite1:Obtained", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_BrianWhite2",

    awardsrep = "LaResistenza;30;BrianWhite;20", -- REP REWARD
    awardsitem = "Money;10", -- MONEY REWARD
    awardsworld = "Questyno_BrianWhite;SFQuest_Questyno_BrianWhite3_Begin;Questyno_BrianWhite3", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_BrianWhite2_Lore" },
    text = "IGUI_SFQuest_Questyno_BrianWhite2_Text",
    texture = "media/textures/Item_BrianWhite.png",
    title = "IGUI_SFQuest_Questyno_BrianWhite2_Title",
    unique = true,
    unlocks = "actionevent;killzombies:100;unlockworldevent:Questyno_BrianWhite:SFQuest_Questyno_BrianWhite2_Complete", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_BrianWhite3",

    awardsrep = "LaResistenza;40;BrianWhite;20", -- REP REWARD
    awardsitem = "Money;10", -- MONEY REWARD
    awardsworld = "Questyno_BrianWhite;SFQuest_Questyno_BrianWhite4_Begin;Questyno_BrianWhite4", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_BrianWhite3_Lore" },
    text = "IGUI_SFQuest_Questyno_BrianWhite3_Text",
    texture = "media/textures/Item_BrianWhite.png",
    title = "IGUI_SFQuest_Questyno_BrianWhite3_Title",
    unique = true,
    unlocks = "actionevent;killzombies:200;unlockworldevent:Questyno_BrianWhite:SFQuest_Questyno_BrianWhite3_Complete:placeholder:updatequeststatus:Questyno_BrianWhite3:Obtained", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_BrianWhite4",

    awardstask = "Questyno_BrianWhite4_A", -- TASK REWARD
    lore = { "IGUI_SFQuest_Questyno_BrianWhite4_Lore" },
    objectives = {{
        guid = "Questyno_BrianWhite4_A",
        text = "IGUI_SFQuest_Questyno_BrianWhite4_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoBrianWhite4;additem;CarBattery2;1",
    }},
    text = "IGUI_SFQuest_Questyno_BrianWhite4_Text",
    texture = "media/textures/Item_BrianWhite.png",
    title = "IGUI_SFQuest_Questyno_BrianWhite4_Title",
    unique = true,
    unlocks = "clickevent;9159x6127x0:EventoBrianWhite4;time:50:anim:loot;updateobjective:Questyno_BrianWhite4:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_BrianWhite4_A",

    awardsrep = "LaResistenza;50;BrianWhite;20", -- REP REWARD
    awardsitem = "Money;10", -- MONEY REWARD
    awardsworld = "Questyno_BrianWhite;SFQuest_Questyno_BrianWhite5_Begin;Questyno_BrianWhite5", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_BrianWhite4_Lore" },
    needsitem = "Base.CarBattery2;1",
    onobtained = "unlockworldevent;Questyno_BrianWhite;SFQuest_Questyno_BrianWhite4_Complete",
    text = "IGUI_SFQuest_Questyno_BrianWhite4_A_Text",
    texture = "media/textures/Item_BrianWhite.png",
    title = "IGUI_SFQuest_Questyno_BrianWhite4_Title",
    unique = true,
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_BrianWhite5",

    awardstask = "Questyno_BrianWhite5_A", -- TASK REWARD
    lore = { "IGUI_SFQuest_Questyno_BrianWhite5_Lore" },
    objectives = {{
        guid = "Questyno_BrianWhite5_A",
        text = "IGUI_SFQuest_Questyno_BrianWhite5_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoBrianWhite5;additem;NormalTire2;1",
    }},
    text = "IGUI_SFQuest_Questyno_BrianWhite5_Text",
    texture = "media/textures/Item_BrianWhite.png",
    title = "IGUI_SFQuest_Questyno_BrianWhite5_Title",
    unique = true,
    unlocks = "clickevent;10606x9409x0:EventoBrianWhite5;time:50:anim:loot;updateobjective:Questyno_BrianWhite5:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_BrianWhite5_A",

    awardsrep = "LaResistenza;60;BrianWhite;10", -- REP REWARD
    awardsitem = "Money;10", -- MONEY REWARD
    awardsworld = "Questyno_BrianWhite;SFQuest_Questyno_BrianWhite6_Begin;Questyno_BrianWhite6", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_BrianWhite5_Lore" },
    needsitem = "Base.NormalTire2;1",
    onobtained = "unlockworldevent;Questyno_BrianWhite;SFQuest_Questyno_BrianWhite5_Complete",
    text = "IGUI_SFQuest_Questyno_BrianWhite5_A_Text",
    texture = "media/textures/Item_BrianWhite.png",
    title = "IGUI_SFQuest_Questyno_BrianWhite5_Title",
    unique = true,
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_BrianWhite6",

    awardstask = "Questyno_BrianWhite6_A", -- TASK REWARD
    lore = { "IGUI_SFQuest_Questyno_BrianWhite6_Lore" },
    objectives = {{
        guid = "Questyno_BrianWhite6_A",
        text = "IGUI_SFQuest_Questyno_BrianWhite6_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoBrianWhite6;additem;NormalCarMuffler2;1",
    }},
    text = "IGUI_SFQuest_Questyno_BrianWhite6_Text",
    texture = "media/textures/Item_BrianWhite.png",
    title = "IGUI_SFQuest_Questyno_BrianWhite6_Title",
    unique = true,
    unlocks = "clickevent;8219x11552x0:EventoBrianWhite6;time:50:anim:loot;updateobjective:Questyno_BrianWhite6:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_BrianWhite6_A",

    awardsrep = "LaResistenza;100;BrianWhite;109", -- REP REWARD
    awardsitem = "Money;50;Base.CarTicket;1", -- ITEM REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_BrianWhite6_Lore" },
    needsitem = "Base.NormalCarMuffler2;1",
    onobtained = "unlockworldevent;Questyno_BrianWhite;SFQuest_Questyno_BrianWhite6_Complete",
    text = "IGUI_SFQuest_Questyno_BrianWhite6_A_Text",
    texture = "media/textures/Item_BrianWhite.png",
    title = "IGUI_SFQuest_Questyno_BrianWhite6_Title",
    unique = true,
    unlocks = "addserverpoints;850"
});






--[[
            *** John Baker ***
            Elenco:
                intro. Parla con John Baker per sbloccare la catena di quest.
				1. Uccidere 50 Zombie (30rep)
				2. Uccidere 200 Zombie (80rep + SWeapons.ScrapMachete)
				3. Recuperare Base.Book parlando con (10009,13072,1) (150rep)
				4. Uccidere 500 Zombie (200rep + Base.Katana)
				5. Recuperare Base.CannedChili;3,Base.CannedPineapple;3,Base.CornedBeef;3,Base.DriedChickpeas parlando con (4418,6236,0) (50rep + Base.DriedChickpeas)
]]

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JohnBaker_Intro",

    awardsrep = "JohnBaker;1", -- REP REWARD
    awardsworld = "Questyno_JohnBaker;SFQuest_Questyno_JohnBaker1_Begin;Questyno_JohnBaker1", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_JohnBaker_Intro_Lore" },
    ondone = "randomcodedworldfrompool;Questyno_JohnBaker;Questyno;JohnBaker",
    text = "IGUI_SFQuest_Questyno_JohnBaker_Intro_Text",
    texture = "media/textures/Item_JohnBaker.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_JohnBaker;SFQuest_Questyno_JohnBaker_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_JohnBaker_Intro_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JohnBaker1",

    awardsrep = "LaResistenza;30;JohnBaker;20", -- REP REWARD
    awardsworld = "Questyno_JohnBaker;SFQuest_Questyno_JohnBaker2_Begin;Questyno_JohnBaker2", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_JohnBaker1_Lore" },
    text = "IGUI_SFQuest_Questyno_JohnBaker1_Text",
    texture = "media/textures/Item_JohnBaker.png",
    title = "IGUI_SFQuest_Questyno_JohnBaker1_Title",
    unique = true,
    unlocks = "actionevent;killzombies:50;unlockworldevent:Questyno_JohnBaker:SFQuest_Questyno_JohnBaker1_Complete:placeholder:updatequeststatus:Questyno_JohnBaker1:Obtained", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JohnBaker2",

    awardsrep = "LaResistenza;80;JohnBaker;20", -- REP REWARD
    awardsitem = "SWeapons.ScrapMachete;1", -- ITEM REWARD
    awardsworld = "Questyno_JohnBaker;SFQuest_Questyno_JohnBaker3_Begin;Questyno_JohnBaker3", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_JohnBaker2_Lore" },
    text = "IGUI_SFQuest_Questyno_JohnBaker2_Text",
    texture = "media/textures/Item_JohnBaker.png",
    title = "IGUI_SFQuest_Questyno_JohnBaker2_Title",
    unique = true,
    unlocks = "actionevent;killzombies:200;unlockworldevent:Questyno_JohnBaker:SFQuest_Questyno_JohnBaker2_Complete:placeholder:updatequeststatus:Questyno_JohnBaker2:Obtained", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JohnBaker3",

    awardstask = "Questyno_JohnBaker3_A", -- TASK REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_JohnBaker3_Lore" },
    objectives = {{
        guid = "Questyno_JohnBaker3_A",
        text = "IGUI_SFQuest_Questyno_JohnBaker3_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoJohnBaker3;additem;Book;1",
    }},
    text = "IGUI_SFQuest_Questyno_JohnBaker3_Text",
    texture = "media/textures/Item_JohnBaker.png",
    title = "IGUI_SFQuest_Questyno_JohnBaker3_Title",
    unique = true,
    unlocks = "clickevent;10009x13072x1:EventoJohnBaker3;time:50:anim:loot;updateobjective:Questyno_JohnBaker3:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JohnBaker3_A",

    awardsrep = "LaResistenza;150;JohnBaker;20", -- REP REWARD
    awardsworld = "Questyno_JohnBaker;SFQuest_Questyno_JohnBaker4_Begin;Questyno_JohnBaker4", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_JohnBaker3_Lore" },
    needsitem = "Base.Book;1",
    onobtained = "unlockworldevent;Questyno_JohnBaker;SFQuest_Questyno_JohnBaker3_Complete",
    text = "IGUI_SFQuest_Questyno_JohnBaker3_A_Text",
    texture = "media/textures/Item_JohnBaker.png",
    title = "IGUI_SFQuest_Questyno_JohnBaker3_Title",
    unique = true,
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JohnBaker4",

    awardsrep = "LaResistenza;200;JohnBaker;20", -- REP REWARD
    awardsitem = "Base.Katana;1", -- ITEM REWARD
    awardsworld = "Questyno_JohnBaker;SFQuest_Questyno_JohnBaker5_Begin;Questyno_JohnBaker5", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_JohnBaker4_Lore" },
    text = "IGUI_SFQuest_Questyno_JohnBaker4_Text",
    texture = "media/textures/Item_JohnBaker.png",
    title = "IGUI_SFQuest_Questyno_JohnBaker4_Title",
    unique = true,
    unlocks = "actionevent;killzombies:500;unlockworldevent:Questyno_JohnBaker:SFQuest_Questyno_JohnBaker4_Complete:placeholder:updatequeststatus:Questyno_JohnBaker4:Obtained", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JohnBaker5",

    awardstask = "Questyno_JohnBaker5_A", -- TASK REWARD
    lore = { "IGUI_SFQuest_Questyno_JohnBaker5_Lore" },
    objectives = {{
        guid = "Questyno_JohnBaker5_A",
        text = "IGUI_SFQuest_Questyno_JohnBaker5_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoJohnBaker5;additem;Base.DriedChickpeas;1;additem;Base.CannedChili;3;additem;Base.CannedPineapple;3;additem;Base.CannedCornedBeef;3",
    }},
    text = "IGUI_SFQuest_Questyno_JohnBaker5_Text",
    texture = "media/textures/Item_JohnBaker.png",
    title = "IGUI_SFQuest_Questyno_JohnBaker5_Title",
    unique = true,
    unlocks = "clickevent;4417x6236x0:EventoJohnBaker5;time:50:anim:loot;updateobjective:Questyno_JohnBaker5:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JohnBaker5_A",

    awardstask = "Questyno_JohnBaker5_B", -- TASK REWARD
    lore = { "IGUI_SFQuest_Questyno_JohnBaker5_Lore" },
    objectives = {{
        guid = "Questyno_JohnBaker5_B",
        text = "IGUI_SFQuest_Questyno_JohnBaker5_B",
        hidden = false,
        needsitem = "Base.CannedChili;3",
        onobtained = "updateobjective;Questyno_JohnBaker5_A;1;Completed;removeitem;Base.CannedChili;3",
    },{
        guid = "Questyno_JohnBaker5_C",
        text = "IGUI_SFQuest_Questyno_JohnBaker5_C",
        hidden = false,
        needsitem = "Base.CannedPineapple;3",
        onobtained = "updateobjective;Questyno_JohnBaker5_A;2;Completed;removeitem;Base.CannedPineapple;3",
    },{
        guid = "Questyno_JohnBaker5_D",
        text = "IGUI_SFQuest_Questyno_JohnBaker5_D",
        hidden = false,
        needsitem = "Base.CannedCornedBeef;3",
        onobtained = "updateobjective;Questyno_JohnBaker5_A;3;Completed;removeitem;Base.CannedCornedBeef;3",
    },{
        guid = "Questyno_JohnBaker5_E",
        text = "IGUI_SFQuest_Questyno_JohnBaker5_E",
        hidden = false,
        needsitem = "Base.DriedChickpeas;1",
        onobtained = "updateobjective;Questyno_JohnBaker5_A;4;Completed;removeitem;Base.DriedChickpeas;1",
    }},
    text = "IGUI_SFQuest_Questyno_JohnBaker5_A_Text",
    texture = "media/textures/Item_JohnBaker.png",
    title = "IGUI_SFQuest_Questyno_JohnBaker5_Title",
    unique = true,
})

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JohnBaker5_B",

    awardsrep = "LaResistenza;250;JohnBaker;119", -- REP REWARD
    awardsitem = "DriedChickpeas;1;Machete;1", -- ITEM REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_JohnBaker5_Lore" },
    text = "IGUI_SFQuest_Questyno_JohnBaker5_B_Text",
    texture = "media/textures/Item_JohnBaker.png",
    title = "IGUI_SFQuest_Questyno_JohnBaker5_Title",
    unique = true,
    unlocks = "unlockworldevent;Questyno_JohnBaker;SFQuest_Questyno_JohnBaker5_Complete",
})


    --[[
            *** Ethan Steele ***
            Elenco:
                intro. Parla con Ethan Steele per sbloccare le daily.
				1. Recuperare Base.Army_Duffle_Bag parlando con (10102,11172,0), Uccidere 50 Zombie (40rep + 25$)
				2. Recuperare AuthenticZLite.Jacket_ChuckGreene parlando con (10102,11172,0), Uccidere 50 Zombie (60rep + 25$)
				3. Recuperare 250 Soldi (120rep + Base.EmptyCAN6)
]]

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_EthanSteele_Intro",

    awardsrep = "EthanSteele;1", -- REP REWARD
    awardsworld = "Questyno_EthanSteele;SFQuest_Questyno_EthanSteele1_Begin;Questyno_EthanSteele1", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_EthanSteele_Intro_Lore" },
    text = "IGUI_SFQuest_Questyno_EthanSteele_Intro_Text",
    texture = "media/textures/Item_EthanSteele.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_EthanSteele;SFQuest_Questyno_EthanSteele_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_EthanSteele_Intro_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_EthanSteele1",

    awardstask = "Questyno_EthanSteele1_A", -- TASK REWARD
    lore = { "IGUI_SFQuest_Questyno_EthanSteele1_Lore" },
    objectives = {{
        guid = "Questyno_EthanSteele1_A",
        text = "IGUI_SFQuest_Questyno_EthanSteele1_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoEthanSteele1;additem;Base.Army_Duffle_Bag;1",
    },{
        guid = "Questyno_EthanSteele1_B",
        text = "IGUI_SFQuest_Questyno_EthanSteele1_B",
        hidden = false,
    }},
    text = "IGUI_SFQuest_Questyno_EthanSteele1_Text",
    texture = "media/textures/Item_EthanSteele.png",
    title = "IGUI_SFQuest_Questyno_EthanSteele1_Title",
    unique = true,
    unlocks = "actionevent;killzombies:50;updateobjective:Questyno_EthanSteele1:2:Completed;clickevent;10102x11172x0:EventoEthanSteele1;time:50:anim:loot;updateobjective:Questyno_EthanSteele1:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_EthanSteele1_A",

    awardsrep = "LaResistenza;40;EthanSteele;33", -- REP REWARD
    awardsitem = "Base.Money;25", -- ITEM REWARD
    awardsworld = "Questyno_EthanSteele;SFQuest_Questyno_EthanSteele2_Begin;Questyno_EthanSteele2", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_EthanSteele1_Lore" },
    needsitem = "Base.Army_Duffle_Bag;1",
    onobtained = "unlockworldevent;Questyno_EthanSteele;SFQuest_Questyno_EthanSteele1_Complete",
    text = "IGUI_SFQuest_Questyno_EthanSteele1_A_Text",
    texture = "media/textures/Item_EthanSteele.png",
    title = "IGUI_SFQuest_Questyno_EthanSteele1_Title",
    unique = true,
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_EthanSteele2",

    awardstask = "Questyno_EthanSteele2_A", -- TASK REWARD
    lore = { "IGUI_SFQuest_Questyno_EthanSteele2_Lore" },
    objectives = {{
        guid = "Questyno_EthanSteele2_A",
        text = "IGUI_SFQuest_Questyno_EthanSteele2_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoEthanSteele2;additem;AuthenticZLite.Jacket_ChuckGreene;1",
    },{
        guid = "Questyno_EthanSteele2_B",
        text = "IGUI_SFQuest_Questyno_EthanSteele2_B",
        hidden = false,
    }},
    text = "IGUI_SFQuest_Questyno_EthanSteele2_Text",
    texture = "media/textures/Item_EthanSteele.png",
    title = "IGUI_SFQuest_Questyno_EthanSteele2_Title",
    unique = true,
    unlocks = "actionevent;killzombies:50;updateobjective:Questyno_EthanSteele2:2:Completed;clickevent;11264x8219x0:EventoEthanSteele2;time:50:anim:loot;updateobjective:Questyno_EthanSteele2:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_EthanSteele2_A",

    awardsrep = "LaResistenza;60;EthanSteele;33", -- REP REWARD
    awardsitem = "Base.Money;25", -- ITEM REWARD
    awardsworld = "Questyno_EthanSteele;SFQuest_Questyno_EthanSteele3_Begin;Questyno_EthanSteele3", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_EthanSteele2_Lore" },
    needsitem = "AuthenticZLite.Jacket_ChuckGreene;1",
    onobtained = "unlockworldevent;Questyno_EthanSteele;SFQuest_Questyno_EthanSteele2_Complete",
    text = "IGUI_SFQuest_Questyno_EthanSteele2_A_Text",
    texture = "media/textures/Item_EthanSteele.png",
    title = "IGUI_SFQuest_Questyno_EthanSteele2_Title",
    unique = true,
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_EthanSteele3",

    awardsrep = "LaResistenza;120;EthanSteele;132", -- REP REWARD
    awardsitem = "Base.EmptyCAN6;1", -- ITEM REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_EthanSteele3_Lore" },
    needsitem = "Base.Money;250",
    onobtained = "unlockworldevent;Questyno_EthanSteele;SFQuest_Questyno_EthanSteele3_Complete",
    text = "IGUI_SFQuest_Questyno_EthanSteele3_Text",
    texture = "media/textures/Item_EthanSteele.png",
    title = "IGUI_SFQuest_Questyno_EthanSteele3_Title",
    unlockedsound = "QuestUnlocked",
    unique = true,
});

--[[

            *** Richard Brown ***
            Elenco:
                intro. Incontra Richard Brown per sbloccare la catena.
				1. Uccidere 50 Zombie (10rep + MoneyToXP.100XPTraining)
				2. Uccidere 100 Zombie (20rep + MoneyToXP.200XPTraining)
				3. Uccidere 300 Zombie (25rep + MoneyToXP.500XPTraining)
				4. Uccidere 400 Zombie (35rep + MoneyToXP.1000XPTraining)
				5. Uccidere 50 Zombie (60rep + 50$ + PynoTweaks.SafehouseTicket)
				6. Recuperare Base.AVCSClaimOrb parlando con (8614,9881,0), Base.HottieZ parlando con (8617,9876,0) (50rep + 50$ + Base.AVCSClaimOrb)
]]

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RichardBrown_Intro",

    awardsrep = "RichardBrown;1", -- REP REWARD
    awardsworld = "Questyno_RichardBrown;SFQuest_Questyno_RichardBrown1_Begin;Questyno_RichardBrown1", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_RichardBrown_Intro_Lore" },
    text = "IGUI_SFQuest_Questyno_RichardBrown_Intro_Text",
    texture = "media/textures/Item_RichardBrown.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_RichardBrown;SFQuest_Questyno_RichardBrown_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_RichardBrown_Intro_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RichardBrown1",

    awardsrep = "LaResistenza;10;RichardBrown;20", -- REP REWARD
    awardsitem = "MoneyToXP.Droga1;1", -- ITEM REWARD
    awardsworld = "Questyno_RichardBrown;SFQuest_Questyno_RichardBrown2_Begin;Questyno_RichardBrown2", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_RichardBrown1_Lore" },
    text = "IGUI_SFQuest_Questyno_RichardBrown1_Text",
    texture = "media/textures/Item_RichardBrown.png",
    title = "IGUI_SFQuest_Questyno_RichardBrown1_Title",
    unique = true,
    unlocks = "actionevent;killzombies:50;unlockworldevent:Questyno_RichardBrown:SFQuest_Questyno_RichardBrown1_Complete:placeholder:updatequeststatus:Questyno_RichardBrown1:Obtained", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RichardBrown2",

    awardsrep = "LaResistenza;20;RichardBrown;20", -- REP REWARD
    awardsitem = "MoneyToXP.Droga2;1;Base.Apple;1", -- ITEM REWARD
    awardsworld = "Questyno_RichardBrown;SFQuest_Questyno_RichardBrown3_Begin;Questyno_RichardBrown3", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_RichardBrown2_Lore" },
    text = "IGUI_SFQuest_Questyno_RichardBrown2_Text",
    texture = "media/textures/Item_RichardBrown.png",
    title = "IGUI_SFQuest_Questyno_RichardBrown2_Title",
    unique = true,
    unlocks = "actionevent;killzombies:100;unlockworldevent:Questyno_RichardBrown:SFQuest_Questyno_RichardBrown2_Complete:placeholder:updatequeststatus:Questyno_RichardBrown2:Obtained", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RichardBrown3",

    awardsrep = "LaResistenza;25;RichardBrown;20", -- REP REWARD
    awardsitem = "MoneyToXP.Droga3;1;Base.Apple;1", -- ITEM REWARD
    awardsworld = "Questyno_RichardBrown;SFQuest_Questyno_RichardBrown4_Begin;Questyno_RichardBrown4", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_RichardBrown3_Lore" },
    text = "IGUI_SFQuest_Questyno_RichardBrown3_Text",
    texture = "media/textures/Item_RichardBrown.png",
    title = "IGUI_SFQuest_Questyno_RichardBrown3_Title",
    unique = true,
    unlocks = "actionevent;killzombies:300;unlockworldevent:Questyno_RichardBrown:SFQuest_Questyno_RichardBrown3_Complete:placeholder:updatequeststatus:Questyno_RichardBrown3:Obtained", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RichardBrown4",

    awardsrep = "LaResistenza;35;RichardBrown;20", -- REP REWARD
    awardsitem = "MoneyToXP.Droga4;1;Base.Apple;1", -- ITEM REWARD
    awardsworld = "Questyno_RichardBrown;SFQuest_Questyno_RichardBrown5_Begin;Questyno_RichardBrown5", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_RichardBrown4_Lore" },
    text = "IGUI_SFQuest_Questyno_RichardBrown4_Text",
    texture = "media/textures/Item_RichardBrown.png",
    title = "IGUI_SFQuest_Questyno_RichardBrown4_Title",
    unique = true,
    unlocks = "actionevent;killzombies:400;unlockworldevent:Questyno_RichardBrown:SFQuest_Questyno_RichardBrown4_Complete:placeholder:updatequeststatus:Questyno_RichardBrown4:Obtained", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RichardBrown5",

    awardsrep = "LaResistenza;60;RichardBrown;10", -- REP REWARD
    awardsitem = "Base.Money;50;MoneyToXP.SafehouseTicket;1", -- ITEM REWARD
    awardsworld = "Questyno_RichardBrown;SFQuest_Questyno_RichardBrown6_Begin;Questyno_RichardBrown6", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_RichardBrown5_Lore" },
    text = "IGUI_SFQuest_Questyno_RichardBrown5_Text",
    texture = "media/textures/Item_RichardBrown.png",
    title = "IGUI_SFQuest_Questyno_RichardBrown5_Title",
    unique = true,
    unlocks = "actionevent;killzombies:50;unlockworldevent:Questyno_RichardBrown:SFQuest_Questyno_RichardBrown5_Complete:placeholder:updatequeststatus:Questyno_RichardBrown5:Obtained", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_RichardBrown6",
    awardstask = "Questyno_RichardBrown6_A",
    dailycode = "Questyno_RichardBrown",
    lore = { "IGUI_SFQuest_Questyno_RichardBrown6_Lore" },
    objectives = { {
        guid = "Questyno_RichardBrown6_A",
        text = "IGUI_SFQuest_Questyno_RichardBrown6_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoRichardBrown6;additem;Base.AVCSClaimOrb;1;revealobjective;Questyno_RichardBrown6;2;clickevent;8617x9876x0:EventoRichardBrown6A;anim:loot:time:50;updateobjective:Questyno_RichardBrown6:2:Completed",
    }, {
        guid = "Questyno_RichardBrown6_B",
        text = "IGUI_SFQuest_Questyno_RichardBrown6_B",
        hidden = true,
        oncompleted = "removeclickevent;EventoRichardBrown6A;additem;HottieZ;1",
    } },
    text = "IGUI_SFQuest_Questyno_RichardBrown6_Text",
    texture = "media/textures/Item_RichardBrown.png",
    title = "IGUI_SFQuest_Questyno_RichardBrown6_Title",
    unique = true,
    unlocks = "clickevent;8614x9881x0:EventoRichardBrown6;time:50:anim:loot;updateobjective:Questyno_RichardBrown6:1:Completed",
    unlockedsound = "QuestUnlocked"
} )

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_RichardBrown6_A",
    awardstask = "Questyno_RichardBrown6_B",
    dailycode = "Questyno_RichardBrown",
    lore = { "IGUI_SFQuest_Questyno_RichardBrown6_Lore" },
    objectives = { {
        guid = "Questyno_RichardBrown6_C",
        text = "IGUI_SFQuest_Questyno_RichardBrown6_C",
        hidden = false,
        needsitem = "Base.AVCSClaimOrb;1",
        onobtained = "updateobjective;Questyno_RichardBrown6_A;1;Completed;removeitem;Base.AVCSClaimOrb;1"
    }, {
        guid = "Questyno_RichardBrown6_D",
        text = "IGUI_SFQuest_Questyno_RichardBrown6_D",
        hidden = false,
        needsitem = "HottieZ;1",
        onobtained = "updateobjective;Questyno_RichardBrown6_A;2;Completed;removeitem;HottieZ;1"
    } },
    text = "IGUI_SFQuest_Questyno_RichardBrown6_A_Text",
    texture = "media/textures/Item_RichardBrown.png",
    title = "IGUI_SFQuest_Questyno_RichardBrown6_Title",
    unique = true,
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_RichardBrown6_B",
    awardsrep = "LaResistenza;50;RichardBrown;109",
    awardsitem = "Money;50;Base.AVCSClaimOrb;1",
    completesound = "levelup",
    dailycode = "Questyno_RichardBrown",
    lore = { "IGUI_SFQuest_Questyno_RichardBrown6_Lore" },
    unlocks = "unlockworldevent;Questyno_RichardBrown;SFQuest_Questyno_RichardBrown6_Complete",
    text = "IGUI_SFQuest_Questyno_RichardBrown6_B_Text",
    texture = "media/textures/Item_RichardBrown.png",
    title = "IGUI_SFQuest_Questyno_RichardBrown6_Title",
    unique = true,
});

--[[
            *** Robert Wilson ***
            Elenco:
                intro. Incontra Robert Wilson per sbloccare la catena.
				1. Uccidere 25 Zombie (10rep + 10$)
				2. Recuperare Recupero SOMW.LShapedLugWrench parlando con (6683,10669,0), Uccidere 50 Zombie (20rep + 10$)
				3. Recuperare Base.ElectronicsScrap;50 (25rep + 10$)
				4. Recuperare Base.ElectronicsMag4 parlando con (9416,9985,0)4 (30rep + Base.ElectronicsMag4)
				5. Recuperare Base.PetrolCan parlando con (11593,8301,0)5 (40rep + 50$ + Base.EmptyPetrolCan,Base.Generator)
]]

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RobertWilson_Intro",

    awardsrep = "RobertWilson;1", -- REP REWARD
    awardsworld = "Questyno_RobertWilson;SFQuest_Questyno_RobertWilson1_Begin;Questyno_RobertWilson1", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_RobertWilson_Intro_Lore" },
    text = "IGUI_SFQuest_Questyno_RobertWilson_Intro_Text",
    texture = "media/textures/Item_RobertWilson.png",
    unlocks = "unlockworldevent;Questyno_RobertWilson;SFQuest_Questyno_RobertWilson_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_RobertWilson_Intro_Title",
    unique = true,
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RobertWilson1",

    awardsrep = "LaResistenza;100;RobertWilson;20", -- REP REWARD
    awardsitem = "Base.Money;10", -- ITEM REWARD
    awardsworld = "Questyno_RobertWilson;SFQuest_Questyno_RobertWilson2_Begin;Questyno_RobertWilson2", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_RobertWilson1_Lore" },
    text = "IGUI_SFQuest_Questyno_RobertWilson1_Text",
    texture = "media/textures/Item_RobertWilson.png",
    title = "IGUI_SFQuest_Questyno_RobertWilson1_Title",
    unique = true,
    unlocks = "actionevent;killzombies:25;unlockworldevent:Questyno_RobertWilson:SFQuest_Questyno_RobertWilson1_Complete:placeholder:updatequeststatus:Questyno_RobertWilson1:Obtained", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RobertWilson2",

    awardstask = "Questyno_RobertWilson2_A", -- TASK REWARD
    lore = { "IGUI_SFQuest_Questyno_RobertWilson2_Lore" },
    objectives = {{
        guid = "Questyno_RobertWilson2_A",
        text = "IGUI_SFQuest_Questyno_RobertWilson2_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoRobertWilson2;additem;SOMW.LShapedLugWrench;1",
    },{
        guid = "Questyno_RobertWilson2_B",
        text = "IGUI_SFQuest_Questyno_RobertWilson2_B",
        hidden = false,
    }},
    text = "IGUI_SFQuest_Questyno_RobertWilson2_Text",
    texture = "media/textures/Item_RobertWilson.png",
    title = "IGUI_SFQuest_Questyno_RobertWilson2_Title",
    unique = true,
    unlocks = "actionevent;killzombies:50;updateobjective:Questyno_RobertWilson2:2:Completed;clickevent;6683x10669x0:EventoRobertWilson2;time:50:anim:loot;updateobjective:Questyno_RobertWilson2:1:Completed", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RobertWilson2_A",

    awardsrep = "LaResistenza;150;RobertWilson;20", -- REP REWARD
    awardsitem = "Base.Money;10", -- ITEM REWARD
    awardsworld = "Questyno_RobertWilson;SFQuest_Questyno_RobertWilson3_Begin;Questyno_RobertWilson3", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_RobertWilson2_Lore" },
    needsitem = "SOMW.LShapedLugWrench;1",
    onobtained = "unlockworldevent;Questyno_RobertWilson;SFQuest_Questyno_RobertWilson2_Complete",
    text = "IGUI_SFQuest_Questyno_RobertWilson2_A_Text",
    texture = "media/textures/Item_RobertWilson.png",
    title = "IGUI_SFQuest_Questyno_RobertWilson2_Title",
    unique = true,
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RobertWilson3",

    awardsrep = "LaResistenza;200;RobertWilson;20", -- REP REWARD
    awardsitem = "Base.Money;10", -- ITEM REWARD
    awardsworld = "Questyno_RobertWilson;SFQuest_Questyno_RobertWilson4_Begin;Questyno_RobertWilson4", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_RobertWilson3_Lore" },
    needsitem = "Base.ElectronicsScrap;50",
    onobtained = "unlockworldevent;Questyno_RobertWilson;SFQuest_Questyno_RobertWilson3_Complete",
    text = "IGUI_SFQuest_Questyno_RobertWilson3_Text",
    texture = "media/textures/Item_RobertWilson.png",
    title = "IGUI_SFQuest_Questyno_RobertWilson3_Title",
    unique = true,
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RobertWilson4",

    awardstask = "Questyno_RobertWilson4_A", -- TASK REWARD
    lore = { "IGUI_SFQuest_Questyno_RobertWilson4_Lore" },
    objectives = {{
        guid = "Questyno_RobertWilson4_A",
        text = "IGUI_SFQuest_Questyno_RobertWilson4_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoRobertWilson4;additem;Base.ElectronicsMag4;1",
    }},
    text = "IGUI_SFQuest_Questyno_RobertWilson4_Text",
    texture = "media/textures/Item_RobertWilson.png",
    title = "IGUI_SFQuest_Questyno_RobertWilson4_Title",
    unique = true,
    unlocks = "clickevent;9416x9985x0:EventoRobertWilson4;time:50:anim:loot;updateobjective:Questyno_RobertWilson4:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RobertWilson4_A",

    awardsrep = "LaResistenza;200;RobertWilson;20", -- REP REWARD
    awardsitem = "Base.ElectronicsMag4;1", -- ITEM REWARD
    awardsworld = "Questyno_RobertWilson;SFQuest_Questyno_RobertWilson5_Begin;Questyno_RobertWilson5", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_RobertWilson4_Lore" },
    needsitem = "Base.ElectronicsMag4;1",
    onobtained = "unlockworldevent;Questyno_RobertWilson;SFQuest_Questyno_RobertWilson4_Complete",
    text = "IGUI_SFQuest_Questyno_RobertWilson4_A_Text",
    texture = "media/textures/Item_RobertWilson.png",
    title = "IGUI_SFQuest_Questyno_RobertWilson4_Title",
    unique = true,
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RobertWilson5",

    awardstask = "Questyno_RobertWilson5_A", -- TASK REWARD
    lore = { "IGUI_SFQuest_Questyno_RobertWilson5_Lore" },
    objectives = {{
        guid = "Questyno_RobertWilson5_A",
        text = "IGUI_SFQuest_Questyno_RobertWilson5_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoRobertWilson5;additem;Base.PetrolCan;1",
    }},
    text = "IGUI_SFQuest_Questyno_RobertWilson5_Text",
    texture = "media/textures/Item_RobertWilson.png",
    title = "IGUI_SFQuest_Questyno_RobertWilson5_Title",
    unique = true,
    unlocks = "clickevent;11593x8301x0:EventoRobertWilson5;time:50:anim:loot;updateobjective:Questyno_RobertWilson5:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RobertWilson5_A",

    awardsrep = "LaResistenza;250;RobertWilson;119", -- REP REWARD
    awardsitem = "Base.Money;50;Base.EmptyPetrolCan;1;Base.Generator;1", -- ITEM REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_RobertWilson5_Lore" },
    needsitem = "Base.EmptyPetrolCan;1",
    onobtained = "unlockworldevent;Questyno_RobertWilson;SFQuest_Questyno_RobertWilson5_Complete",
    text = "IGUI_SFQuest_Questyno_RobertWilson5_A_Text",
    texture = "media/textures/Item_RobertWilson.png",
    title = "IGUI_SFQuest_Questyno_RobertWilson5_Title",
    unique = true,
});

	
--[[
            *** Andrew Turner ***
            Elenco:
                intro. Incontra Andrew Turner.
				1. Recuperare Base.PropaneTank;2 parlando con (16888,7783,0) (2500rep + 100$)
				2. Recuperare Base.PropaneTank;2 parlando con (12768,9497,0) (2500rep + 100$)
				3. Recuperare Base.PropaneTank;2 parlando con (10490,8268,0) (3000rep + Tw.WorkshopMag1)
]]

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_AndrewTurner_Intro",

    awardsrep = "AndrewTurner;1", -- REP REWARD
    awardsworld = "Questyno_AndrewTurner;SFQuest_Questyno_AndrewTurner1_Begin;Questyno_AndrewTurner1", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_AndrewTurner_Intro_Lore" },
    text = "IGUI_SFQuest_Questyno_AndrewTurner_Intro_Text",
    texture = "media/textures/Item_AndrewTurner.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_AndrewTurner;SFQuest_Questyno_AndrewTurner_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_AndrewTurner_Intro_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_AndrewTurner1",

    awardstask = "Questyno_AndrewTurner1_A", -- TASK REWARD
    lore = { "IGUI_SFQuest_Questyno_AndrewTurner1_Lore" },
    objectives = {{
        guid = "Questyno_AndrewTurner1_A",
        text = "IGUI_SFQuest_Questyno_AndrewTurner1_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoAndrewTurner1;additem;Base.PropaneTank;2",
    }},
    text = "IGUI_SFQuest_Questyno_AndrewTurner1_Text",
    texture = "media/textures/Item_AndrewTurner.png",
    title = "IGUI_SFQuest_Questyno_AndrewTurner1_Title",
    unique = true,
    unlocks = "clickevent;16888x7783x0:EventoAndrewTurner1;time:50:anim:loot;updateobjective:Questyno_AndrewTurner1:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_AndrewTurner1_A",

    awardsrep = "LaResistenza;2500;AndrewTurner;33", -- REP REWARD
    awardsitem = "Base.Money;100", -- ITEM REWARD
    awardsworld = "Questyno_AndrewTurner;SFQuest_Questyno_AndrewTurner2_Begin;Questyno_AndrewTurner2", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_AndrewTurner1_Lore" },
    needsitem = "Base.PropaneTank;2",
    onobtained = "unlockworldevent;Questyno_AndrewTurner;SFQuest_Questyno_AndrewTurner1_Complete",
    text = "IGUI_SFQuest_Questyno_AndrewTurner1_A_Text",
    texture = "media/textures/Item_AndrewTurner.png",
    title = "IGUI_SFQuest_Questyno_AndrewTurner1_Title",
    unique = true,
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_AndrewTurner2",

    awardstask = "Questyno_AndrewTurner2_A", -- TASK REWARD
    lore = { "IGUI_SFQuest_Questyno_AndrewTurner2_Lore" },
    objectives = {{
        guid = "Questyno_AndrewTurner2_A",
        text = "IGUI_SFQuest_Questyno_AndrewTurner2_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoAndrewTurner2;additem;Base.PropaneTank;2",
    }},
    text = "IGUI_SFQuest_Questyno_AndrewTurner2_Text",
    texture = "media/textures/Item_AndrewTurner.png",
    title = "IGUI_SFQuest_Questyno_AndrewTurner2_Title",
    unique = true,
    unlocks = "clickevent;12768x9497x0:EventoAndrewTurner2;time:50:anim:loot;updateobjective:Questyno_AndrewTurner2:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_AndrewTurner2_A",

    awardsrep = "LaResistenza;2500;AndrewTurner;33", -- REP REWARD
    awardsitem = "Base.Money;100", -- ITEM REWARD
    awardsworld = "Questyno_AndrewTurner;SFQuest_Questyno_AndrewTurner3_Begin;Questyno_AndrewTurner3", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_AndrewTurner2_Lore" },
    needsitem = "Base.PropaneTank;2",
    onobtained = "unlockworldevent;Questyno_AndrewTurner;SFQuest_Questyno_AndrewTurner2_Complete",
    text = "IGUI_SFQuest_Questyno_AndrewTurner2_A_Text",
    texture = "media/textures/Item_AndrewTurner.png",
    title = "IGUI_SFQuest_Questyno_AndrewTurner2_Title",
    unique = true,
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_AndrewTurner3",

    awardstask = "Questyno_AndrewTurner3_A", -- TASK REWARD
    lore = { "IGUI_SFQuest_Questyno_AndrewTurner3_Lore" },
    objectives = {{
        guid = "Questyno_AndrewTurner3_A",
        text = "IGUI_SFQuest_Questyno_AndrewTurner3_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoAndrewTurner3;additem;Base.PropaneTank;2",
    }},
    text = "IGUI_SFQuest_Questyno_AndrewTurner3_Text",
    texture = "media/textures/Item_AndrewTurner.png",
    title = "IGUI_SFQuest_Questyno_AndrewTurner3_Title",
    unique = true,
    unlocks = "clickevent;10490x8268x0:EventoAndrewTurner3;time:50:anim:loot;updateobjective:Questyno_AndrewTurner3:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_AndrewTurner3_A",

    awardsrep = "LaResistenza;3000;AndrewTurner;132", -- REP REWARD
    awardsitem = "LabItems.LabWorkbench;1", -- ITEM REWARD
    awardsworld = "Questyno_AndrewTurner;SFQuest_Questyno_AndrewTurner4_Begin;Questyno_AndrewTurner4", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_AndrewTurner3_Lore" },
    needsitem = "Base.PropaneTank;2",
    onobtained = "unlockworldevent;Questyno_AndrewTurner;SFQuest_Questyno_AndrewTurner3_Complete",
    text = "IGUI_SFQuest_Questyno_AndrewTurner3_A_Text",
    texture = "media/textures/Item_AndrewTurner.png",
    title = "IGUI_SFQuest_Questyno_AndrewTurner3_Title",
    unique = true,
});

  --[[
            Pyno 
            elenco:
                1. parla con pino. (1rep + 10$)
                2. parla con pino. (1rep + 10$)
                3. parla con pino. (1rep + 10$)
                4. parla con pino. (1rep + Wallet + CreditCard)
                5. parla con pino. (1rep + Pen)
    ]]

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_Pyno1",

    awardstask = "Questyno_Pyno2", -- DIALOGUE REWARD
    awardsrep = "LaResistenza;1", -- REP REWARD
    awardsitem = "Base.Money;1", -- ITEM REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_Pyno1_Lore" },
    text = "IGUI_SFQuest_Questyno_Pyno1_Text",
    texture = "media/textures/Item_Pyno.png",
    title = "IGUI_SFQuest_Questyno_Pyno1_Title",
    unique = true,
    unlocks = "unlockworldevent;Questyno_Pyno;SFQuest_Questyno_Pyno1_Complete",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_Pyno2",

    awardstask = "Questyno_Pyno3", -- DIALOGUE REWARD
    awardsrep = "LaResistenza;1", -- REP REWARD
    awardsitem = "Base.Money;1", -- ITEM REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_Pyno2_Lore" },
    text = "IGUI_SFQuest_Questyno_Pyno2_Text",
    texture = "media/textures/Item_Pyno.png",
    title = "IGUI_SFQuest_Questyno_Pyno2_Title",
    unique = true,
    unlocks = "unlockworldevent;Questyno_Pyno;SFQuest_Questyno_Pyno2_Complete",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_Pyno3",

    awardstask = "Questyno_Pyno4", -- DIALOGUE REWARD
    awardsrep = "LaResistenza;1", -- REP REWARD
    awardsitem = "Base.Money;1", -- ITEM REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_Pyno3_Lore" },
    text = "IGUI_SFQuest_Questyno_Pyno3_Text",
    texture = "media/textures/Item_Pyno.png",
    title = "IGUI_SFQuest_Questyno_Pyno3_Title",
    unique = true,
    unlocks = "unlockworldevent;Questyno_Pyno;SFQuest_Questyno_Pyno3_Complete",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_Pyno4",

    awardstask = "Questyno_Pyno5", -- DIALOGUE REWARD
    awardsrep = "LaResistenza;1", -- REP REWARD
    awardsitem = "Base.Wallet;1;Base.CreditCard;1", -- ITEM REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_Pyno4_Lore" },
    text = "IGUI_SFQuest_Questyno_Pyno4_Text",
    texture = "media/textures/Item_Pyno.png",
    title = "IGUI_SFQuest_Questyno_Pyno4_Title",
    unique = true,
    unlocks = "unlockworldevent;Questyno_Pyno;SFQuest_Questyno_Pyno4_Complete",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_Pyno5",

    awardsrep = "LaResistenza;1", -- REP REWARD
    awardsitem = "Base.Pen;1", -- ITEM REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_Pyno5_Lore" },
    text = "IGUI_SFQuest_Questyno_Pyno5_Text",
    texture = "media/textures/Item_Pyno.png",
    title = "IGUI_SFQuest_Questyno_Pyno5_Title",
    unique = true,
    unlocks = "unlockworldevent;Questyno_Pyno;SFQuest_Questyno_Pyno5_Complete",
});


    --[[
            James Morris
            elenco:
                intro. Incontra James. [Catena]
                1. Recupera LR.FloppyDisk @  6762,6135 -> parla @ 6764,6135,0 needs 1x LR.FloppyDisk -> clickevent stampante @ 6762,6141,0 (reward: LR.Lore7)
                2. Click event @ (12019,2489,1) -> CLick Event @ 12630,1942,1 (reward: LR.Lore8)
                3. Click event @ (12434,1968,1) -> CLick Event sul pc 13394,2371,0 (reward: DrHyde.CureNotes)
    ]]

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JamesMorris_Intro",

    awardsrep = "JamesMorris;1", -- REP REWARD
    awardsworld = "Questyno_JamesMorris;SFQuest_Questyno_JamesMorris1_Begin;Questyno_JamesMorris1", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_JamesMorris_Intro_Lore" },
    text = "IGUI_SFQuest_Questyno_JamesMorris_Intro_Text",
    texture = "media/textures/Item_JamesMorris.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_JamesMorris;SFQuest_Questyno_JamesMorris_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_JamesMorris_Intro_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JamesMorris1",

    awardstask = "Questyno_JamesMorris1_A", -- TASK REWARD
    lore = { "IGUI_SFQuest_Questyno_JamesMorris1_Lore" },
    completesound = "levelup",
    objectives = {{
        guid = "Questyno_JamesMorris1_A",
        text = "IGUI_SFQuest_Questyno_JamesMorris1_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoJamesMorris1;revealobjective;Questyno_JamesMorris1;2;unlockworldevent;Questyno_Tavolo;SFQuest_Questyno_JamesMorris1_Complete",
    },{
        guid = "Questyno_JamesMorris1_B",
        text = "IGUI_SFQuest_Questyno_JamesMorris1_B",
        hidden = true,
        oncompleted = "additem;LR.FloppyDisk;1"
    }},
    text = "IGUI_SFQuest_Questyno_JamesMorris1_Text",
    texture = "media/textures/Item_JamesMorris.png",
    title = "IGUI_SFQuest_Questyno_JamesMorris1_Title",
    unique = true,
    unlocks = "clickevent;6762x6135x0:EventoJamesMorris1;time:50:anim:loot;updateobjective:Questyno_JamesMorris1:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JamesMorris1_A",

    awardstask = "Questyno_JamesMorris1_B", -- TASK REWARD
    lore = { "IGUI_SFQuest_Questyno_JamesMorris1_A_Lore" },
    completesound = "Questyno_WindowsClick",
    objectives = {{
        guid = "Questyno_JamesMorris1_C",
        text = "IGUI_SFQuest_Questyno_JamesMorris1_C",
        hidden = false,
        needsitem = "LR.FloppyDisk;1",
        onobtained = "clickevent;6764x6135x0:EventoJamesMorris1A;time:50:anim:loot;updateobjective:Questyno_JamesMorris1_A:1:Completed",
        oncompleted = "removeclickevent;EventoJamesMorris1A;revealobjective;Questyno_JamesMorris1_A;2;unlockworldevent;Questyno_Computer;SFQuest_Questyno_JamesMorris1_A_Complete",
    },{
        guid = "Questyno_JamesMorris1_D",
        text = "IGUI_SFQuest_Questyno_JamesMorris1_D",
        hidden = true,
    }},
    text = "IGUI_SFQuest_Questyno_JamesMorris1_A_Text",
    texture = "media/textures/Item_JamesMorris.png",
    title = "IGUI_SFQuest_Questyno_JamesMorris1_Title",
    unique = true,
    --unlocks = "clickevent;6764x6135x0:EventoJamesMorris1;time:50:anim:loot;updateobjective:Questyno_JamesMorris1_A:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JamesMorris1_B",

    awardstask = "Questyno_JamesMorris2", -- TASK REWARD
    completesound = "Questyno_Print",
    lore = { "IGUI_SFQuest_Questyno_JamesMorris1_B_Lore" },
    objectives = {{
        guid = "Questyno_JamesMorris1_E",
        text = "IGUI_SFQuest_Questyno_JamesMorris1_E",
        hidden = false,
        oncompleted = "removeclickevent;EventoJamesMorris1B;revealobjective;Questyno_JamesMorris1_B;2;unlockworldevent;Questyno_Stampante;SFQuest_Questyno_JamesMorris1_B_Complete",
    },{
        guid = "Questyno_JamesMorris1_F",
        text = "IGUI_SFQuest_Questyno_JamesMorris1_F",
        hidden = true,
        oncompleted = "additem;LR.Lore7;1"
    }},
    text = "IGUI_SFQuest_Questyno_JamesMorris1_B_Text",
    texture = "media/textures/Item_JamesMorris.png",
    title = "IGUI_SFQuest_Questyno_JamesMorris1_Title",
    unique = true,
    unlocks = "clickevent;6762x6141x0:EventoJamesMorris1B;time:50:anim:loot;updateobjective:Questyno_JamesMorris1_B:1:Completed",
});

--[[ table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JamesMorris1_C",

    awardstask = "Questyno_JamesMorris2", -- TASK REWARD
    lore = { "IGUI_SFQuest_Questyno_JamesMorris1_C_Lore" },
    completesound = "Questyno_Print",
    objectives = {{
        guid = "Questyno_JamesMorris1_G",
        text = "IGUI_SFQuest_Questyno_JamesMorris1_G",
        hidden = false,
        oncompleted = "removeclickevent;EventoJamesMorris1C;revealobjective;Questyno_JamesMorris1_C;2;unlockworldevent;Questyno_Computer;SFQuest_Questyno_JamesMorris1_C_Complete",
    },{
        guid = "Questyno_JamesMorris1_H",
        text = "IGUI_SFQuest_Questyno_JamesMorris1_H",
        hidden = true,
    }},
    text = "IGUI_SFQuest_Questyno_JamesMorris1_C_Text",
    texture = "media/textures/Item_JamesMorris.png",
    title = "IGUI_SFQuest_Questyno_JamesMorris1_Title",
    unlocks = "clickevent;6764x6135x0:EventoJamesMorris1;time:50:anim:loot;updateobjective:Questyno_JamesMorris1_C:1:Completed",
}); ]]

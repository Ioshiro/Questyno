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

    awardsrep = "LaResistenza;5", -- REP REWARD
    awardsworld = "Questyno_EzekielFlynn;SFQuest_Questyno_EzekielFlynn2_Begin;Questyno_EzekielFlynn2", -- DIALOGUE REWARD
    completesound = "levelup",
    dailycode = "Questyno_EzekielFlynn",
    lore = { "IGUI_SFQuest_Questyno_EzekielFlynn1_Lore" },
    text = "IGUI_SFQuest_Questyno_EzekielFlynn1_Text",
    texture = "media/textures/Item_EzekielFlynn.png",
    title = "IGUI_SFQuest_Questyno_EzekielFlynn1_Title",
    unlocks = "actionevent;killzombies:25;unlockworldevent:Questyno_EzekielFlynn:SFQuest_Questyno_EzekielFlynn1_Complete", -- ZOMBIE REQUEST
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
        needsitem = "Shoes_ArmyBoots;1",
        onobtained = "updateobjective;Questyno_EzekielFlynn2;1;Completed;removeitem;Shoes_ArmyBoots;1",
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

    awardsrep = "LaResistenza;10", -- REP REWARD
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

    awardsrep = "LaResistenza;15", -- REP REWARD
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

    awardsrep = "LaResistenza;20", -- REP REWARD
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

    awardsrep = "LaResistenza;25", -- REP REWARD
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

    awardsrep = "LaResistenza;10", -- REP REWARD
    awardsworld = "Questyno_ElowenBeckett;SFQuest_Questyno_ElowenBeckett2_Begin;Questyno_ElowenBeckett2", -- DIALOGUE REWARD
    completesound = "levelup",
    dailycode = "Questyno_ElowenBeckett",
    lore = { "IGUI_SFQuest_Questyno_ElowenBeckett1_Lore" },
    text = "IGUI_SFQuest_Questyno_ElowenBeckett1_Text",
    texture = "media/textures/Item_ElowenBeckett.png",
    title = "IGUI_SFQuest_Questyno_ElowenBeckett1_Title",
    unlocks = "actionevent;killzombies:30;unlockworldevent:Questyno_ElowenBeckett:SFQuest_Questyno_ElowenBeckett1_Complete", -- ZOMBIE REQUEST
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

    awardsrep = "LaResistenza;15", -- REP REWARD
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

    awardsrep = "LaResistenza;20", -- REP REWARD
    awardsitem = "BeefJerky;1", -- ITEM REWARD
    awardsworld = "Questyno_ElowenBeckett;SFQuest_Questyno_ElowenBeckett4_Begin;Questyno_ElowenBeckett4", -- DIALOGUE REWARD
    unlocks = "actionevent;killzombies:50;unlockworldevent:Questyno_ElowenBeckett:SFQuest_Questyno_ElowenBeckett3_Complete", -- ZOMBIE REQUEST
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

    awardsrep = "LaResistenza;25", -- REP REWARD
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

    awardsrep = "LaResistenza;30", -- REP REWARD
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

    awardsrep = "LaResistenza;30", -- REP REWARD
    awardsworld = "Questyno_JohnBaker;SFQuest_Questyno_JohnBaker2_Begin;Questyno_JohnBaker2", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_JohnBaker1_Lore" },
    text = "IGUI_SFQuest_Questyno_JohnBaker1_Text",
    texture = "media/textures/Item_JohnBaker.png",
    title = "IGUI_SFQuest_Questyno_JohnBaker1_Title",
    unlocks = "actionevent;killzombies:50;unlockworldevent:Questyno_JohnBaker:SFQuest_Questyno_JohnBaker1_Complete", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JohnBaker2",

    awardsrep = "LaResistenza;80", -- REP REWARD
    awardsitem = "SWeapons.ScrapMachete;1", -- ITEM REWARD
    awardsworld = "Questyno_JohnBaker;SFQuest_Questyno_JohnBaker3_Begin;Questyno_JohnBaker3", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_JohnBaker2_Lore" },
    text = "IGUI_SFQuest_Questyno_JohnBaker2_Text",
    texture = "media/textures/Item_JohnBaker.png",
    title = "IGUI_SFQuest_Questyno_JohnBaker2_Title",
    unlocks = "actionevent;killzombies:200;unlockworldevent:Questyno_JohnBaker:SFQuest_Questyno_JohnBaker2_Complete", -- ZOMBIE REQUEST
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
        oncompleted = "removeclickevent;EventoJohnBaker3;additem;Base.Book;1",
    }},
    text = "IGUI_SFQuest_Questyno_JohnBaker3_Text",
    texture = "media/textures/Item_JohnBaker.png",
    title = "IGUI_SFQuest_Questyno_JohnBaker3_Title",
    unlocks = "clickevent;10009x13072x1:EventoJohnBaker3;time:50:anim:loot;updateobjective:Questyno_JohnBaker2:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JohnBaker3_A",

    awardsrep = "LaResistenza;80", -- REP REWARD
    awardsitem = "SWeapons.ScrapMachete;1", -- ITEM REWARD
    awardsworld = "Questyno_JohnBaker;SFQuest_Questyno_JohnBaker3_Begin;Questyno_JohnBaker3", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_JohnBaker3_Lore" },
    needsitem = "Base.Book;1",
    onobtained = "unlockworldevent;Questyno_JohnBaker;SFQuest_Questyno_JohnBaker3_Complete",
    text = "IGUI_SFQuest_Questyno_JohnBaker3A_Text",
    texture = "media/textures/Item_JohnBaker.png",
    title = "IGUI_SFQuest_Questyno_JohnBaker3A_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JohnBaker4",

    awardsrep = "LaResistenza;200", -- REP REWARD
    awardsitem = "Base.Katana;1", -- ITEM REWARD
    awardsworld = "Questyno_JohnBaker;SFQuest_Questyno_JohnBaker5_Begin;Questyno_JohnBaker5", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_JohnBaker4_Lore" },
    text = "IGUI_SFQuest_Questyno_JohnBaker4_Text",
    texture = "media/textures/Item_JohnBaker.png",
    title = "IGUI_SFQuest_Questyno_JohnBaker4_Title",
    unlocks = "actionevent;killzombies:500;unlockworldevent:Questyno_JohnBaker:SFQuest_Questyno_JohnBaker4_Complete", -- ZOMBIE REQUEST
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
        oncompleted = "removeclickevent;EventoJohnBaker5;additem;Base.DriedChickpeas;1;additem;Base.CannedChili;3;additem;Base.CannedPineapple;3;additem;Base.CornedBeef;3",
    }},
    text = "IGUI_SFQuest_Questyno_JohnBaker5_Text",
    texture = "media/textures/Item_JohnBaker.png",
    title = "IGUI_SFQuest_Questyno_JohnBaker5_Title",
    unlocks = "clickevent;4418x6236x0:EventoJohnBaker5;time:50:anim:loot;updateobjective:Questyno_JohnBaker5:1:Completed",
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
        needsitem = "Base.DriedChickpeas;1",
        onobtained = "updateobjective;Questyno_JohnBaker5;1;Completed;removeitem;Base.DriedChickpeas;1",
    },{
        guid = "Questyno_JohnBaker5_C",
        text = "IGUI_SFQuest_Questyno_JohnBaker5_C",
        hidden = false,
        needsitem = "Base.CannedChili;3",
        onobtained = "updateobjective;Questyno_JohnBaker5;2;Completed;removeitem;Base.CannedChili;3",
    },{
        guid = "Questyno_JohnBaker5_D",
        text = "IGUI_SFQuest_Questyno_JohnBaker5_D",
        hidden = false,
        needsitem = "Base.CannedPineapple;3",
        onobtained = "updateobjective;Questyno_JohnBaker5;3;Completed;removeitem;Base.CannedPineapple;3",
    },{
        guid = "Questyno_JohnBaker5_E",
        text = "IGUI_SFQuest_Questyno_JohnBaker5_E",
        hidden = false,
        needsitem = "Base.CornedBeef;3",
        onobtained = "updateobjective;Questyno_JohnBaker5;4;Completed;removeitem;Base.CornedBeef;3",
    }},
    text = "IGUI_SFQuest_Questyno_JohnBaker5_A_Text",
    texture = "media/textures/Item_JohnBaker.png",
    title = "IGUI_SFQuest_Questyno_JohnBaker5_Title",
})

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JohnBaker5_B",

    awardsrep = "LaResistenza;50", -- REP REWARD
    awardsitem = "Base.DriedChickpeas;1", -- ITEM REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_JohnBaker5_Lore" },
    text = "IGUI_SFQuest_Questyno_JohnBaker5_B_Text",
    texture = "media/textures/Item_JohnBaker.png",
    title = "IGUI_SFQuest_Questyno_JohnBaker5_Title",
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

    awardsworld = "Questyno_EthanSteele;SFQuest_Questyno_EthanSteele1_Begin;Questyno_EthanSteele1", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_EthanSteele_Intro_Lore" },
    ondone = "randomcodedworldfrompool;Questyno_EthanSteele;Questyno;EthanSteele",
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
        unlocks = "actionevent;killzombies:50;updateobjective:Questyno_EthanSteele1:2:Completed", -- ZOMBIE REQUEST
        hidden = false,
    }},
    text = "IGUI_SFQuest_Questyno_EthanSteele1_Text",
    texture = "media/textures/Item_EthanSteele.png",
    title = "IGUI_SFQuest_Questyno_EthanSteele1_Title",
    unlocks = "clickevent;10102x11172x0:EventoEthanSteele1;time:50:anim:loot;updateobjective:Questyno_EthanSteele1:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_EthanSteele1_A",

    awardsrep = "LaResistenza;40", -- REP REWARD
    awardsitem = "Base.Money;25", -- ITEM REWARD
    awardsworld = "Questyno_EthanSteele;SFQuest_Questyno_EthanSteele2_Begin;Questyno_EthanSteele2", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_EthanSteele1_Lore" },
    needsitem = "Base.Army_Duffle_Bag;1",
    onobtained = "unlockworldevent;Questyno_EthanSteele;SFQuest_Questyno_EthanSteele1_Complete",
    text = "IGUI_SFQuest_Questyno_EthanSteele1_A_Text",
    texture = "media/textures/Item_EthanSteele.png",
    title = "IGUI_SFQuest_Questyno_EthanSteele1_Title",
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
        unlocks = "actionevent;killzombies:50;updateobjective:Questyno_EthanSteele2:2:Completed", -- ZOMBIE REQUEST
        hidden = false,
    }},
    text = "IGUI_SFQuest_Questyno_EthanSteele2_Text",
    texture = "media/textures/Item_EthanSteele.png",
    title = "IGUI_SFQuest_Questyno_EthanSteele2_Title",
    unlocks = "clickevent;10102x11172x0:EventoEthanSteele2;time:50:anim:loot;updateobjective:Questyno_EthanSteele2:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_EthanSteele2_A",

    awardsrep = "LaResistenza;60", -- REP REWARD
    awardsitem = "Base.Money;25", -- ITEM REWARD
    awardsworld = "Questyno_EthanSteele;SFQuest_Questyno_EthanSteele3_Begin;Questyno_EthanSteele3", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_EthanSteele2_Lore" },
    needsitem = "AuthenticZLite.Jacket_ChuckGreene;1",
    onobtained = "unlockworldevent;Questyno_EthanSteele;SFQuest_Questyno_EthanSteele2_Complete",
    text = "IGUI_SFQuest_Questyno_EthanSteele2_A_Text",
    texture = "media/textures/Item_EthanSteele.png",
    title = "IGUI_SFQuest_Questyno_EthanSteele2_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_EthanSteele3",

    awardsrep = "LaResistenza;120", -- REP REWARD
    awardsitem = "Base.EmptyCAN6;1", -- ITEM REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_EthanSteele3_Lore" },
    needsitem = "Base.Money;250",
    onobtained = "unlockworldevent;Questyno_EthanSteele;SFQuest_Questyno_EthanSteele3_Complete",
    text = "IGUI_SFQuest_Questyno_EthanSteele3_Text",
    texture = "media/textures/Item_EthanSteele.png",
    title = "IGUI_SFQuest_Questyno_EthanSteele3_Title",
    unlockedsound = "QuestUnlocked"
});

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

    awardsrep = "LaResistenza;1800", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_AlexMercer",
    lore = { "IGUI_SFQuest_Questyno_AlexMercer1_Lore" },
    text = "IGUI_SFQuest_Questyno_AlexMercer1_Text",
    texture = "media/textures/Item_AlexMercer.png",
    title = "IGUI_SFQuest_Questyno_AlexMercer1_Title",
    unlocks = "actionevent;killzombies:1500;unlockworldevent:Questyno_AlexMercer:SFQuest_Questyno_AlexMercer1_Complete", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_AlexMercer2",

    awardsrep = "LaResistenza;2000", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_AlexMercer",
    lore = { "IGUI_SFQuest_Questyno_AlexMercer2_Lore" },
    text = "IGUI_SFQuest_Questyno_AlexMercer2_Text",
    texture = "media/textures/Item_AlexMercer.png",
    title = "IGUI_SFQuest_Questyno_AlexMercer2_Title",
    unlocks = "actionevent;killzombies:2000;unlockworldevent:Questyno_AlexMercer:SFQuest_Questyno_AlexMercer2_Complete", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_AlexMercer3",

    awardsrep = "LaResistenza;3000", -- REP REWARD
    awardsitem = "SWeapons.ChainBat;1",
    awardstask = "Questyno_AlexMercer1",
    completesound = "levelup",
    dailycode = "Questyno_AlexMercer",
    lore = { "IGUI_SFQuest_Questyno_AlexMercer3_Lore" },
    text = "IGUI_SFQuest_Questyno_AlexMercer3_Text",
    texture = "media/textures/Item_AlexMercer.png",
    title = "IGUI_SFQuest_Questyno_AlexMercer3_Title",
    unlocks = "actionevent;killzombies:2500;unlockworldevent:Questyno_AlexMercer:SFQuest_Questyno_AlexMercer3_Complete", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});

--[[ *** Harper Wells Raven Creek (4866,11186,0) ***
            Elenco:
                intro. Incontra Harper Wells.
                1. Recupero FOGLIO SPECIALE CON LORE LR.Lore1 @ (3949,11303,0) e Uccidi 200 Zombie (2500rep + 120$ + LabItems.CmpSyringeWithCure)
                2. Recupero FOGLIO SPECIALE CON LR.Lore2 @ (4114,12446,0) e Uccidi 200 Zombie (2500rep + 120$ + LabItems.CmpSyringeWithCure)
                3. Recupero FOGLIO SPECIALE CON LR.Lore3 @ 3607,11924,2 e Uccidi 200 Zombie (3000rep + 120$ + LabItems.CmpSyringeWithCure)
                4. Recupero FOGLIO SPECIALE CON LR.Lore4 @ (3603,11382,3) e Uccidi 200 Zombie (3500rep + 120$ + LabItems.CmpSyringeWithCure)
]]

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_HarperWells_Intro",

    awardsrep = "HarperWells;100", -- REP REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_HarperWells_Intro_Lore" },
    text = "IGUI_SFQuest_Questyno_HarperWells_Intro_Text",
    texture = "media/textures/Item_HarperWells.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_HarperWells;SFQuest_Questyno_HarperWells_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_HarperWells_Intro_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_HarperWells1",
    awardstask = "Questyno_HarperWells1_A",
    dailycode = "Questyno_HarperWells",
    lore = { "IGUI_SFQuest_Questyno_HarperWells1_Lore" },
    objectives = {{
        guid = "Questyno_HarperWells1_A",
        text = "IGUI_SFQuest_Questyno_HarperWells1_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoHarperWells1;additem;LR.Lore1;1"
    },{
        guid = "Questyno_HarperWells1_B",
        text = "IGUI_SFQuest_Questyno_HarperWells1_B",
        hidden = false,
    }},
    text = "IGUI_SFQuest_Questyno_HarperWells1_Text",
    texture = "media/textures/Item_HarperWells.png",
    title = "IGUI_SFQuest_Questyno_HarperWells1_Title",
    unlocks = "actionevent;killzombies:200;updateobjective:Questyno_HarperWells1:2:Completed;clickevent;3949x11303x0:EventoHarperWells1;time:50:anim:loot;updateobjective:Questyno_HarperWells1:1:Completed", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_HarperWells1_A",
    awardsrep = "LaResistenza;2500", -- REP REWARD
    awardsitem = "Money;120;LabItems.CmpSyringeWithCure;1",
    completesound = "levelup",
    dailycode = "Questyno_HarperWells",
    lore = { "IGUI_SFQuest_Questyno_HarperWells1_A_Lore" },
    needsitem = "LR.Lore1;1",
    onobtained = "unlockworldevent;Questyno_HarperWells;SFQuest_Questyno_HarperWells1_Complete",
    text = "IGUI_SFQuest_Questyno_HarperWells1_A_Text",
    texture = "media/textures/Item_HarperWells.png",
    title = "IGUI_SFQuest_Questyno_HarperWells1_A_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_HarperWells2",
    awardstask = "Questyno_HarperWells2_A",
    dailycode = "Questyno_HarperWells",
    lore = { "IGUI_SFQuest_Questyno_HarperWells2_Lore" },
    objectives = {{
        guid = "Questyno_HarperWells2_A",
        text = "IGUI_SFQuest_Questyno_HarperWells2_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoHarperWells2;additem;LR.Lore2;1"
    },{
        guid = "Questyno_HarperWells2_B",
        text = "IGUI_SFQuest_Questyno_HarperWells2_B",
        hidden = false,
    }},
    text = "IGUI_SFQuest_Questyno_HarperWells2_Text",
    texture = "media/textures/Item_HarperWells.png",
    title = "IGUI_SFQuest_Questyno_HarperWells2_Title",
    unlocks = "actionevent;killzombies:200;updateobjective:Questyno_HarperWells2:2:Completed;clickevent;4114x12446x0:EventoHarperWells2;time:50:anim:loot;updateobjective:Questyno_HarperWells2:1:Completed", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_HarperWells2_A",
    awardsrep = "LaResistenza;2500", -- REP REWARD
    awardsitem = "Money;120;LabItems.CmpSyringeWithCure;1",
    completesound = "levelup",
    dailycode = "Questyno_HarperWells",
    lore = { "IGUI_SFQuest_Questyno_HarperWells2_A_Lore" },
    needsitem = "LR.Lore2;1",
    onobtained = "unlockworldevent;Questyno_HarperWells;SFQuest_Questyno_HarperWells2_Complete",
    text = "IGUI_SFQuest_Questyno_HarperWells2_A_Text",
    texture = "media/textures/Item_HarperWells.png",
    title = "IGUI_SFQuest_Questyno_HarperWells2_A_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_HarperWells3",
    awardstask = "Questyno_HarperWells3_A",
    dailycode = "Questyno_HarperWells",
    lore = { "IGUI_SFQuest_Questyno_HarperWells3_Lore" },
    objectives = {{
        guid = "Questyno_HarperWells3_A",
        text = "IGUI_SFQuest_Questyno_HarperWells3_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoHarperWells3;additem;LR.Lore3;1"
    },{
        guid = "Questyno_HarperWells3_B",
        text = "IGUI_SFQuest_Questyno_HarperWells3_B",
        hidden = false,
    }},
    text = "IGUI_SFQuest_Questyno_HarperWells3_Text",
    texture = "media/textures/Item_HarperWells.png",
    title = "IGUI_SFQuest_Questyno_HarperWells3_Title",
    unlocks = "actionevent;killzombies:200;updateobjective:Questyno_HarperWells3:2:Completed;clickevent;3607x11924x2:EventoHarperWells3;time:50:anim:loot;updateobjective:Questyno_HarperWells3:1:Completed", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_HarperWells3_A",
    awardsrep = "LaResistenza;3000", -- REP REWARD
    awardsitem = "Money;120;LabItems.CmpSyringeWithCure;1",
    completesound = "levelup",
    dailycode = "Questyno_HarperWells",
    lore = { "IGUI_SFQuest_Questyno_HarperWells3_A_Lore" },
    needsitem = "LR.Lore3;1",
    onobtained = "unlockworldevent;Questyno_HarperWells;SFQuest_Questyno_HarperWells3_Complete",
    text = "IGUI_SFQuest_Questyno_HarperWells3_A_Text",
    texture = "media/textures/Item_HarperWells.png",
    title = "IGUI_SFQuest_Questyno_HarperWells3_A_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_HarperWells4",
    awardstask = "Questyno_HarperWells4_A",
    dailycode = "Questyno_HarperWells",
    lore = { "IGUI_SFQuest_Questyno_HarperWells4_Lore" },
    objectives = {{
        guid = "Questyno_HarperWells4_A",
        text = "IGUI_SFQuest_Questyno_HarperWells4_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoHarperWells4;additem;LR.Lore4;1"
    },{
        guid = "Questyno_HarperWells4_B",
        text = "IGUI_SFQuest_Questyno_HarperWells4_B",
        hidden = false,
    }},
    text = "IGUI_SFQuest_Questyno_HarperWells4_Text",
    texture = "media/textures/Item_HarperWells.png",
    title = "IGUI_SFQuest_Questyno_HarperWells4_Title",
    unlocks = "actionevent;killzombies:200;updateobjective:Questyno_HarperWells4:2:Completed;clickevent;3603x11382x3:EventoHarperWells4;time:50:anim:loot;updateobjective:Questyno_HarperWells4:1:Completed", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_HarperWells4_A",
    awardsrep = "LaResistenza;3500", -- REP REWARD
    awardsitem = "Money;120;LabItems.CmpSyringeWithCure;1",
    completesound = "levelup",
    dailycode = "Questyno_HarperWells",
    lore = { "IGUI_SFQuest_Questyno_HarperWells4_A_Lore" },
    needsitem = "LR.Lore4;1",
    onobtained = "unlockworldevent;Questyno_HarperWells;SFQuest_Questyno_HarperWells4_Complete",
    text = "IGUI_SFQuest_Questyno_HarperWells4_A_Text",
    texture = "media/textures/Item_HarperWells.png",
    title = "IGUI_SFQuest_Questyno_HarperWells4_A_Title",
});

--[[
            *** Grace Chambers da Louisville (13555,4142,0)  ***
            Elenco:
                intro. Incontra Grace Chambers.
                1. Recupero LabItems.CmpSyringeWithAdvancedVaccine;4 @ (12930,2008,0) (2400rep + LabItems.CmpSyringeWithAdvancedVaccine)
                2. Recupero LabItems.CmpSyringeWithAdvancedVaccine;4 @ (13839,10064,0) e Recupero FOGLIO SPECIALE CON LR.Lore5 @ 13910,9939,0 (2500rep + LabItems.CmpSyringeWithAdvancedVaccine;2)
                3. LabItems.CmpSyringeWithAdvancedVaccine @  12422,1755,0 e Uccidi 100 Zombie (3000rep + LabItems.CmpSyringeWithAdvancedVaccine)
                4. Recupero FOGLIO SPECIALE CON LR.Lore6 @ 13602,1563,0 e LabItems.CmpFlaskWithLeukocytes @ 13402,1893,0 (800rep + 1000$)
]]

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_GraceChambers_Intro",

    awardsrep = "GraceChambers;100", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_GraceChambers",
    lore = { "IGUI_SFQuest_Questyno_GraceChambers_Intro_Lore" },
    text = "IGUI_SFQuest_Questyno_GraceChambers_Intro_Text",
    texture = "media/textures/Item_GraceChambers.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_GraceChambers;SFQuest_Questyno_GraceChambers_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_GraceChambers_Intro_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_GraceChambers1",
    awardstask = "Questyno_GraceChambers1_A",
    dailycode = "Questyno_GraceChambers",
    lore = { "IGUI_SFQuest_Questyno_GraceChambers1_Lore" },
    objectives = {{
        guid = "Questyno_GraceChambers1_A",
        text = "IGUI_SFQuest_Questyno_GraceChambers1_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoGraceChambers1;additem;LabItems.CmpSyringeWithAdvancedVaccine;4"
    }},
    text = "IGUI_SFQuest_Questyno_GraceChambers1_Text",
    texture = "media/textures/Item_GraceChambers.png",
    title = "IGUI_SFQuest_Questyno_GraceChambers1_Title",
    unlocks = "clickevent;12930x2008x1:EventoGraceChambers1;time:50:anim:loot;updateobjective:Questyno_GraceChambers1:1:Completed", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_GraceChambers1_A",
    awardsrep = "LaResistenza;2400", -- REP REWARD
    awardsitem = "LabItems.CmpSyringeWithAdvancedVaccine;1",
    completesound = "levelup",
    dailycode = "Questyno_GraceChambers",
    lore = { "IGUI_SFQuest_Questyno_GraceChambers1_Lore" },
    needsitem = "LabItems.CmpSyringeWithAdvancedVaccine;4",
    onobtained = "unlockworldevent;Questyno_GraceChambers;SFQuest_Questyno_GraceChambers1_Complete",
    text = "IGUI_SFQuest_Questyno_GraceChambers1_A_Text",
    texture = "media/textures/Item_GraceChambers.png",
    title = "IGUI_SFQuest_Questyno_GraceChambers1_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_GraceChambers2",
    awardstask = "Questyno_GraceChambers2_A",
    dailycode = "Questyno_GraceChambers",
    lore = { "IGUI_SFQuest_Questyno_GraceChambers2_Lore" },
    objectives = {{
        guid = "Questyno_GraceChambers2_A",
        text = "IGUI_SFQuest_Questyno_GraceChambers2_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoGraceChambers2;additem;LabItems.CmpSyringeWithAdvancedVaccine;4"
    },{
        guid = "Questyno_GraceChambers2_B",
        text = "IGUI_SFQuest_Questyno_GraceChambers2_B",
        hidden = false,
        oncompleted = "removeclickevent;EventoGraceChambers2A;additem;LR.Lore5;1"
    }},
    text = "IGUI_SFQuest_Questyno_GraceChambers2_Text",
    texture = "media/textures/Item_GraceChambers.png",
    title = "IGUI_SFQuest_Questyno_GraceChambers2_Title",
    unlocks = "clickevent;13839x10064x0:EventoGraceChambers2;time:50:anim:loot;updateobjective:Questyno_GraceChambers2:1:Completed;clickevent;13910x9939x1:EventoGraceChambers2A;time:50:anim:loot;updateobjective:Questyno_GraceChambers2:2:Completed", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_GraceChambers2_A",
    awardstask = "Questyno_GraceChambers2_B",
    dailycode = "Questyno_GraceChambers",
    lore = { "IGUI_SFQuest_Questyno_GraceChambers2_Lore" },
    objectives = {{
        guid = "Questyno_GraceChambers2_C",
        text = "IGUI_SFQuest_Questyno_GraceChambers2_C",
        hidden = false,
        needsitem = "LabItems.CmpSyringeWithAdvancedVaccine;4",
        onobtained = "updateobjective;Questyno_GraceChambers2_A;1;Completed;removeitem;LabItems.CmpSyringeWithAdvancedVaccine;4"
    },{
        guid = "Questyno_GraceChambers2_D",
        text = "IGUI_SFQuest_Questyno_GraceChambers2_D",
        hidden = false,
        needsitem = "LR.Lore5;1",
        onobtained = "updateobjective;Questyno_GraceChambers2_A;2;Completed;removeitem;LR.Lore5;1"
    }},
    text = "IGUI_SFQuest_Questyno_GraceChambers2_Text",
    texture = "media/textures/Item_GraceChambers.png",
    title = "IGUI_SFQuest_Questyno_GraceChambers2_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_GraceChambers2_B",
    awardsrep = "LaResistenza;2500", -- REP REWARD
    awardsitem = "LabItems.CmpSyringeWithAdvancedVaccine;2",
    completesound = "levelup",
    dailycode = "Questyno_GraceChambers",
    lore = { "IGUI_SFQuest_Questyno_GraceChambers2_Lore" },
    text = "IGUI_SFQuest_Questyno_GraceChambers2_A_Text",
    texture = "media/textures/Item_GraceChambers.png",
    title = "IGUI_SFQuest_Questyno_GraceChambers2_Title",
    unlocks = "unlockworldevent;Questyno_GraceChambers;SFQuest_Questyno_GraceChambers2_Complete",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_GraceChambers3",
    awardstask = "Questyno_GraceChambers3_A",
    dailycode = "Questyno_GraceChambers",
    lore = { "IGUI_SFQuest_Questyno_GraceChambers3_Lore" },
    objectives = {{
        guid = "Questyno_GraceChambers3_A",
        text = "IGUI_SFQuest_Questyno_GraceChambers3_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoGraceChambers3;additem;LabItems.CmpSyringeWithAdvancedVaccine;1"
    },{
        guid = "Questyno_GraceChambers3_B",
        text = "IGUI_SFQuest_Questyno_GraceChambers3_B",
        hidden = false,
    }},
    text = "IGUI_SFQuest_Questyno_GraceChambers3_Text",
    texture = "media/textures/Item_GraceChambers.png",
    title = "IGUI_SFQuest_Questyno_GraceChambers3_Title",
    unlocks = "actionevent;killzombies:100;updateobjective:Questyno_GraceChambers3:2:Completed;clickevent;12422x1755x0:EventoGraceChambers3;time:50:anim:loot;updateobjective:Questyno_GraceChambers3:1:Completed", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_GraceChambers3_A",
    awardsrep = "LaResistenza;3000", -- REP REWARD
    awardsitem = "LabItems.CmpSyringeWithAdvancedVaccine;1",
    completesound = "levelup",
    dailycode = "Questyno_GraceChambers",
    lore = { "IGUI_SFQuest_Questyno_GraceChambers3_Lore" },
    needsitem = "LabItems.CmpSyringeWithAdvancedVaccine;1",
    onobtained = "unlockworldevent;Questyno_GraceChambers;SFQuest_Questyno_GraceChambers3_Complete",
    text = "IGUI_SFQuest_Questyno_GraceChambers3_A_Text",
    texture = "media/textures/Item_GraceChambers.png",
    title = "IGUI_SFQuest_Questyno_GraceChambers3_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_GraceChambers4",
    awardstask = "Questyno_GraceChambers4_A",
    dailycode = "Questyno_GraceChambers",
    lore = { "IGUI_SFQuest_Questyno_GraceChambers4_Lore" },
    objectives = {{
        guid = "Questyno_GraceChambers4_A",
        text = "IGUI_SFQuest_Questyno_GraceChambers4_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoGraceChambers4;additem;LR.Lore6;1;clickevent;13402x1893x2:EventoGraceChambers4A;time:50:anim:loot;updateobjective:Questyno_GraceChambers4:2:Completed;lore;Questyno_GraceChambers4;IGUI_SFQuest_Questyno_GraceChambers4_A_Lore;revealobjective;Questyno_GraceChambers4_A;2"
    },{
        guid = "Questyno_GraceChambers4_B",
        text = "IGUI_SFQuest_Questyno_GraceChambers4_B",
        hidden = true,
        oncompleted = "removeclickevent;EventoGraceChambers4A;additem;LabItems.CmpFlaskWithLeukocytes;1"
    }},
    text = "IGUI_SFQuest_Questyno_GraceChambers4_Text",
    texture = "media/textures/Item_GraceChambers.png",
    title = "IGUI_SFQuest_Questyno_GraceChambers4_Title",
    unlocks = "clickevent;13602x1563x0:EventoGraceChambers4;time:50:anim:loot;updateobjective:Questyno_GraceChambers4:1:Completed", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_GraceChambers4_A",
    awardstask = "Questyno_GraceChambers4_B",
    dailycode = "Questyno_GraceChambers",
    lore = { "IGUI_SFQuest_Questyno_GraceChambers4_B_Lore" },
    objectives = {{
        guid = "Questyno_GraceChambers4_C",
        text = "IGUI_SFQuest_Questyno_GraceChambers4_C",
        hidden = false,
        needsitem = "LR.Lore6;1",
        onobtained = "updateobjective;Questyno_GraceChambers4_A;1;Completed;removeitem;LR.Lore6;1"
    },{
        guid = "Questyno_GraceChambers4_D",
        text = "IGUI_SFQuest_Questyno_GraceChambers4_D",
        hidden = false,
        needsitem = "LabItems.CmpFlaskWithLeukocytes;1",
        onobtained = "updateobjective;Questyno_GraceChambers4_A;2;Completed;removeitem;LabItems.CmpFlaskWithLeukocytes;1"
    }},
    text = "IGUI_SFQuest_Questyno_GraceChambers4_Text",
    texture = "media/textures/Item_GraceChambers.png",
    title = "IGUI_SFQuest_Questyno_GraceChambers4_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_GraceChambers4_B",
    awardsrep = "LaResistenza;800", -- REP REWARD
    awardsitem = "Money;1000",
    completesound = "levelup",
    dailycode = "Questyno_GraceChambers",
    lore = { "IGUI_SFQuest_Questyno_GraceChambers4_B_Lore" },
    text = "IGUI_SFQuest_Questyno_GraceChambers4_B_Text",
    texture = "media/textures/Item_GraceChambers.png",
    title = "IGUI_SFQuest_Questyno_GraceChambers4_Title",
    unlocks = "unlockworldevent;Questyno_GraceChambers;SFQuest_Questyno_GraceChambers4_Complete",
});

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
    unlocks = "actionevent;killzombies:1500;unlockworldevent:Questyno_AlexMercer:SFQuest_Questyno_AlexMercer1_Complete", -- ZOMBIE REQUEST
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
    unlocks = "actionevent;killzombies:2000;unlockworldevent:Questyno_AlexMercer:SFQuest_Questyno_AlexMercer2_Complete", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_AlexMercer3",

    awardsrep = "LaResistenza;3000", -- REP REWARD
    awrdsitem = "SWeapons.ChainBat;1",
    awardstask = "Questyno_AlexMercer1",
    completesound = "levelup",
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

    awardstask = "Questyno_HarperWells1",
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
    awardstask = "Questyno_HarperWells2",
    completesound = "levelup",
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
    awardstask = "Questyno_HarperWells3",
    completesound = "levelup",
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
    awardstask = "Questyno_HarperWells4",
    completesound = "levelup",
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
    awardstask = "Questyno_HarperWells1",
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_HarperWells4_A_Lore" },
    needsitem = "LR.Lore4;1",
    onobtained = "unlockworldevent;Questyno_HarperWells;SFQuest_Questyno_HarperWells4_Complete",
    text = "IGUI_SFQuest_Questyno_HarperWells4_A_Text",
    texture = "media/textures/Item_HarperWells.png",
    title = "IGUI_SFQuest_Questyno_HarperWells4_A_Title",
});
    
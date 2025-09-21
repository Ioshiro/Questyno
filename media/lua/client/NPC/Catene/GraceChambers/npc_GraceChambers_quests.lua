require 'SFQuest_Database'

-- Quest per GraceChambers
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
        oncompleted = "removeclickevent;EventoGraceChambers4;additem;LR.Lore6;1;clickevent;13402x1893x2:EventoGraceChambers4A;time:50:anim:loot;updateobjective:Questyno_GraceChambers4:2:Completed;lore;Questyno_GraceChambers4;IGUI_SFQuest_Questyno_GraceChambers4_A_Lore;revealobjective;Questyno_GraceChambers4;2"
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



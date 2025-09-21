require 'SFQuest_Database'

-- Quest per AndrewTurner
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
    unlocks = "clickevent;5774x4029x0:EventoAndrewTurner1;time:50:anim:loot;updateobjective:Questyno_AndrewTurner1:1:Completed",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_AndrewTurner1_A",

    awardsrep = "LaResistenza;2000;AndrewTurner;16", -- REP REWARD
    awardsitem = "Base.Money;100", -- ITEM REWARD
    awardsworld = "Questyno_AndrewTurner;SFQuest_Questyno_AndrewTurner2_Begin;Questyno_AndrewTurner2", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_AndrewTurner1_Lore" },
    needsitem = "PredicateFullDrainable#Base.PropaneTank;2",
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

    awardsrep = "LaResistenza;2500;AndrewTurner;16", -- REP REWARD
    awardsitem = "Base.Money;100", -- ITEM REWARD
    awardsworld = "Questyno_AndrewTurner;SFQuest_Questyno_AndrewTurner3_Begin;Questyno_AndrewTurner3", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_AndrewTurner2_Lore" },
    needsitem = "PredicateFullDrainable#Base.PropaneTank;2",
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

    awardsrep = "LaResistenza;3000;AndrewTurner;16", -- REP REWARD
    awardsitem = "Base.Money;100", -- ITEM REWARD
    awardsworld = "Questyno_AndrewTurner;SFQuest_Questyno_AndrewTurner4_Begin;Questyno_AndrewTurner4", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_AndrewTurner3_Lore" },
    needsitem = "PredicateFullDrainable#Base.PropaneTank;2",
    onobtained = "unlockworldevent;Questyno_AndrewTurner;SFQuest_Questyno_AndrewTurner3_Complete",
    text = "IGUI_SFQuest_Questyno_AndrewTurner3_A_Text",
    texture = "media/textures/Item_AndrewTurner.png",
    title = "IGUI_SFQuest_Questyno_AndrewTurner3_Title",
    unique = true,
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_AndrewTurner4",

    awardstask = "Questyno_AndrewTurner4_A", -- TASK REWARD
    lore = { "IGUI_SFQuest_Questyno_AndrewTurner4_Lore" },
    objectives = {{
        guid = "Questyno_AndrewTurner4_A",
        text = "IGUI_SFQuest_Questyno_AndrewTurner4_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoAndrewTurner4;additem;Base.PropaneTank;4",
    }},
    text = "IGUI_SFQuest_Questyno_AndrewTurner4_Text",
    texture = "media/textures/Item_AndrewTurner.png",
    title = "IGUI_SFQuest_Questyno_AndrewTurner4_Title",
    unique = true,
    unlocks = "clickevent;6381x10308x0:EventoAndrewTurner4;time:50:anim:loot;updateobjective:Questyno_AndrewTurner4:1:Completed",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_AndrewTurner4_A",

    awardsrep = "LaResistenza;3500;AndrewTurner;16", -- REP REWARD
    awardsitem = "Base.Money;100", -- ITEM REWARD
    awardsworld = "Questyno_AndrewTurner;SFQuest_Questyno_AndrewTurner5_Begin;Questyno_AndrewTurner5", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_AndrewTurner4_Lore" },
    needsitem = "PredicateFullDrainable#Base.PropaneTank;4",
    onobtained = "unlockworldevent;Questyno_AndrewTurner;SFQuest_Questyno_AndrewTurner4_Complete",
    text = "IGUI_SFQuest_Questyno_AndrewTurner4_A_Text",
    texture = "media/textures/Item_AndrewTurner.png",
    title = "IGUI_SFQuest_Questyno_AndrewTurner4_Title",
    unique = true,
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_AndrewTurner5",

    awardstask = "Questyno_AndrewTurner5_A", -- TASK REWARD
    lore = { "IGUI_SFQuest_Questyno_AndrewTurner5_Lore" },
    objectives = {{
        guid = "Questyno_AndrewTurner5_A",
        text = "IGUI_SFQuest_Questyno_AndrewTurner5_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoAndrewTurner5;additem;Base.PropaneTank;4",
    }},
    text = "IGUI_SFQuest_Questyno_AndrewTurner5_Text",
    texture = "media/textures/Item_AndrewTurner.png",
    title = "IGUI_SFQuest_Questyno_AndrewTurner5_Title",
    unique = true,
    unlocks = "clickevent;12808x11731x0:EventoAndrewTurner5;time:50:anim:loot;updateobjective:Questyno_AndrewTurner5:1:Completed",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_AndrewTurner5_A",

    awardsrep = "LaResistenza;5000;AndrewTurner;16", -- REP REWARD
    awardsitem = "Base.Money;100", -- ITEM REWARD
    awardsworld = "Questyno_AndrewTurner;SFQuest_Questyno_AndrewTurner6_Begin;Questyno_AndrewTurner6", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_AndrewTurner5_Lore" },
    needsitem = "PredicateFullDrainable#Base.PropaneTank;4",
    onobtained = "unlockworldevent;Questyno_AndrewTurner;SFQuest_Questyno_AndrewTurner5_Complete",
    text = "IGUI_SFQuest_Questyno_AndrewTurner5_A_Text",
    texture = "media/textures/Item_AndrewTurner.png",
    title = "IGUI_SFQuest_Questyno_AndrewTurner5_Title",
    unique = true,
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_AndrewTurner6",

    awardstask = "Questyno_AndrewTurner6_A", -- TASK REWARD
    lore = { "IGUI_SFQuest_Questyno_AndrewTurner6_Lore" },
    objectives = {{
        guid = "Questyno_AndrewTurner6_A",
        text = "IGUI_SFQuest_Questyno_AndrewTurner6_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoAndrewTurner6;additem;Base.PropaneTank;4",
    }},
    text = "IGUI_SFQuest_Questyno_AndrewTurner6_Text",
    texture = "media/textures/Item_AndrewTurner.png",
    title = "IGUI_SFQuest_Questyno_AndrewTurner6_Title",
    unique = true,
    unlocks = "clickevent;7352x7126x0:EventoAndrewTurner6;time:50:anim:loot;updateobjective:Questyno_AndrewTurner6:1:Completed",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_AndrewTurner6_A",

    awardsrep = "LaResistenza;5000;AndrewTurner;114", -- REP REWARD
    awardsitem = "TW.MetalWorkbench;1", -- ITEM REWARD
    --awardsworld = "Questyno_AndrewTurner;SFQuest_Questyno_AndrewTurner6_Begin;Questyno_AndrewTurner6", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_AndrewTurner6_Lore" },
    needsitem = "PredicateFullDrainable#Base.PropaneTank;4",
    onobtained = "unlockworldevent;Questyno_AndrewTurner;SFQuest_Questyno_AndrewTurner6_Complete",
    text = "IGUI_SFQuest_Questyno_AndrewTurner6_A_Text",
    texture = "media/textures/Item_AndrewTurner.png",
    title = "IGUI_SFQuest_Questyno_AndrewTurner6_Title",
    unique = true,
});



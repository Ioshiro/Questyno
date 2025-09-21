require 'SFQuest_Database'

-- Quest per BrianWhite
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
    awardsitem = "Table:Macchinyni", -- ITEM REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_BrianWhite6_Lore" },
    needsitem = "Base.NormalCarMuffler2;1",
    onobtained = "unlockworldevent;Questyno_BrianWhite;SFQuest_Questyno_BrianWhite6_Complete",
    text = "IGUI_SFQuest_Questyno_BrianWhite6_A_Text",
    texture = "media/textures/Item_BrianWhite.png",
    title = "IGUI_SFQuest_Questyno_BrianWhite6_Title",
    unique = true,
    --unlocks = "addserverpoints;850"
});



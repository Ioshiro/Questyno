require 'SFQuest_Database'

-- Quest per RobertWilson
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
    unlocks = "actionevent;killzombies:100:tierlevel:3;unlockworldevent:Questyno_RobertWilson:SFQuest_Questyno_RobertWilson1_Complete:placeholder:updatequeststatus:Questyno_RobertWilson1:Obtained", -- ZOMBIE REQUEST
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
    unlocks = "actionevent;killzombies:50:tierlevel:4;updateobjective:Questyno_RobertWilson2:2:Completed;clickevent;6683x10669x0:EventoRobertWilson2;time:50:anim:loot;updateobjective:Questyno_RobertWilson2:1:Completed", -- ZOMBIE REQUEST
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
    needsitem = "Base.PetrolCan;1",
    onobtained = "unlockworldevent;Questyno_RobertWilson;SFQuest_Questyno_RobertWilson5_Complete",
    text = "IGUI_SFQuest_Questyno_RobertWilson5_A_Text",
    texture = "media/textures/Item_RobertWilson.png",
    title = "IGUI_SFQuest_Questyno_RobertWilson5_Title",
    unique = true,
});



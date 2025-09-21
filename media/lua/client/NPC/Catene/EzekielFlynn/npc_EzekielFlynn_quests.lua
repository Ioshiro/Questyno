require 'SFQuest_Database'

-- Quest per EzekielFlynn
table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_EzekielFlynn_Intro",

    awardsrep = "EzekielFlynn;1", -- REP REWARD
    awardsworld = "Questyno_EzekielFlynn;SFQuest_Questyno_EzekielFlynn1_Begin;Questyno_EzekielFlynn1", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_EzekielFlynn_Intro_Lore" },
    text = "IGUI_SFQuest_Questyno_EzekielFlynn_Intro_Text",
    texture = "media/textures/Item_EzekielFlynn.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_EzekielFlynn;SFQuest_Questyno_EzekielFlynn_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_EzekielFlynn_Intro_Title",
});


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_EzekielFlynn1",

    awardstask = "Questyno_EzekielFlynn1_A", -- TASK REWARD
    objectives = {{
        guid = "Questyno_EzekielFlynn1_A",
        text = "IGUI_SFQuest_Questyno_EzekielFlynn1_A",
        needsitem = "TreeBranch;1",
        onobtained = "updateobjective;Questyno_EzekielFlynn1;1;Completed;removeitem;TreeBranch;1",
        hidden = false,
    }, {
        guid = "Questyno_EzekielFlynn1_B",
        text = "IGUI_SFQuest_Questyno_EzekielFlynn1_B",
        needsitem = "Stone;1",
        onobtained = "updateobjective;Questyno_EzekielFlynn1;2;Completed;removeitem;Stone;1",
        hidden = false,
    },{
        guid = "Questyno_EzekielFlynn1_C",
        text = "IGUI_SFQuest_Questyno_EzekielFlynn1_C",
        needsitem = "RippedSheets;1",
        onobtained = "updateobjective;Questyno_EzekielFlynn1;3;Completed;removeitem;RippedSheets;1",
        hidden = false,
    }},
    lore = { "IGUI_SFQuest_Questyno_EzekielFlynn1_Lore" },
    text = "IGUI_SFQuest_Questyno_EzekielFlynn1_Text",
    texture = "media/textures/Item_EzekielFlynn.png",
    title = "IGUI_SFQuest_Questyno_EzekielFlynn1_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_EzekielFlynn1_A",

    awardsrep = "LaResistenza;5;EzekielFlynn;25", -- REP REWARD
    awardsworld = "Questyno_EzekielFlynn;SFQuest_Questyno_EzekielFlynn2_Begin;Questyno_EzekielFlynn2", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_EzekielFlynn1_Lore" },
    text = "IGUI_SFQuest_Questyno_EzekielFlynn1_A_Text",
    texture = "media/textures/Item_EzekielFlynn.png",
    title = "IGUI_SFQuest_Questyno_EzekielFlynn1_Title",
    unlocks = "unlockworldevent;Questyno_EzekielFlynn;SFQuest_Questyno_EzekielFlynn1_Complete", -- ZOMBIE REQUEST
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_EzekielFlynn2",

    awardstask = "Questyno_EzekielFlynn2_A", -- TASK REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_EzekielFlynn2_Lore" },
    objectives = {{
        guid = "Questyno_EzekielFlynn2_A",
        text = "IGUI_SFQuest_Questyno_EzekielFlynn2_A",
        needsitem = "FlintKnife;1",
        onobtained = "updateobjective;Questyno_EzekielFlynn2;1;Completed;removeitem;FlintKnife;1",
        hidden = false,
    },{
        guid = "Questyno_EzekielFlynn2_B",
        text = "IGUI_SFQuest_Questyno_EzekielFlynn2_B",
        needsitem = "AxeStone;1",
        onobtained = "updateobjective;Questyno_EzekielFlynn2;2;Completed;removeitem;AxeStone;1",
        hidden = false,
    },{
        guid = "Questyno_EzekielFlynn2_C",
        text = "IGUI_SFQuest_Questyno_EzekielFlynn2_C",
        needsitem = "SpearCrafted;1",
        onobtained = "updateobjective;Questyno_EzekielFlynn2;3;Completed;removeitem;SpearCrafted;1",
        hidden = false,
    }},
    text = "IGUI_SFQuest_Questyno_EzekielFlynn2_Text",
    texture = "media/textures/Item_EzekielFlynn.png",
    title = "IGUI_SFQuest_Questyno_EzekielFlynn2_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_EzekielFlynn2_A",

    awardsrep = "LaResistenza;10;EzekielFlynn;25", -- REP REWARD
    awardsworld = "Questyno_EzekielFlynn;SFQuest_Questyno_EzekielFlynn3_Begin;Questyno_EzekielFlynn3", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_EzekielFlynn2_Lore" },
    text = "IGUI_SFQuest_Questyno_EzekielFlynn2_A_Text",
    texture = "media/textures/Item_EzekielFlynn.png",
    title = "IGUI_SFQuest_Questyno_EzekielFlynn2_Title",
    unlocks = "unlockworldevent;Questyno_EzekielFlynn;SFQuest_Questyno_EzekielFlynn2_Complete", -- ZOMBIE REQUEST
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_EzekielFlynn3",

    awardsrep = "LaResistenza;15;EzekielFlynn;25", -- REP REWARD
    awardsworld = "Questyno_EzekielFlynn;SFQuest_Questyno_EzekielFlynn5_Begin;Questyno_EzekielFlynn5", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_EzekielFlynn3_Lore" },
    text = "IGUI_SFQuest_Questyno_EzekielFlynn3_Text",
    texture = "media/textures/Item_EzekielFlynn.png",
    title = "IGUI_SFQuest_Questyno_EzekielFlynn3_Title",
    unlocks = "actionevent;killzombies:50;unlockworldevent:Questyno_EzekielFlynn:SFQuest_Questyno_EzekielFlynn3_Complete:placeholder:updatequeststatus:Questyno_EzekielFlynn3:Obtained", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_EzekielFlynn4",

    awardsrep = "LaResistenza;20;EzekielFlynn;20", -- REP REWARD
    awardsworld = "Questyno_EzekielFlynn;SFQuest_Questyno_EzekielFlynn5_Begin;Questyno_EzekielFlynn5", -- DIALOGUE REWARD
    needsitem = "Tag#Digital;20", -- ITEM REQUEST
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_EzekielFlynn4_Lore" },
    text = "IGUI_SFQuest_Questyno_EzekielFlynn4_Text",
    texture = "media/textures/Item_EzekielFlynn.png",
    onobtained = "unlockworldevent;Questyno_EzekielFlynn;SFQuest_Questyno_EzekielFlynn4_Complete",
    title = "IGUI_SFQuest_Questyno_EzekielFlynn4_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_EzekielFlynn5",

    awardstask = "Questyno_EzekielFlynn5_A", -- TASK REWARD
    lore = { "IGUI_SFQuest_Questyno_EzekielFlynn5_Lore" },
    objectives = {{
        guid = "Questyno_EzekielFlynn5_A",
        text = "IGUI_SFQuest_Questyno_EzekielFlynn5_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoEzekielFlynn5;additem;LogStacks4;1",
    }},
    text = "IGUI_SFQuest_Questyno_EzekielFlynn5_Text",
    texture = "media/textures/Item_EzekielFlynn.png",
    title = "IGUI_SFQuest_Questyno_EzekielFlynn5_Title",
    unlocks = "clickevent;9264x8495x0:EventoEzekielFlynn5;anim:loot:time:50;updateobjective:Questyno_EzekielFlynn5:1:Completed",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_EzekielFlynn5_A",

    awardsrep = "LaResistenza;45;EzekielFlynn;124", -- REP REWARD
    awardsitem = "Crowbar;1;BeefJerky;1;Base.li_townshipmap;1", -- ITEM REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_EzekielFlynn5_Lore" },
    needsitem = "LogStacks4;1", -- ITEM REQUEST
    onobtained = "unlockworldevent;Questyno_EzekielFlynn;SFQuest_Questyno_EzekielFlynn5_Complete",
    text = "IGUI_SFQuest_Questyno_EzekielFlynn5_A_Text",
    texture = "media/textures/Item_EzekielFlynn.png",
    title = "IGUI_SFQuest_Questyno_EzekielFlynn5_Title",
});



require 'SFQuest_Database'

-- Quest per JamesMorris
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



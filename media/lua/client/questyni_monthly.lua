require 'SFQuest_Database'

    --[[
            *** TaylorBlaze ***
            Elenco:
                intro. Parla con Taylor Blaze per sbloccare le sue quest mensili.
				1. Recuperare Base.Bullets9mmBox;10 (620rep + SWeapons.SalvagedPipeWrench)
				2. Recuperare Base.Bullets45Box;10 (550rep + SWeapons.SalvagedPipeWrench)
				3. Recuperare Base.223Box;15 (900rep)
				4. Recuperare Base.308Box;12 (780rep)
				5. Recuperare Base.Bullets44Box;12 (1000rep)
				6. Recuperare Base.ShotgunShellsBox;10 (1200rep)
				7. Recuperare Base.22Box;5 (1200rep + Base.PipeBomb)
				8. Uccidere 250 Zombie, Recuperare Base.x8Scope,Base.CleaningKit,Base.762Clip,Base.556Clip,Base.Laser,Base.FiberglassStock a  (6144,7069,0) (2200rep + 150$ + Base.PipeBomb)
]]

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TaylorBlaze_Intro",

    awardstask = "Questyno_TaylorBlaze1",
    completesound = "levelup",
    dailycode = "Questyno_TaylorBlaze",
    lore = { "IGUI_SFQuest_Questyno_TaylorBlaze_Intro_Lore" },
    text = "IGUI_SFQuest_Questyno_TaylorBlaze_Intro_Text",
    texture = "media/textures/Item_TaylorBlaze.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_TaylorBlaze;SFQuest_Questyno_TaylorBlaze_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_TaylorBlaze_Intro_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TaylorBlaze1",

    awardsrep = "LaResistenza;620",
    awardsitem = "SWeapons.SalvagedPipeWrench;1",
    awardstask = "Questyno_TaylorBlaze2",
    completesound = "levelup",
    dailycode = "Questyno_TaylorBlaze",
    lore = { "IGUI_SFQuest_Questyno_TaylorBlaze1_Lore" },
    needsitem = "Bullets9mmBox;10",
    onobtained = "unlockworldevent;Questyno_TaylorBlaze;SFQuest_Questyno_TaylorBlaze1_Complete",
    text = "IGUI_SFQuest_Questyno_TaylorBlaze1_Text",
    texture = "media/textures/Item_TaylorBlaze.png",
    title = "IGUI_SFQuest_Questyno_TaylorBlaze1_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TaylorBlaze2",

    awardsrep = "LaResistenza;550",
    awardsitem = "SWeapons.SalvagedBlade;1",
    awardstask = "Questyno_TaylorBlaze3",
    completesound = "levelup",
    dailycode = "Questyno_TaylorBlaze",
    lore = { "IGUI_SFQuest_Questyno_TaylorBlaze2_Lore" },
    needsitem = "Bullets45Box;10",
    onobtained = "unlockworldevent;Questyno_TaylorBlaze;SFQuest_Questyno_TaylorBlaze2_Complete",
    text = "IGUI_SFQuest_Questyno_TaylorBlaze2_Text",
    texture = "media/textures/Item_TaylorBlaze.png",
    title = "IGUI_SFQuest_Questyno_TaylorBlaze2_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TaylorBlaze3",

    awardsrep = "LaResistenza;900",
    awardstask = "Questyno_TaylorBlaze4",
    completesound = "levelup",
    dailycode = "Questyno_TaylorBlaze",
    lore = { "IGUI_SFQuest_Questyno_TaylorBlaze3_Lore" },
    needsitem = "223Box;15",
    onobtained = "unlockworldevent;Questyno_TaylorBlaze;SFQuest_Questyno_TaylorBlaze3_Complete",
    text = "IGUI_SFQuest_Questyno_TaylorBlaze3_Text",
    texture = "media/textures/Item_TaylorBlaze.png",
    title = "IGUI_SFQuest_Questyno_TaylorBlaze3_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TaylorBlaze4",

    awardsrep = "LaResistenza;780",
    awardstask = "Questyno_TaylorBlaze5",
    completesound = "levelup",
    dailycode = "Questyno_TaylorBlaze",
    lore = { "IGUI_SFQuest_Questyno_TaylorBlaze4_Lore" },
    needsitem = "308Box;12",
    onobtained = "unlockworldevent;Questyno_TaylorBlaze;SFQuest_Questyno_TaylorBlaze4_Complete",
    text = "IGUI_SFQuest_Questyno_TaylorBlaze4_Text",
    texture = "media/textures/Item_TaylorBlaze.png",
    title = "IGUI_SFQuest_Questyno_TaylorBlaze4_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TaylorBlaze5",

    awardsrep = "LaResistenza;1000",
    awardstask = "Questyno_TaylorBlaze6",
    completesound = "levelup",
    dailycode = "Questyno_TaylorBlaze",
    lore = { "IGUI_SFQuest_Questyno_TaylorBlaze5_Lore" },
    needsitem = "Bullets44Box;12",
    onobtained = "unlockworldevent;Questyno_TaylorBlaze;SFQuest_Questyno_TaylorBlaze5_Complete",
    text = "IGUI_SFQuest_Questyno_TaylorBlaze5_Text",
    texture = "media/textures/Item_TaylorBlaze.png",
    title = "IGUI_SFQuest_Questyno_TaylorBlaze5_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TaylorBlaze6",

    awardsrep = "LaResistenza;1200",
    awardstask = "Questyno_TaylorBlaze7",
    completesound = "levelup",
    dailycode = "Questyno_TaylorBlaze",
    lore = { "IGUI_SFQuest_Questyno_TaylorBlaze6_Lore" },
    needsitem = "ShotgunShellsBox;10",
    onobtained = "unlockworldevent;Questyno_TaylorBlaze;SFQuest_Questyno_TaylorBlaze6_Complete",
    text = "IGUI_SFQuest_Questyno_TaylorBlaze6_Text",
    texture = "media/textures/Item_TaylorBlaze.png",
    title = "IGUI_SFQuest_Questyno_TaylorBlaze6_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TaylorBlaze7",

    awardsrep = "LaResistenza;1200",
    awardsitem = "PipeBomb;1",
    awardstask = "Questyno_TaylorBlaze8",
    completesound = "levelup",
    dailycode = "Questyno_TaylorBlaze",
    lore = { "IGUI_SFQuest_Questyno_TaylorBlaze7_Lore" },
    needsitem = "22Box;5",
    onobtained = "unlockworldevent;Questyno_TaylorBlaze;SFQuest_Questyno_TaylorBlaze7_Complete",
    text = "IGUI_SFQuest_Questyno_TaylorBlaze7_Text",
    texture = "media/textures/Item_TaylorBlaze.png",
    title = "IGUI_SFQuest_Questyno_TaylorBlaze7_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TaylorBlaze8",

    awardstask = "Questyno_TaylorBlaze8_A", -- TASK REWARD
    dailycode = "Questyno_TaylorBlaze",
    lore = { "IGUI_SFQuest_Questyno_TaylorBlaze8_Lore" },
    objectives = {{
        guid = "Questyno_TaylorBlaze8_A",
        text = "IGUI_SFQuest_Questyno_TaylorBlaze8_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoTaylorBlaze8;additem;x8Scope;1;additem;CleaningKit;1;additem;762Clip;1;additem;556Clip;1;additem;Laser;1;additem;FiberglassStock;1",
    },{
        guid = "Questyno_TaylorBlaze8_B",
        text = "IGUI_SFQuest_Questyno_TaylorBlaze8_B",
        unlocks = "actionevent;killzombies:250;updateobjective:Questyno_TaylorBlaze8:2:Completed", -- ZOMBIE REQUEST
        hidden = false,
    }},
    text = "IGUI_SFQuest_Questyno_TaylorBlaze8_Text",
    texture = "media/textures/Item_TaylorBlaze.png",
    title = "IGUI_SFQuest_Questyno_TaylorBlaze8_Title",
    unlocks = "clickevent;6144x7069x0:EventoTaylorBlaze8;time:50:anim:loot;updateobjective:Questyno_TaylorBlaze8:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TaylorBlaze8_A",

    awardstask = "Questyno_TaylorBlaze8_B", -- TASK REWARD
    lore = { "IGUI_SFQuest_Questyno_TaylorBlaze8_Lore" },
    objectives = {{
        guid = "Questyno_TaylorBlaze8_C",
        text = "IGUI_SFQuest_Questyno_TaylorBlaze8_C",
        hidden = false,
        needsitem = "x8Scope;1",
        onobtained = "updateobjective;Questyno_TaylorBlaze8_A;1;Completed;removeitem;x8Scope;1",
    },{
        guid = "Questyno_TaylorBlaze8_D",
        text = "IGUI_SFQuest_Questyno_TaylorBlaze8_D",
        hidden = false,
        needsitem = "CleaningKit;1",
        onobtained = "updateobjective;Questyno_TaylorBlaze8_A;2;Completed;removeitem;CleaningKit;1",
    },{
        guid = "Questyno_TaylorBlaze8_E",
        text = "IGUI_SFQuest_Questyno_TaylorBlaze8_E",
        hidden = false,
        needsitem = "762Clip;1",
        onobtained = "updateobjective;Questyno_TaylorBlaze8_A;3;Completed;removeitem;762Clip;1",
    },{
        guid = "Questyno_TaylorBlaze8_F",
        text = "IGUI_SFQuest_Questyno_TaylorBlaze8_F",
        hidden = false,
        needsitem = "556Clip;1",
        onobtained = "updateobjective;Questyno_TaylorBlaze8_A;4;Completed;removeitem;556Clip;1",
    },{
        guid = "Questyno_TaylorBlaze8_G",
        text = "IGUI_SFQuest_Questyno_TaylorBlaze8_G",
        hidden = false,
        needsitem = "Laser;1",
        onobtained = "updateobjective;Questyno_TaylorBlaze8_A;5;Completed;removeitem;Laser;1",
    },{
        guid = "Questyno_TaylorBlaze8_H",
        text = "IGUI_SFQuest_Questyno_TaylorBlaze8_H",
        hidden = false,
        needsitem = "FiberglassStock;1",
        onobtained = "updateobjective;Questyno_TaylorBlaze8_A;6;Completed;removeitem;FiberglassStock;1",
    }},
    text = "IGUI_SFQuest_Questyno_TaylorBlaze8_A_Text",
    texture = "media/textures/Item_TaylorBlaze.png",
    title = "IGUI_SFQuest_Questyno_TaylorBlaze8_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TaylorBlaze8_B",

    awardsrep = "LaResistenza;2200",
    awardsitem = "Base.PipeBomb;1",
    awardstask = "Questyno_TaylorBlaze1",
    completesound = "levelup",
    dailycode = "Questyno_TaylorBlaze",
    lore = { "IGUI_SFQuest_Questyno_TaylorBlaze8_Lore" },
    text = "IGUI_SFQuest_Questyno_TaylorBlaze8_B_Text",
    texture = "media/textures/Item_TaylorBlaze.png",
    title = "IGUI_SFQuest_Questyno_TaylorBlaze8_Title",
    unlocks = "unlockworldevent;Questyno_TaylorBlaze;SFQuest_Questyno_TaylorBlaze8_Complete",
});

--[[
            *** Marcus Kane ***
            Elenco:
                intro. Parla con Marcus Kane per sbloccare le quest mensili.
				1. Recuperare Base.CreditCard;5, Uccidere 50 Zombie (130rep + 25$)
				2. Recuperare Base.CreditCard;10, Uccidere 100 Zombie (200rep + 50$)
				3. Recuperare Base.CreditCard;12, Uccidere 120 Zombie (220rep + 60$)
				4. Recuperare Base.CreditCard;20, Uccidere 200 Zombie (420rep + 80$)
]]

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MarcusKane_Intro",

    awardstask = "Questyno_MarcusKane1",
    completesound = "levelup",
    dailycode = "Questyno_MarcusKane",
    lore = { "IGUI_SFQuest_Questyno_MarcusKane_Intro_Lore" },
    text = "IGUI_SFQuest_Questyno_MarcusKane_Intro_Text",
    texture = "media/textures/Item_MarcusKane.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_MarcusKane;SFQuest_Questyno_MarcusKane_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_MarcusKane_Intro_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MarcusKane1",

    awardstask = "Questyno_MarcusKane1_A",
    dailycode = "Questyno_MarcusKane",
    lore = { "IGUI_SFQuest_Questyno_MarcusKane1_Lore" },
    objectives = {{
        guid = "Questyno_MarcusKane1_A",
        text = "IGUI_SFQuest_Questyno_MarcusKane1_A",
        hidden = false,
        needsitem = "CreditCard;5",
        onobtained = "updateobjective;Questyno_MarcusKane1;1;Completed;removeitem;CreditCard;5",
    },{
        guid = "Questyno_MarcusKane1_B",
        text = "IGUI_SFQuest_Questyno_MarcusKane1_B",
        unlocks = "actionevent;killzombies:50;updateobjective:Questyno_MarcusKane1:2:Completed",
        hidden = false,
    }},
    text = "IGUI_SFQuest_Questyno_MarcusKane1_Text",
    texture = "media/textures/Item_MarcusKane.png",
    title = "IGUI_SFQuest_Questyno_MarcusKane1_Title",
    unlockedsound = "QuestUnlocked",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MarcusKane1_A",

    awardsrep = "LaResistenza;130",
    awardsitem = "Base.Money;25",
    awardstask = "Questyno_MarcusKane2",
    lore = { "IGUI_SFQuest_Questyno_MarcusKane1_Lore" },
    text = "IGUI_SFQuest_Questyno_MarcusKane1_A_Text",
    texture = "media/textures/Item_MarcusKane.png",
    title = "IGUI_SFQuest_Questyno_MarcusKane1_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MarcusKane2",

    awardstask = "Questyno_MarcusKane2_A",
    dailycode = "Questyno_MarcusKane",
    lore = { "IGUI_SFQuest_Questyno_MarcusKane2_Lore" },
    objectives = {{
        guid = "Questyno_MarcusKane2_A",
        text = "IGUI_SFQuest_Questyno_MarcusKane2_A",
        hidden = false,
        needsitem = "CreditCard;10",
        onobtained = "updateobjective;Questyno_MarcusKane2;1;Completed;removeitem;CreditCard;10",
    },{
        guid = "Questyno_MarcusKane2_B",
        text = "IGUI_SFQuest_Questyno_MarcusKane2_B",
        unlocks = "actionevent;killzombies:100;updateobjective:Questyno_MarcusKane2:2:Completed",
        hidden = false,
    }},
    text = "IGUI_SFQuest_Questyno_MarcusKane2_Text",
    texture = "media/textures/Item_MarcusKane.png",
    title = "IGUI_SFQuest_Questyno_MarcusKane2_Title",
    unlockedsound = "QuestUnlocked",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MarcusKane2_A",

    awardsrep = "LaResistenza;200",
    awardsitem = "Base.Money;50",
    awardstask = "Questyno_MarcusKane3",
    lore = { "IGUI_SFQuest_Questyno_MarcusKane2_Lore" },
    text = "IGUI_SFQuest_Questyno_MarcusKane2_A_Text",
    texture = "media/textures/Item_MarcusKane.png",
    title = "IGUI_SFQuest_Questyno_MarcusKane2_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MarcusKane3",

    awardstask = "Questyno_MarcusKane3_A",
    dailycode = "Questyno_MarcusKane",
    lore = { "IGUI_SFQuest_Questyno_MarcusKane3_Lore" },
    objectives = {{
        guid = "Questyno_MarcusKane3_A",
        text = "IGUI_SFQuest_Questyno_MarcusKane3_A",
        hidden = false,
        needsitem = "CreditCard;12",
        onobtained = "updateobjective;Questyno_MarcusKane3;1;Completed;removeitem;CreditCard;12",
    },{
        guid = "Questyno_MarcusKane3_B",
        text = "IGUI_SFQuest_Questyno_MarcusKane3_B",
        unlocks = "actionevent;killzombies:120;updateobjective:Questyno_MarcusKane3:2:Completed",
        hidden = false,
    }},
    text = "IGUI_SFQuest_Questyno_MarcusKane3_Text",
    texture = "media/textures/Item_MarcusKane.png",
    title = "IGUI_SFQuest_Questyno_MarcusKane3_Title",
    unlockedsound = "QuestUnlocked",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MarcusKane3_A",

    awardsrep = "LaResistenza;220",
    awardsitem = "Base.Money;60",
    awardstask = "Questyno_MarcusKane4",
    lore = { "IGUI_SFQuest_Questyno_MarcusKane3_Lore" },
    text = "IGUI_SFQuest_Questyno_MarcusKane3_A_Text",
    texture = "media/textures/Item_MarcusKane.png",
    title = "IGUI_SFQuest_Questyno_MarcusKane3_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MarcusKane4",

    awardstask = "Questyno_MarcusKane4_A",
    dailycode = "Questyno_MarcusKane",
    lore = { "IGUI_SFQuest_Questyno_MarcusKane4_Lore" },
    objectives = {{
        guid = "Questyno_MarcusKane4_A",
        text = "IGUI_SFQuest_Questyno_MarcusKane4_A",
        hidden = false,
        needsitem = "CreditCard;20",
        onobtained = "updateobjective;Questyno_MarcusKane4;1;Completed;removeitem;CreditCard;20",
    },{
        guid = "Questyno_MarcusKane4_B",
        text = "IGUI_SFQuest_Questyno_MarcusKane4_B",
        unlocks = "actionevent;killzombies:200;updateobjective:Questyno_MarcusKane4:2:Completed",
        hidden = false,
    }},
    text = "IGUI_SFQuest_Questyno_MarcusKane4_Text",
    texture = "media/textures/Item_MarcusKane.png",
    title = "IGUI_SFQuest_Questyno_MarcusKane4_Title",
    unlockedsound = "QuestUnlocked",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MarcusKane4_A",

    awardsrep = "LaResistenza;420",
    awardsitem = "Base.Money;80",
    awardstask = "Questyno_MarcusKane1",
    lore = { "IGUI_SFQuest_Questyno_MarcusKane4_Lore" },
    text = "IGUI_SFQuest_Questyno_MarcusKane4_A_Text",
    texture = "media/textures/Item_MarcusKane.png",
    title = "IGUI_SFQuest_Questyno_MarcusKane4_Title",
});



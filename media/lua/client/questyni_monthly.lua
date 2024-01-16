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
    awardsitem = "SWeapons.SalvagedPipeWrench;1;Money;150",
    awardstask = "Questyno_TaylorBlaze2",
    completesound = "levelup",
    dailycode = "Questyno_TaylorBlaze",
    lore = { "IGUI_SFQuest_Questyno_TaylorBlaze1_Lore" },
    needsitem = "Bullets9mmBox;10",
    onobtained = "unlockworldevent;Questyno_TaylorBlaze;SFQuest_Questyno_TaylorBlaze1_Complete",
    text = "IGUI_SFQuest_Questyno_TaylorBlaze1_Text",
    texture = "media/textures/Item_TaylorBlaze.png",
    title = "IGUI_SFQuest_Questyno_TaylorBlaze1_Title",
    unlockedsound = "QuestUnlocked",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TaylorBlaze2",

    awardsrep = "LaResistenza;550",
    awardsitem = "SWeapons.SalvagedBlade;1;Money;150",
    awardstask = "Questyno_TaylorBlaze3",
    completesound = "levelup",
    dailycode = "Questyno_TaylorBlaze",
    lore = { "IGUI_SFQuest_Questyno_TaylorBlaze2_Lore" },
    needsitem = "Bullets45Box;10",
    onobtained = "unlockworldevent;Questyno_TaylorBlaze;SFQuest_Questyno_TaylorBlaze2_Complete",
    text = "IGUI_SFQuest_Questyno_TaylorBlaze2_Text",
    texture = "media/textures/Item_TaylorBlaze.png",
    title = "IGUI_SFQuest_Questyno_TaylorBlaze2_Title",
    unlockedsound = "QuestUnlocked",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TaylorBlaze3",

    awardsrep = "LaResistenza;900",
    awardsitem = "Money;200",
    awardstask = "Questyno_TaylorBlaze4",
    completesound = "levelup",
    dailycode = "Questyno_TaylorBlaze",
    lore = { "IGUI_SFQuest_Questyno_TaylorBlaze3_Lore" },
    needsitem = "223Box;15",
    onobtained = "unlockworldevent;Questyno_TaylorBlaze;SFQuest_Questyno_TaylorBlaze3_Complete",
    text = "IGUI_SFQuest_Questyno_TaylorBlaze3_Text",
    texture = "media/textures/Item_TaylorBlaze.png",
    title = "IGUI_SFQuest_Questyno_TaylorBlaze3_Title",
    unlockedsound = "QuestUnlocked",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TaylorBlaze4",

    awardsrep = "LaResistenza;780",
    awardsitem = "Money;150",
    awardstask = "Questyno_TaylorBlaze5",
    completesound = "levelup",
    dailycode = "Questyno_TaylorBlaze",
    lore = { "IGUI_SFQuest_Questyno_TaylorBlaze4_Lore" },
    needsitem = "308Box;12",
    onobtained = "unlockworldevent;Questyno_TaylorBlaze;SFQuest_Questyno_TaylorBlaze4_Complete",
    text = "IGUI_SFQuest_Questyno_TaylorBlaze4_Text",
    texture = "media/textures/Item_TaylorBlaze.png",
    title = "IGUI_SFQuest_Questyno_TaylorBlaze4_Title",
    unlockedsound = "QuestUnlocked",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TaylorBlaze5",

    awardsrep = "LaResistenza;1000",
    awardsitem = "Money;150",
    awardstask = "Questyno_TaylorBlaze6",
    completesound = "levelup",
    dailycode = "Questyno_TaylorBlaze",
    lore = { "IGUI_SFQuest_Questyno_TaylorBlaze5_Lore" },
    needsitem = "Bullets44Box;12",
    onobtained = "unlockworldevent;Questyno_TaylorBlaze;SFQuest_Questyno_TaylorBlaze5_Complete",
    text = "IGUI_SFQuest_Questyno_TaylorBlaze5_Text",
    texture = "media/textures/Item_TaylorBlaze.png",
    title = "IGUI_SFQuest_Questyno_TaylorBlaze5_Title",
    unlockedsound = "QuestUnlocked",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TaylorBlaze6",

    awardsrep = "LaResistenza;1200",
    awardsitem = "Money;150",
    awardstask = "Questyno_TaylorBlaze7",
    completesound = "levelup",
    dailycode = "Questyno_TaylorBlaze",
    lore = { "IGUI_SFQuest_Questyno_TaylorBlaze6_Lore" },
    needsitem = "ShotgunShellsBox;10",
    onobtained = "unlockworldevent;Questyno_TaylorBlaze;SFQuest_Questyno_TaylorBlaze6_Complete",
    text = "IGUI_SFQuest_Questyno_TaylorBlaze6_Text",
    texture = "media/textures/Item_TaylorBlaze.png",
    title = "IGUI_SFQuest_Questyno_TaylorBlaze6_Title",
    unlockedsound = "QuestUnlocked",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TaylorBlaze7",

    awardsrep = "LaResistenza;1200",
    awardsitem = "PipeBomb;1;Money;150",
    awardstask = "Questyno_TaylorBlaze8",
    completesound = "levelup",
    dailycode = "Questyno_TaylorBlaze",
    lore = { "IGUI_SFQuest_Questyno_TaylorBlaze7_Lore" },
    needsitem = "22Box;5",
    onobtained = "unlockworldevent;Questyno_TaylorBlaze;SFQuest_Questyno_TaylorBlaze7_Complete",
    text = "IGUI_SFQuest_Questyno_TaylorBlaze7_Text",
    texture = "media/textures/Item_TaylorBlaze.png",
    title = "IGUI_SFQuest_Questyno_TaylorBlaze7_Title",
    unlockedsound = "QuestUnlocked",
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
        hidden = false,
    }},
    text = "IGUI_SFQuest_Questyno_TaylorBlaze8_Text",
    texture = "media/textures/Item_TaylorBlaze.png",
    title = "IGUI_SFQuest_Questyno_TaylorBlaze8_Title",
    unlocks = "actionevent;killzombies:250;updateobjective:Questyno_TaylorBlaze8:2:Completed;clickevent;6144x7069x0:EventoTaylorBlaze8;time:50:anim:loot;updateobjective:Questyno_TaylorBlaze8:1:Completed",
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
    awardsitem = "Base.PipeBomb;1;Money;150",
    awardstask = "Questyno_TaylorBlaze1",
    completesound = "levelup",
    dailycode = "Questyno_TaylorBlaze",
    lore = { "IGUI_SFQuest_Questyno_TaylorBlaze8_Lore" },
    text = "IGUI_SFQuest_Questyno_TaylorBlaze8_B_Text",
    texture = "media/textures/Item_TaylorBlaze.png",
    title = "IGUI_SFQuest_Questyno_TaylorBlaze8_Title",
    unlocks = "unlockworldevent;Questyno_TaylorBlaze;SFQuest_Questyno_TaylorBlaze8_Complete",
    unlockedsound = "QuestUnlocked",
});

--[[
            *** Marcus Kane ***
            Elenco:
                intro. Parla con Marcus Kane per sbloccare le quest mensili.
				1. Recuperare Base.CardID;5, Uccidere 50 Zombie (130rep + 25$)
				2. Recuperare Base.CardID;10, Uccidere 100 Zombie (200rep + 50$)
				3. Recuperare Base.CardID;12, Uccidere 120 Zombie (220rep + 60$)
				4. Recuperare Base.CardID;20, Uccidere 200 Zombie (420rep + 80$)
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
        needsitem = "CardID;5",
        onobtained = "updateobjective;Questyno_MarcusKane1;1;Completed;removeitem;CardID;5",
    },{
        guid = "Questyno_MarcusKane1_B",
        text = "IGUI_SFQuest_Questyno_MarcusKane1_B",
        hidden = false,
    }},
    text = "IGUI_SFQuest_Questyno_MarcusKane1_Text",
    texture = "media/textures/Item_MarcusKane.png",
    title = "IGUI_SFQuest_Questyno_MarcusKane1_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "actionevent;killzombies:50;updateobjective:Questyno_MarcusKane1:2:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MarcusKane1_A",

    awardsrep = "LaResistenza;130",
    awardsitem = "Base.Money;25",
    awardstask = "Questyno_MarcusKane2",
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_MarcusKane1_Lore" },
    text = "IGUI_SFQuest_Questyno_MarcusKane1_A_Text",
    texture = "media/textures/Item_MarcusKane.png",
    title = "IGUI_SFQuest_Questyno_MarcusKane1_Title",
    unlocks = "unlockworldevent;Questyno_MarcusKane;SFQuest_Questyno_MarcusKane1_Complete",
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
        needsitem = "CardID;10",
        onobtained = "updateobjective;Questyno_MarcusKane2;1;Completed;removeitem;CardID;10",
    },{
        guid = "Questyno_MarcusKane2_B",
        text = "IGUI_SFQuest_Questyno_MarcusKane2_B",
        hidden = false,
    }},
    text = "IGUI_SFQuest_Questyno_MarcusKane2_Text",
    texture = "media/textures/Item_MarcusKane.png",
    title = "IGUI_SFQuest_Questyno_MarcusKane2_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "actionevent;killzombies:100;updateobjective:Questyno_MarcusKane2:2:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MarcusKane2_A",

    awardsrep = "LaResistenza;200",
    awardsitem = "Base.Money;50",
    awardstask = "Questyno_MarcusKane3",
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_MarcusKane2_Lore" },
    text = "IGUI_SFQuest_Questyno_MarcusKane2_A_Text",
    texture = "media/textures/Item_MarcusKane.png",
    title = "IGUI_SFQuest_Questyno_MarcusKane2_Title",
    unlocks = "unlockworldevent;Questyno_MarcusKane;SFQuest_Questyno_MarcusKane2_Complete",
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
        needsitem = "CardID;12",
        onobtained = "updateobjective;Questyno_MarcusKane3;1;Completed;removeitem;CardID;12",
    },{
        guid = "Questyno_MarcusKane3_B",
        text = "IGUI_SFQuest_Questyno_MarcusKane3_B",
        hidden = false,
    }},
    text = "IGUI_SFQuest_Questyno_MarcusKane3_Text",
    texture = "media/textures/Item_MarcusKane.png",
    title = "IGUI_SFQuest_Questyno_MarcusKane3_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "actionevent;killzombies:120;updateobjective:Questyno_MarcusKane3:2:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MarcusKane3_A",

    awardsrep = "LaResistenza;220",
    awardsitem = "Base.Money;60",
    awardstask = "Questyno_MarcusKane4",
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_MarcusKane3_Lore" },
    text = "IGUI_SFQuest_Questyno_MarcusKane3_A_Text",
    texture = "media/textures/Item_MarcusKane.png",
    title = "IGUI_SFQuest_Questyno_MarcusKane3_Title",
    unlocks = "unlockworldevent;Questyno_MarcusKane;SFQuest_Questyno_MarcusKane3_Complete",
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
        needsitem = "CardID;20",
        onobtained = "updateobjective;Questyno_MarcusKane4;1;Completed;removeitem;CardID;20",
    },{
        guid = "Questyno_MarcusKane4_B",
        text = "IGUI_SFQuest_Questyno_MarcusKane4_B",
        hidden = false,
    }},
    text = "IGUI_SFQuest_Questyno_MarcusKane4_Text",
    texture = "media/textures/Item_MarcusKane.png",
    title = "IGUI_SFQuest_Questyno_MarcusKane4_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "actionevent;killzombies:200;updateobjective:Questyno_MarcusKane4:2:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MarcusKane4_A",

    awardsrep = "LaResistenza;420",
    awardsitem = "Base.Money;80",
    awardstask = "Questyno_MarcusKane1",
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_MarcusKane4_Lore" },
    text = "IGUI_SFQuest_Questyno_MarcusKane4_A_Text",
    texture = "media/textures/Item_MarcusKane.png",
    title = "IGUI_SFQuest_Questyno_MarcusKane4_Title",
    unlocks = "unlockworldevent;Questyno_MarcusKane;SFQuest_Questyno_MarcusKane4_Complete",
});

--[[
            ***Olivia Chambers***
            Elenco:
                intro. Parla con Olivia Chambers per sbloccare le sue quest mensili.
                1. Recuperare LabItems.ChSodiumHydroxideBag;2 e uccidere 200 (1200rep + LabItems.JournalOfResearch,LabBooks.BkLaboratoryEquipment2)
                2. Recuperare LabItems.ChSulfuricAcidCan;2 @ 7182,7027,0 e Uccidi 120 Zombie (1200rep + LabBooks.BkChemistryCourse)
                3. Recuperare LabItems.ChSodiumHydroxideBag;2 @ 7003,7246,0 e Uccidi 200 Zombie (800rep + LabBooks.BkLaboratoryEquipment1)
                4. Recuperare LabItems.ChHydrochloricAcidCan;2 e Uccidi 100 Zombie (700rep + LabBooks.BkLaboratoryEquipment3)
                5. Recuperare LabItems.ChSulfuricAcidCan;2 @  (13851,10871,0) e Uccidi 100 Zombie (1200rep + LabBooks.BkVirologyCourses1)
                6. Recuperare LabItems.ChHydrochloricAcidCan;2 @ (3733,11443,0) e Uccidi 100 Zombie (800rep + LabBooks.BkVirologyCourses2)
]]

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_OliviaChambers_Intro",

    awardstask = "Questyno_OliviaChambers1",
    completesound = "levelup",
    dailycode = "Questyno_OliviaChambers",
    lore = { "IGUI_SFQuest_Questyno_OliviaChambers_Intro_Lore" },
    text = "IGUI_SFQuest_Questyno_OliviaChambers_Intro_Text",
    texture = "media/textures/Item_OliviaChambers.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_OliviaChambers;SFQuest_Questyno_OliviaChambers_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_OliviaChambers_Intro_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_OliviaChambers1",

    awardstask = "Questyno_OliviaChambers1_A",
    dailycode = "Questyno_OliviaChambers",
    lore = { "IGUI_SFQuest_Questyno_OliviaChambers1_Lore" },
    objectives = {{
        guid = "Questyno_OliviaChambers1_A",
        text = "IGUI_SFQuest_Questyno_OliviaChambers1_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoOliviaChambers1;additem;LabItems.ChSodiumHydroxideBag;2",
    },{
        guid = "Questyno_OliviaChambers1_B",
        text = "IGUI_SFQuest_Questyno_OliviaChambers1_B",
        hidden = false,
    }},
    text = "IGUI_SFQuest_Questyno_OliviaChambers1_Text",
    texture = "media/textures/Item_OliviaChambers.png",
    title = "IGUI_SFQuest_Questyno_OliviaChambers1_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "actionevent;killzombies:200;updateobjective:Questyno_OliviaChambers1:2:Completed;clickevent;3960x11742x0:EventoOliviaChambers1;time:50:anim:loot;updateobjective:Questyno_OliviaChambers1:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_OliviaChambers1_A",

    awardsrep = "LaResistenza;1200",
    awardsitem = "LabItems.JournalOfResearch;1;LabBooks.BkLaboratoryEquipment2;1",
    awardstask = "Questyno_OliviaChambers2",
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_OliviaChambers1_Lore" },
    needsitem = "LabItems.ChSodiumHydroxideBag;2",
    onobtained = "unlockworldevent;Questyno_OliviaChambers;SFQuest_Questyno_OliviaChambers1_Complete",
    text = "IGUI_SFQuest_Questyno_OliviaChambers1_A_Text",
    texture = "media/textures/Item_OliviaChambers.png",
    title = "IGUI_SFQuest_Questyno_OliviaChambers1_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_OliviaChambers2",

    awardstask = "Questyno_OliviaChambers2_A",
    dailycode = "Questyno_OliviaChambers",
    lore = { "IGUI_SFQuest_Questyno_OliviaChambers2_Lore" },
    objectives = {{
        guid = "Questyno_OliviaChambers2_A",
        text = "IGUI_SFQuest_Questyno_OliviaChambers2_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoOliviaChambers2;additem;LabItems.ChSulfuricAcidCan;2",
    },{
        guid = "Questyno_OliviaChambers2_B",
        text = "IGUI_SFQuest_Questyno_OliviaChambers2_B",
        hidden = false,
    }},
    text = "IGUI_SFQuest_Questyno_OliviaChambers2_Text",
    texture = "media/textures/Item_OliviaChambers.png",
    title = "IGUI_SFQuest_Questyno_OliviaChambers2_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "actionevent;killzombies:120;updateobjective:Questyno_OliviaChambers2:2:Completed;clickevent;7182x7027x0:EventoOliviaChambers2;time:50:anim:loot;updateobjective:Questyno_OliviaChambers2:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_OliviaChambers2_A",

    awardsrep = "LaResistenza;1200",
    awardsitem = "LabBooks.BkChemistryCourse;1",
    awardstask = "Questyno_OliviaChambers3",
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_OliviaChambers2_Lore" },
    needsitem = "LabItems.ChSulfuricAcidCan;2",
    onobtained = "unlockworldevent;Questyno_OliviaChambers;SFQuest_Questyno_OliviaChambers2_Complete",
    text = "IGUI_SFQuest_Questyno_OliviaChambers2_A_Text",
    texture = "media/textures/Item_OliviaChambers.png",
    title = "IGUI_SFQuest_Questyno_OliviaChambers2_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_OliviaChambers3",

    awardstask = "Questyno_OliviaChambers3_A",
    dailycode = "Questyno_OliviaChambers",
    lore = { "IGUI_SFQuest_Questyno_OliviaChambers3_Lore" },
    objectives = {{
        guid = "Questyno_OliviaChambers3_A",
        text = "IGUI_SFQuest_Questyno_OliviaChambers3_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoOliviaChambers3;additem;LabItems.ChSodiumHydroxideBag;2",
    },{
        guid = "Questyno_OliviaChambers3_B",
        text = "IGUI_SFQuest_Questyno_OliviaChambers3_B",
        hidden = false,
    }},
    text = "IGUI_SFQuest_Questyno_OliviaChambers3_Text",
    texture = "media/textures/Item_OliviaChambers.png",
    title = "IGUI_SFQuest_Questyno_OliviaChambers3_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "actionevent;killzombies:200;updateobjective:Questyno_OliviaChambers3:2:Completed;clickevent;7003x7246x0:EventoOliviaChambers3;time:50:anim:loot;updateobjective:Questyno_OliviaChambers3:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_OliviaChambers3_A",

    awardsrep = "LaResistenza;800",
    awardsitem = "LabBooks.BkLaboratoryEquipment1;1",
    awardstask = "Questyno_OliviaChambers4",
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_OliviaChambers3_Lore" },
    needsitem = "LabItems.ChSodiumHydroxideBag;2",
    onobtained = "unlockworldevent;Questyno_OliviaChambers;SFQuest_Questyno_OliviaChambers3_Complete",
    text = "IGUI_SFQuest_Questyno_OliviaChambers3_A_Text",
    texture = "media/textures/Item_OliviaChambers.png",
    title = "IGUI_SFQuest_Questyno_OliviaChambers3_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_OliviaChambers4",

    awardstask = "Questyno_OliviaChambers4_A",
    dailycode = "Questyno_OliviaChambers",
    lore = { "IGUI_SFQuest_Questyno_OliviaChambers4_Lore" },
    objectives = {{
        guid = "Questyno_OliviaChambers4_A",
        text = "IGUI_SFQuest_Questyno_OliviaChambers4_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoOliviaChambers4;additem;LabItems.ChHydrochloricAcidCan;2",
    },{
        guid = "Questyno_OliviaChambers4_B",
        text = "IGUI_SFQuest_Questyno_OliviaChambers4_B",
        hidden = false,
    }},
    text = "IGUI_SFQuest_Questyno_OliviaChambers4_Text",
    texture = "media/textures/Item_OliviaChambers.png",
    title = "IGUI_SFQuest_Questyno_OliviaChambers4_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "actionevent;killzombies:100;updateobjective:Questyno_OliviaChambers4:2:Completed;clickevent;4168x12035x0:EventoOliviaChambers4;time:50:anim:loot;updateobjective:Questyno_OliviaChambers4:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_OliviaChambers4_A",

    awardsrep = "LaResistenza;700",
    awardsitem = "LabBooks.BkLaboratoryEquipment3;1",
    awardstask = "Questyno_OliviaChambers5",
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_OliviaChambers4_Lore" },
    needsitem = "LabItems.ChHydrochloricAcidCan;2",
    onobtained = "unlockworldevent;Questyno_OliviaChambers;SFQuest_Questyno_OliviaChambers4_Complete",
    text = "IGUI_SFQuest_Questyno_OliviaChambers4_A_Text",
    texture = "media/textures/Item_OliviaChambers.png",
    title = "IGUI_SFQuest_Questyno_OliviaChambers4_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_OliviaChambers5",

    awardstask = "Questyno_OliviaChambers5_A",
    dailycode = "Questyno_OliviaChambers",
    lore = { "IGUI_SFQuest_Questyno_OliviaChambers5_Lore" },
    objectives = {{
        guid = "Questyno_OliviaChambers5_A",
        text = "IGUI_SFQuest_Questyno_OliviaChambers5_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoOliviaChambers5;additem;LabItems.ChSulfuricAcidCan;2",
    },{
        guid = "Questyno_OliviaChambers5_B",
        text = "IGUI_SFQuest_Questyno_OliviaChambers5_B",
        hidden = false,
    }},
    text = "IGUI_SFQuest_Questyno_OliviaChambers5_Text",
    texture = "media/textures/Item_OliviaChambers.png",
    title = "IGUI_SFQuest_Questyno_OliviaChambers5_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "actionevent;killzombies:100;updateobjective:Questyno_OliviaChambers5:2:Completed;clickevent;13851x10871x0:EventoOliviaChambers5;time:50:anim:loot;updateobjective:Questyno_OliviaChambers5:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_OliviaChambers5_A",

    awardsrep = "LaResistenza;1200",
    awardsitem = "LabBooks.BkVirologyCourses1;1",
    awardstask = "Questyno_OliviaChambers6",
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_OliviaChambers5_Lore" },
    needsitem = "LabItems.ChSulfuricAcidCan;2",
    onobtained = "unlockworldevent;Questyno_OliviaChambers;SFQuest_Questyno_OliviaChambers5_Complete",
    text = "IGUI_SFQuest_Questyno_OliviaChambers5_A_Text",
    texture = "media/textures/Item_OliviaChambers.png",
    title = "IGUI_SFQuest_Questyno_OliviaChambers5_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_OliviaChambers6",

    awardstask = "Questyno_OliviaChambers6_A",
    dailycode = "Questyno_OliviaChambers",
    lore = { "IGUI_SFQuest_Questyno_OliviaChambers6_Lore" },
    objectives = {{
        guid = "Questyno_OliviaChambers6_A",
        text = "IGUI_SFQuest_Questyno_OliviaChambers6_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoOliviaChambers6;additem;LabItems.ChHydrochloricAcidCan;2",
    },{
        guid = "Questyno_OliviaChambers6_B",
        text = "IGUI_SFQuest_Questyno_OliviaChambers6_B",
        hidden = false,
    }},
    text = "IGUI_SFQuest_Questyno_OliviaChambers6_Text",
    texture = "media/textures/Item_OliviaChambers.png",
    title = "IGUI_SFQuest_Questyno_OliviaChambers6_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "actionevent;killzombies:100;updateobjective:Questyno_OliviaChambers6:2:Completed;clickevent;3733x11443x0:EventoOliviaChambers6;time:50:anim:loot;updateobjective:Questyno_OliviaChambers6:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_OliviaChambers6_A",

    awardsrep = "LaResistenza;800",
    awardsitem = "LabBooks.BkVirologyCourses2;1",
    awardstask = "Questyno_OliviaChambers1",
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_OliviaChambers6_Lore" },
    needsitem = "LabItems.ChHydrochloricAcidCan;2",
    onobtained = "unlockworldevent;Questyno_OliviaChambers;SFQuest_Questyno_OliviaChambers6_Complete",
    text = "IGUI_SFQuest_Questyno_OliviaChambers6_A_Text",
    texture = "media/textures/Item_OliviaChambers.png",
    title = "IGUI_SFQuest_Questyno_OliviaChambers6_Title",
});


--[[
            *** MayaBlackwell ***
            Elenco:
                intro. Incontra Maya Blackwell.
				1. Recuperare Base.ScrapMetal;50 parlando con (4045,6247,0), Uccidere 100 Zombie (125rep + TW.WorkshopMag3)
				2. Recuperare Base.ScrapMetal;70 parlando con (5832,4206,1), Uccidere 110 Zombie (125rep + TW.WorkshopMag4)
				3. Recuperare Base.ScrapMetal;70 parlando con (4758,10173,0), Uccidere 200 Zombie (150rep + Tw.WorkshopMag1,Tw.WorkshopMag2;Tw.WorkshopMag3)
				4. Recuperare Base.ScrapMetal;70 parlando con (7005,5590,0), Uccidere 200 Zombie (100rep + SWeapons.WeaponMag1)
				5. Recuperare Base.ScrapMetal;40 parlando con (4633,6674,0), Uccidere 200 Zombie (150rep + SWeapons.WeaponMag2,SWeapons.WeaponsMag4)
				6. Recuperare Base.ScrapMetal;50 parlando con (6619,10438,0), Uccidere 200 Zombie (150rep + SWeapons.WeaponMag3)
				7. Recuperare Base.ScrapMetal;65 parlando con (7633,11463,0), Uccidere 200 Zombie (160rep + SArmor.ArmorMag1)
				8. Recuperare Base.ScrapMetal;65 parlando con (7840,10719,0), Uccidere 200 Zombie (200rep + SArmor.ArmorMag3)
				9. Recuperare Base.ScrapMetal;60 parlando con (7162,7487,0), Uccidere 200 Zombie (300rep + SWeapons.WeaponsMag5)
				10. Recuperare Base.ScrapMetal;60 parlando con (3983,9166,0), Uccidere 125 Zombie (200rep + SArmor.ArmorMag4)
				11. Recuperare Base.ScrapMetal;50 parlando con (7289,7573,0), Uccidere 125 Zombie (200rep + SWeapons.WeaponsMag6)
				12. Recuperare Base.ScrapMetal;50 parlando con (4625,6732,0), Uccidere 140 Zombie (200rep + SArmor.ArmorMag5)
				13. Recuperare Base.ScrapMetal;50 parlando con (8228,10989,0), Uccidere 150 Zombie (200rep + SArmor.ArmorMag2)
]]

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MayaBlackwell_Intro",

    awardstask = "Questyno_MayaBlackwell1",
    completesound = "levelup",
    dailycode = "Questyno_MayaBlackwell",
    lore = { "IGUI_SFQuest_Questyno_MayaBlackwell_Intro_Lore" },
    text = "IGUI_SFQuest_Questyno_MayaBlackwell_Intro_Text",
    texture = "media/textures/Item_MayaBlackwell.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_MayaBlackwell;SFQuest_Questyno_MayaBlackwell_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_MayaBlackwell_Intro_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MayaBlackwell1",

    awardstask = "Questyno_MayaBlackwell1_A",
    dailycode = "Questyno_MayaBlackwell",
    lore = { "IGUI_SFQuest_Questyno_MayaBlackwell1_Lore" },
    objectives = {{
        guid = "Questyno_MayaBlackwell1_A",
        text = "IGUI_SFQuest_Questyno_MayaBlackwell1_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoMayaBlackwell1;additem;Base.ScrapMetal;50",
    },{
        guid = "Questyno_MayaBlackwell1_B",
        text = "IGUI_SFQuest_Questyno_MayaBlackwell1_B",
        hidden = false,
    }},
    text = "IGUI_SFQuest_Questyno_MayaBlackwell1_Text",
    texture = "media/textures/Item_MayaBlackwell.png",
    title = "IGUI_SFQuest_Questyno_MayaBlackwell1_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "actionevent;killzombies:100;updateobjective:Questyno_MayaBlackwell1:2:Completed;clickevent;4045x6247x0:EventoMayaBlackwell1;time:50:anim:loot;updateobjective:Questyno_MayaBlackwell1:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MayaBlackwell1_A",

    awardsrep = "LaResistenza;125",
    awardsitem = "TW.WorkshopMag3;1",
    awardstask = "Questyno_MayaBlackwell2",
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_MayaBlackwell1_Lore" },
    needsitem = "Base.ScrapMetal;50",
    onobtained = "unlockworldevent;Questyno_MayaBlackwell;SFQuest_Questyno_MayaBlackwell1_Complete",
    text = "IGUI_SFQuest_Questyno_MayaBlackwell1_A_Text",
    texture = "media/textures/Item_MayaBlackwell.png",
    title = "IGUI_SFQuest_Questyno_MayaBlackwell1_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MayaBlackwell2",

    awardstask = "Questyno_MayaBlackwell2_A",
    dailycode = "Questyno_MayaBlackwell",
    lore = { "IGUI_SFQuest_Questyno_MayaBlackwell2_Lore" },
    objectives = {{
        guid = "Questyno_MayaBlackwell2_A",
        text = "IGUI_SFQuest_Questyno_MayaBlackwell2_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoMayaBlackwell2;additem;Base.ScrapMetal;70",
    },{
        guid = "Questyno_MayaBlackwell2_B",
        text = "IGUI_SFQuest_Questyno_MayaBlackwell2_B",
        hidden = false,
    }},
    text = "IGUI_SFQuest_Questyno_MayaBlackwell2_Text",
    texture = "media/textures/Item_MayaBlackwell.png",
    title = "IGUI_SFQuest_Questyno_MayaBlackwell2_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "actionevent;killzombies:110;updateobjective:Questyno_MayaBlackwell2:2:Completed;clickevent;5832x4206x1:EventoMayaBlackwell2;time:50:anim:loot;updateobjective:Questyno_MayaBlackwell2:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MayaBlackwell2_A",

    awardsrep = "LaResistenza;125",
    awardsitem = "TW.WorkshopMag4;1",
    awardstask = "Questyno_MayaBlackwell3",
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_MayaBlackwell2_Lore" },
    needsitem = "Base.ScrapMetal;70",
    onobtained = "unlockworldevent;Questyno_MayaBlackwell;SFQuest_Questyno_MayaBlackwell2_Complete",
    text = "IGUI_SFQuest_Questyno_MayaBlackwell2_A_Text",
    texture = "media/textures/Item_MayaBlackwell.png",
    title = "IGUI_SFQuest_Questyno_MayaBlackwell2_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MayaBlackwell3",

    awardstask = "Questyno_MayaBlackwell3_A",
    dailycode = "Questyno_MayaBlackwell",
    lore = { "IGUI_SFQuest_Questyno_MayaBlackwell3_Lore" },
    objectives = {{
        guid = "Questyno_MayaBlackwell3_A",
        text = "IGUI_SFQuest_Questyno_MayaBlackwell3_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoMayaBlackwell3;additem;Base.ScrapMetal;70",
    },{
        guid = "Questyno_MayaBlackwell3_B",
        text = "IGUI_SFQuest_Questyno_MayaBlackwell3_B",
        hidden = false,
    }},
    text = "IGUI_SFQuest_Questyno_MayaBlackwell3_Text",
    texture = "media/textures/Item_MayaBlackwell.png",
    title = "IGUI_SFQuest_Questyno_MayaBlackwell3_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "actionevent;killzombies:200;updateobjective:Questyno_MayaBlackwell3:2:Completed;clickevent;4758x10173x0:EventoMayaBlackwell3;time:50:anim:loot;updateobjective:Questyno_MayaBlackwell3:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MayaBlackwell3_A",

    awardsrep = "LaResistenza;150",
    awardsitem = "TW.WorkshopMag2;1",
    awardstask = "Questyno_MayaBlackwell4",
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_MayaBlackwell3_Lore" },
    needsitem = "Base.ScrapMetal;70",
    onobtained = "unlockworldevent;Questyno_MayaBlackwell;SFQuest_Questyno_MayaBlackwell3_Complete",
    text = "IGUI_SFQuest_Questyno_MayaBlackwell3_A_Text",
    texture = "media/textures/Item_MayaBlackwell.png",
    title = "IGUI_SFQuest_Questyno_MayaBlackwell3_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MayaBlackwell4",

    awardstask = "Questyno_MayaBlackwell4_A",
    dailycode = "Questyno_MayaBlackwell",
    lore = { "IGUI_SFQuest_Questyno_MayaBlackwell4_Lore" },
    objectives = {{
        guid = "Questyno_MayaBlackwell4_A",
        text = "IGUI_SFQuest_Questyno_MayaBlackwell4_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoMayaBlackwell4;additem;Base.ScrapMetal;70",
    },{
        guid = "Questyno_MayaBlackwell4_B",
        text = "IGUI_SFQuest_Questyno_MayaBlackwell4_B",
        hidden = false,
    }},
    text = "IGUI_SFQuest_Questyno_MayaBlackwell4_Text",
    texture = "media/textures/Item_MayaBlackwell.png",
    title = "IGUI_SFQuest_Questyno_MayaBlackwell4_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "actionevent;killzombies:200;updateobjective:Questyno_MayaBlackwell4:2:Completed;clickevent;7005x5590x0:EventoMayaBlackwell4;time:50:anim:loot;updateobjective:Questyno_MayaBlackwell4:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MayaBlackwell4_A",

    awardsrep = "LaResistenza;100",
    awardsitem = "SWeapons.WeaponMag1;1",
    awardstask = "Questyno_MayaBlackwell5",
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_MayaBlackwell4_Lore" },
    needsitem = "Base.ScrapMetal;70",
    onobtained = "unlockworldevent;Questyno_MayaBlackwell;SFQuest_Questyno_MayaBlackwell4_Complete",
    text = "IGUI_SFQuest_Questyno_MayaBlackwell4_A_Text",
    texture = "media/textures/Item_MayaBlackwell.png",
    title = "IGUI_SFQuest_Questyno_MayaBlackwell4_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MayaBlackwell5",

    awardstask = "Questyno_MayaBlackwell5_A",
    dailycode = "Questyno_MayaBlackwell",
    lore = { "IGUI_SFQuest_Questyno_MayaBlackwell5_Lore" },
    objectives = {{
        guid = "Questyno_MayaBlackwell5_A",
        text = "IGUI_SFQuest_Questyno_MayaBlackwell5_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoMayaBlackwell5;additem;Base.ScrapMetal;40",
    },{
        guid = "Questyno_MayaBlackwell5_B",
        text = "IGUI_SFQuest_Questyno_MayaBlackwell5_B",
        hidden = false,
    }},
    text = "IGUI_SFQuest_Questyno_MayaBlackwell5_Text",
    texture = "media/textures/Item_MayaBlackwell.png",
    title = "IGUI_SFQuest_Questyno_MayaBlackwell5_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "actionevent;killzombies:200;updateobjective:Questyno_MayaBlackwell5:2:Completed;clickevent;4633x6674x0:EventoMayaBlackwell5;time:50:anim:loot;updateobjective:Questyno_MayaBlackwell5:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MayaBlackwell5_A",

    awardsrep = "LaResistenza;150",
    awardsitem = "SWeapons.WeaponMag2;1;SWeapons.WeaponsMag4;1",
    awardstask = "Questyno_MayaBlackwell6",
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_MayaBlackwell5_Lore" },
    needsitem = "Base.ScrapMetal;40",
    onobtained = "unlockworldevent;Questyno_MayaBlackwell;SFQuest_Questyno_MayaBlackwell5_Complete",
    text = "IGUI_SFQuest_Questyno_MayaBlackwell5_A_Text",
    texture = "media/textures/Item_MayaBlackwell.png",
    title = "IGUI_SFQuest_Questyno_MayaBlackwell5_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MayaBlackwell6",

    awardstask = "Questyno_MayaBlackwell6_A",
    dailycode = "Questyno_MayaBlackwell",
    lore = { "IGUI_SFQuest_Questyno_MayaBlackwell6_Lore" },
    objectives = {{
        guid = "Questyno_MayaBlackwell6_A",
        text = "IGUI_SFQuest_Questyno_MayaBlackwell6_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoMayaBlackwell6;additem;Base.ScrapMetal;50",
    },{
        guid = "Questyno_MayaBlackwell6_B",
        text = "IGUI_SFQuest_Questyno_MayaBlackwell6_B",
        hidden = false,
    }},
    text = "IGUI_SFQuest_Questyno_MayaBlackwell6_Text",
    texture = "media/textures/Item_MayaBlackwell.png",
    title = "IGUI_SFQuest_Questyno_MayaBlackwell6_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "actionevent;killzombies:200;updateobjective:Questyno_MayaBlackwell6:2:Completed;clickevent;6619x10438x0:EventoMayaBlackwell6;time:50:anim:loot;updateobjective:Questyno_MayaBlackwell6:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MayaBlackwell6_A",

    awardsrep = "LaResistenza;150",
    awardsitem = "SWeapons.WeaponMag3;1",
    awardstask = "Questyno_MayaBlackwell7",
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_MayaBlackwell6_Lore" },
    needsitem = "Base.ScrapMetal;50",
    onobtained = "unlockworldevent;Questyno_MayaBlackwell;SFQuest_Questyno_MayaBlackwell6_Complete",
    text = "IGUI_SFQuest_Questyno_MayaBlackwell6_A_Text",
    texture = "media/textures/Item_MayaBlackwell.png",
    title = "IGUI_SFQuest_Questyno_MayaBlackwell6_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MayaBlackwell7",

    awardstask = "Questyno_MayaBlackwell7_A",
    dailycode = "Questyno_MayaBlackwell",
    lore = { "IGUI_SFQuest_Questyno_MayaBlackwell7_Lore" },
    objectives = {{
        guid = "Questyno_MayaBlackwell7_A",
        text = "IGUI_SFQuest_Questyno_MayaBlackwell7_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoMayaBlackwell7;additem;Base.ScrapMetal;65",
    },{
        guid = "Questyno_MayaBlackwell7_B",
        text = "IGUI_SFQuest_Questyno_MayaBlackwell7_B",
        hidden = false,
    }},
    text = "IGUI_SFQuest_Questyno_MayaBlackwell7_Text",
    texture = "media/textures/Item_MayaBlackwell.png",
    title = "IGUI_SFQuest_Questyno_MayaBlackwell7_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "actionevent;killzombies:200;updateobjective:Questyno_MayaBlackwell7:2:Completed;clickevent;7633x11463x0:EventoMayaBlackwell7;time:50:anim:loot;updateobjective:Questyno_MayaBlackwell7:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MayaBlackwell7_A",

    awardsrep = "LaResistenza;160",
    awardsitem = "SArmor.ArmorMag1;1",
    awardstask = "Questyno_MayaBlackwell8",
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_MayaBlackwell7_Lore" },
    needsitem = "Base.ScrapMetal;65",
    onobtained = "unlockworldevent;Questyno_MayaBlackwell;SFQuest_Questyno_MayaBlackwell7_Complete",
    text = "IGUI_SFQuest_Questyno_MayaBlackwell7_A_Text",
    texture = "media/textures/Item_MayaBlackwell.png",
    title = "IGUI_SFQuest_Questyno_MayaBlackwell7_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MayaBlackwell8",

    awardstask = "Questyno_MayaBlackwell8_A",
    dailycode = "Questyno_MayaBlackwell",
    lore = { "IGUI_SFQuest_Questyno_MayaBlackwell8_Lore" },
    objectives = {{
        guid = "Questyno_MayaBlackwell8_A",
        text = "IGUI_SFQuest_Questyno_MayaBlackwell8_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoMayaBlackwell8;additem;Base.ScrapMetal;65",
    },{
        guid = "Questyno_MayaBlackwell8_B",
        text = "IGUI_SFQuest_Questyno_MayaBlackwell8_B",
        hidden = false,
    }},
    text = "IGUI_SFQuest_Questyno_MayaBlackwell8_Text",
    texture = "media/textures/Item_MayaBlackwell.png",
    title = "IGUI_SFQuest_Questyno_MayaBlackwell8_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "actionevent;killzombies:200;updateobjective:Questyno_MayaBlackwell8:2:Completed;clickevent;7840x10719x0:EventoMayaBlackwell8;time:50:anim:loot;updateobjective:Questyno_MayaBlackwell8:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MayaBlackwell8_A",

    awardsrep = "LaResistenza;200",
    awardsitem = "SArmor.ArmorMag3;1",
    awardstask = "Questyno_MayaBlackwell9",
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_MayaBlackwell8_Lore" },
    needsitem = "Base.ScrapMetal;65",
    onobtained = "unlockworldevent;Questyno_MayaBlackwell;SFQuest_Questyno_MayaBlackwell8_Complete",
    text = "IGUI_SFQuest_Questyno_MayaBlackwell8_A_Text",
    texture = "media/textures/Item_MayaBlackwell.png",
    title = "IGUI_SFQuest_Questyno_MayaBlackwell8_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MayaBlackwell9",

    awardstask = "Questyno_MayaBlackwell9_A",
    dailycode = "Questyno_MayaBlackwell",
    lore = { "IGUI_SFQuest_Questyno_MayaBlackwell9_Lore" },
    objectives = {{
        guid = "Questyno_MayaBlackwell9_A",
        text = "IGUI_SFQuest_Questyno_MayaBlackwell9_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoMayaBlackwell9;additem;Base.ScrapMetal;60",
    },{
        guid = "Questyno_MayaBlackwell9_B",
        text = "IGUI_SFQuest_Questyno_MayaBlackwell9_B",
        hidden = false,
    }},
    text = "IGUI_SFQuest_Questyno_MayaBlackwell9_Text",
    texture = "media/textures/Item_MayaBlackwell.png",
    title = "IGUI_SFQuest_Questyno_MayaBlackwell9_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "actionevent;killzombies:200;updateobjective:Questyno_MayaBlackwell9:2:Completed;clickevent;7162x7487x0:EventoMayaBlackwell9;time:50:anim:loot;updateobjective:Questyno_MayaBlackwell9:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MayaBlackwell9_A",

    awardsrep = "LaResistenza;300",
    awardsitem = "SWeapons.WeaponsMag5;1",
    awardstask = "Questyno_MayaBlackwell10",
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_MayaBlackwell9_Lore" },
    needsitem = "Base.ScrapMetal;60",
    onobtained = "unlockworldevent;Questyno_MayaBlackwell;SFQuest_Questyno_MayaBlackwell9_Complete",
    text = "IGUI_SFQuest_Questyno_MayaBlackwell9_A_Text",
    texture = "media/textures/Item_MayaBlackwell.png",
    title = "IGUI_SFQuest_Questyno_MayaBlackwell9_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MayaBlackwell10",

    awardstask = "Questyno_MayaBlackwell10_A",
    dailycode = "Questyno_MayaBlackwell",
    lore = { "IGUI_SFQuest_Questyno_MayaBlackwell10_Lore" },
    objectives = {{
        guid = "Questyno_MayaBlackwell10_A",
        text = "IGUI_SFQuest_Questyno_MayaBlackwell10_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoMayaBlackwell10;additem;Base.ScrapMetal;60",
    },{
        guid = "Questyno_MayaBlackwell10_B",
        text = "IGUI_SFQuest_Questyno_MayaBlackwell10_B",
        hidden = false,
    }},
    text = "IGUI_SFQuest_Questyno_MayaBlackwell10_Text",
    texture = "media/textures/Item_MayaBlackwell.png",
    title = "IGUI_SFQuest_Questyno_MayaBlackwell10_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "actionevent;killzombies:125;updateobjective:Questyno_MayaBlackwell10:2:Completed;clickevent;3983x9166x0:EventoMayaBlackwell10;time:50:anim:loot;updateobjective:Questyno_MayaBlackwell10:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MayaBlackwell10_A",

    awardsrep = "LaResistenza;200",
    awardsitem = "SArmor.ArmorMag4;1",
    awardstask = "Questyno_MayaBlackwell11",
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_MayaBlackwell10_Lore" },
    needsitem = "Base.ScrapMetal;60",
    onobtained = "unlockworldevent;Questyno_MayaBlackwell;SFQuest_Questyno_MayaBlackwell10_Complete",
    text = "IGUI_SFQuest_Questyno_MayaBlackwell10_A_Text",
    texture = "media/textures/Item_MayaBlackwell.png",
    title = "IGUI_SFQuest_Questyno_MayaBlackwell10_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MayaBlackwell11",

    awardstask = "Questyno_MayaBlackwell11_A",
    dailycode = "Questyno_MayaBlackwell",
    lore = { "IGUI_SFQuest_Questyno_MayaBlackwell11_Lore" },
    objectives = {{
        guid = "Questyno_MayaBlackwell11_A",
        text = "IGUI_SFQuest_Questyno_MayaBlackwell11_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoMayaBlackwell11;additem;Base.ScrapMetal;50",
    },{
        guid = "Questyno_MayaBlackwell11_B",
        text = "IGUI_SFQuest_Questyno_MayaBlackwell11_B",
        hidden = false,
    }},
    text = "IGUI_SFQuest_Questyno_MayaBlackwell11_Text",
    texture = "media/textures/Item_MayaBlackwell.png",
    title = "IGUI_SFQuest_Questyno_MayaBlackwell11_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "actionevent;killzombies:125;updateobjective:Questyno_MayaBlackwell11:2:Completed;clickevent;7289x7573x0:EventoMayaBlackwell11;time:50:anim:loot;updateobjective:Questyno_MayaBlackwell11:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MayaBlackwell11_A",

    awardsrep = "LaResistenza;200",
    awardsitem = "SWeapons.WeaponsMag6;1",
    awardstask = "Questyno_MayaBlackwell12",
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_MayaBlackwell11_Lore" },
    needsitem = "Base.ScrapMetal;50",
    onobtained = "unlockworldevent;Questyno_MayaBlackwell;SFQuest_Questyno_MayaBlackwell11_Complete",
    text = "IGUI_SFQuest_Questyno_MayaBlackwell11_A_Text",
    texture = "media/textures/Item_MayaBlackwell.png",
    title = "IGUI_SFQuest_Questyno_MayaBlackwell11_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MayaBlackwell12",

    awardstask = "Questyno_MayaBlackwell12_A",
    dailycode = "Questyno_MayaBlackwell",
    lore = { "IGUI_SFQuest_Questyno_MayaBlackwell12_Lore" },
    objectives = {{
        guid = "Questyno_MayaBlackwell12_A",
        text = "IGUI_SFQuest_Questyno_MayaBlackwell12_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoMayaBlackwell12;additem;Base.ScrapMetal;50",
    },{
        guid = "Questyno_MayaBlackwell12_B",
        text = "IGUI_SFQuest_Questyno_MayaBlackwell12_B",
        hidden = false,
    }},
    text = "IGUI_SFQuest_Questyno_MayaBlackwell12_Text",
    texture = "media/textures/Item_MayaBlackwell.png",
    title = "IGUI_SFQuest_Questyno_MayaBlackwell12_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "actionevent;killzombies:140;updateobjective:Questyno_MayaBlackwell12:2:Completed;clickevent;4625x6732x0:EventoMayaBlackwell12;time:50:anim:loot;updateobjective:Questyno_MayaBlackwell12:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MayaBlackwell12_A",

    awardsrep = "LaResistenza;200",
    awardsitem = "SArmor.ArmorMag5;1",
    awardstask = "Questyno_MayaBlackwell13",
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_MayaBlackwell12_Lore" },
    needsitem = "Base.ScrapMetal;50",
    onobtained = "unlockworldevent;Questyno_MayaBlackwell;SFQuest_Questyno_MayaBlackwell12_Complete",
    text = "IGUI_SFQuest_Questyno_MayaBlackwell12_A_Text",
    texture = "media/textures/Item_MayaBlackwell.png",
    title = "IGUI_SFQuest_Questyno_MayaBlackwell12_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MayaBlackwell13",

    awardstask = "Questyno_MayaBlackwell13_A",
    dailycode = "Questyno_MayaBlackwell",
    lore = { "IGUI_SFQuest_Questyno_MayaBlackwell13_Lore" },
    objectives = {{
        guid = "Questyno_MayaBlackwell13_A",
        text = "IGUI_SFQuest_Questyno_MayaBlackwell13_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoMayaBlackwell13;additem;Base.ScrapMetal;50",
    },{
        guid = "Questyno_MayaBlackwell13_B",
        text = "IGUI_SFQuest_Questyno_MayaBlackwell13_B",
        hidden = false,
    }},
    text = "IGUI_SFQuest_Questyno_MayaBlackwell13_Text",
    texture = "media/textures/Item_MayaBlackwell.png",
    title = "IGUI_SFQuest_Questyno_MayaBlackwell13_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "actionevent;killzombies:140;updateobjective:Questyno_MayaBlackwell13:2:Completed;clickevent;4625x6732x0:EventoMayaBlackwell13;time:50:anim:loot;updateobjective:Questyno_MayaBlackwell13:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MayaBlackwell13_A",

    awardsrep = "LaResistenza;200",
    awardsitem = "SWeapons.WeaponsMag7;1",
    awardstask = "Questyno_MayaBlackwell14",
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_MayaBlackwell13_Lore" },
    needsitem = "Base.ScrapMetal;50",
    onobtained = "unlockworldevent;Questyno_MayaBlackwell;SFQuest_Questyno_MayaBlackwell13_Complete",
    text = "IGUI_SFQuest_Questyno_MayaBlackwell13_A_Text",
    texture = "media/textures/Item_MayaBlackwell.png",
    title = "IGUI_SFQuest_Questyno_MayaBlackwell13_Title",
});

--[[
            *** Lucas Miller ***
            Elenco:
                intro. Incontra Lucas Miller.
				1. Recuperare 20kg di oro, Recuperare MoneyToXP.Rotolo;3 parlando con (10420,12758,0) (100rep)
				2. Recuperare 25kg di oro, Recuperare MoneyToXP.Rotolo;4 parlando con (10223,12769,0) (110rep)
				3. Recuperare 30kg di oro, Recuperare MoneyToXP.Rotolo;5 parlando con (9976,12745,0) (120rep)
				4. Recuperare 32kg di oro, Recuperare MoneyToXP.Rotolo;6 parlando con (9916,12880,0) (130rep)
				5. Recuperare 40kg di oro, Recuperare MoneyToXP.Mazzetta parlando con (9942,13020,0) (150rep)
				6. Recuperare 15kg di oro, Recuperare MoneyToXP.Rotolo parlando con (9929,12681,0) (50rep)
]]

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_LucasMiller_Intro",

    awardstask = "Questyno_LucasMiller1",
    completesound = "levelup",
    dailycode = "Questyno_LucasMiller",
    lore = { "IGUI_SFQuest_Questyno_LucasMiller_Intro_Lore" },
    text = "IGUI_SFQuest_Questyno_LucasMiller_Intro_Text",
    texture = "media/textures/Item_LucasMiller.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_LucasMiller;SFQuest_Questyno_LucasMiller_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_LucasMiller_Intro_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_LucasMiller1",

    awardstask = "Questyno_LucasMiller1_A",
    dailycode = "Questyno_LucasMiller",
    lore = { "IGUI_SFQuest_Questyno_LucasMiller1_Lore" },
    needsitem = "Tag#Golden;200",
    onobtained = "unlockworldevent;Questyno_LucasMiller;SFQuest_Questyno_LucasMiller1_Complete",
    text = "IGUI_SFQuest_Questyno_LucasMiller1_Text",
    texture = "media/textures/Item_LucasMiller.png",
    title = "IGUI_SFQuest_Questyno_LucasMiller1_Title",
    unlockedsound = "QuestUnlocked",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_LucasMiller1_A",

    awardsrep = "LaResistenza;100",
    awardsitem = "MoneyToXP.Rotolo;3",
    awardstask = "Questyno_LucasMiller2",
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_LucasMiller1_A_Lore" },
    objectives = {{
        guid = "Questyno_LucasMiller1_A",
        text = "IGUI_SFQuest_Questyno_LucasMiller1_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoLucasMiller1",
    }},        
    text = "IGUI_SFQuest_Questyno_LucasMiller1_A_Text",
    texture = "media/textures/Item_LucasMiller.png",
    title = "IGUI_SFQuest_Questyno_LucasMiller1_Title",
    unlocks = "clickevent;10420x12758x1:EventoLucasMiller1;time:50:anim:loot;updateobjective:Questyno_LucasMiller1_A:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_LucasMiller2",

    awardstask = "Questyno_LucasMiller2_A",
    dailycode = "Questyno_LucasMiller",
    lore = { "IGUI_SFQuest_Questyno_LucasMiller2_Lore" },
    needsitem = "Tag#Golden;250",
    onobtained = "unlockworldevent;Questyno_LucasMiller;SFQuest_Questyno_LucasMiller2_Complete",
    text = "IGUI_SFQuest_Questyno_LucasMiller2_Text",
    texture = "media/textures/Item_LucasMiller.png",
    title = "IGUI_SFQuest_Questyno_LucasMiller2_Title",
    unlockedsound = "QuestUnlocked",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_LucasMiller2_A",

    awardsrep = "LaResistenza;110",
    awardsitem = "MoneyToXP.Rotolo;4",
    awardstask = "Questyno_LucasMiller3",
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_LucasMiller2_A_Lore" },
    objectives = {{
        guid = "Questyno_LucasMiller2_A",
        text = "IGUI_SFQuest_Questyno_LucasMiller2_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoLucasMiller2",
    }},
    text = "IGUI_SFQuest_Questyno_LucasMiller2_A_Text",
    texture = "media/textures/Item_LucasMiller.png",
    title = "IGUI_SFQuest_Questyno_LucasMiller2_Title",
    unlocks = "clickevent;10223x12769x1:EventoLucasMiller2;time:50:anim:loot;updateobjective:Questyno_LucasMiller2_A:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_LucasMiller3",

    awardstask = "Questyno_LucasMiller3_A",
    dailycode = "Questyno_LucasMiller",
    lore = { "IGUI_SFQuest_Questyno_LucasMiller3_Lore" },
    needsitem = "Tag#Golden;300",
    onobtained = "unlockworldevent;Questyno_LucasMiller;SFQuest_Questyno_LucasMiller3_Complete",
    text = "IGUI_SFQuest_Questyno_LucasMiller3_Text",
    texture = "media/textures/Item_LucasMiller.png",
    title = "IGUI_SFQuest_Questyno_LucasMiller3_Title",
    unlockedsound = "QuestUnlocked",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_LucasMiller3_A",

    awardsrep = "LaResistenza;120",
    awardsitem = "MoneyToXP.Rotolo;5",
    awardstask = "Questyno_LucasMiller4",
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_LucasMiller3_A_Lore" },
    objectives = {{
        guid = "Questyno_LucasMiller3_A",
        text = "IGUI_SFQuest_Questyno_LucasMiller3_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoLucasMiller3",
    }},
    text = "IGUI_SFQuest_Questyno_LucasMiller3_A_Text",
    texture = "media/textures/Item_LucasMiller.png",
    title = "IGUI_SFQuest_Questyno_LucasMiller3_Title",
    unlocks = "clickevent;9976x12745x1:EventoLucasMiller3;time:50:anim:loot;updateobjective:Questyno_LucasMiller3_A:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_LucasMiller4",

    awardstask = "Questyno_LucasMiller4_A",
    dailycode = "Questyno_LucasMiller",
    lore = { "IGUI_SFQuest_Questyno_LucasMiller4_Lore" },
    needsitem = "Tag#Golden;320",
    onobtained = "unlockworldevent;Questyno_LucasMiller;SFQuest_Questyno_LucasMiller4_Complete",
    text = "IGUI_SFQuest_Questyno_LucasMiller4_Text",
    texture = "media/textures/Item_LucasMiller.png",
    title = "IGUI_SFQuest_Questyno_LucasMiller4_Title",
    unlockedsound = "QuestUnlocked",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_LucasMiller4_A",

    awardsrep = "LaResistenza;130",
    awardsitem = "MoneyToXP.Rotolo;6",
    awardstask = "Questyno_LucasMiller5",
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_LucasMiller4_A_Lore" },
    objectives = {{
        guid = "Questyno_LucasMiller4_A",
        text = "IGUI_SFQuest_Questyno_LucasMiller4_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoLucasMiller4",
    }},
    text = "IGUI_SFQuest_Questyno_LucasMiller4_A_Text",
    texture = "media/textures/Item_LucasMiller.png",
    title = "IGUI_SFQuest_Questyno_LucasMiller4_Title",
    unlocks = "clickevent;9916x12880x1:EventoLucasMiller4;time:50:anim:loot;updateobjective:Questyno_LucasMiller4_A:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_LucasMiller5",

    awardstask = "Questyno_LucasMiller5_A",
    dailycode = "Questyno_LucasMiller",
    lore = { "IGUI_SFQuest_Questyno_LucasMiller5_Lore" },
    needsitem = "Tag#Golden;400",
    onobtained = "unlockworldevent;Questyno_LucasMiller;SFQuest_Questyno_LucasMiller5_Complete",
    text = "IGUI_SFQuest_Questyno_LucasMiller5_Text",
    texture = "media/textures/Item_LucasMiller.png",
    title = "IGUI_SFQuest_Questyno_LucasMiller5_Title",
    unlockedsound = "QuestUnlocked",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_LucasMiller5_A",

    awardsrep = "LaResistenza;150",
    awardsitem = "MoneyToXP.Mazzetta;1",
    awardstask = "Questyno_LucasMiller6",
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_LucasMiller5_A_Lore" },
    objectives = {{
        guid = "Questyno_LucasMiller5_A",
        text = "IGUI_SFQuest_Questyno_LucasMiller5_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoLucasMiller5",
    }},
    text = "IGUI_SFQuest_Questyno_LucasMiller5_A_Text",
    texture = "media/textures/Item_LucasMiller.png",
    title = "IGUI_SFQuest_Questyno_LucasMiller5_Title",
    unlocks = "clickevent;9942x13020x1:EventoLucasMiller5;time:50:anim:loot;updateobjective:Questyno_LucasMiller5_A:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_LucasMiller6",

    awardstask = "Questyno_LucasMiller6_A",
    dailycode = "Questyno_LucasMiller",
    lore = { "IGUI_SFQuest_Questyno_LucasMiller6_Lore" },
    needsitem = "Tag#Golden;150",
    onobtained = "unlockworldevent;Questyno_LucasMiller;SFQuest_Questyno_LucasMiller6_Complete",
    text = "IGUI_SFQuest_Questyno_LucasMiller6_Text",
    texture = "media/textures/Item_LucasMiller.png",
    title = "IGUI_SFQuest_Questyno_LucasMiller6_Title",
    unlockedsound = "QuestUnlocked",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_LucasMiller6_A",

    awardsrep = "LaResistenza;50",
    awardsitem = "MoneyToXP.Rotolo;1",
    awardstask = "Questyno_LucasMiller1",
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_LucasMiller6_A_Lore" },
    objectives = {{
        guid = "Questyno_LucasMiller6_A",
        text = "IGUI_SFQuest_Questyno_LucasMiller6_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoLucasMiller6",
    }},
    text = "IGUI_SFQuest_Questyno_LucasMiller6_A_Text",
    texture = "media/textures/Item_LucasMiller.png",
    title = "IGUI_SFQuest_Questyno_LucasMiller6_Title",
    unlocks = "clickevent;9929x12681x1:EventoLucasMiller6;time:50:anim:loot;updateobjective:Questyno_LucasMiller6_A:1:Completed",
});


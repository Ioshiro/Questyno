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

    awardsrep = "TaylorBlaze;100",
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

    awardsrep = "LaResistenza;650",
    awardsitem = "SWeapons.SalvagedPipeWrench;1;Money;150",
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

    awardsrep = "LaResistenza;650",
    awardsitem = "SWeapons.SalvagedBlade;1;Money;150",
    completesound = "levelup",
    dailycode = "Questyno_TaylorBlaze",
    lore = { "IGUI_SFQuest_Questyno_TaylorBlaze2_Lore" },
    needsitem = "Bullets45Box;5",
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
    completesound = "levelup",
    dailycode = "Questyno_TaylorBlaze",
    lore = { "IGUI_SFQuest_Questyno_TaylorBlaze3_Lore" },
    needsitem = "223Box;8",
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
    completesound = "levelup",
    dailycode = "Questyno_TaylorBlaze",
    lore = { "IGUI_SFQuest_Questyno_TaylorBlaze4_Lore" },
    needsitem = "308Box;6",
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
    completesound = "levelup",
    dailycode = "Questyno_TaylorBlaze",
    lore = { "IGUI_SFQuest_Questyno_TaylorBlaze5_Lore" },
    needsitem = "Bullets44Box;6",
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
    completesound = "levelup",
    dailycode = "Questyno_TaylorBlaze",
    lore = { "IGUI_SFQuest_Questyno_TaylorBlaze6_Lore" },
    needsitem = "ShotgunShellsBox;5",
    onobtained = "unlockworldevent;Questyno_TaylorBlaze;SFQuest_Questyno_TaylorBlaze6_Complete",
    text = "IGUI_SFQuest_Questyno_TaylorBlaze6_Text",
    texture = "media/textures/Item_TaylorBlaze.png",
    title = "IGUI_SFQuest_Questyno_TaylorBlaze6_Title",
    unlockedsound = "QuestUnlocked",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TaylorBlaze7",

    awardsrep = "LaResistenza;1200",
    awardsitem = "CleaningKit;1;Money;150",
    completesound = "levelup",
    dailycode = "Questyno_TaylorBlaze",
    lore = { "IGUI_SFQuest_Questyno_TaylorBlaze7_Lore" },
    needsitem = "22Box;3",
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
    dailycode = "Questyno_TaylorBlaze",
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
    },{
        guid = "Questyno_TaylorBlaze8_I",
        text = "IGUI_SFQuest_Questyno_TaylorBlaze8_I",
        hidden = false,
    }},
    text = "IGUI_SFQuest_Questyno_TaylorBlaze8_A_Text",
    texture = "media/textures/Item_TaylorBlaze.png",
    title = "IGUI_SFQuest_Questyno_TaylorBlaze8_Title",
    unlocks = "actionevent;killzombies:1000:tierlevel:5;updateobjective:Questyno_TaylorBlaze8:7:Completed"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TaylorBlaze8_B",

    awardsrep = "LaResistenza;2200",
    awardsitem = "PipeBomb;1;Money;150",
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

    awardsrep = "MarcusKane;100",
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
        needsitem = "CardID;30",
        onobtained = "updateobjective;Questyno_MarcusKane1;1;Completed;removeitem;CardID;50",
    },{
        guid = "Questyno_MarcusKane1_B",
        text = "IGUI_SFQuest_Questyno_MarcusKane1_B",
        hidden = false,
    }},
    text = "IGUI_SFQuest_Questyno_MarcusKane1_Text",
    texture = "media/textures/Item_MarcusKane.png",
    title = "IGUI_SFQuest_Questyno_MarcusKane1_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "actionevent;killzombies:200;updateobjective:Questyno_MarcusKane1:2:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MarcusKane1_A",

    awardsrep = "LaResistenza;1300",
    awardsitem = "Base.Money;25",
    completesound = "levelup",
    dailycode = "Questyno_MarcusKane",
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
        needsitem = "CardID;50",
        onobtained = "updateobjective;Questyno_MarcusKane2;1;Completed;removeitem;CardID;100",
    },{
        guid = "Questyno_MarcusKane2_B",
        text = "IGUI_SFQuest_Questyno_MarcusKane2_B",
        hidden = false,
    }},
    text = "IGUI_SFQuest_Questyno_MarcusKane2_Text",
    texture = "media/textures/Item_MarcusKane.png",
    title = "IGUI_SFQuest_Questyno_MarcusKane2_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "actionevent;killzombies:500;updateobjective:Questyno_MarcusKane2:2:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MarcusKane2_A",

    awardsrep = "LaResistenza;2000",
    awardsitem = "Base.Money;50",
    completesound = "levelup",
    dailycode = "Questyno_MarcusKane",
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
        needsitem = "CardID;60",
        onobtained = "updateobjective;Questyno_MarcusKane3;1;Completed;removeitem;CardID;120",
    },{
        guid = "Questyno_MarcusKane3_B",
        text = "IGUI_SFQuest_Questyno_MarcusKane3_B",
        hidden = false,
    }},
    text = "IGUI_SFQuest_Questyno_MarcusKane3_Text",
    texture = "media/textures/Item_MarcusKane.png",
    title = "IGUI_SFQuest_Questyno_MarcusKane3_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "actionevent;killzombies:600;updateobjective:Questyno_MarcusKane3:2:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MarcusKane3_A",

    awardsrep = "LaResistenza;2200",
    awardsitem = "Base.Money;60",
    completesound = "levelup",
    dailycode = "Questyno_MarcusKane",
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
        needsitem = "CardID;100",
        onobtained = "updateobjective;Questyno_MarcusKane4;1;Completed;removeitem;CardID;200",
    },{
        guid = "Questyno_MarcusKane4_B",
        text = "IGUI_SFQuest_Questyno_MarcusKane4_B",
        hidden = false,
    }},
    text = "IGUI_SFQuest_Questyno_MarcusKane4_Text",
    texture = "media/textures/Item_MarcusKane.png",
    title = "IGUI_SFQuest_Questyno_MarcusKane4_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "actionevent;killzombies:1000;updateobjective:Questyno_MarcusKane4:2:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MarcusKane4_A",

    awardsrep = "LaResistenza;3200",
    awardsitem = "Base.Money;80",
    completesound = "levelup",
    dailycode = "Questyno_MarcusKane",
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

    awardsrep = "OliviaChambers;100",
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
    completesound = "levelup",
    dailycode = "Questyno_OliviaChambers",
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
    unlocks = "actionevent;killzombies:120;updateobjective:Questyno_OliviaChambers2:2:Completed;clickevent;6727x6992x0:EventoOliviaChambers2;time:50:anim:loot;updateobjective:Questyno_OliviaChambers2:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_OliviaChambers2_A",

    awardsrep = "LaResistenza;1200",
    awardsitem = "LabBooks.BkChemistryCourse;1",
    completesound = "levelup",
    dailycode = "Questyno_OliviaChambers",
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
    completesound = "levelup",
    dailycode = "Questyno_OliviaChambers",
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
    completesound = "levelup",
    dailycode = "Questyno_OliviaChambers",
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
    unlocks = "actionevent;killzombies:100;updateobjective:Questyno_OliviaChambers5:2:Completed;clickevent;4879x5777x0:EventoOliviaChambers5;time:50:anim:loot;updateobjective:Questyno_OliviaChambers5:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_OliviaChambers5_A",

    awardsrep = "LaResistenza;1200",
    awardsitem = "LabBooks.BkVirologyCourses1;1",
    completesound = "levelup",
    dailycode = "Questyno_OliviaChambers",
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
    unlocks = "actionevent;killzombies:100;updateobjective:Questyno_OliviaChambers6:2:Completed;clickevent;8581x13684x0:EventoOliviaChambers6;time:50:anim:loot;updateobjective:Questyno_OliviaChambers6:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_OliviaChambers6_A",

    awardsrep = "LaResistenza;800",
    awardsitem = "LabBooks.BkVirologyCourses2;1",
    completesound = "levelup",
    dailycode = "Questyno_OliviaChambers",
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

    awardsrep = "MayaBlackwell;100",
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
    completesound = "levelup",
    dailycode = "Questyno_MayaBlackwell",
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
    completesound = "levelup",
    dailycode = "Questyno_MayaBlackwell",
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
    unlocks = "actionevent;killzombies:200;updateobjective:Questyno_MayaBlackwell3:2:Completed;clickevent;3832x11659x0:EventoMayaBlackwell3;time:50:anim:loot;updateobjective:Questyno_MayaBlackwell3:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MayaBlackwell3_A",

    awardsrep = "LaResistenza;150",
    awardsitem = "TW.WorkshopMag2;1",
    completesound = "levelup",
    dailycode = "Questyno_MayaBlackwell",
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
    completesound = "levelup",
    dailycode = "Questyno_MayaBlackwell",
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
    awardsitem = "SWeapons.WeaponMag2;1;SWeapons.WeaponMag4;1",
    completesound = "levelup",
    dailycode = "Questyno_MayaBlackwell",
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
    unlocks = "actionevent;killzombies:200:tierlevel:4;updateobjective:Questyno_MayaBlackwell6:2:Completed;clickevent;6619x10438x0:EventoMayaBlackwell6;time:50:anim:loot;updateobjective:Questyno_MayaBlackwell6:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MayaBlackwell6_A",

    awardsrep = "LaResistenza;150",
    awardsitem = "SWeapons.WeaponMag3;1",
    completesound = "levelup",
    dailycode = "Questyno_MayaBlackwell",
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
    unlocks = "actionevent;killzombies:200:tierlevel:5;updateobjective:Questyno_MayaBlackwell7:2:Completed;clickevent;4908x5728x0:EventoMayaBlackwell7;time:50:anim:loot;updateobjective:Questyno_MayaBlackwell7:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MayaBlackwell7_A",

    awardsrep = "LaResistenza;160",
    awardsitem = "SArmor.ArmorMag1;1",
    completesound = "levelup",
    dailycode = "Questyno_MayaBlackwell",
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
    unlocks = "actionevent;killzombies:200:tierlevel:3;updateobjective:Questyno_MayaBlackwell8:2:Completed;clickevent;7840x10719x0:EventoMayaBlackwell8;time:50:anim:loot;updateobjective:Questyno_MayaBlackwell8:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MayaBlackwell8_A",

    awardsrep = "LaResistenza;200",
    awardsitem = "SArmor.ArmorMag3;1",
    completesound = "levelup",
    dailycode = "Questyno_MayaBlackwell",
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
    unlocks = "actionevent;killzombies:200:tierlevel:4;updateobjective:Questyno_MayaBlackwell9:2:Completed;clickevent;7162x7487x0:EventoMayaBlackwell9;time:50:anim:loot;updateobjective:Questyno_MayaBlackwell9:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MayaBlackwell9_A",

    awardsrep = "LaResistenza;300",
    awardsitem = "SWeapons.WeaponMag5;1",
    completesound = "levelup",
    dailycode = "Questyno_MayaBlackwell",
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
    unlocks = "actionevent;killzombies:125:tierlevel:5;updateobjective:Questyno_MayaBlackwell10:2:Completed;clickevent;5433x10210x0:EventoMayaBlackwell10;time:50:anim:loot;updateobjective:Questyno_MayaBlackwell10:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MayaBlackwell10_A",

    awardsrep = "LaResistenza;200",
    awardsitem = "SArmor.ArmorMag4;1",
    completesound = "levelup",
    dailycode = "Questyno_MayaBlackwell",
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
    unlocks = "actionevent;killzombies:125:tierlevel:4;updateobjective:Questyno_MayaBlackwell11:2:Completed;clickevent;7289x7573x0:EventoMayaBlackwell11;time:50:anim:loot;updateobjective:Questyno_MayaBlackwell11:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MayaBlackwell11_A",

    awardsrep = "LaResistenza;200",
    awardsitem = "SWeapons.WeaponMag6;1",
    completesound = "levelup",
    dailycode = "Questyno_MayaBlackwell",
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
    completesound = "levelup",
    dailycode = "Questyno_MayaBlackwell",
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
    unlocks = "actionevent;killzombies:150:tierlevel:3;updateobjective:Questyno_MayaBlackwell13:2:Completed;clickevent;5992x11924x0:EventoMayaBlackwell13;time:50:anim:loot;updateobjective:Questyno_MayaBlackwell13:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MayaBlackwell13_A",

    awardsrep = "LaResistenza;200",
    awardsitem = "SArmor.ArmorMag2;1",
    completesound = "levelup",
    dailycode = "Questyno_MayaBlackwell",
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

    awardsrep = "LucasMiller;100",
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
    needsitem = "Tag#Golden;120",
    onobtained = "unlockworldevent;Questyno_LucasMiller;SFQuest_Questyno_LucasMiller1_Complete",
    text = "IGUI_SFQuest_Questyno_LucasMiller1_Text",
    texture = "media/textures/Item_LucasMiller.png",
    title = "IGUI_SFQuest_Questyno_LucasMiller1_Title",
    unlockedsound = "QuestUnlocked",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_LucasMiller1_A",

    awardsrep = "LaResistenza;500",
    awardsitem = "MoneyToXP.Rotolo;2",
    completesound = "levelup",
    dailycode = "Questyno_LucasMiller",
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
    needsitem = "Tag#Golden;150",
    onobtained = "unlockworldevent;Questyno_LucasMiller;SFQuest_Questyno_LucasMiller2_Complete",
    text = "IGUI_SFQuest_Questyno_LucasMiller2_Text",
    texture = "media/textures/Item_LucasMiller.png",
    title = "IGUI_SFQuest_Questyno_LucasMiller2_Title",
    unlockedsound = "QuestUnlocked",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_LucasMiller2_A",

    awardsrep = "LaResistenza;500",
    awardsitem = "MoneyToXP.Rotolo;3",
    completesound = "levelup",
    dailycode = "Questyno_LucasMiller",
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
    needsitem = "Tag#Golden;200",
    onobtained = "unlockworldevent;Questyno_LucasMiller;SFQuest_Questyno_LucasMiller3_Complete",
    text = "IGUI_SFQuest_Questyno_LucasMiller3_Text",
    texture = "media/textures/Item_LucasMiller.png",
    title = "IGUI_SFQuest_Questyno_LucasMiller3_Title",
    unlockedsound = "QuestUnlocked",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_LucasMiller3_A",

    awardsrep = "LaResistenza;500",
    awardsitem = "MoneyToXP.Rotolo;3",
    completesound = "levelup",
    dailycode = "Questyno_LucasMiller",
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
    needsitem = "Tag#Golden;220",
    onobtained = "unlockworldevent;Questyno_LucasMiller;SFQuest_Questyno_LucasMiller4_Complete",
    text = "IGUI_SFQuest_Questyno_LucasMiller4_Text",
    texture = "media/textures/Item_LucasMiller.png",
    title = "IGUI_SFQuest_Questyno_LucasMiller4_Title",
    unlockedsound = "QuestUnlocked",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_LucasMiller4_A",

    awardsrep = "LaResistenza;500",
    awardsitem = "MoneyToXP.Rotolo;4",
    completesound = "levelup",
    dailycode = "Questyno_LucasMiller",
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
    needsitem = "Tag#Golden;250",
    onobtained = "unlockworldevent;Questyno_LucasMiller;SFQuest_Questyno_LucasMiller5_Complete",
    text = "IGUI_SFQuest_Questyno_LucasMiller5_Text",
    texture = "media/textures/Item_LucasMiller.png",
    title = "IGUI_SFQuest_Questyno_LucasMiller5_Title",
    unlockedsound = "QuestUnlocked",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_LucasMiller5_A",

    awardsrep = "LaResistenza;500",
    awardsitem = "MoneyToXP.Rotolo;5",
    completesound = "levelup",
    dailycode = "Questyno_LucasMiller",
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
    needsitem = "Tag#Golden;100",
    onobtained = "unlockworldevent;Questyno_LucasMiller;SFQuest_Questyno_LucasMiller6_Complete",
    text = "IGUI_SFQuest_Questyno_LucasMiller6_Text",
    texture = "media/textures/Item_LucasMiller.png",
    title = "IGUI_SFQuest_Questyno_LucasMiller6_Title",
    unlockedsound = "QuestUnlocked",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_LucasMiller6_A",

    awardsrep = "LaResistenza;500",
    awardsitem = "MoneyToXP.Rotolo;1",
    completesound = "levelup",
    dailycode = "Questyno_LucasMiller",
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

--[[
            *** Lincoln Reed ***
            Elenco:
                intro. Incontra Lincoln Reed.
				1. Recuperare 50$ (250rep)
]]

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_LincolnReed_Intro",

    awardsrep = "LincolnReed;100",
    completesound = "levelup",
    -- dailycode = "Questyno_LincolnReed",
    lore = { "IGUI_SFQuest_Questyno_LincolnReed_Intro_Lore" },
    text = "IGUI_SFQuest_Questyno_LincolnReed_Intro_Text",
    texture = "media/textures/Item_LincolnReed.png",
    unique = true,
    ondone = "randomcodedworldfrompool;Questyno_LincolnReed;Questyno;LincolnReed",
    unlocks = "addreputation;LincolnReed;100;unlockworldevent;Questyno_LincolnReed;SFQuest_Questyno_LincolnReed_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_LincolnReed_Intro_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_LincolnReed1",

    awardsrep = "LaResistenza;200",
    completesound = "levelup",
    dailycode = "Questyno_LincolnReed",
    lore = { "IGUI_SFQuest_Questyno_LincolnReed1_Lore" },
    needsitem = "MoneyToXP.Rotolo;1",
    onobtained = "unlockworldevent;Questyno_LincolnReed;SFQuest_Questyno_LincolnReed1_Complete",
    text = "IGUI_SFQuest_Questyno_LincolnReed1_Text",
    texture = "media/textures/Item_LincolnReed.png",
    title = "IGUI_SFQuest_Questyno_LincolnReed1_Title",
    unlockedsound = "QuestUnlocked",
});

--[[
            *** Gabriel Walker ***
            Elenco:
                intro. Incontra Gabriel Walker.
				1. Recuperare 10$ -> Recuperare MoneyToXp.Droga1 parlando con (8553,7690,0) (25rep)
				2. Recuperare 15$ -> Recuperare MoneyToXp.Droga1 parlando con (10230,8317,0) (25rep)
				3. Recuperare 10$ -> Recuperare MoneyToXp.Droga1 parlando con (7686,11593,0) (25rep)
				4. Recuperare 10$ -> Recuperare MoneyToXp.Droga1 parlando con (7019,8211,0) (25rep)
				5. Recuperare 20$ -> Recuperare MoneyToXp.Droga1 parlando con (9196,9997,0) (25rep)
				6. Recuperare 25$ -> Recuperare MoneyToXp.Droga2 parlando con (7930,10645,2) (25rep)
				7. Recuperare 20$ -> Recuperare MoneyToXp.Droga2 parlando con (4720,6776,2) (25rep)
				8. Recuperare 25$ -> Recuperare MoneyToXp.Droga2 parlando con (12184,12066,0) (25rep)
				9. Recuperare 30$ -> Recuperare MoneyToXp.Droga3 parlando con (7340,7239,0) (25rep)
]]

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_GabrielWalker_Intro",

    awardsrep = "GabrielWalker;100",
    completesound = "levelup",
    dailycode = "Questyno_GabrielWalker",
    lore = { "IGUI_SFQuest_Questyno_GabrielWalker_Intro_Lore" },
    text = "IGUI_SFQuest_Questyno_GabrielWalker_Intro_Text",
    texture = "media/textures/Item_GabrielWalker.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_GabrielWalker;SFQuest_Questyno_GabrielWalker_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_GabrielWalker_Intro_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_GabrielWalker1",

    awardstask = "Questyno_GabrielWalker1_A",
    dailycode = "Questyno_GabrielWalker",
    lore = { "IGUI_SFQuest_Questyno_GabrielWalker1_Lore" },
    needsitem = "Money;20",
    onobtained = "unlockworldevent;Questyno_GabrielWalker;SFQuest_Questyno_GabrielWalker1_Complete",
    text = "IGUI_SFQuest_Questyno_GabrielWalker1_Text",
    texture = "media/textures/Item_GabrielWalker.png",
    title = "IGUI_SFQuest_Questyno_GabrielWalker1_Title",
    unlockedsound = "QuestUnlocked",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_GabrielWalker1_A",

    awardsrep = "LaResistenza;50",
    awardsitem = "MoneyToXP.Droga2;1",
    completesound = "levelup",
    dailycode = "Questyno_GabrielWalker",
    lore = { "IGUI_SFQuest_Questyno_GabrielWalker1_A_Lore" },
    objectives = {{
        guid = "Questyno_GabrielWalker1_A",
        text = "IGUI_SFQuest_Questyno_GabrielWalker1_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoGabrielWalker1",
    }},
    text = "IGUI_SFQuest_Questyno_GabrielWalker1_A_Text",
    texture = "media/textures/Item_GabrielWalker.png",
    title = "IGUI_SFQuest_Questyno_GabrielWalker1_Title",
    unlocks = "clickevent;8353x7515x0:EventoGabrielWalker1;time:50:anim:loot;updateobjective:Questyno_GabrielWalker1_A:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_GabrielWalker2",

    awardstask = "Questyno_GabrielWalker2_A",
    dailycode = "Questyno_GabrielWalker",
    lore = { "IGUI_SFQuest_Questyno_GabrielWalker2_Lore" },
    needsitem = "Money;15",
    onobtained = "unlockworldevent;Questyno_GabrielWalker;SFQuest_Questyno_GabrielWalker2_Complete",
    text = "IGUI_SFQuest_Questyno_GabrielWalker2_Text",
    texture = "media/textures/Item_GabrielWalker.png",
    title = "IGUI_SFQuest_Questyno_GabrielWalker2_Title",
    unlockedsound = "QuestUnlocked",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_GabrielWalker2_A",

    awardsrep = "LaResistenza;50",
    awardsitem = "MoneyToXP.Droga2;1",
    completesound = "levelup",
    dailycode = "Questyno_GabrielWalker",
    lore = { "IGUI_SFQuest_Questyno_GabrielWalker2_A_Lore" },
    objectives = {{
        guid = "Questyno_GabrielWalker2_A",
        text = "IGUI_SFQuest_Questyno_GabrielWalker2_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoGabrielWalker2",
    }},
    text = "IGUI_SFQuest_Questyno_GabrielWalker2_A_Text",
    texture = "media/textures/Item_GabrielWalker.png",
    title = "IGUI_SFQuest_Questyno_GabrielWalker2_Title",
    unlocks = "clickevent;10230x8317x0:EventoGabrielWalker2;time:50:anim:loot;updateobjective:Questyno_GabrielWalker2_A:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_GabrielWalker3",

    awardstask = "Questyno_GabrielWalker3_A",
    dailycode = "Questyno_GabrielWalker",
    lore = { "IGUI_SFQuest_Questyno_GabrielWalker3_Lore" },
    needsitem = "Money;10",
    onobtained = "unlockworldevent;Questyno_GabrielWalker;SFQuest_Questyno_GabrielWalker3_Complete",
    text = "IGUI_SFQuest_Questyno_GabrielWalker3_Text",
    texture = "media/textures/Item_GabrielWalker.png",
    title = "IGUI_SFQuest_Questyno_GabrielWalker3_Title",
    unlockedsound = "QuestUnlocked",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_GabrielWalker3_A",

    awardsrep = "LaResistenza;50",
    awardsitem = "MoneyToXP.Droga2;1",
    completesound = "levelup",
    dailycode = "Questyno_GabrielWalker",
    lore = { "IGUI_SFQuest_Questyno_GabrielWalker3_A_Lore" },
    objectives = {{
        guid = "Questyno_GabrielWalker3_A",
        text = "IGUI_SFQuest_Questyno_GabrielWalker3_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoGabrielWalker3",
    }},
    text = "IGUI_SFQuest_Questyno_GabrielWalker3_A_Text",
    texture = "media/textures/Item_GabrielWalker.png",
    title = "IGUI_SFQuest_Questyno_GabrielWalker3_Title",
    unlocks = "clickevent;9196x9997x0:EventoGabrielWalker3;time:50:anim:loot;updateobjective:Questyno_GabrielWalker3_A:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_GabrielWalker4",

    awardstask = "Questyno_GabrielWalker4_A",
    dailycode = "Questyno_GabrielWalker",
    lore = { "IGUI_SFQuest_Questyno_GabrielWalker4_Lore" },
    needsitem = "Money;10",
    onobtained = "unlockworldevent;Questyno_GabrielWalker;SFQuest_Questyno_GabrielWalker4_Complete",
    text = "IGUI_SFQuest_Questyno_GabrielWalker4_Text",
    texture = "media/textures/Item_GabrielWalker.png",
    title = "IGUI_SFQuest_Questyno_GabrielWalker4_Title",
    unlockedsound = "QuestUnlocked",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_GabrielWalker4_A",

    awardsrep = "LaResistenza;50",
    awardsitem = "MoneyToXP.Droga2;1",
    completesound = "levelup",
    dailycode = "Questyno_GabrielWalker",
    lore = { "IGUI_SFQuest_Questyno_GabrielWalker4_A_Lore" },
    objectives = {{
        guid = "Questyno_GabrielWalker4_A",
        text = "IGUI_SFQuest_Questyno_GabrielWalker4_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoGabrielWalker4",
    }},
    text = "IGUI_SFQuest_Questyno_GabrielWalker4_A_Text",
    texture = "media/textures/Item_GabrielWalker.png",
    title = "IGUI_SFQuest_Questyno_GabrielWalker4_Title",
    unlocks = "clickevent;7019x8211x0:EventoGabrielWalker4;time:50:anim:loot;updateobjective:Questyno_GabrielWalker4_A:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_GabrielWalker5",

    awardstask = "Questyno_GabrielWalker5_A",
    dailycode = "Questyno_GabrielWalker",
    lore = { "IGUI_SFQuest_Questyno_GabrielWalker5_Lore" },
    needsitem = "Money;20",
    onobtained = "unlockworldevent;Questyno_GabrielWalker;SFQuest_Questyno_GabrielWalker5_Complete",
    text = "IGUI_SFQuest_Questyno_GabrielWalker5_Text",
    texture = "media/textures/Item_GabrielWalker.png",
    title = "IGUI_SFQuest_Questyno_GabrielWalker5_Title",
    unlockedsound = "QuestUnlocked",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_GabrielWalker5_A",

    awardsrep = "LaResistenza;50",
    awardsitem = "MoneyToXP.Droga2;1",
    completesound = "levelup",
    dailycode = "Questyno_GabrielWalker",
    lore = { "IGUI_SFQuest_Questyno_GabrielWalker5_A_Lore" },
    objectives = {{
        guid = "Questyno_GabrielWalker5_A",
        text = "IGUI_SFQuest_Questyno_GabrielWalker5_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoGabrielWalker5",
    }},
    text = "IGUI_SFQuest_Questyno_GabrielWalker5_A_Text",
    texture = "media/textures/Item_GabrielWalker.png",
    title = "IGUI_SFQuest_Questyno_GabrielWalker5_Title",
    unlocks = "clickevent;8835x9942x0:EventoGabrielWalker5;time:50:anim:loot;updateobjective:Questyno_GabrielWalker5_A:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_GabrielWalker6",

    awardstask = "Questyno_GabrielWalker6_A",
    dailycode = "Questyno_GabrielWalker",
    lore = { "IGUI_SFQuest_Questyno_GabrielWalker6_Lore" },
    needsitem = "Money;25",
    onobtained = "unlockworldevent;Questyno_GabrielWalker;SFQuest_Questyno_GabrielWalker6_Complete",
    text = "IGUI_SFQuest_Questyno_GabrielWalker6_Text",
    texture = "media/textures/Item_GabrielWalker.png",
    title = "IGUI_SFQuest_Questyno_GabrielWalker6_Title",
    unlockedsound = "QuestUnlocked",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_GabrielWalker6_A",

    awardsrep = "LaResistenza;50",
    awardsitem = "MoneyToXP.Droga2;1",
    completesound = "levelup",
    dailycode = "Questyno_GabrielWalker",
    lore = { "IGUI_SFQuest_Questyno_GabrielWalker6_A_Lore" },
    objectives = {{
        guid = "Questyno_GabrielWalker6_A",
        text = "IGUI_SFQuest_Questyno_GabrielWalker6_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoGabrielWalker6",
    }},
    text = "IGUI_SFQuest_Questyno_GabrielWalker6_A_Text",
    texture = "media/textures/Item_GabrielWalker.png",
    title = "IGUI_SFQuest_Questyno_GabrielWalker6_Title",
    unlocks = "clickevent;8185x9628x0:EventoGabrielWalker6;time:50:anim:loot;updateobjective:Questyno_GabrielWalker6_A:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_GabrielWalker7",

    awardstask = "Questyno_GabrielWalker7_A",
    dailycode = "Questyno_GabrielWalker",
    lore = { "IGUI_SFQuest_Questyno_GabrielWalker7_Lore" },
    needsitem = "Money;20",
    onobtained = "unlockworldevent;Questyno_GabrielWalker;SFQuest_Questyno_GabrielWalker7_Complete",
    text = "IGUI_SFQuest_Questyno_GabrielWalker7_Text",
    texture = "media/textures/Item_GabrielWalker.png",
    title = "IGUI_SFQuest_Questyno_GabrielWalker7_Title",
    unlockedsound = "QuestUnlocked",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_GabrielWalker7_A",

    awardsrep = "LaResistenza;50",
    awardsitem = "MoneyToXP.Droga2;1",
    completesound = "levelup",
    dailycode = "Questyno_GabrielWalker",
    lore = { "IGUI_SFQuest_Questyno_GabrielWalker7_A_Lore" },
    objectives = {{
        guid = "Questyno_GabrielWalker7_A",
        text = "IGUI_SFQuest_Questyno_GabrielWalker7_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoGabrielWalker7",
    }},
    text = "IGUI_SFQuest_Questyno_GabrielWalker7_A_Text",
    texture = "media/textures/Item_GabrielWalker.png",
    title = "IGUI_SFQuest_Questyno_GabrielWalker7_Title",
    unlocks = "clickevent;8034x9761x1:EventoGabrielWalker7;time:50:anim:loot;updateobjective:Questyno_GabrielWalker7_A:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_GabrielWalker8",

    awardstask = "Questyno_GabrielWalker8_A",
    dailycode = "Questyno_GabrielWalker",
    lore = { "IGUI_SFQuest_Questyno_GabrielWalker8_Lore" },
    needsitem = "Money;25",
    onobtained = "unlockworldevent;Questyno_GabrielWalker;SFQuest_Questyno_GabrielWalker8_Complete",
    text = "IGUI_SFQuest_Questyno_GabrielWalker8_Text",
    texture = "media/textures/Item_GabrielWalker.png",
    title = "IGUI_SFQuest_Questyno_GabrielWalker8_Title",
    unlockedsound = "QuestUnlocked",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_GabrielWalker8_A",

    awardsrep = "LaResistenza;50",
    awardsitem = "MoneyToXP.Droga2;1",
    completesound = "levelup",
    dailycode = "Questyno_GabrielWalker",
    lore = { "IGUI_SFQuest_Questyno_GabrielWalker8_A_Lore" },
    objectives = {{
        guid = "Questyno_GabrielWalker8_A",
        text = "IGUI_SFQuest_Questyno_GabrielWalker8_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoGabrielWalker8",
    }},
    text = "IGUI_SFQuest_Questyno_GabrielWalker8_A_Text",
    texture = "media/textures/Item_GabrielWalker.png",
    title = "IGUI_SFQuest_Questyno_GabrielWalker8_Title",
    unlocks = "clickevent;10751x9563x0:EventoGabrielWalker8;time:50:anim:loot;updateobjective:Questyno_GabrielWalker8_A:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_GabrielWalker9",

    awardstask = "Questyno_GabrielWalker9_A",
    dailycode = "Questyno_GabrielWalker",
    lore = { "IGUI_SFQuest_Questyno_GabrielWalker9_Lore" },
    needsitem = "Money;30",
    onobtained = "unlockworldevent;Questyno_GabrielWalker;SFQuest_Questyno_GabrielWalker9_Complete",
    text = "IGUI_SFQuest_Questyno_GabrielWalker9_Text",
    texture = "media/textures/Item_GabrielWalker.png",
    title = "IGUI_SFQuest_Questyno_GabrielWalker9_Title",
    unlockedsound = "QuestUnlocked",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_GabrielWalker9_A",

    awardsrep = "LaResistenza;50",
    awardsitem = "MoneyToXP.Droga3;1",
    completesound = "levelup",
    dailycode = "Questyno_GabrielWalker",
    lore = { "IGUI_SFQuest_Questyno_GabrielWalker9_A_Lore" },
    objectives = {{
        guid = "Questyno_GabrielWalker9_A",
        text = "IGUI_SFQuest_Questyno_GabrielWalker9_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoGabrielWalker9",
    }},
    text = "IGUI_SFQuest_Questyno_GabrielWalker9_A_Text",
    texture = "media/textures/Item_GabrielWalker.png",
    title = "IGUI_SFQuest_Questyno_GabrielWalker9_Title",
    unlocks = "clickevent;7651x10397x0:EventoGabrielWalker9;time:50:anim:loot;updateobjective:Questyno_GabrielWalker9_A:1:Completed",
});

  
--[[
            *** Dylan Harris ***
            Elenco:
                intro. Incontra Dylan Harris.
				1. Recuperare 30$ -> Recuperare MoneyToXp.Droga3 parlando con (13953,10622,0) (350rep)
				2. Recuperare 30$ -> Recuperare MoneyToXp.Droga3 parlando con (13901,11005,0) (550rep)
				3. Recuperare 30$ -> Recuperare MoneyToXp.Droga3 parlando con (13123,10933,0) (550rep)
				4. Recuperare 50$ -> Recuperare MoneyToXp.Droga4 parlando con (13989,11246,1) (550rep)
				5. Recuperare 50$ -> Recuperare MoneyToXp.Droga4 parlando con (13851,11298,0) (750rep)
				6. Recuperare 50$ -> Recuperare MoneyToXp.Droga4 parlando con (13778,11053,0) (750rep)
				7. Recuperare 100$ -> Recuperare MoneyToXp.Droga5 parlando con (14031,10945,0) (1550rep)
]]

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DylanHarris_Intro",

    awardsrep = "DylanHarris;100",
    completesound = "levelup",
    dailycode = "Questyno_DylanHarris",
    lore = { "IGUI_SFQuest_Questyno_DylanHarris_Intro_Lore" },
    text = "IGUI_SFQuest_Questyno_DylanHarris_Intro_Text",
    texture = "media/textures/Item_DylanHarris.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_DylanHarris;SFQuest_Questyno_DylanHarris_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_DylanHarris_Intro_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DylanHarris1",

    awardstask = "Questyno_DylanHarris1_A",
    dailycode = "Questyno_DylanHarris",
    lore = { "IGUI_SFQuest_Questyno_DylanHarris1_Lore" },
    needsitem = "Money;100",
    onobtained = "unlockworldevent;Questyno_DylanHarris;SFQuest_Questyno_DylanHarris1_Complete",
    text = "IGUI_SFQuest_Questyno_DylanHarris1_Text",
    texture = "media/textures/Item_DylanHarris.png",
    title = "IGUI_SFQuest_Questyno_DylanHarris1_Title",
    unlockedsound = "QuestUnlocked",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DylanHarris1_A",

    awardsrep = "LaResistenza;350",
    awardsitem = "MoneyToXP.Droga4;1",
    completesound = "levelup",
    dailycode = "Questyno_DylanHarris",
    lore = { "IGUI_SFQuest_Questyno_DylanHarris1_A_Lore" },
    objectives = {{
        guid = "Questyno_DylanHarris1_A",
        text = "IGUI_SFQuest_Questyno_DylanHarris1_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoDylanHarris1",
    }},
    text = "IGUI_SFQuest_Questyno_DylanHarris1_A_Text",
    texture = "media/textures/Item_DylanHarris.png",
    title = "IGUI_SFQuest_Questyno_DylanHarris1_Title",
    unlocks = "clickevent;13591x10970x0:EventoDylanHarris1;time:50:anim:loot;updateobjective:Questyno_DylanHarris1_A:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DylanHarris2",

    awardstask = "Questyno_DylanHarris2_A",
    dailycode = "Questyno_DylanHarris",
    lore = { "IGUI_SFQuest_Questyno_DylanHarris2_Lore" },
    needsitem = "Money;100",
    onobtained = "unlockworldevent;Questyno_DylanHarris;SFQuest_Questyno_DylanHarris2_Complete",
    text = "IGUI_SFQuest_Questyno_DylanHarris2_Text",
    texture = "media/textures/Item_DylanHarris.png",
    title = "IGUI_SFQuest_Questyno_DylanHarris2_Title",
    unlockedsound = "QuestUnlocked",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DylanHarris2_A",

    awardsrep = "LaResistenza;550",
    awardsitem = "MoneyToXP.Droga4;1",
    completesound = "levelup",
    dailycode = "Questyno_DylanHarris",
    lore = { "IGUI_SFQuest_Questyno_DylanHarris2_A_Lore" },
    objectives = {{
        guid = "Questyno_DylanHarris2_A",
        text = "IGUI_SFQuest_Questyno_DylanHarris2_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoDylanHarris2",
    }},
    text = "IGUI_SFQuest_Questyno_DylanHarris2_A_Text",
    texture = "media/textures/Item_DylanHarris.png",
    title = "IGUI_SFQuest_Questyno_DylanHarris2_Title",
    unlocks = "clickevent;12740x11934x0:EventoDylanHarris2;time:50:anim:loot;updateobjective:Questyno_DylanHarris2_A:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DylanHarris3",

    awardstask = "Questyno_DylanHarris3_A",
    dailycode = "Questyno_DylanHarris",
    lore = { "IGUI_SFQuest_Questyno_DylanHarris3_Lore" },
    needsitem = "Money;100",
    onobtained = "unlockworldevent;Questyno_DylanHarris;SFQuest_Questyno_DylanHarris3_Complete",
    text = "IGUI_SFQuest_Questyno_DylanHarris3_Text",
    texture = "media/textures/Item_DylanHarris.png",
    title = "IGUI_SFQuest_Questyno_DylanHarris3_Title",
    unlockedsound = "QuestUnlocked",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DylanHarris3_A",

    awardsrep = "LaResistenza;550",
    awardsitem = "MoneyToXP.Droga4;1",
    completesound = "levelup",
    dailycode = "Questyno_DylanHarris",
    lore = { "IGUI_SFQuest_Questyno_DylanHarris3_A_Lore" },
    objectives = {{
        guid = "Questyno_DylanHarris3_A",
        text = "IGUI_SFQuest_Questyno_DylanHarris3_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoDylanHarris3",
    }},
    text = "IGUI_SFQuest_Questyno_DylanHarris3_A_Text",
    texture = "media/textures/Item_DylanHarris.png",
    title = "IGUI_SFQuest_Questyno_DylanHarris3_Title",
    unlocks = "clickevent;3431x11262x1:EventoDylanHarris3;time:50:anim:loot;updateobjective:Questyno_DylanHarris3_A:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DylanHarris4",

    awardstask = "Questyno_DylanHarris4_A",
    dailycode = "Questyno_DylanHarris",
    lore = { "IGUI_SFQuest_Questyno_DylanHarris4_Lore" },
    needsitem = "Money;100",
    onobtained = "unlockworldevent;Questyno_DylanHarris;SFQuest_Questyno_DylanHarris4_Complete",
    text = "IGUI_SFQuest_Questyno_DylanHarris4_Text",
    texture = "media/textures/Item_DylanHarris.png",
    title = "IGUI_SFQuest_Questyno_DylanHarris4_Title",
    unlockedsound = "QuestUnlocked",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DylanHarris4_A",

    awardsrep = "LaResistenza;550",
    awardsitem = "MoneyToXP.Droga4;1",
    completesound = "levelup",
    dailycode = "Questyno_DylanHarris",
    lore = { "IGUI_SFQuest_Questyno_DylanHarris4_A_Lore" },
    objectives = {{
        guid = "Questyno_DylanHarris4_A",
        text = "IGUI_SFQuest_Questyno_DylanHarris4_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoDylanHarris4",
    }},
    text = "IGUI_SFQuest_Questyno_DylanHarris4_A_Text",
    texture = "media/textures/Item_DylanHarris.png",
    title = "IGUI_SFQuest_Questyno_DylanHarris4_Title",
    unlocks = "clickevent;7209x11221x1:EventoDylanHarris4;time:50:anim:loot;updateobjective:Questyno_DylanHarris4_A:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DylanHarris5",

    awardstask = "Questyno_DylanHarris5_A",
    dailycode = "Questyno_DylanHarris",
    lore = { "IGUI_SFQuest_Questyno_DylanHarris5_Lore" },
    needsitem = "Money;100",
    onobtained = "unlockworldevent;Questyno_DylanHarris;SFQuest_Questyno_DylanHarris5_Complete",
    text = "IGUI_SFQuest_Questyno_DylanHarris5_Text",
    texture = "media/textures/Item_DylanHarris.png",
    title = "IGUI_SFQuest_Questyno_DylanHarris5_Title",
    unlockedsound = "QuestUnlocked",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DylanHarris5_A",

    awardsrep = "LaResistenza;750",
    awardsitem = "MoneyToXP.Droga4;1",
    completesound = "levelup",
    dailycode = "Questyno_DylanHarris",
    lore = { "IGUI_SFQuest_Questyno_DylanHarris5_A_Lore" },
    objectives = {{
        guid = "Questyno_DylanHarris5_A",
        text = "IGUI_SFQuest_Questyno_DylanHarris5_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoDylanHarris5",
    }},
    text = "IGUI_SFQuest_Questyno_DylanHarris5_A_Text",
    texture = "media/textures/Item_DylanHarris.png",
    title = "IGUI_SFQuest_Questyno_DylanHarris5_Title",
    unlocks = "clickevent;4109x11776x1:EventoDylanHarris5;time:50:anim:loot;updateobjective:Questyno_DylanHarris5_A:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DylanHarris6",

    awardstask = "Questyno_DylanHarris6_A",
    dailycode = "Questyno_DylanHarris",
    lore = { "IGUI_SFQuest_Questyno_DylanHarris6_Lore" },
    needsitem = "Money;100",
    onobtained = "unlockworldevent;Questyno_DylanHarris;SFQuest_Questyno_DylanHarris6_Complete",
    text = "IGUI_SFQuest_Questyno_DylanHarris6_Text",
    texture = "media/textures/Item_DylanHarris.png",
    title = "IGUI_SFQuest_Questyno_DylanHarris6_Title",
    unlockedsound = "QuestUnlocked",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DylanHarris6_A",

    awardsrep = "LaResistenza;750",
    awardsitem = "MoneyToXP.Droga4;1",
    completesound = "levelup",
    dailycode = "Questyno_DylanHarris",
    lore = { "IGUI_SFQuest_Questyno_DylanHarris6_A_Lore" },
    objectives = {{
        guid = "Questyno_DylanHarris6_A",
        text = "IGUI_SFQuest_Questyno_DylanHarris6_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoDylanHarris6",
    }},
    text = "IGUI_SFQuest_Questyno_DylanHarris6_A_Text",
    texture = "media/textures/Item_DylanHarris.png",
    title = "IGUI_SFQuest_Questyno_DylanHarris6_Title",
    unlocks = "clickevent;7417x6657x0:EventoDylanHarris6;time:50:anim:loot;updateobjective:Questyno_DylanHarris6_A:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DylanHarris7",

    awardstask = "Questyno_DylanHarris7_A",
    dailycode = "Questyno_DylanHarris",
    lore = { "IGUI_SFQuest_Questyno_DylanHarris7_Lore" },
    needsitem = "Money;200",
    onobtained = "unlockworldevent;Questyno_DylanHarris;SFQuest_Questyno_DylanHarris7_Complete",
    text = "IGUI_SFQuest_Questyno_DylanHarris7_Text",
    texture = "media/textures/Item_DylanHarris.png",
    title = "IGUI_SFQuest_Questyno_DylanHarris7_Title",
    unlockedsound = "QuestUnlocked",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DylanHarris7_A",

    awardsrep = "LaResistenza;1550",
    awardsitem = "MoneyToXP.Droga5;1",
    completesound = "levelup",
    dailycode = "Questyno_DylanHarris",
    lore = { "IGUI_SFQuest_Questyno_DylanHarris7_A_Lore" },
    objectives = {{
        guid = "Questyno_DylanHarris7_A",
        text = "IGUI_SFQuest_Questyno_DylanHarris7_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoDylanHarris7",
    }},
    text = "IGUI_SFQuest_Questyno_DylanHarris7_A_Text",
    texture = "media/textures/Item_DylanHarris.png",
    title = "IGUI_SFQuest_Questyno_DylanHarris7_Title",
    unlocks = "clickevent;13080x1248x0:EventoDylanHarris7;time:50:anim:loot;updateobjective:Questyno_DylanHarris7_A:1:Completed",
});

--[[
            *** Dorian Prescott ***
            Elenco:
                intro. Incontra Dorian Prescott.
				1. Recuperare 30$ -> Recuperare MoneyToXp.Droga3 parlando con (8353,7515,0) (150rep)
				2. Recuperare 30$ -> Recuperare MoneyToXp.Droga3 parlando con (5288,9431,0) (150rep)
				3. Recuperare 30$ -> Recuperare MoneyToXp.Droga3 parlando con (5546,10914,0) (150rep)
				4. Recuperare 30$ -> Recuperare MoneyToXp.Droga3 parlando con (7682,10299,0) (150rep)
				5. Recuperare 30$ -> Recuperare MoneyToXp.Droga3 parlando con (8208,11673,0) (150rep)
				6. Recuperare 30$ -> Recuperare MoneyToXp.Droga3 parlando con (6823,11516,0) (150rep)
				7. Recuperare 30$ -> Recuperare MoneyToXp.Droga3 parlando con (4677,10060,1) (150rep)
				8. Recuperare 30$ -> Recuperare MoneyToXp.Droga3 parlando con (5046,5862,0) (200rep)
				9. Recuperare 30$ -> Recuperare MoneyToXp.Droga3 parlando con (3474,7215,1) (150rep)
]]

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DorianPrescott_Intro",

    awardsrep = "DorianPrescott;100",
    completesound = "levelup",
    dailycode = "Questyno_DorianPrescott",
    lore = { "IGUI_SFQuest_Questyno_DorianPrescott_Intro_Lore" },
    text = "IGUI_SFQuest_Questyno_DorianPrescott_Intro_Text",
    texture = "media/textures/Item_DorianPrescott.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_DorianPrescott;SFQuest_Questyno_DorianPrescott_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_DorianPrescott_Intro_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DorianPrescott1",

    awardstask = "Questyno_DorianPrescott1_A",
    dailycode = "Questyno_DorianPrescott",
    lore = { "IGUI_SFQuest_Questyno_DorianPrescott1_Lore" },
    needsitem = "Money;30",
    onobtained = "unlockworldevent;Questyno_DorianPrescott;SFQuest_Questyno_DorianPrescott1_Complete",
    text = "IGUI_SFQuest_Questyno_DorianPrescott1_Text",
    texture = "media/textures/Item_DorianPrescott.png",
    title = "IGUI_SFQuest_Questyno_DorianPrescott1_Title",
    unlockedsound = "QuestUnlocked",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DorianPrescott1_A",

    awardsrep = "LaResistenza;150",
    awardsitem = "MoneyToXP.Droga3;1",
    completesound = "levelup",
    dailycode = "Questyno_DorianPrescott",
    lore = { "IGUI_SFQuest_Questyno_DorianPrescott1_A_Lore" },
    objectives = {{
        guid = "Questyno_DorianPrescott1_A",
        text = "IGUI_SFQuest_Questyno_DorianPrescott1_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoDorianPrescott1",
    }},
    text = "IGUI_SFQuest_Questyno_DorianPrescott1_A_Text",
    texture = "media/textures/Item_DorianPrescott.png",
    title = "IGUI_SFQuest_Questyno_DorianPrescott1_Title",
    unlocks = "clickevent;3716x7674x1:EventoDorianPrescott1;time:50:anim:loot;updateobjective:Questyno_DorianPrescott1_A:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DorianPrescott2",

    awardstask = "Questyno_DorianPrescott2_A",
    dailycode = "Questyno_DorianPrescott",
    lore = { "IGUI_SFQuest_Questyno_DorianPrescott2_Lore" },
    needsitem = "Money;30",
    onobtained = "unlockworldevent;Questyno_DorianPrescott;SFQuest_Questyno_DorianPrescott2_Complete",
    text = "IGUI_SFQuest_Questyno_DorianPrescott2_Text",
    texture = "media/textures/Item_DorianPrescott.png",
    title = "IGUI_SFQuest_Questyno_DorianPrescott2_Title",
    unlockedsound = "QuestUnlocked",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DorianPrescott2_A",

    awardsrep = "LaResistenza;150",
    awardsitem = "MoneyToXP.Droga3;1",
    completesound = "levelup",
    dailycode = "Questyno_DorianPrescott",
    lore = { "IGUI_SFQuest_Questyno_DorianPrescott2_A_Lore" },
    objectives = {{
        guid = "Questyno_DorianPrescott2_A",
        text = "IGUI_SFQuest_Questyno_DorianPrescott2_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoDorianPrescott2",
    }},
    text = "IGUI_SFQuest_Questyno_DorianPrescott2_A_Text",
    texture = "media/textures/Item_DorianPrescott.png",
    title = "IGUI_SFQuest_Questyno_DorianPrescott2_Title",
    unlocks = "clickevent;5288x9431x0:EventoDorianPrescott2;time:50:anim:loot;updateobjective:Questyno_DorianPrescott2_A:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DorianPrescott3",

    awardstask = "Questyno_DorianPrescott3_A",
    dailycode = "Questyno_DorianPrescott",
    lore = { "IGUI_SFQuest_Questyno_DorianPrescott3_Lore" },
    needsitem = "Money;30",
    onobtained = "unlockworldevent;Questyno_DorianPrescott;SFQuest_Questyno_DorianPrescott3_Complete",
    text = "IGUI_SFQuest_Questyno_DorianPrescott3_Text",
    texture = "media/textures/Item_DorianPrescott.png",
    title = "IGUI_SFQuest_Questyno_DorianPrescott3_Title",
    unlockedsound = "QuestUnlocked",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DorianPrescott3_A",

    awardsrep = "LaResistenza;150",
    awardsitem = "MoneyToXP.Droga3;1",
    completesound = "levelup",
    dailycode = "Questyno_DorianPrescott",
    lore = { "IGUI_SFQuest_Questyno_DorianPrescott3_A_Lore" },
    objectives = {{
        guid = "Questyno_DorianPrescott3_A",
        text = "IGUI_SFQuest_Questyno_DorianPrescott3_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoDorianPrescott3",
    }},
    text = "IGUI_SFQuest_Questyno_DorianPrescott3_A_Text",
    texture = "media/textures/Item_DorianPrescott.png",
    title = "IGUI_SFQuest_Questyno_DorianPrescott3_Title",
    unlocks = "clickevent;5546x10914x0:EventoDorianPrescott3;time:50:anim:loot;updateobjective:Questyno_DorianPrescott3_A:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DorianPrescott4",

    awardstask = "Questyno_DorianPrescott4_A",
    dailycode = "Questyno_DorianPrescott",
    lore = { "IGUI_SFQuest_Questyno_DorianPrescott4_Lore" },
    needsitem = "Money;30",
    onobtained = "unlockworldevent;Questyno_DorianPrescott;SFQuest_Questyno_DorianPrescott4_Complete",
    text = "IGUI_SFQuest_Questyno_DorianPrescott4_Text",
    texture = "media/textures/Item_DorianPrescott.png",
    title = "IGUI_SFQuest_Questyno_DorianPrescott4_Title",
    unlockedsound = "QuestUnlocked",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DorianPrescott4_A",

    awardsrep = "LaResistenza;150",
    awardsitem = "MoneyToXP.Droga3;1",
    completesound = "levelup",
    dailycode = "Questyno_DorianPrescott",
    lore = { "IGUI_SFQuest_Questyno_DorianPrescott4_A_Lore" },
    objectives = {{
        guid = "Questyno_DorianPrescott4_A",
        text = "IGUI_SFQuest_Questyno_DorianPrescott4_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoDorianPrescott4",
    }},
    text = "IGUI_SFQuest_Questyno_DorianPrescott4_A_Text",
    texture = "media/textures/Item_DorianPrescott.png",
    title = "IGUI_SFQuest_Questyno_DorianPrescott4_Title",
    unlocks = "clickevent;(7682x10299x0:EventoDorianPrescott4;time:50:anim:loot;updateobjective:Questyno_DorianPrescott4_A:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DorianPrescott5",

    awardstask = "Questyno_DorianPrescott5_A",
    dailycode = "Questyno_DorianPrescott",
    lore = { "IGUI_SFQuest_Questyno_DorianPrescott5_Lore" },
    needsitem = "Money;30",
    onobtained = "unlockworldevent;Questyno_DorianPrescott;SFQuest_Questyno_DorianPrescott5_Complete",
    text = "IGUI_SFQuest_Questyno_DorianPrescott5_Text",
    texture = "media/textures/Item_DorianPrescott.png",
    title = "IGUI_SFQuest_Questyno_DorianPrescott5_Title",
    unlockedsound = "QuestUnlocked",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DorianPrescott5_A",

    awardsrep = "LaResistenza;150",
    awardsitem = "MoneyToXP.Droga3;1",
    completesound = "levelup",
    dailycode = "Questyno_DorianPrescott",
    lore = { "IGUI_SFQuest_Questyno_DorianPrescott5_A_Lore" },
    objectives = {{
        guid = "Questyno_DorianPrescott5_A",
        text = "IGUI_SFQuest_Questyno_DorianPrescott5_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoDorianPrescott5",
    }},
    text = "IGUI_SFQuest_Questyno_DorianPrescott5_A_Text",
    texture = "media/textures/Item_DorianPrescott.png",
    title = "IGUI_SFQuest_Questyno_DorianPrescott5_Title",
    unlocks = "clickevent;8208x11673x0:EventoDorianPrescott5;time:50:anim:loot;updateobjective:Questyno_DorianPrescott5_A:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DorianPrescott6",

    awardstask = "Questyno_DorianPrescott6_A",
    dailycode = "Questyno_DorianPrescott",
    lore = { "IGUI_SFQuest_Questyno_DorianPrescott6_Lore" },
    needsitem = "Money;30",
    onobtained = "unlockworldevent;Questyno_DorianPrescott;SFQuest_Questyno_DorianPrescott6_Complete",
    text = "IGUI_SFQuest_Questyno_DorianPrescott6_Text",
    texture = "media/textures/Item_DorianPrescott.png",
    title = "IGUI_SFQuest_Questyno_DorianPrescott6_Title",
    unlockedsound = "QuestUnlocked",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DorianPrescott6_A",

    awardsrep = "LaResistenza;150",
    awardsitem = "MoneyToXP.Droga3;1",
    completesound = "levelup",
    dailycode = "Questyno_DorianPrescott",
    lore = { "IGUI_SFQuest_Questyno_DorianPrescott6_A_Lore" },
    objectives = {{
        guid = "Questyno_DorianPrescott6_A",
        text = "IGUI_SFQuest_Questyno_DorianPrescott6_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoDorianPrescott6",
    }},
    text = "IGUI_SFQuest_Questyno_DorianPrescott6_A_Text",
    texture = "media/textures/Item_DorianPrescott.png",
    title = "IGUI_SFQuest_Questyno_DorianPrescott6_Title",
    unlocks = "clickevent;6823x11516x0:EventoDorianPrescott6;time:50:anim:loot;updateobjective:Questyno_DorianPrescott6_A:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DorianPrescott7",

    awardstask = "Questyno_DorianPrescott7_A",
    dailycode = "Questyno_DorianPrescott",
    lore = { "IGUI_SFQuest_Questyno_DorianPrescott7_Lore" },
    needsitem = "Money;30",
    onobtained = "unlockworldevent;Questyno_DorianPrescott;SFQuest_Questyno_DorianPrescott7_Complete",
    text = "IGUI_SFQuest_Questyno_DorianPrescott7_Text",
    texture = "media/textures/Item_DorianPrescott.png",
    title = "IGUI_SFQuest_Questyno_DorianPrescott7_Title",
    unlockedsound = "QuestUnlocked",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DorianPrescott7_A",

    awardsrep = "LaResistenza;150",
    awardsitem = "MoneyToXP.Droga3;1",
    completesound = "levelup",
    dailycode = "Questyno_DorianPrescott",
    lore = { "IGUI_SFQuest_Questyno_DorianPrescott7_A_Lore" },
    objectives = {{
        guid = "Questyno_DorianPrescott7_A",
        text = "IGUI_SFQuest_Questyno_DorianPrescott7_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoDorianPrescott7",
    }},
    text = "IGUI_SFQuest_Questyno_DorianPrescott7_A_Text",
    texture = "media/textures/Item_DorianPrescott.png",
    title = "IGUI_SFQuest_Questyno_DorianPrescott7_Title",
    unlocks = "clickevent;4677x10060x1:EventoDorianPrescott7;time:50:anim:loot;updateobjective:Questyno_DorianPrescott7_A:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DorianPrescott8",

    awardstask = "Questyno_DorianPrescott8_A",
    dailycode = "Questyno_DorianPrescott",
    lore = { "IGUI_SFQuest_Questyno_DorianPrescott8_Lore" },
    needsitem = "Money;30",
    onobtained = "unlockworldevent;Questyno_DorianPrescott;SFQuest_Questyno_DorianPrescott8_Complete",
    text = "IGUI_SFQuest_Questyno_DorianPrescott8_Text",
    texture = "media/textures/Item_DorianPrescott.png",
    title = "IGUI_SFQuest_Questyno_DorianPrescott8_Title",
    unlockedsound = "QuestUnlocked",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DorianPrescott8_A",

    awardsrep = "LaResistenza;200",
    awardsitem = "MoneyToXP.Droga3;1",
    completesound = "levelup",
    dailycode = "Questyno_DorianPrescott",
    lore = { "IGUI_SFQuest_Questyno_DorianPrescott8_A_Lore" },
    objectives = {{
        guid = "Questyno_DorianPrescott8_A",
        text = "IGUI_SFQuest_Questyno_DorianPrescott8_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoDorianPrescott8",
    }},
    text = "IGUI_SFQuest_Questyno_DorianPrescott8_A_Text",
    texture = "media/textures/Item_DorianPrescott.png",
    title = "IGUI_SFQuest_Questyno_DorianPrescott8_Title",
    unlocks = "clickevent;5046x5862x0:EventoDorianPrescott8;time:50:anim:loot;updateobjective:Questyno_DorianPrescott8_A:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DorianPrescott9",

    awardstask = "Questyno_DorianPrescott9_A",
    dailycode = "Questyno_DorianPrescott",
    lore = { "IGUI_SFQuest_Questyno_DorianPrescott9_Lore" },
    needsitem = "Money;30",
    onobtained = "unlockworldevent;Questyno_DorianPrescott;SFQuest_Questyno_DorianPrescott9_Complete",
    text = "IGUI_SFQuest_Questyno_DorianPrescott9_Text",
    texture = "media/textures/Item_DorianPrescott.png",
    title = "IGUI_SFQuest_Questyno_DorianPrescott9_Title",
    unlockedsound = "QuestUnlocked",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DorianPrescott9_A",

    awardsrep = "LaResistenza;150",
    awardsitem = "MoneyToXP.Droga3;1",
    completesound = "levelup",
    dailycode = "Questyno_DorianPrescott",
    lore = { "IGUI_SFQuest_Questyno_DorianPrescott9_A_Lore" },
    objectives = {{
        guid = "Questyno_DorianPrescott9_A",
        text = "IGUI_SFQuest_Questyno_DorianPrescott9_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoDorianPrescott9",
    }},
    text = "IGUI_SFQuest_Questyno_DorianPrescott9_A_Text",
    texture = "media/textures/Item_DorianPrescott.png",
    title = "IGUI_SFQuest_Questyno_DorianPrescott9_Title",
    unlocks = "clickevent;3474x7215x1:EventoDorianPrescott9;time:50:anim:loot;updateobjective:Questyno_DorianPrescott9_A:1:Completed",
});

--[[
            *** Tessa Anderson ***
            Elenco:
                intro. Incontra Tessa Anderson.
				1. Recuperare 15kg di oro, Recuperare MoneyToXP.Rotolo;3 parlando con (7665,7559,0) (1500rep)
				2. Recuperare 20kg di oro, Recuperare MoneyToXP.Rotolo;4 parlando con (7370,7254,0) (2000rep)
				3. Recuperare 30kg di oro, Recuperare MoneyToXP.Rotolo;5 parlando con (7032,7435,1) (1800rep)
				4. Recuperare 25kg di oro, Recuperare MoneyToXP.Rotolo;6 parlando con (7365,6694,0) (1500rep)
				5. Recuperare 22kg di oro, Recuperare MoneyToXP.Rotolo;4 parlando con (6781,7359,0) (1800rep)
				6. Recuperare 40kg di oro, Recuperare MoneyToXP.Rotolo;5 parlando con (7257,6860,1) (1500rep)
]]

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TessaAnderson_Intro",

    awardsrep = "TessaAnderson;100",
    completesound = "levelup",
    dailycode = "Questyno_TessaAnderson",
    lore = { "IGUI_SFQuest_Questyno_TessaAnderson_Intro_Lore" },
    text = "IGUI_SFQuest_Questyno_TessaAnderson_Intro_Text",
    texture = "media/textures/Item_TessaAnderson.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_TessaAnderson;SFQuest_Questyno_TessaAnderson_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_TessaAnderson_Intro_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TessaAnderson1",

    awardstask = "Questyno_TessaAnderson1_A",
    dailycode = "Questyno_TessaAnderson",
    lore = { "IGUI_SFQuest_Questyno_TessaAnderson1_Lore" },
    needsitem = "Tag#Golden;150",
    onobtained = "unlockworldevent;Questyno_TessaAnderson;SFQuest_Questyno_TessaAnderson1_Complete",
    text = "IGUI_SFQuest_Questyno_TessaAnderson1_Text",
    texture = "media/textures/Item_TessaAnderson.png",
    title = "IGUI_SFQuest_Questyno_TessaAnderson1_Title",
    unlockedsound = "QuestUnlocked",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TessaAnderson1_A",

    awardsrep = "LaResistenza;1500",
    awardsitem = "MoneyToXP.Rotolo;3",
    completesound = "levelup",
    dailycode = "Questyno_TessaAnderson",
    lore = { "IGUI_SFQuest_Questyno_TessaAnderson1_A_Lore" },
    objectives = {{
        guid = "Questyno_TessaAnderson1_A",
        text = "IGUI_SFQuest_Questyno_TessaAnderson1_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoTessaAnderson1",
    }},        
    text = "IGUI_SFQuest_Questyno_TessaAnderson1_A_Text",
    texture = "media/textures/Item_TessaAnderson.png",
    title = "IGUI_SFQuest_Questyno_TessaAnderson1_Title",
    unlocks = "clickevent;7665x7559x0:EventoTessaAnderson1;time:50:anim:loot;updateobjective:Questyno_TessaAnderson1_A:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TessaAnderson2",

    awardstask = "Questyno_TessaAnderson2_A",
    dailycode = "Questyno_TessaAnderson",
    lore = { "IGUI_SFQuest_Questyno_TessaAnderson2_Lore" },
    needsitem = "Tag#Golden;200",
    onobtained = "unlockworldevent;Questyno_TessaAnderson;SFQuest_Questyno_TessaAnderson2_Complete",
    text = "IGUI_SFQuest_Questyno_TessaAnderson2_Text",
    texture = "media/textures/Item_TessaAnderson.png",
    title = "IGUI_SFQuest_Questyno_TessaAnderson2_Title",
    unlockedsound = "QuestUnlocked",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TessaAnderson2_A",

    awardsrep = "LaResistenza;2000",
    awardsitem = "MoneyToXP.Rotolo;4",
    completesound = "levelup",
    dailycode = "Questyno_TessaAnderson",
    lore = { "IGUI_SFQuest_Questyno_TessaAnderson2_A_Lore" },
    objectives = {{
        guid = "Questyno_TessaAnderson2_A",
        text = "IGUI_SFQuest_Questyno_TessaAnderson2_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoTessaAnderson2",
    }},
    text = "IGUI_SFQuest_Questyno_TessaAnderson2_A_Text",
    texture = "media/textures/Item_TessaAnderson.png",
    title = "IGUI_SFQuest_Questyno_TessaAnderson2_Title",
    unlocks = "clickevent;7370x7254x0:EventoTessaAnderson2;time:50:anim:loot;updateobjective:Questyno_TessaAnderson2_A:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TessaAnderson3",

    awardstask = "Questyno_TessaAnderson3_A",
    dailycode = "Questyno_TessaAnderson",
    lore = { "IGUI_SFQuest_Questyno_TessaAnderson3_Lore" },
    needsitem = "Tag#Golden;300",
    onobtained = "unlockworldevent;Questyno_TessaAnderson;SFQuest_Questyno_TessaAnderson3_Complete",
    text = "IGUI_SFQuest_Questyno_TessaAnderson3_Text",
    texture = "media/textures/Item_TessaAnderson.png",
    title = "IGUI_SFQuest_Questyno_TessaAnderson3_Title",
    unlockedsound = "QuestUnlocked",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TessaAnderson3_A",

    awardsrep = "LaResistenza;1800",
    awardsitem = "MoneyToXP.Rotolo;5",
    completesound = "levelup",
    dailycode = "Questyno_TessaAnderson",
    lore = { "IGUI_SFQuest_Questyno_TessaAnderson3_A_Lore" },
    objectives = {{
        guid = "Questyno_TessaAnderson3_A",
        text = "IGUI_SFQuest_Questyno_TessaAnderson3_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoTessaAnderson3",
    }},
    text = "IGUI_SFQuest_Questyno_TessaAnderson3_A_Text",
    texture = "media/textures/Item_TessaAnderson.png",
    title = "IGUI_SFQuest_Questyno_TessaAnderson3_Title",
    unlocks = "clickevent;7032x7435x1:EventoTessaAnderson3;time:50:anim:loot;updateobjective:Questyno_TessaAnderson3_A:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TessaAnderson4",

    awardstask = "Questyno_TessaAnderson4_A",
    dailycode = "Questyno_TessaAnderson",
    lore = { "IGUI_SFQuest_Questyno_TessaAnderson4_Lore" },
    needsitem = "Tag#Golden;250",
    onobtained = "unlockworldevent;Questyno_TessaAnderson;SFQuest_Questyno_TessaAnderson4_Complete",
    text = "IGUI_SFQuest_Questyno_TessaAnderson4_Text",
    texture = "media/textures/Item_TessaAnderson.png",
    title = "IGUI_SFQuest_Questyno_TessaAnderson4_Title",
    unlockedsound = "QuestUnlocked",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TessaAnderson4_A",

    awardsrep = "LaResistenza;1500",
    awardsitem = "MoneyToXP.Rotolo;6",
    completesound = "levelup",
    dailycode = "Questyno_TessaAnderson",
    lore = { "IGUI_SFQuest_Questyno_TessaAnderson4_A_Lore" },
    objectives = {{
        guid = "Questyno_TessaAnderson4_A",
        text = "IGUI_SFQuest_Questyno_TessaAnderson4_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoTessaAnderson4",
    }},
    text = "IGUI_SFQuest_Questyno_TessaAnderson4_A_Text",
    texture = "media/textures/Item_TessaAnderson.png",
    title = "IGUI_SFQuest_Questyno_TessaAnderson4_Title",
    unlocks = "clickevent;7365x6694x0:EventoTessaAnderson4;time:50:anim:loot;updateobjective:Questyno_TessaAnderson4_A:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TessaAnderson5",

    awardstask = "Questyno_TessaAnderson5_A",
    dailycode = "Questyno_TessaAnderson",
    lore = { "IGUI_SFQuest_Questyno_TessaAnderson5_Lore" },
    needsitem = "Tag#Golden;220",
    onobtained = "unlockworldevent;Questyno_TessaAnderson;SFQuest_Questyno_TessaAnderson5_Complete",
    text = "IGUI_SFQuest_Questyno_TessaAnderson5_Text",
    texture = "media/textures/Item_TessaAnderson.png",
    title = "IGUI_SFQuest_Questyno_TessaAnderson5_Title",
    unlockedsound = "QuestUnlocked",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TessaAnderson5_A",

    awardsrep = "LaResistenza;1800",
    awardsitem = "MoneyToXP.Rotolo;4",
    completesound = "levelup",
    dailycode = "Questyno_TessaAnderson",
    lore = { "IGUI_SFQuest_Questyno_TessaAnderson5_A_Lore" },
    objectives = {{
        guid = "Questyno_TessaAnderson5_A",
        text = "IGUI_SFQuest_Questyno_TessaAnderson5_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoTessaAnderson5",
    }},
    text = "IGUI_SFQuest_Questyno_TessaAnderson5_A_Text",
    texture = "media/textures/Item_TessaAnderson.png",
    title = "IGUI_SFQuest_Questyno_TessaAnderson5_Title",
    unlocks = "clickevent;6781x7359x0:EventoTessaAnderson5;time:50:anim:loot;updateobjective:Questyno_TessaAnderson5_A:1:Completed",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TessaAnderson6",

    awardstask = "Questyno_TessaAnderson6_A",
    dailycode = "Questyno_TessaAnderson",
    lore = { "IGUI_SFQuest_Questyno_TessaAnderson6_Lore" },
    needsitem = "Tag#Golden;400",
    onobtained = "unlockworldevent;Questyno_TessaAnderson;SFQuest_Questyno_TessaAnderson6_Complete",
    text = "IGUI_SFQuest_Questyno_TessaAnderson6_Text",
    texture = "media/textures/Item_TessaAnderson.png",
    title = "IGUI_SFQuest_Questyno_TessaAnderson6_Title",
    unlockedsound = "QuestUnlocked",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_TessaAnderson6_A",

    awardsrep = "LaResistenza;1500",
    awardsitem = "MoneyToXP.Rotolo;5",
    completesound = "levelup",
    dailycode = "Questyno_TessaAnderson",
    lore = { "IGUI_SFQuest_Questyno_TessaAnderson6_A_Lore" },
    objectives = {{
        guid = "Questyno_TessaAnderson6_A",
        text = "IGUI_SFQuest_Questyno_TessaAnderson6_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoTessaAnderson6",
    }},
    text = "IGUI_SFQuest_Questyno_TessaAnderson6_A_Text",
    texture = "media/textures/Item_TessaAnderson.png",
    title = "IGUI_SFQuest_Questyno_TessaAnderson6_Title",
    unlocks = "clickevent;7257x6860x1:EventoTessaAnderson6;time:50:anim:loot;updateobjective:Questyno_TessaAnderson6_A:1:Completed",
});
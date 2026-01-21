require 'SFQuest_Database'

-- Quest per OliviaChambers
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



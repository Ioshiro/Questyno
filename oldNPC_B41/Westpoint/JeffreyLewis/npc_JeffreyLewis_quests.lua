require 'SFQuest_Database'

-- Quest per JeffreyLewis
table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis_Intro",

    awardsrep = "JeffreyLewis;100",
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis_Intro_Lore" },
    ondone = "randomcodedworldfrompool;Questyno_JeffreyLewis;Questyno;JeffreyLewis",
    text = "IGUI_SFQuest_Questyno_JeffreyLewis_Intro_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis_Intro_Title"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis1",
    awardstask = "Questyno_JeffreyLewis1_A",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis1_Lore" },
    objectives = { {
        guid = "Questyno_JeffreyLewis1_A",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis1_A",
        hidden = false,
        needsitem = "Base.BookCarpentry1;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis1;1;Completed;removeitem;Base.BookCarpentry1;1",
    },{
        guid = "Questyno_JeffreyLewis1_B",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis1_B",
        hidden = false,
        needsitem = "Base.BookCarpentry2;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis1;2;Completed;removeitem;Base.BookCarpentry2;1",
    },{
        guid = "Questyno_JeffreyLewis1_C",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis1_C",
        hidden = false,
        needsitem = "Base.BookCooking1;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis1;3;Completed;removeitem;Base.BookCooking1;1",
    },{
        guid = "Questyno_JeffreyLewis1_D",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis1_D",
        hidden = false,
        needsitem = "Base.BookElectrician2;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis1;4;Completed;removeitem;Base.BookElectrician2;1",
    }},
    text = "IGUI_SFQuest_Questyno_JeffreyLewis1_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis1_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis1_A",
    awardsrep = "LaResistenza;200",
    completesound = "levelup",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis1_Lore" },
    text = "IGUI_SFQuest_Questyno_JeffreyLewis1_A_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis1_Title",
    unlocks = "unlockworldevent;Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis1_Complete",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis2",
    awardstask = "Questyno_JeffreyLewis2_A",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis2_Lore" },
    objectives = { {
        guid = "Questyno_JeffreyLewis2_A",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis2_A",
        hidden = false,
        needsitem = "Base.BookCarpentry2;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis2;1;Completed;removeitem;Base.BookCarpentry2;1",
    },{
        guid = "Questyno_JeffreyLewis2_B",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis2_B",
        hidden = false,
        needsitem = "Base.BookCooking3;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis2;2;Completed;removeitem;Base.BookCooking3;1",
    },{
        guid = "Questyno_JeffreyLewis2_C",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis2_C",
        hidden = false,
        needsitem = "Base.BookForaging1;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis2;3;Completed;removeitem;Base.BookForaging1;1",
    },{
        guid = "Questyno_JeffreyLewis2_D",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis2_D",
        hidden = false,
        needsitem = "Base.BookForaging3;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis2;4;Completed;removeitem;Base.BookForaging3;1",
    }},
    text = "IGUI_SFQuest_Questyno_JeffreyLewis2_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis2_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis2_A",
    awardsrep = "LaResistenza;160",
    completesound = "levelup",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis2_Lore" },
    text = "IGUI_SFQuest_Questyno_JeffreyLewis2_A_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis2_Title",
    unlocks = "unlockworldevent;Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis2_Complete",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis3",
    awardstask = "Questyno_JeffreyLewis3_A",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis3_Lore" },
    objectives = { {
        guid = "Questyno_JeffreyLewis3_A",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis3_A",
        hidden = false,
        needsitem = "Base.BookMechanic2;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis3;1;Completed;removeitem;Base.BookMechanic2;1",
    },{
        guid = "Questyno_JeffreyLewis3_B",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis3_B",
        hidden = false,
        needsitem = "Base.BookMetalWelding1;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis3;2;Completed;removeitem;Base.BookMetalWelding1;1",
    },{
        guid = "Questyno_JeffreyLewis3_C",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis3_C",
        hidden = false,
        needsitem = "Base.BookMechanic4;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis3;3;Completed;removeitem;Base.BookMechanic4;1",
    }},
    text = "IGUI_SFQuest_Questyno_JeffreyLewis3_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis3_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis3_A",
    awardsrep = "LaResistenza;150",
    completesound = "levelup",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis3_Lore" },
    text = "IGUI_SFQuest_Questyno_JeffreyLewis3_A_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis3_Title",
    unlocks = "unlockworldevent;Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis3_Complete",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis4",
    awardstask = "Questyno_JeffreyLewis4_A",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis4_Lore" },
    objectives = { {
        guid = "Questyno_JeffreyLewis4_A",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis4_A",
        hidden = false,
        needsitem = "Base.BookFirstAid2;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis4;1;Completed;removeitem;Base.BookFirstAid2;1",
    },{
        guid = "Questyno_JeffreyLewis4_B",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis4_B",
        hidden = false,
        needsitem = "Base.BookMechanic3;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis4;2;Completed;removeitem;Base.BookMechanic3;1",
    },{
        guid = "Questyno_JeffreyLewis4_C",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis4_C",
        hidden = false,
        needsitem = "Base.BookFirstAid1;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis4;3;Completed;removeitem;Base.BookFirstAid1;1",
    },{
        guid = "Questyno_JeffreyLewis4_D",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis4_D",
        hidden = false,
        needsitem = "Base.BookFishing1;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis4;4;Completed;removeitem;Base.BookFishing1;1",
    }},
    text = "IGUI_SFQuest_Questyno_JeffreyLewis4_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis4_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis4_A",
    awardsrep = "LaResistenza;150",
    completesound = "levelup",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis4_Lore" },
    text = "IGUI_SFQuest_Questyno_JeffreyLewis4_A_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis4_Title",
    unlocks = "unlockworldevent;Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis4_Complete",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis5",
    awardstask = "Questyno_JeffreyLewis5_A",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis5_Lore" },
    objectives = { {
        guid = "Questyno_JeffreyLewis5_A",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis5_A",
        hidden = false,
        needsitem = "Base.BookFarming2;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis5;1;Completed;removeitem;Base.BookFarming2;1",
    },{
        guid = "Questyno_JeffreyLewis5_B",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis5_B",
        hidden = false,
        needsitem = "Base.BookFirstAid3;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis5;2;Completed;removeitem;Base.BookFirstAid3;1",
    },{
        guid = "Questyno_JeffreyLewis5_C",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis5_C",
        hidden = false,
        needsitem = "Base.BookFishing2;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis5;3;Completed;removeitem;Base.BookFishing2;1",
    },{
        guid = "Questyno_JeffreyLewis5_D",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis5_D",
        hidden = false,
        needsitem = "Base.BookFirstAid5;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis5;4;Completed;removeitem;Base.BookFirstAid5;1",
    }},
    text = "IGUI_SFQuest_Questyno_JeffreyLewis5_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis5_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis5_A",
    awardsrep = "LaResistenza;200",
    completesound = "levelup",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis5_Lore" },
    text = "IGUI_SFQuest_Questyno_JeffreyLewis5_A_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis5_Title",
    unlocks = "unlockworldevent;Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis5_Complete",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis6",
    awardstask = "Questyno_JeffreyLewis6_A",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis6_Lore" },
    objectives = { {
        guid = "Questyno_JeffreyLewis6_A",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis6_A",
        hidden = false,
        needsitem = "Base.BookFarming4;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis6;1;Completed;removeitem;Base.BookFarming4;1",
    },{
        guid = "Questyno_JeffreyLewis6_B",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis6_B",
        hidden = false,
        needsitem = "Base.BookTrapping4;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis6;2;Completed;removeitem;Base.BookTrapping4;1",
    },{
        guid = "Questyno_JeffreyLewis6_C",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis6_C",
        hidden = false,
        needsitem = "Base.BookForaging4;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis6;3;Completed;removeitem;Base.BookForaging4;1",
    },{
        guid = "Questyno_JeffreyLewis6_D",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis6_D",
        hidden = false,
        needsitem = "Base.BookForaging5;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis6;4;Completed;removeitem;Base.BookForaging5;1",
    }},
    text = "IGUI_SFQuest_Questyno_JeffreyLewis6_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis6_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis6_A",
    awardsrep = "LaResistenza;180",
    completesound = "levelup",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis6_Lore" },
    text = "IGUI_SFQuest_Questyno_JeffreyLewis6_A_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis6_Title",
    unlocks = "unlockworldevent;Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis6_Complete",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis7",
    awardstask = "Questyno_JeffreyLewis7_A",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis7_Lore" },
    objectives = { {
        guid = "Questyno_JeffreyLewis7_A",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis7_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoJeffreyLewis7;additem;ElectronicsMag3;1;additem;FarmingMag1;1;additem;FishingMag2;1;additem;ElectronicsMag2;1",
    } },
    text = "IGUI_SFQuest_Questyno_JeffreyLewis7_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis7_Title",
    unlocks = "clickevent;10070x10706x0:EventoJeffreyLewis7;time:50:anim:loot;updateobjective:Questyno_JeffreyLewis7:1:Completed",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis7_A",
    
    awardstask = "Questyno_JeffreyLewis7_B",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis7_Lore" },
    objectives = {
        {
            guid = "Questyno_JeffreyLewis7_B",
            text = "IGUI_SFQuest_Questyno_JeffreyLewis7_B",
            hidden = false,
            needsitem = "Base.ElectronicsMag3;1",
            onobtained = "updateobjective;Questyno_JeffreyLewis7_A;1;Completed;removeitem;Base.ElectronicsMag3;1",
        },{
            guid = "Questyno_JeffreyLewis7_C",
            text = "IGUI_SFQuest_Questyno_JeffreyLewis7_C",
            hidden = false,
            needsitem = "Base.FarmingMag1;1",
            onobtained = "updateobjective;Questyno_JeffreyLewis7_A;2;Completed;removeitem;Base.FarmingMag1;1",
        },{
            guid = "Questyno_JeffreyLewis7_D",
            text = "IGUI_SFQuest_Questyno_JeffreyLewis7_D",
            hidden = false,
            needsitem = "Base.FishingMag2;1",
            onobtained = "updateobjective;Questyno_JeffreyLewis7_A;3;Completed;removeitem;Base.FishingMag2;1",
        },{
            guid = "Questyno_JeffreyLewis7_E",
            text = "IGUI_SFQuest_Questyno_JeffreyLewis7_E",
            hidden = false,
            needsitem = "Base.ElectronicsMag2;1",
            onobtained = "updateobjective;Questyno_JeffreyLewis7_A;4;Completed;removeitem;Base.ElectronicsMag2;1",
        } },
        text = "IGUI_SFQuest_Questyno_JeffreyLewis7_A_Text",
        texture = "media/textures/Item_JeffreyLewis.png",
        title = "IGUI_SFQuest_Questyno_JeffreyLewis7_Title",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis7_B",
    awardsrep = "LaResistenza;300",
    awardsitem = "Money;25",
    completesound = "levelup",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis7_Lore" },
    text = "IGUI_SFQuest_Questyno_JeffreyLewis7_B_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis7_Title",
    unlocks = "unlockworldevent;Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis7_Complete",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis8",
    awardstask = "Questyno_JeffreyLewis8_A",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis8_Lore" },
    objectives = { {
        guid = "Questyno_JeffreyLewis8_A",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis8_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoJeffreyLewis8;additem;BookMechanic1;1;additem;BookCarpentry5;1;additem;BookFarming5;1;additem;BookFirstAid5;1;additem;BookMechanic5;1;additem;BookMetalWelding5;1",
    } },
    text = "IGUI_SFQuest_Questyno_JeffreyLewis8_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis8_Title",
    unlocks = "clickevent;8140x9694x0:EventoJeffreyLewis8;time:50:anim:loot;updateobjective:Questyno_JeffreyLewis8:1:Completed",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis8_A",
    awardstask = "Questyno_JeffreyLewis8_B",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis8_Lore" },
    objectives = { {
        guid = "Questyno_JeffreyLewis8_B",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis8_B",
        hidden = false,
        needsitem = "Base.BookMechanic1;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis8_A;1;Completed;removeitem;Base.BookMechanic1;1",
    },{
        guid = "Questyno_JeffreyLewis8_C",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis8_C",
        hidden = false,
        needsitem = "Base.BookCarpentry5;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis8_A;2;Completed;removeitem;Base.BookCarpentry5;1",
    },{
        guid = "Questyno_JeffreyLewis8_D",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis8_D",
        hidden = false,
        needsitem = "Base.BookFarming5;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis8_A;3;Completed;removeitem;Base.BookFarming5;1",
    },{
        guid = "Questyno_JeffreyLewis8_E",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis8_E",
        hidden = false,
        needsitem = "Base.BookFirstAid5;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis8_A;4;Completed;removeitem;Base.BookFirstAid5;1",
    },{
        guid = "Questyno_JeffreyLewis8_F",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis8_F",
        hidden = false,
        needsitem = "Base.BookMechanic5;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis8_A;5;Completed;removeitem;Base.BookMechanic5;1",
    },{
        guid = "Questyno_JeffreyLewis8_G",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis8_G",
        hidden = false,
        needsitem = "Base.BookMetalWelding5;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis8_A;6;Completed;removeitem;Base.BookMetalWelding5;1",
    }},
    text = "IGUI_SFQuest_Questyno_JeffreyLewis8_A_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis8_Title",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis8_B",
    awardsrep = "LaResistenza;300",
    awardsitem = "Money;30",
    completesound = "levelup",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis8_Lore" },
    text = "IGUI_SFQuest_Questyno_JeffreyLewis8_B_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis8_Title",
    unlocks = "unlockworldevent;Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis8_Complete",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis9",
    awardsrep = "LaResistenza;750",
    dailycode = "Questyno_JeffreyLewis",
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis9_Lore" },
    needsitem = "Base.TVMagazine;5",
    onobtained = "unlockworldevent;Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis9_Complete",
    text = "IGUI_SFQuest_Questyno_JeffreyLewis9_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis9_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis10",
    awardstask = "Questyno_JeffreyLewis10_A",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis10_Lore" },
    objectives = { {
        guid = "Questyno_JeffreyLewis10_A",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis10_A",
        hidden = false,
        needsitem = "Base.BookFarming1;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis10;1;Completed;removeitem;Base.BookFarming1;1",
    },{
        guid = "Questyno_JeffreyLewis10_B",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis10_B",
        hidden = false,
        needsitem = "Base.BookFarming2;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis10;2;Completed;removeitem;Base.BookFarming2;1",
    },{
        guid = "Questyno_JeffreyLewis10_C",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis10_C",
        hidden = false,
        needsitem = "Base.BookFarming3;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis10;3;Completed;removeitem;Base.BookFarming3;1",
    },{
        guid = "Questyno_JeffreyLewis10_D",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis10_D",
        hidden = false,
        needsitem = "Base.BookFarming4;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis10;4;Completed;removeitem;Base.BookFarming4;1",
    },{
        guid = "Questyno_JeffreyLewis10_E",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis10_E",
        hidden = false,
        needsitem = "Base.BookFarming5;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis10;5;Completed;removeitem;Base.BookFarming5;1",
    }},
    text = "IGUI_SFQuest_Questyno_JeffreyLewis10_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis10_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis10_A",
    awardsrep = "LaResistenza;250",
    completesound = "levelup",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis10_Lore" },
    text = "IGUI_SFQuest_Questyno_JeffreyLewis10_A_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis10_Title",
    unlocks = "unlockworldevent;Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis10_Complete",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis11",
    awardstask = "Questyno_JeffreyLewis11_A",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis11_Lore" },
    objectives = { {
        guid = "Questyno_JeffreyLewis11_A",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis11_A",
        hidden = false,
        needsitem = "Base.BookElectrician1;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis11;1;Completed;removeitem;Base.BookElectrician1;1",
    },{
        guid = "Questyno_JeffreyLewis11_B",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis11_B",
        hidden = false,
        needsitem = "Base.BookElectrician2;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis11;2;Completed;removeitem;Base.BookElectrician2;1",
    },{
        guid = "Questyno_JeffreyLewis11_C",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis11_C",
        hidden = false,
        needsitem = "Base.BookElectrician3;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis11;3;Completed;removeitem;Base.BookElectrician3;1",
    },{
        guid = "Questyno_JeffreyLewis11_D",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis11_D",
        hidden = false,
        needsitem = "Base.BookElectrician4;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis11;4;Completed;removeitem;Base.BookElectrician4;1",
    },{
        guid = "Questyno_JeffreyLewis11_E",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis11_E",
        hidden = false,
        needsitem = "Base.BookElectrician5;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis11;5;Completed;removeitem;Base.BookElectrician5;1",
    }},
    text = "IGUI_SFQuest_Questyno_JeffreyLewis11_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis11_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis11_A",
    awardsrep = "LaResistenza;220",
    completesound = "levelup",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis11_Lore" },
    text = "IGUI_SFQuest_Questyno_JeffreyLewis11_A_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis11_Title",
    unlocks = "unlockworldevent;Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis11_Complete",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis12",
    awardsrep = "LaResistenza;250",
    completesound = "levelup",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis12_Lore" },
    needsitem = "Base.TVMagazine;1",
    onobtained = "unlockworldevent;Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis12_Complete",
    text = "IGUI_SFQuest_Questyno_JeffreyLewis12_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis12_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis13",
    awardstask = "Questyno_JeffreyLewis13_A",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis13_Lore" },
    objectives = { {
        guid = "Questyno_JeffreyLewis13_A",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis13_A",
        hidden = false,
        needsitem = "Base.BookFishing3;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis13;1;Completed;removeitem;Base.BookFishing3;1",
    },{
        guid = "Questyno_JeffreyLewis13_B",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis13_B",
        hidden = false,
        needsitem = "Base.BookMetalWelding2;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis13;2;Completed;removeitem;Base.BookMetalWelding2;1",
    },{
        guid = "Questyno_JeffreyLewis13_C",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis13_C",
        hidden = false,
        needsitem = "Base.BookMetalWelding3;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis13;3;Completed;removeitem;Base.BookMetalWelding3;1",
    },{
        guid = "Questyno_JeffreyLewis13_D",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis13_D",
        hidden = false,
        needsitem = "Base.BookCarpentry4;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis13;4;Completed;removeitem;Base.BookCarpentry4;1",
    },{
        guid = "Questyno_JeffreyLewis13_E",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis13_E",
        hidden = false,
        needsitem = "Base.BookTrapping2;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis13;5;Completed;removeitem;Base.BookTrapping2;1",
    }},
    text = "IGUI_SFQuest_Questyno_JeffreyLewis13_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis13_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis13_A",
    awardsrep = "LaResistenza;140",
    completesound = "levelup",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis13_Lore" },
    text = "IGUI_SFQuest_Questyno_JeffreyLewis13_A_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis13_Title",
    unlocks = "unlockworldevent;Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis13_Complete",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis14",
    awardstask = "Questyno_JeffreyLewis14_A",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis14_Lore" },
    objectives = { {
        guid = "Questyno_JeffreyLewis14_A",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis14_A",
        hidden = false,
        needsitem = "Base.BookFishing4;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis14;1;Completed;removeitem;Base.BookFishing4;1",
    },{
        guid = "Questyno_JeffreyLewis14_B",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis14_B",
        hidden = false,
        needsitem = "Base.BookMetalWelding1;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis14;2;Completed;removeitem;Base.BookMetalWelding1;1",
    },{
        guid = "Questyno_JeffreyLewis14_C",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis14_C",
        hidden = false,
        needsitem = "Base.BookMetalWelding2;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis14;3;Completed;removeitem;Base.BookMetalWelding2;1",
    },{
        guid = "Questyno_JeffreyLewis14_D",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis14_D",
        hidden = false,
        needsitem = "Base.BookCarpentry2;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis14;4;Completed;removeitem;Base.BookCarpentry2;1",
    },{
        guid = "Questyno_JeffreyLewis14_E",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis14_E",
        hidden = false,
        needsitem = "Base.BookTrapping5;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis14;5;Completed;removeitem;Base.BookTrapping5;1",
    }},
    text = "IGUI_SFQuest_Questyno_JeffreyLewis14_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis14_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis14_A",
    awardsrep = "LaResistenza;150",
    completesound = "levelup",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis14_Lore" },
    text = "IGUI_SFQuest_Questyno_JeffreyLewis14_A_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis14_Title",
    unlocks = "unlockworldevent;Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis14_Complete",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis15",
    awardstask = "Questyno_JeffreyLewis15_A",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis15_Lore" },
    objectives = { {
        guid = "Questyno_JeffreyLewis15_A",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis15_A",
        hidden = false,
        needsitem = "Base.BookForaging4;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis15;1;Completed;removeitem;Base.BookForaging4;1",
    },{
        guid = "Questyno_JeffreyLewis15_B",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis15_B",
        hidden = false,
        needsitem = "Base.BookForaging3;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis15;2;Completed;removeitem;Base.BookForaging3;1",
    },{
        guid = "Questyno_JeffreyLewis15_C",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis15_C",
        hidden = false,
        needsitem = "Base.BookMechanic1;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis15;3;Completed;removeitem;Base.BookMechanic1;1",
    },{
        guid = "Questyno_JeffreyLewis15_D",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis15_D",
        hidden = false,
        needsitem = "Base.BookCarpentry2;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis15;4;Completed;removeitem;Base.BookCarpentry2;1",
    },{
        guid = "Questyno_JeffreyLewis15_E",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis15_E",
        hidden = false,
        needsitem = "Base.BookFarming5;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis15;5;Completed;removeitem;Base.BookFarming5;1",
    }},
    text = "IGUI_SFQuest_Questyno_JeffreyLewis15_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis15_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis15_A",
    awardsrep = "LaResistenza;130",
    completesound = "levelup",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis15_Lore" },
    text = "IGUI_SFQuest_Questyno_JeffreyLewis15_A_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis15_Title",
    unlocks = "unlockworldevent;Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis15_Complete",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis16",
    awardstask = "Questyno_JeffreyLewis16_A",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis16_Lore" },
    objectives = { {
        guid = "Questyno_JeffreyLewis16_A",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis16_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoJeffreyLewis16;additem;HuntingMag1;1;additem;HuntingMag2;1",
    } },
    text = "IGUI_SFQuest_Questyno_JeffreyLewis16_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis16_Title",
    unlocks = "clickevent;9681x11178x0:EventoJeffreyLewis16;time:50:anim:loot;updateobjective:Questyno_JeffreyLewis16:1:Completed",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis16_A",
    awardstask = "Questyno_JeffreyLewis16_B",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis16_Lore" },
    objectives = { {
        guid = "Questyno_JeffreyLewis16_B",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis16_B",
        hidden = false,
        needsitem = "Base.HuntingMag1;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis16_A;1;Completed;removeitem;Base.HuntingMag1;1",
    },{
        guid = "Questyno_JeffreyLewis16_C",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis16_C",
        hidden = false,
        needsitem = "Base.HuntingMag2;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis16_A;2;Completed;removeitem;Base.HuntingMag2;1",
    }},
    text = "IGUI_SFQuest_Questyno_JeffreyLewis16_A_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis16_Title",
}); 


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis16_B",
    awardsrep = "LaResistenza;550",
    completesound = "levelup",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis16_Lore" },
    text = "IGUI_SFQuest_Questyno_JeffreyLewis16_B_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis16_Title",
    unlocks = "unlockworldevent;Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis16_Complete",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis17",
    awardstask = "Questyno_JeffreyLewis17_A",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis17_Lore" },
    objectives = { {
        guid = "Questyno_JeffreyLewis17_A",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis17_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoJeffreyLewis17;additem;FishingMag1;1;additem;FishingMag2;1",
    }},
    text = "IGUI_SFQuest_Questyno_JeffreyLewis17_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis17_Title",
    unlocks= "clickevent;10076x10697x0:EventoJeffreyLewis17;time:50:anim:loot;updateobjective:Questyno_JeffreyLewis17:1:Completed",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis17_A",
    awardstask = "Questyno_JeffreyLewis17_B",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis17_A_Lore" },
    objectives = { {
        guid = "Questyno_JeffreyLewis17_B",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis17_B",
        hidden = false,
        needsitem = "Base.FishingMag1;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis17_A;1;Completed;removeitem;Base.FishingMag1;1",
    },{
        guid = "Questyno_JeffreyLewis17_C",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis17_C",
        hidden = false,
        needsitem = "Base.FishingMag2;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis17_A;2;Completed;removeitem;Base.FishingMag2;1",
    }},
    text = "IGUI_SFQuest_Questyno_JeffreyLewis17_A_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis17_Title",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis17_B",
    awardsrep = "LaResistenza;250",
    completesound = "levelup",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis17_Lore" },
    text = "IGUI_SFQuest_Questyno_JeffreyLewis17_B_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis17_Title",
    unlocks = "unlockworldevent;Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis17_Complete",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis18",
    awardstask = "Questyno_JeffreyLewis18_A",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis18_Lore" },
    objectives = { {
        guid = "Questyno_JeffreyLewis18_A",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis18_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoJeffreyLewis18;additem;ElectronicsMag1;1;additem;ElectronicsMag2;1;additem;ElectronicsMag3;1",
    }},
    text = "IGUI_SFQuest_Questyno_JeffreyLewis18_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis18_Title",
    unlocks= "clickevent;10627x9973x0:EventoJeffreyLewis18;time:50:anim:loot;updateobjective:Questyno_JeffreyLewis18:1:Completed",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis18_A",
    awardstask = "Questyno_JeffreyLewis18_B",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis18_A_Lore" },
    objectives = { {
        guid = "Questyno_JeffreyLewis18_B",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis18_B",
        hidden = false,
        needsitem = "Base.ElectronicsMag1;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis18_A;1;Completed;removeitem;Base.ElectronicsMag1;1",
    },{
        guid = "Questyno_JeffreyLewis18_C",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis18_C",
        hidden = false,
        needsitem = "Base.ElectronicsMag2;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis18_A;2;Completed;removeitem;Base.ElectronicsMag2;1",
    },{
        guid = "Questyno_JeffreyLewis18_D",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis18_D",
        hidden = false,
        needsitem = "Base.ElectronicsMag3;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis18_A;3;Completed;removeitem;Base.ElectronicsMag3;1",
    }},
    text = "IGUI_SFQuest_Questyno_JeffreyLewis18_A_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis18_Title",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis18_B",
    awardsrep = "LaResistenza;70",
    awardsitem = "Money;30",
    completesound = "levelup",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis18_Lore" },
    text = "IGUI_SFQuest_Questyno_JeffreyLewis18_B_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis18_Title",
    unlocks = "unlockworldevent;Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis18_Complete",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis19",
    awardstask = "Questyno_JeffreyLewis19_A",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis19_Lore" },
    objectives = { {
        guid = "Questyno_JeffreyLewis19_A",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis19_A",
        hidden = false,
        needsitem = "Base.SheetPaper2;4",
        onobtained = "updateobjective;Questyno_JeffreyLewis19;1;Completed;removeitem;Base.SheetPaper2;4",
    },{
        guid = "Questyno_JeffreyLewis19_B",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis19_B",
        hidden = false,
        needsitem = "Base.Crayons;2",
        onobtained = "updateobjective;Questyno_JeffreyLewis19;2;Completed;removeitem;Base.Crayons;2",
    }},
    text = "IGUI_SFQuest_Questyno_JeffreyLewis19_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis19_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis19_A",
    awardsrep = "LaResistenza;100",
    awardsitem = "Money;20",
    completesound = "levelup",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis19_Lore" },
    text = "IGUI_SFQuest_Questyno_JeffreyLewis19_A_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis19_Title",
    unlocks = "unlockworldevent;Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis19_Complete",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis20",
    awardsrep = "LaResistenza;560",
    completesound = "levelup",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis20_Lore" },
    needsitem = "Base.Magazine;30",
    onobtained = "unlockworldevent;Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis20_Complete",
    text = "IGUI_SFQuest_Questyno_JeffreyLewis20_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis20_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis21",
    awardstask = "Questyno_JeffreyLewis21_A",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis21_Lore" },
    objectives = { {
        guid = "Questyno_JeffreyLewis21_A",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis21_A",
        hidden = false,
        needsitem = "Base.MagazineWordsearch1;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis21;1;Completed;removeitem;Base.MagazineWordsearch1;1",
    },{
        guid = "Questyno_JeffreyLewis21_B",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis21_B",
        hidden = false,
        needsitem = "Base.MagazineWordsearch2;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis21;2;Completed;removeitem;Base.MagazineWordsearch2;1",
    },{
        guid = "Questyno_JeffreyLewis21_C",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis21_C",
        hidden = false,
        needsitem = "Base.MagazineWordsearch3;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis21;3;Completed;removeitem;Base.MagazineWordsearch3;1",
    },{
        guid = "Questyno_JeffreyLewis21_D",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis21_D",
        hidden = false,
        needsitem = "Base.MagazineCrossword1;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis21;4;Completed;removeitem;Base.MagazineCrossword1;1",
    },{
        guid = "Questyno_JeffreyLewis21_E",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis21_E",
        hidden = false,
        needsitem = "Base.MagazineCrossword2;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis21;5;Completed;removeitem;Base.MagazineCrossword2;1",
    },{
        guid = "Questyno_JeffreyLewis21_F",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis21_F",
        hidden = false,
        needsitem = "Base.MagazineCrossword3;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis21;6;Completed;removeitem;Base.MagazineCrossword3;1",
    }},
    text = "IGUI_SFQuest_Questyno_JeffreyLewis21_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis21_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis21_A",
    awardsrep = "LaResistenza;200",
    completesound = "levelup",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis21_Lore" },
    text = "IGUI_SFQuest_Questyno_JeffreyLewis21_A_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis21_Title",
    unlocks = "unlockworldevent;Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis21_Complete",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis22",
    awardsrep = "LaResistenza;40",
    completesound = "levelup",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis22_Lore" },
    needsitem = "Base.BookCarpentry5;1",
    onobtained = "unlockworldevent;Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis22_Complete",
    text = "IGUI_SFQuest_Questyno_JeffreyLewis22_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis22_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis23",
    awardsrep = "LaResistenza;50",
    completesound = "levelup",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis23_Lore" },
    needsitem = "Base.BookTrapping3;1",
    onobtained = "unlockworldevent;Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis23_Complete",
    text = "IGUI_SFQuest_Questyno_JeffreyLewis23_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis23_Title",
    unlockedsound = "QuestUnlocked"
});



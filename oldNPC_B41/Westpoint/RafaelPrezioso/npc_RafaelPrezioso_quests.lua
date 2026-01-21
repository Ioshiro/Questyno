require 'SFQuest_Database'

-- Quest per RafaelPrezioso
table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso_Intro",

    awardsrep = "RafaelPrezioso;100",
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso_Intro_Lore" },
    ondone = "randomcodedworldfrompool;Questyno_RafaelPrezioso;Questyno;RafaelPrezioso",
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso_Intro_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso_Intro_Title",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso1",

    awardsrep = "LaResistenza;300",
    awardsitem = "Money;25",
    completesound = "levelup",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso1_Lore" },
    needsitem = "Base.WhiskeyFull;1",
    onobtained = "unlockworldevent;Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso1_Complete",
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso1_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso1_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso2",

    awardsrep = "LaResistenza;250",
    awardsitem = "Money;15",
    completesound = "levelup",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso2_Lore" },
    needsitem = "Base.Wine;1",
    onobtained = "unlockworldevent;Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso2_Complete",
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso2_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso2_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso3",
    awardstask = "Questyno_RafaelPrezioso3_A",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso3_Lore" },
    objectives = { {
        guid = "Questyno_RafaelPrezioso3_A",
        text = "IGUI_SFQuest_Questyno_RafaelPrezioso3_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoRafaelPrezioso3;additem;Base.Trumpet;1",
    } },
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso3_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso3_Title",
    unlocks = "clickevent;10837x10184x0:EventoRafaelPrezioso3;time:50:anim:loot;updateobjective:Questyno_RafaelPrezioso3:1:Completed",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso3_A",
    awardsrep = "LaResistenza;300",
    completesound = "levelup",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso3_Lore" },
    needsitem = "Base.Trumpet;1",
    onobtained = "unlockworldevent;Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso3_Complete",
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso3_A_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso3_Title",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso4",
    awardstask = "Questyno_RafaelPrezioso4_A",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso4_Lore" },
    objectives = { {
        guid = "Questyno_RafaelPrezioso4_A",
        text = "IGUI_SFQuest_Questyno_RafaelPrezioso4_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoRafaelPrezioso4;additem;Base.GuitarElectricBassBlue;1",
    } },
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso4_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso4_Title",
    unlocks = "clickevent;7386x8285x0:EventoRafaelPrezioso4;time:50:anim:loot;updateobjective:Questyno_RafaelPrezioso4:1:Completed",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso4_A",
    awardsrep = "LaResistenza;45",
    completesound = "levelup",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso4_Lore" },
    needsitem = "Base.GuitarElectricBassBlue;1",
    onobtained = "unlockworldevent;Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso4_Complete",
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso4_A_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso4_Title",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso5",
    awardstask = "Questyno_RafaelPrezioso5_A",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso5_Lore" },
    objectives = { {
        guid = "Questyno_RafaelPrezioso5_A",
        text = "IGUI_SFQuest_Questyno_RafaelPrezioso5_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoRafaelPrezioso5;additem;Base.Speaker;2",
    } },
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso5_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso5_Title",
    unlocks = "clickevent;7383x8285x0:EventoRafaelPrezioso5;time:50:anim:loot;updateobjective:Questyno_RafaelPrezioso5:1:Completed",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso5_A",
    awardsrep = "LaResistenza;200",
    completesound = "levelup",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso5_Lore" },
    needsitem = "Base.Speaker;2",
    onobtained = "unlockworldevent;Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso5_Complete",
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso5_A_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso5_Title",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso6",
    awardsrep = "LaResistenza;250",
    awardsitem = "Money;30",
    completesound = "levelup",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso6_Lore" },
    needsitem = "Base.ToiletPaper;2",
    onobtained = "unlockworldevent;Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso6_Complete",
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso6_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso6_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso7",
    awardstask = "Questyno_RafaelPrezioso7_A",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso7_Lore" },
    objectives = { {
        guid = "Questyno_RafaelPrezioso7_A",
        text = "IGUI_SFQuest_Questyno_RafaelPrezioso7_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoRafaelPrezioso7;additem;Base.Bell;1",
    } },
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso7_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso7_Title",
    unlocks = "clickevent;11437x6665x0:EventoRafaelPrezioso7;time:50:anim:loot;updateobjective:Questyno_RafaelPrezioso7:1:Completed",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso7_A",
    awardsrep = "LaResistenza;200",
    awardsitem = "Money;30",
    completesound = "levelup",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso7_Lore" },
    needsitem = "Base.Bell;1",
    onobtained = "unlockworldevent;Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso7_Complete",
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso7_A_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso7_Title",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso8",
    awardsrep = "LaResistenza;300",
    completesound = "levelup",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso8_Lore" },
    needsitem = "Base.CardDeck;1",
    onobtained = "unlockworldevent;Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso8_Complete",
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso8_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso8_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso9",
    awardstask = "Questyno_RafaelPrezioso9_A",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso9_Lore" },
    objectives = { {
        guid = "Questyno_RafaelPrezioso9_A",
        text = "IGUI_SFQuest_Questyno_RafaelPrezioso9_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoRafaelPrezioso9;additem;Base.VideoGame;1;revealobjective;Questyno_RafaelPrezioso9;2;clickevent;10013x11552x0:EventoRafaelPrezioso9A;time:50:anim:loot;updateobjective:Questyno_RafaelPrezioso9:2:Completed",
    }, {
        guid = "Questyno_RafaelPrezioso9_B",
        text = "IGUI_SFQuest_Questyno_RafaelPrezioso9_B",
        hidden = true,
        oncompleted = "removeclickevent;EventoRafaelPrezioso9A;additem;Base.VideoGame;1",
    } },
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso9_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso9_Title",
    unlocks = "clickevent;9693x11536x0:EventoRafaelPrezioso9;time:50:anim:loot;updateobjective:Questyno_RafaelPrezioso9:1:Completed",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso9_A",
    awardsrep = "LaResistenza;1200",
    awardsitem = "Money;30",
    completesound = "levelup",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso9_Lore" },
    needsitem = "Base.VideoGame;2",
    onobtained = "unlockworldevent;Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso9_Complete",
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso9_A_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso9_Title",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso10",
    awardstask = "Questyno_RafaelPrezioso10_A",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso10_Lore" },
    objectives = { {
        guid = "Questyno_RafaelPrezioso10_A",
        text = "IGUI_SFQuest_Questyno_RafaelPrezioso10_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoRafaelPrezioso10;additem;Base.GuitarAcoustic;1;clickevent;10913x10035x0:EventoRafaelPrezioso10A;time:50:anim:loot;updateobjective:Questyno_RafaelPrezioso10:2:Completed;revealobjective;Questyno_RafaelPrezioso10;2",
    }, {
        guid = "Questyno_RafaelPrezioso10_B",
        text = "IGUI_SFQuest_Questyno_RafaelPrezioso10_B",
        hidden = true,
        oncompleted = "removeclickevent;EventoRafaelPrezioso10A;additem;Base.Trumpet;1;revealobjective;Questyno_RafaelPrezioso10;3;clickevent;10750x9913x0:EventoRafaelPrezioso10B;time:50:anim:loot;updateobjective:Questyno_RafaelPrezioso10:3:Completed",
    }, {
        guid = "Questyno_RafaelPrezioso10_C",
        text = "IGUI_SFQuest_Questyno_RafaelPrezioso10_C",
        hidden = true,
        oncompleted = "removeclickevent;EventoRafaelPrezioso10B;additem;Base.Drumstick;1",
    } },
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso10_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso10_Title",
    unlocks = "clickevent;10757x10088x0:EventoRafaelPrezioso10;time:50:anim:loot;updateobjective:Questyno_RafaelPrezioso10:1:Completed",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso10_A",
    awardstask = "Questyno_RafaelPrezioso10_B",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso10_Lore" },
    objectives = {
        {
            guid = "Questyno_RafaelPrezioso10_D",
            text = "IGUI_SFQuest_Questyno_RafaelPrezioso10_D",
            hidden = false,
            needsitem = "Base.GuitarAcoustic;1",
            onobtained = "updateobjective;Questyno_RafaelPrezioso10_A;1;Completed;removeitem;Base.GuitarAcoustic;1"
        },
        {
            guid = "Questyno_RafaelPrezioso10_E",
            text = "IGUI_SFQuest_Questyno_RafaelPrezioso10_E",
            hidden = false,
            needsitem = "Base.Trumpet;1",
            onobtained = "updateobjective;Questyno_RafaelPrezioso10_A;2;Completed;removeitem;Base.Trumpet;1"
        },
        {
            guid = "Questyno_RafaelPrezioso10_F",
            text = "IGUI_SFQuest_Questyno_RafaelPrezioso10_F",
            hidden = false,
            needsitem = "Base.Drumstick;1",
            onobtained = "updateobjective;Questyno_RafaelPrezioso10_A;3;Completed;removeitem;Base.Drumstick;1"
        }
    },
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso10_A_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso10_Title",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso10_B",
    awardsrep = "LaResistenza;230",
    awardsitem = "Money;50",
    completesound = "levelup",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso10_Lore" },
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso10_B_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso10_Title",
    unlocks = "unlockworldevent;Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso10_Complete",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso11",
    awardstask = "Questyno_RafaelPrezioso11_A",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso11_Lore" },
    objectives = { {
        guid = "Questyno_RafaelPrezioso11_A",
        text = "IGUI_SFQuest_Questyno_RafaelPrezioso11_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoRafaelPrezioso11;additem;Base.GamePieceRed;1;additem;Base.GamePieceBlack;1;additem;Base.CheckerBoard;1",
    } },
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso11_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso11_Title",
    unlocks = "clickevent;8245x11686x0:EventoRafaelPrezioso11;time:50:anim:loot;updateobjective:Questyno_RafaelPrezioso11:1:Completed",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso11_A",
    awardstask = "Questyno_RafaelPrezioso11_B",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso11_Lore" },
    objectives = {
        {
            guid = "Questyno_RafaelPrezioso11_B",
            text = "IGUI_SFQuest_Questyno_RafaelPrezioso11_B",
            hidden = false,
            needsitem = "Base.GamePieceRed;1",
            onobtained = "updateobjective;Questyno_RafaelPrezioso11_A;1;Completed;removeitem;Base.GamePieceRed;1"
        },
        {
            guid = "Questyno_RafaelPrezioso11_C",
            text = "IGUI_SFQuest_Questyno_RafaelPrezioso11_C",
            hidden = false,
            needsitem = "Base.GamePieceBlack;1",
            onobtained = "updateobjective;Questyno_RafaelPrezioso11_A;2;Completed;removeitem;Base.GamePieceBlack;1"
        },
        {
            guid = "Questyno_RafaelPrezioso11_D",
            text = "IGUI_SFQuest_Questyno_RafaelPrezioso11_D",
            hidden = false,
            needsitem = "Base.CheckerBoard;1",
            onobtained = "updateobjective;Questyno_RafaelPrezioso11_A;3;Completed;removeitem;Base.CheckerBoard;1"
        }
    },
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso11_A_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso11_Title",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso11_B",
    awardsrep = "LaResistenza;180",
    completesound = "levelup",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso11_Lore" },
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso11_B_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso11_Title",
    unlocks = "unlockworldevent;Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso11_Complete",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso12",
    awardstask = "Questyno_RafaelPrezioso12_A",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso12_Lore" },
    objectives = { {
        guid = "Questyno_RafaelPrezioso12_A",
        text = "IGUI_SFQuest_Questyno_RafaelPrezioso12_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoRafaelPrezioso12;additem;Base.CheckerBoard;1;additem;ChessWhite;1;additem;ChessBlack;1",
    } },
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso12_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso12_Title",
    unlocks = "clickevent;6984x8428x0:EventoRafaelPrezioso12;time:50:anim:loot;updateobjective:Questyno_RafaelPrezioso12:1:Completed",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso12_A",
    awardstask = "Questyno_RafaelPrezioso12_B",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso12_Lore" },
    objectives = {
        {
            guid = "Questyno_RafaelPrezioso12_B",
            text = "IGUI_SFQuest_Questyno_RafaelPrezioso12_B",
            hidden = false,
            needsitem = "Base.CheckerBoard;1",
            onobtained = "updateobjective;Questyno_RafaelPrezioso12_A;1;Completed;removeitem;Base.CheckerBoard;1"
        },
        {
            guid = "Questyno_RafaelPrezioso12_C",
            text = "IGUI_SFQuest_Questyno_RafaelPrezioso12_C",
            hidden = false,
            needsitem = "ChessWhite;1",
            onobtained = "updateobjective;Questyno_RafaelPrezioso12_A;2;Completed;removeitem;ChessWhite;1"
        },
        {
            guid = "Questyno_RafaelPrezioso12_D",
            text = "IGUI_SFQuest_Questyno_RafaelPrezioso12_D",
            hidden = false,
            needsitem = "ChessBlack;1",
            onobtained = "updateobjective;Questyno_RafaelPrezioso12_A;3;Completed;removeitem;ChessBlack;1"
        }
    },
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso12_A_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso12_Title",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso12_B",
    awardsrep = "LaResistenza;50",
    completesound = "levelup",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso12_Lore" },
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso12_B_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso12_Title",
    unlocks = "unlockworldevent;Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso12_Complete",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso13",
    awardsrep = "LaResistenza;300",
    awardsitem = "Money;20",
    completesound = "levelup",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso13_Lore" },
    needsitem = "Base.Yoyo;3",
    onobtained = "unlockworldevent;Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso13_Complete",
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso13_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso13_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso14",
    awardstask = "Questyno_RafaelPrezioso14_A",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso14_Lore" },
    objectives = { {
        guid = "Questyno_RafaelPrezioso14_A",
        text = "IGUI_SFQuest_Questyno_RafaelPrezioso14_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoRafaelPrezioso14;additem;Base.PirateHat;1",
    } },
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso14_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso14_Title",
    unlocks = "clickevent;7465x9615x2:EventoRafaelPrezioso14;time:50:anim:loot;updateobjective:Questyno_RafaelPrezioso14:1:Completed",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso14_A",
    awardsrep = "LaResistenza;50",
    awardsitem = "Money;100",
    completesound = "levelup",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso14_Lore" },
    needsitem = "Base.PirateHat;1",
    onobtained = "unlockworldevent;Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso14_Complete",
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso14_A_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso14_Title",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso15",
    awardstask = "Questyno_RafaelPrezioso15_A",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso15_Lore" },
    objectives = { {
        guid = "Questyno_RafaelPrezioso15_A",
        text = "IGUI_SFQuest_Questyno_RafaelPrezioso15_A",
        hidden = false,
        needsitem = "Base.Trousers_Denim;1",
        onobtained = "updateobjective;Questyno_RafaelPrezioso15;1;Completed;removeitem;Base.Trousers_Denim;1",
    },{
        guid = "Questyno_RafaelPrezioso15_B",
        text = "IGUI_SFQuest_Questyno_RafaelPrezioso15_B",
        hidden = false,
        needsitem = "Base.Jumper_RoundNeck;1",
        onobtained = "updateobjective;Questyno_RafaelPrezioso15;2;Completed;removeitem;Base.Jumper_RoundNeck;1",
    }},
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso15_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso15_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso15_A",
    awardsrep = "LaResistenza;40",
    awardsitem = "Money;50",
    completesound = "levelup",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso15_Lore" },
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso15_A_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso15_Title",
    unlocks = "unlockworldevent;Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso15_Complete",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso16",
    awardstask = "Questyno_RafaelPrezioso16_A",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso16_Lore" },
    objectives = { {
        guid = "Questyno_RafaelPrezioso16_A",
        text = "IGUI_SFQuest_Questyno_RafaelPrezioso16_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoRafaelPrezioso16;additem;Drumstick;1",
    } },
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso16_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso16_Title",
    unlocks = "clickevent;11228x8859x0:EventoRafaelPrezioso16;time:50:anim:loot;updateobjective:Questyno_RafaelPrezioso16:1:Completed",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso16_A",
    awardsrep = "LaResistenza;250",
    awardsitem = "SWeapons.SalvagedBlade;1",
    awardstask = "Questyno_RafaelPrezioso17",
    completesound = "levelup",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso16_Lore" },
    needsitem = "Drumstick;1",
    onobtained = "unlockworldevent;Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso16_Complete",
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso16_A_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso16_Title",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso17",
    awardstask = "Questyno_RafaelPrezioso17_A",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso17_Lore" },
    objectives = { {
        guid = "Questyno_RafaelPrezioso17_A",
        text = "IGUI_SFQuest_Questyno_RafaelPrezioso17_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoRafaelPrezioso17;additem;Fertilizer;1",
    } },
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso17_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso17_Title",
    unlocks = "clickevent;6668x11376x0:EventoRafaelPrezioso17;time:50:anim:loot;updateobjective:Questyno_RafaelPrezioso17:1:Completed",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso17_A",
    awardsrep = "LaResistenza;180",
    completesound = "levelup",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso17_Lore" },
    needsitem = "Fertilizer;1",
    onobtained = "unlockworldevent;Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso17_Complete",
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso17_A_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso17_Title",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso18",
    awardstask = "Questyno_RafaelPrezioso18_A",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso18_Lore" },
    objectives = { {
        guid = "Questyno_RafaelPrezioso18_A",
        text = "IGUI_SFQuest_Questyno_RafaelPrezioso18_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoRafaelPrezioso18;additem;PaintBlue;1;additem;PaintRed;1;additem;PaintYellow;1",
    } },
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso18_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso18_Title",
    unlocks = "clickevent;5636x10965x0:EventoRafaelPrezioso18;time:50:anim:loot;updateobjective:Questyno_RafaelPrezioso18:1:Completed",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso18_A",
    awardstask = "Questyno_RafaelPrezioso18_B",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso18_Lore" },
    objectives = {
        {
            guid = "Questyno_RafaelPrezioso18_B",
            text = "IGUI_SFQuest_Questyno_RafaelPrezioso18_B",
            hidden = false,
            needsitem = "PaintBlue;1",
            onobtained = "updateobjective;Questyno_RafaelPrezioso18_A;1;Completed;removeitem;PaintBlue;1"
        },
        {
            guid = "Questyno_RafaelPrezioso18_C",
            text = "IGUI_SFQuest_Questyno_RafaelPrezioso18_C",
            hidden = false,
            needsitem = "PaintRed;1",
            onobtained = "updateobjective;Questyno_RafaelPrezioso18_A;2;Completed;removeitem;PaintRed;1"
        },
        {
            guid = "Questyno_RafaelPrezioso18_D",
            text = "IGUI_SFQuest_Questyno_RafaelPrezioso18_D",
            hidden = false,
            needsitem = "PaintYellow;1",
            onobtained = "updateobjective;Questyno_RafaelPrezioso18_A;3;Completed;removeitem;PaintYellow;1"
        }
    },
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso18_A_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso18_Title",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso18_B",
    awardsrep = "LaResistenza;350",
    completesound = "levelup",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso18_Lore" },
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso18_B_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso18_Title",
    unlocks = "unlockworldevent;Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso18_Complete",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso19",
    awardsrep = "LaResistenza;50",
    completesound = "levelup",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso19_Lore" },
    needsitem = "Tag#Bandana;1",
    onobtained = "unlockworldevent;Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso19_Complete",
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso19_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso19_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso20",
    awardstask = "Questyno_RafaelPrezioso20_A",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso20_Lore" },
    objectives = { {
        guid = "Questyno_RafaelPrezioso20_A",
        text = "IGUI_SFQuest_Questyno_RafaelPrezioso20_A",
        hidden = false,
        needsitem = "Base.Suit_Jacket;1",
        onobtained = "updateobjective;Questyno_RafaelPrezioso20;1;Completed;removeitem;Base.Suit_Jacket;1",
    },{
        guid = "Questyno_RafaelPrezioso20_B",
        text = "IGUI_SFQuest_Questyno_RafaelPrezioso20_B",
        hidden = false,
        needsitem = "Base.Trousers_Suit;1",
        onobtained = "updateobjective;Questyno_RafaelPrezioso20;2;Completed;removeitem;Base.Trousers_Suit;1",
    }},
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso20_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso20_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso20_A",
    awardsrep = "LaResistenza;80",
    completesound = "levelup",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso20_Lore" },
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso20_A_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso20_Title",
    unlocks = "unlockworldevent;Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso20_Complete",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso21",
    awardsrep = "LaResistenza;500",
    awardsitem = "Money;30",
    completesound = "levelup",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso21_Lore" },
    needsitem = "Base.Necklace_DogTag;30",
    onobtained = "unlockworldevent;Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso21_Complete",
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso21_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso21_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso22",
    awardsrep = "LaResistenza;30",
    completesound = "levelup",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso22_Lore" },
    needsitem = "Base.NoseStud_Gold;1",
    onobtained = "unlockworldevent;Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso22_Complete",
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso22_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso22_Title",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso23",
    awardsrep = "LaResistenza;150",
    awardsitem = "Money;40",
    completesound = "levelup",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso23_Lore" },
    needsitem = "Base.Tie_BowTieWorn;1",
    onobtained = "unlockworldevent;Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso23_Complete",
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso23_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso23_Title",
});



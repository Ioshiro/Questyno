require 'SFQuest_Database'

-- Quest per MayaBlackwell
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

    awardsrep = "LaResistenza;1500",
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

    awardsrep = "LaResistenza;2400",
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

    awardsrep = "LaResistenza;1400",
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

    awardsrep = "LaResistenza;1200",
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

    awardsrep = "LaResistenza;2000",
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

    awardsrep = "LaResistenza;2200",
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

    awardsrep = "LaResistenza;3000",
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

    awardsrep = "LaResistenza;1950",
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

    awardsrep = "LaResistenza;3000",
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

    awardsrep = "LaResistenza;2000",
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

    awardsrep = "LaResistenza;2000",
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

    awardsrep = "LaResistenza;500",
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
    unlocks = "actionevent;killzombies:150:tierlevel:3;updateobjective:Questyno_MayaBlackwell13:2:Completed;clickevent;5992x11225x0:EventoMayaBlackwell13;time:50:anim:loot;updateobjective:Questyno_MayaBlackwell13:1:Completed",
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



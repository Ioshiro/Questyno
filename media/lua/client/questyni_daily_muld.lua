require 'SFQuest_Database'

--[[
            *** Victoria Secret ***
            Elenco:
                intro. Parla con Victoria Secret per sbloccare le daily.
				1. Recuperare Base.Shoes_Fancy parlando con (17334,6563,0) (80rep + Base.BaseballBat)
				2. Recuperare Base.DressKnees_Straps parlando con (12242,11879,0) (80rep + Colla per Legno)
				3. Recuperare Base.Glasses_Sun parlando con (6525,10599,0) (30rep + 50$)
				4. Recuperare Base.Lipstick parlando con (4908,10172,0) (70rep)
				5. Recuperare Base.Skirt_short parlando con (4003,9110,0) (40rep + 50$)
				6. Recuperare Base.Dress_SmallBlackStrapless parlando con (8535,6438,0) (60rep)
				7. Recuperare Base.Dress_SmallBlackStrapless parlando con (11874,6908,0) (50rep + 50$)
				8. Recuperare Base.Hat_Beret parlando con (11207,8794,0) (30rep + 60$)
				9. Recuperare Base.Dress_SmallBlackStrap parlando con (6399,5266,0) (150rep)
				10. Recuperare Base.TightsFishnets parlando con (16874,7265,0) (100rep)
				11. Recuperare Base.HairDyeBlack parlando con (10606,10333,0) (15rep)
				12. Recuperare Base.HairDyeBlack parlando con (11862,6884,0) (50rep)
				13. Recuperare Base.Dress_Knees parlando con (4692,6731,0) (100rep + 50$)
				14. Recuperare Base.Dress_Knees parlando con (9722,10332,0) (30rep + 50$)
				15. Recuperare Base.Dress_Knees parlando con (7701,11530,0) (50rep + 80$)
				16. Recuperare Base.Dress_Knees parlando con (11488,6982,0) (15rep)
				17. Recuperare Base Glasses_sun parlando con (4463,6385,0) (100rep + 70$)
				18. Recuperare MakeupEyeshadow parlando con (7346,11326,0) (60rep)
				19. Recuperare Base.Tshirt_WhiteTINT parlando con (4810,10118,0) (50rep + 20$)
				20. Recuperare Base.Mov_MannequinFemale parlando con (10612,10314,0) (15rep + 20$)
				21. Recuperare Base.NecklaceLong_GoldDiamond (40rep + 25$)
]]

local secretIntro = {
    guid = "Questyno_VictoriaSecret_Intro",

    awardsrep = "LaResistenza;1", -- REP REWARD
    awardstask = "Questyno_VictoriaSecret1", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_VictoriaSecret_Intro_Lore" },
    ondone = "randomcodedworldfrompool;Questyno_VictoriaSecret;Questyno;VictoriaSecret",
    text = "IGUI_SFQuest_Questyno_VictoriaSecret_Intro_Text",
    texture = "media/textures/Item_VictoriaSecret.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_VictoriaSecret;SFQuest_Questyno_VictoriaSecret_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_VictoriaSecret_Intro_Title",
}
table.insert(SFQuest_Database.QuestPool, secretIntro);

local secretQuest1 = {
    guid = "Questyno_VictoriaSecret1",

    awardstask = "Questyno_VictoriaSecret1_A", -- TASK REWARD
    dailycode = "Questyno_VictoriaSecret",
    lore = { "IGUI_SFQuest_Questyno_VictoriaSecret1_Lore" },
    objectives = { {
        guid = "Questyno_VictoriaSecret1_A",
        text = "IGUI_SFQuest_Questyno_VictoriaSecret1_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoVictoriaSecret1;additem;Shoes_Fancy;1"
    } },
    text = "IGUI_SFQuest_Questyno_VictoriaSecret1_Text",
    texture = "media/textures/Item_VictoriaSecret.png",
    title = "IGUI_SFQuest_Questyno_VictoriaSecret1_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;17334x6563x0:EventoVictoriaSecret1;anim:loot:time:50;updateobjective:Questyno_VictoriaSecret1:1:Completed"
}
table.insert(SFQuest_Database.QuestPool, secretQuest1);

local secretQuest1A = {
    guid = "Questyno_VictoriaSecret1_A",

    awardsrep = "LaResistenza;150", -- REP REWARD
    awardstask = "Questyno_VictoriaSecret2", -- TODO: REMOVE WHEN TESTING IS DONE
    awardsitem = "BaseballBat;1", -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_VictoriaSecret",
    lore = { "IGUI_SFQuest_Questyno_VictoriaSecret1_Lore" },
    needsitem = "Shoes_Fancy;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_VictoriaSecret;SFQuest_Questyno_VictoriaSecret1_Complete",
    text = "IGUI_SFQuest_Questyno_VictoriaSecret1_A_Text",
    texture = "media/textures/Item_VictoriaSecret.png",
    title = "IGUI_SFQuest_Questyno_VictoriaSecret1_Title",
}
table.insert(SFQuest_Database.QuestPool, secretQuest1A);

local secretQuest2 = {
    guid = "Questyno_VictoriaSecret2",

    awardstask = "Questyno_VictoriaSecret2_A", -- TASK REWARD
    dailycode = "Questyno_VictoriaSecret",
    lore = { "IGUI_SFQuest_Questyno_VictoriaSecret2_Lore" },
    objectives = { {
        guid = "Questyno_VictoriaSecret2_A",
        text = "IGUI_SFQuest_Questyno_VictoriaSecret2_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoVictoriaSecret2;additem;DressKnees_Straps;1"
    } },
    text = "IGUI_SFQuest_Questyno_VictoriaSecret2_Text",
    texture = "media/textures/Item_VictoriaSecret.png",
    title = "IGUI_SFQuest_Questyno_VictoriaSecret2_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;12241x11879x0:EventoVictoriaSecret2;anim:loot:time:50;updateobjective:Questyno_VictoriaSecret2:1:Completed"
}
table.insert(SFQuest_Database.QuestPool, secretQuest2);

local secretQuest2A = {
    guid = "Questyno_VictoriaSecret2_A",

    awardsrep = "LaResistenza;120", -- REP REWARD
    awardsitem = "Woodglue;1", -- ITEM REWARD
    awardstask = "Questyno_VictoriaSecret3", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_VictoriaSecret",
    lore = { "IGUI_SFQuest_Questyno_VictoriaSecret2_Lore" },
    needsitem = "DressKnees_Straps;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_VictoriaSecret;SFQuest_Questyno_VictoriaSecret2_Complete",
    text = "IGUI_SFQuest_Questyno_VictoriaSecret2_A_Text",
    texture = "media/textures/Item_VictoriaSecret.png",
    title = "IGUI_SFQuest_Questyno_VictoriaSecret2_Title",
}
table.insert(SFQuest_Database.QuestPool, secretQuest2A);

local secretQuest3 = {
    guid = "Questyno_VictoriaSecret3",

    awardstask = "Questyno_VictoriaSecret3_A", -- TASK REWARD
    dailycode = "Questyno_VictoriaSecret",
    lore = { "IGUI_SFQuest_Questyno_VictoriaSecret3_Lore" },
    objectives = { {
        guid = "Questyno_VictoriaSecret3_A",
        text = "IGUI_SFQuest_Questyno_VictoriaSecret3_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoVictoriaSecret3;additem;Glasses_Sun;1"
    } },
    text = "IGUI_SFQuest_Questyno_VictoriaSecret3_Text",
    texture = "media/textures/Item_VictoriaSecret.png",
    title = "IGUI_SFQuest_Questyno_VictoriaSecret3_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;6525x10599x0:EventoVictoriaSecret3;anim:loot:time:50;updateobjective:Questyno_VictoriaSecret3:1:Completed"
}
table.insert(SFQuest_Database.QuestPool, secretQuest3);

local secretQuest3A = {
    guid = "Questyno_VictoriaSecret3_A",

    awardsrep = "LaResistenza;80", -- REP REWARD
    awardsitem = "Money;50", -- ITEM REWARD
    awardstask = "Questyno_VictoriaSecret4", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_VictoriaSecret",
    lore = { "IGUI_SFQuest_Questyno_VictoriaSecret3_Lore" },
    needsitem = "Glasses_Sun;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_VictoriaSecret;SFQuest_Questyno_VictoriaSecret3_Complete",
    text = "IGUI_SFQuest_Questyno_VictoriaSecret3_A_Text",
    texture = "media/textures/Item_VictoriaSecret.png",
    title = "IGUI_SFQuest_Questyno_VictoriaSecret3_Title",
}
table.insert(SFQuest_Database.QuestPool, secretQuest3A);

local secretQuest4 = {
    guid = "Questyno_VictoriaSecret4",

    awardstask = "Questyno_VictoriaSecret4_A", -- TASK REWARD
    dailycode = "Questyno_VictoriaSecret",
    lore = { "IGUI_SFQuest_Questyno_VictoriaSecret4_Lore" },
    objectives = { {
        guid = "Questyno_VictoriaSecret4_A",
        text = "IGUI_SFQuest_Questyno_VictoriaSecret4_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoVictoriaSecret4;additem;Lipstick;1"
    } },
    text = "IGUI_SFQuest_Questyno_VictoriaSecret4_Text",
    texture = "media/textures/Item_VictoriaSecret.png",
    title = "IGUI_SFQuest_Questyno_VictoriaSecret4_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;4908x10172x0:EventoVictoriaSecret4;anim:loot:time:50;updateobjective:Questyno_VictoriaSecret4:1:Completed"
}
table.insert(SFQuest_Database.QuestPool, secretQuest4);

local secretQuest4A = {
    guid = "Questyno_VictoriaSecret4_A",

    awardsrep = "LaResistenza;150", -- REP REWARD
    awardstask = "Questyno_VictoriaSecret5", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_VictoriaSecret",
    lore = { "IGUI_SFQuest_Questyno_VictoriaSecret4_Lore" },
    needsitem = "Lipstick;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_VictoriaSecret;SFQuest_Questyno_VictoriaSecret4_Complete",
    text = "IGUI_SFQuest_Questyno_VictoriaSecret4_A_Text",
    texture = "media/textures/Item_VictoriaSecret.png",
    title = "IGUI_SFQuest_Questyno_VictoriaSecret4_Title",
}
table.insert(SFQuest_Database.QuestPool, secretQuest4A);

local secretQuest5 = {
    guid = "Questyno_VictoriaSecret5",

    awardstask = "Questyno_VictoriaSecret5_A", -- TASK REWARD
    dailycode = "Questyno_VictoriaSecret",
    lore = { "IGUI_SFQuest_Questyno_VictoriaSecret5_Lore" },
    objectives = { {
        guid = "Questyno_VictoriaSecret5_A",
        text = "IGUI_SFQuest_Questyno_VictoriaSecret5_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoVictoriaSecret5;additem;Skirt_Short;1"
    } },
    text = "IGUI_SFQuest_Questyno_VictoriaSecret5_Text",
    texture = "media/textures/Item_VictoriaSecret.png",
    title = "IGUI_SFQuest_Questyno_VictoriaSecret5_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;4003x9110x0:EventoVictoriaSecret5;anim:loot:time:50;updateobjective:Questyno_VictoriaSecret5:1:Completed"
}
table.insert(SFQuest_Database.QuestPool, secretQuest5);

local secretQuest5A = {
    guid = "Questyno_VictoriaSecret5_A",

    awardsrep = "LaResistenza;120", -- REP REWARD
    awardsitem = "Money;50", -- ITEM REWARD
    awardstask = "Questyno_VictoriaSecret6", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_VictoriaSecret",
    lore = { "IGUI_SFQuest_Questyno_VictoriaSecret5_Lore" },
    needsitem = "Skirt_Short;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_VictoriaSecret;SFQuest_Questyno_VictoriaSecret5_Complete",
    text = "IGUI_SFQuest_Questyno_VictoriaSecret5_A_Text",
    texture = "media/textures/Item_VictoriaSecret.png",
    title = "IGUI_SFQuest_Questyno_VictoriaSecret5_Title",
}
table.insert(SFQuest_Database.QuestPool, secretQuest5A);

local secretQuest6 = {
    guid = "Questyno_VictoriaSecret6",

    awardstask = "Questyno_VictoriaSecret6_A", -- TASK REWARD
    dailycode = "Questyno_VictoriaSecret",
    lore = { "IGUI_SFQuest_Questyno_VictoriaSecret6_Lore" },
    objectives = { {
        guid = "Questyno_VictoriaSecret6_A",
        text = "IGUI_SFQuest_Questyno_VictoriaSecret6_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoVictoriaSecret6;additem;Dress_SmallBlackStrapless;1"
    } },
    text = "IGUI_SFQuest_Questyno_VictoriaSecret6_Text",
    texture = "media/textures/Item_VictoriaSecret.png",
    title = "IGUI_SFQuest_Questyno_VictoriaSecret6_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;8534x6437x1:EventoVictoriaSecret6;anim:loot:time:50;updateobjective:Questyno_VictoriaSecret6:1:Completed"
}
table.insert(SFQuest_Database.QuestPool, secretQuest6);

local secretQuest6A = {
    guid = "Questyno_VictoriaSecret6_A",

    awardsrep = "LaResistenza;200", -- REP REWARD
    awardsitem = "Money;200",
    awardstask = "Questyno_VictoriaSecret7", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_VictoriaSecret",
    lore = { "IGUI_SFQuest_Questyno_VictoriaSecret6_Lore" },
    needsitem = "Dress_SmallBlackStrapless;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_VictoriaSecret;SFQuest_Questyno_VictoriaSecret6_Complete",
    text = "IGUI_SFQuest_Questyno_VictoriaSecret6_A_Text",
    texture = "media/textures/Item_VictoriaSecret.png",
    title = "IGUI_SFQuest_Questyno_VictoriaSecret6_Title",
}
table.insert(SFQuest_Database.QuestPool, secretQuest6A);

local secretQuest7 = {
    guid = "Questyno_VictoriaSecret7",

    awardstask = "Questyno_VictoriaSecret7_A", -- TASK REWARD
    dailycode = "Questyno_VictoriaSecret",
    lore = { "IGUI_SFQuest_Questyno_VictoriaSecret7_Lore" },
    objectives = { {
        guid = "Questyno_VictoriaSecret7_A",
        text = "IGUI_SFQuest_Questyno_VictoriaSecret7_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoVictoriaSecret7;additem;Dress_SmallBlackStrapless;1"
    } },
    text = "IGUI_SFQuest_Questyno_VictoriaSecret7_Text",
    texture = "media/textures/Item_VictoriaSecret.png",
    title = "IGUI_SFQuest_Questyno_VictoriaSecret7_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;11874x6908x0:EventoVictoriaSecret7;anim:loot:time:50;updateobjective:Questyno_VictoriaSecret7:1:Completed"
}
table.insert(SFQuest_Database.QuestPool, secretQuest7);

local secretQuest7A = {
    guid = "Questyno_VictoriaSecret7_A",

    awardsrep = "LaResistenza;50", -- REP REWARD
    awardsitem = "Money;50", -- ITEM REWARD
    awardstask = "Questyno_VictoriaSecret8", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_VictoriaSecret",
    lore = { "IGUI_SFQuest_Questyno_VictoriaSecret7_Lore" },
    needsitem = "Dress_SmallBlackStrapless;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_VictoriaSecret;SFQuest_Questyno_VictoriaSecret7_Complete",
    text = "IGUI_SFQuest_Questyno_VictoriaSecret7_A_Text",
    texture = "media/textures/Item_VictoriaSecret.png",
    title = "IGUI_SFQuest_Questyno_VictoriaSecret7_Title",
}
table.insert(SFQuest_Database.QuestPool, secretQuest7A);

local secretQuest8 = {
    guid = "Questyno_VictoriaSecret8",

    awardstask = "Questyno_VictoriaSecret8_A", -- TASK REWARD
    dailycode = "Questyno_VictoriaSecret",
    lore = { "IGUI_SFQuest_Questyno_VictoriaSecret8_Lore" },
    objectives = { {
        guid = "Questyno_VictoriaSecret8_A",
        text = "IGUI_SFQuest_Questyno_VictoriaSecret8_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoVictoriaSecret8;additem;Hat_Beret;1"
    } },
    text = "IGUI_SFQuest_Questyno_VictoriaSecret8_Text",
    texture = "media/textures/Item_VictoriaSecret.png",
    title = "IGUI_SFQuest_Questyno_VictoriaSecret8_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;11207x8794x0:EventoVictoriaSecret8;anim:loot:time:50;updateobjective:Questyno_VictoriaSecret8:1:Completed"
}
table.insert(SFQuest_Database.QuestPool, secretQuest8);

local secretQuest8A = {
    guid = "Questyno_VictoriaSecret8_A",

    awardsrep = "LaResistenza;120", -- REP REWARD
    awardsitem = "Money;60", -- ITEM REWARD
    awardstask = "Questyno_VictoriaSecret9", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_VictoriaSecret",
    lore = { "IGUI_SFQuest_Questyno_VictoriaSecret8_Lore" },
    needsitem = "Hat_Beret;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_VictoriaSecret;SFQuest_Questyno_VictoriaSecret8_Complete",
    text = "IGUI_SFQuest_Questyno_VictoriaSecret8_A_Text",
    texture = "media/textures/Item_VictoriaSecret.png",
    title = "IGUI_SFQuest_Questyno_VictoriaSecret8_Title",
}
table.insert(SFQuest_Database.QuestPool, secretQuest8A);

local secretQuest9 = {
    guid = "Questyno_VictoriaSecret9",

    awardstask = "Questyno_VictoriaSecret9_A", -- TASK REWARD
    dailycode = "Questyno_VictoriaSecret",
    lore = { "IGUI_SFQuest_Questyno_VictoriaSecret9_Lore" },
    objectives = { {
        guid = "Questyno_VictoriaSecret9_A",
        text = "IGUI_SFQuest_Questyno_VictoriaSecret9_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoVictoriaSecret9;additem;Dress_SmallBlackStraps;1"
    } },
    text = "IGUI_SFQuest_Questyno_VictoriaSecret9_Text",
    texture = "media/textures/Item_VictoriaSecret.png",
    title = "IGUI_SFQuest_Questyno_VictoriaSecret9_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;6399x5266x0:EventoVictoriaSecret9;anim:loot:time:50;updateobjective:Questyno_VictoriaSecret9:1:Completed"
}
table.insert(SFQuest_Database.QuestPool, secretQuest9);

local secretQuest9A = {
    guid = "Questyno_VictoriaSecret9_A",

    awardsrep = "LaResistenza;200", -- REP REWARD
    awardstask = "Questyno_VictoriaSecret10", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_VictoriaSecret",
    lore = { "IGUI_SFQuest_Questyno_VictoriaSecret9_Lore" },
    needsitem = "Dress_SmallBlackStraps;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_VictoriaSecret;SFQuest_Questyno_VictoriaSecret9_Complete",
    text = "IGUI_SFQuest_Questyno_VictoriaSecret9_A_Text",
    texture = "media/textures/Item_VictoriaSecret.png",
    title = "IGUI_SFQuest_Questyno_VictoriaSecret9_Title",
}
table.insert(SFQuest_Database.QuestPool, secretQuest9A);

local secretQuest10 = {
    guid = "Questyno_VictoriaSecret10",

    awardstask = "Questyno_VictoriaSecret10_A", -- TASK REWARD
    dailycode = "Questyno_VictoriaSecret",
    lore = { "IGUI_SFQuest_Questyno_VictoriaSecret10_Lore" },
    objectives = { {
        guid = "Questyno_VictoriaSecret10_A",
        text = "IGUI_SFQuest_Questyno_VictoriaSecret10_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoVictoriaSecret10;additem;TightsFishnets;1"
    } },
    text = "IGUI_SFQuest_Questyno_VictoriaSecret10_Text",
    texture = "media/textures/Item_VictoriaSecret.png",
    title = "IGUI_SFQuest_Questyno_VictoriaSecret10_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;16874x7265x0:EventoVictoriaSecret10;anim:loot:time:50;updateobjective:Questyno_VictoriaSecret10:1:Completed"
}
table.insert(SFQuest_Database.QuestPool, secretQuest10);

local secretQuest10A = {
    guid = "Questyno_VictoriaSecret10_A",

    awardsrep = "LaResistenza;140", -- REP REWARD
    awardsitem = "Money;200", -- ITEM REWARD
    awardstask = "Questyno_VictoriaSecret11", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_VictoriaSecret",
    lore = { "IGUI_SFQuest_Questyno_VictoriaSecret10_Lore" },
    needsitem = "TightsFishnets;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_VictoriaSecret;SFQuest_Questyno_VictoriaSecret10_Complete",
    text = "IGUI_SFQuest_Questyno_VictoriaSecret10_A_Text",
    texture = "media/textures/Item_VictoriaSecret.png",
    title = "IGUI_SFQuest_Questyno_VictoriaSecret10_Title",
}
table.insert(SFQuest_Database.QuestPool, secretQuest10A);

local secretQuest11 = {
    guid = "Questyno_VictoriaSecret11",

    awardstask = "Questyno_VictoriaSecret11_A", -- TASK REWARD
    dailycode = "Questyno_VictoriaSecret",
    lore = { "IGUI_SFQuest_Questyno_VictoriaSecret11_Lore" },
    objectives = { {
        guid = "Questyno_VictoriaSecret11_A",
        text = "IGUI_SFQuest_Questyno_VictoriaSecret11_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoVictoriaSecret11;additem;HairDyeBlack;1"
    } },
    text = "IGUI_SFQuest_Questyno_VictoriaSecret11_Text",
    texture = "media/textures/Item_VictoriaSecret.png",
    title = "IGUI_SFQuest_Questyno_VictoriaSecret11_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;10606x10333x0:EventoVictoriaSecret11;anim:loot:time:50;updateobjective:Questyno_VictoriaSecret11:1:Completed"
}
table.insert(SFQuest_Database.QuestPool, secretQuest11);

local secretQuest11A = {
    guid = "Questyno_VictoriaSecret11_A",

    awardsrep = "LaResistenza;25", -- REP REWARD
    awardstask = "Questyno_VictoriaSecret12", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_VictoriaSecret",
    lore = { "IGUI_SFQuest_Questyno_VictoriaSecret11_Lore" },
    needsitem = "HairDyeBlack;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_VictoriaSecret;SFQuest_Questyno_VictoriaSecret11_Complete",
    text = "IGUI_SFQuest_Questyno_VictoriaSecret11_A_Text",
    texture = "media/textures/Item_VictoriaSecret.png",
    title = "IGUI_SFQuest_Questyno_VictoriaSecret11_Title",
}
table.insert(SFQuest_Database.QuestPool, secretQuest11A);

local secretQuest12 = {
    guid = "Questyno_VictoriaSecret12",

    awardstask = "Questyno_VictoriaSecret12_A", -- TASK REWARD
    dailycode = "Questyno_VictoriaSecret",
    lore = { "IGUI_SFQuest_Questyno_VictoriaSecret12_Lore" },
    objectives = { {
        guid = "Questyno_VictoriaSecret12_A",
        text = "IGUI_SFQuest_Questyno_VictoriaSecret12_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoVictoriaSecret12;additem;HairDyeBlack;1"
    } },
    text = "IGUI_SFQuest_Questyno_VictoriaSecret12_Text",
    texture = "media/textures/Item_VictoriaSecret.png",
    title = "IGUI_SFQuest_Questyno_VictoriaSecret12_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;11862x6884x0:EventoVictoriaSecret12;anim:loot:time:50;updateobjective:Questyno_VictoriaSecret12:1:Completed"
}
table.insert(SFQuest_Database.QuestPool, secretQuest12);

local secretQuest12A = {
    guid = "Questyno_VictoriaSecret12_A",

    awardsrep = "LaResistenza;120", -- REP REWARD
    awardstask = "Questyno_VictoriaSecret13", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_VictoriaSecret",
    lore = { "IGUI_SFQuest_Questyno_VictoriaSecret12_Lore" },
    needsitem = "HairDyeBlack;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_VictoriaSecret;SFQuest_Questyno_VictoriaSecret12_Complete",
    text = "IGUI_SFQuest_Questyno_VictoriaSecret12_A_Text",
    texture = "media/textures/Item_VictoriaSecret.png",
    title = "IGUI_SFQuest_Questyno_VictoriaSecret12_Title",
}
table.insert(SFQuest_Database.QuestPool, secretQuest12A);

local secretQuest13 = {
    guid = "Questyno_VictoriaSecret13",

    awardstask = "Questyno_VictoriaSecret13_A", -- TASK REWARD
    dailycode = "Questyno_VictoriaSecret",
    lore = { "IGUI_SFQuest_Questyno_VictoriaSecret13_Lore" },
    objectives = { {
        guid = "Questyno_VictoriaSecret13_A",
        text = "IGUI_SFQuest_Questyno_VictoriaSecret13_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoVictoriaSecret13;additem;Dress_Knees;1"
    } },
    text = "IGUI_SFQuest_Questyno_VictoriaSecret13_Text",
    texture = "media/textures/Item_VictoriaSecret.png",
    title = "IGUI_SFQuest_Questyno_VictoriaSecret13_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;4692x6731x0:EventoVictoriaSecret13;anim:loot:time:50;updateobjective:Questyno_VictoriaSecret13:1:Completed"
}
table.insert(SFQuest_Database.QuestPool, secretQuest13);

local secretQuest13A = {
    guid = "Questyno_VictoriaSecret13_A",

    awardsrep = "LaResistenza;180", -- REP REWARD
    awardsitem = "Money;50", -- ITEM REWARD
    awardstask = "Questyno_VictoriaSecret14", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_VictoriaSecret",
    lore = { "IGUI_SFQuest_Questyno_VictoriaSecret13_Lore" },
    needsitem = "Dress_Knees;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_VictoriaSecret;SFQuest_Questyno_VictoriaSecret13_Complete",
    text = "IGUI_SFQuest_Questyno_VictoriaSecret13_A_Text",
    texture = "media/textures/Item_VictoriaSecret.png",
    title = "IGUI_SFQuest_Questyno_VictoriaSecret13_Title",
}
table.insert(SFQuest_Database.QuestPool, secretQuest13A);

local secretQuest14 = {
    guid = "Questyno_VictoriaSecret14",

    awardstask = "Questyno_VictoriaSecret14_A", -- TASK REWARD
    dailycode = "Questyno_VictoriaSecret",
    lore = { "IGUI_SFQuest_Questyno_VictoriaSecret14_Lore" },
    objectives = { {
        guid = "Questyno_VictoriaSecret14_A",
        text = "IGUI_SFQuest_Questyno_VictoriaSecret14_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoVictoriaSecret14;additem;Dress_Knees;1"
    } },
    text = "IGUI_SFQuest_Questyno_VictoriaSecret14_Text",
    texture = "media/textures/Item_VictoriaSecret.png",
    title = "IGUI_SFQuest_Questyno_VictoriaSecret14_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;9722x10332x0:EventoVictoriaSecret14;anim:loot:time:50;updateobjective:Questyno_VictoriaSecret14:1:Completed"
}
table.insert(SFQuest_Database.QuestPool, secretQuest14);

local secretQuest14A = {
    guid = "Questyno_VictoriaSecret14_A",

    awardsrep = "LaResistenza;50", -- REP REWARD
    awardsitem = "Money;50", -- ITEM REWARD
    awardstask = "Questyno_VictoriaSecret15", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_VictoriaSecret",
    lore = { "IGUI_SFQuest_Questyno_VictoriaSecret14_Lore" },
    needsitem = "Dress_Knees;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_VictoriaSecret;SFQuest_Questyno_VictoriaSecret14_Complete",
    text = "IGUI_SFQuest_Questyno_VictoriaSecret14_A_Text",
    texture = "media/textures/Item_VictoriaSecret.png",
    title = "IGUI_SFQuest_Questyno_VictoriaSecret14_Title",
}
table.insert(SFQuest_Database.QuestPool, secretQuest14A);

local secretQuest15 = {
    guid = "Questyno_VictoriaSecret15",

    awardstask = "Questyno_VictoriaSecret15_A", -- TASK REWARD
    dailycode = "Questyno_VictoriaSecret",
    lore = { "IGUI_SFQuest_Questyno_VictoriaSecret15_Lore" },
    objectives = { {
        guid = "Questyno_VictoriaSecret15_A",
        text = "IGUI_SFQuest_Questyno_VictoriaSecret15_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoVictoriaSecret15;additem;Dress_Knees;1"
    } },
    text = "IGUI_SFQuest_Questyno_VictoriaSecret15_Text",
    texture = "media/textures/Item_VictoriaSecret.png",
    title = "IGUI_SFQuest_Questyno_VictoriaSecret15_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;7701x11530x0:EventoVictoriaSecret15;anim:loot:time:50;updateobjective:Questyno_VictoriaSecret15:1:Completed"
}
table.insert(SFQuest_Database.QuestPool, secretQuest15);

local secretQuest15A = {
    guid = "Questyno_VictoriaSecret15_A",

    awardsrep = "LaResistenza;150", -- REP REWARD
    awardsitem = "Money;80", -- ITEM REWARD
    awardstask = "Questyno_VictoriaSecret16", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_VictoriaSecret",
    lore = { "IGUI_SFQuest_Questyno_VictoriaSecret15_Lore" },
    needsitem = "Dress_Knees;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_VictoriaSecret;SFQuest_Questyno_VictoriaSecret15_Complete",
    text = "IGUI_SFQuest_Questyno_VictoriaSecret15_A_Text",
    texture = "media/textures/Item_VictoriaSecret.png",
    title = "IGUI_SFQuest_Questyno_VictoriaSecret15_Title",
}
table.insert(SFQuest_Database.QuestPool, secretQuest15A);

local secretQuest16 = {
    guid = "Questyno_VictoriaSecret16",

    awardstask = "Questyno_VictoriaSecret16_A", -- TASK REWARD
    dailycode = "Questyno_VictoriaSecret",
    lore = { "IGUI_SFQuest_Questyno_VictoriaSecret16_Lore" },
    objectives = { {
        guid = "Questyno_VictoriaSecret16_A",
        text = "IGUI_SFQuest_Questyno_VictoriaSecret16_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoVictoriaSecret16;additem;Dress_Knees;1"
    } },
    text = "IGUI_SFQuest_Questyno_VictoriaSecret16_Text",
    texture = "media/textures/Item_VictoriaSecret.png",
    title = "IGUI_SFQuest_Questyno_VictoriaSecret16_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;11488x6982x0:EventoVictoriaSecret16;anim:loot:time:50;updateobjective:Questyno_VictoriaSecret16:1:Completed"
}
table.insert(SFQuest_Database.QuestPool, secretQuest16);

local secretQuest16A = {
    guid = "Questyno_VictoriaSecret16_A",

    awardsrep = "LaResistenza;40", -- REP REWARD
    awardstask = "Questyno_VictoriaSecret17", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_VictoriaSecret",
    lore = { "IGUI_SFQuest_Questyno_VictoriaSecret16_Lore" },
    needsitem = "Dress_Knees;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_VictoriaSecret;SFQuest_Questyno_VictoriaSecret16_Complete",
    text = "IGUI_SFQuest_Questyno_VictoriaSecret16_A_Text",
    texture = "media/textures/Item_VictoriaSecret.png",
    title = "IGUI_SFQuest_Questyno_VictoriaSecret16_Title",
}
table.insert(SFQuest_Database.QuestPool, secretQuest16A);

--				17. Recuperare Base Glasses_sun parlando con (4463,6385,0) (100rep + 70$)

local secretQuest17 = {
    guid = "Questyno_VictoriaSecret17",

    awardstask = "Questyno_VictoriaSecret17_A", -- TASK REWARD
    dailycode = "Questyno_VictoriaSecret",
    lore = { "IGUI_SFQuest_Questyno_VictoriaSecret17_Lore" },
    objectives = { {
        guid = "Questyno_VictoriaSecret17_A",
        text = "IGUI_SFQuest_Questyno_VictoriaSecret17_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoVictoriaSecret17;additem;Glasses_Sun;1"
    } },
    text = "IGUI_SFQuest_Questyno_VictoriaSecret17_Text",
    texture = "media/textures/Item_VictoriaSecret.png",
    title = "IGUI_SFQuest_Questyno_VictoriaSecret17_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;4463x6385x0:EventoVictoriaSecret17;anim:loot:time:50;updateobjective:Questyno_VictoriaSecret17:1:Completed"
}
table.insert(SFQuest_Database.QuestPool, secretQuest17);

local secretQuest17A = {
    guid = "Questyno_VictoriaSecret17_A",

    awardsrep = "LaResistenza;100", -- REP REWARD
    awardsitem = "Money;70", -- ITEM REWARD
    awardstask = "Questyno_VictoriaSecret18", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_VictoriaSecret",
    lore = { "IGUI_SFQuest_Questyno_VictoriaSecret17_Lore" },
    needsitem = "Glasses_Sun;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_VictoriaSecret;SFQuest_Questyno_VictoriaSecret17_Complete",
    text = "IGUI_SFQuest_Questyno_VictoriaSecret17_A_Text",
    texture = "media/textures/Item_VictoriaSecret.png",
    title = "IGUI_SFQuest_Questyno_VictoriaSecret17_Title",
}
table.insert(SFQuest_Database.QuestPool, secretQuest17A);

--				18. Recuperare MakeupEyeshadow parlando con (7346,11326,0) (60rep)

local secretQuest18 = {
    guid = "Questyno_VictoriaSecret18",

    awardstask = "Questyno_VictoriaSecret18_A", -- TASK REWARD
    dailycode = "Questyno_VictoriaSecret",
    lore = { "IGUI_SFQuest_Questyno_VictoriaSecret18_Lore" },
    objectives = { {
        guid = "Questyno_VictoriaSecret18_A",
        text = "IGUI_SFQuest_Questyno_VictoriaSecret18_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoVictoriaSecret18;additem;MakeupEyeshadow;1"
    } },
    text = "IGUI_SFQuest_Questyno_VictoriaSecret18_Text",
    texture = "media/textures/Item_VictoriaSecret.png",
    title = "IGUI_SFQuest_Questyno_VictoriaSecret18_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;7346x11326x0:EventoVictoriaSecret18;anim:loot:time:50;updateobjective:Questyno_VictoriaSecret18:1:Completed"
}
table.insert(SFQuest_Database.QuestPool, secretQuest18);

local secretQuest18A = {
    guid = "Questyno_VictoriaSecret18_A",

    awardsrep = "LaResistenza;60", -- REP REWARD
    awardstask = "Questyno_VictoriaSecret19", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_VictoriaSecret",
    lore = { "IGUI_SFQuest_Questyno_VictoriaSecret18_Lore" },
    needsitem = "MakeupEyeshadow;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_VictoriaSecret;SFQuest_Questyno_VictoriaSecret18_Complete",
    text = "IGUI_SFQuest_Questyno_VictoriaSecret18_A_Text",
    texture = "media/textures/Item_VictoriaSecret.png",
    title = "IGUI_SFQuest_Questyno_VictoriaSecret18_Title",
}
table.insert(SFQuest_Database.QuestPool, secretQuest18A);

-- 				19. Recuperare Base.Tshirt_WhiteTINT parlando con (4810,10118,0) (50rep + 20$)

local secretQuest19 = {
    guid = "Questyno_VictoriaSecret19",

    awardstask = "Questyno_VictoriaSecret19_A", -- TASK REWARD
    dailycode = "Questyno_VictoriaSecret",
    lore = { "IGUI_SFQuest_Questyno_VictoriaSecret19_Lore" },
    objectives = { {
        guid = "Questyno_VictoriaSecret19_A",
        text = "IGUI_SFQuest_Questyno_VictoriaSecret19_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoVictoriaSecret19;additem;Tshirt_WhiteTINT;1"
    } },
    text = "IGUI_SFQuest_Questyno_VictoriaSecret19_Text",
    texture = "media/textures/Item_VictoriaSecret.png",
    title = "IGUI_SFQuest_Questyno_VictoriaSecret19_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;4810x10118x0:EventoVictoriaSecret19;anim:loot:time:50;updateobjective:Questyno_VictoriaSecret19:1:Completed"
}
table.insert(SFQuest_Database.QuestPool, secretQuest19);

local secretQuest19A = {
    guid = "Questyno_VictoriaSecret19_A",

    awardsrep = "LaResistenza;90", -- REP REWARD
    awardsitem = "Money;20", -- ITEM REWARD
    awardstask = "Questyno_VictoriaSecret20", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_VictoriaSecret",
    lore = { "IGUI_SFQuest_Questyno_VictoriaSecret19_Lore" },
    needsitem = "Tshirt_WhiteTINT;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_VictoriaSecret;SFQuest_Questyno_VictoriaSecret19_Complete",
    text = "IGUI_SFQuest_Questyno_VictoriaSecret19_A_Text",
    texture = "media/textures/Item_VictoriaSecret.png",
    title = "IGUI_SFQuest_Questyno_VictoriaSecret19_Title",
}
table.insert(SFQuest_Database.QuestPool, secretQuest19A);

--20. Recuperare Base.Mov_MannequinFemale parlando con (10612,10314,0) (15rep + 20$)

local secretQuest20 = {
    guid = "Questyno_VictoriaSecret20",

    awardstask = "Questyno_VictoriaSecret20_A", -- TASK REWARD
    dailycode = "Questyno_VictoriaSecret",
    lore = { "IGUI_SFQuest_Questyno_VictoriaSecret20_Lore" },
    objectives = { {
        guid = "Questyno_VictoriaSecret20_A",
        text = "IGUI_SFQuest_Questyno_VictoriaSecret20_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoVictoriaSecret20;additem;Mov_MannequinFemale;1"
    } },
    text = "IGUI_SFQuest_Questyno_VictoriaSecret20_Text",
    texture = "media/textures/Item_VictoriaSecret.png",
    title = "IGUI_SFQuest_Questyno_VictoriaSecret20_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;10612x10314x0:EventoVictoriaSecret20;anim:loot:time:50;updateobjective:Questyno_VictoriaSecret20:1:Completed"
}
table.insert(SFQuest_Database.QuestPool, secretQuest20);

local secretQuest20A = {
    guid = "Questyno_VictoriaSecret20_A",

    awardsrep = "LaResistenza;150", -- REP REWARD
    awardsitem = "Money;20", -- ITEM REWARD
    awardstask = "Questyno_VictoriaSecret21", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_VictoriaSecret",
    lore = { "IGUI_SFQuest_Questyno_VictoriaSecret20_Lore" },
    needsitem = "Mov_MannequinFemale;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_VictoriaSecret;SFQuest_Questyno_VictoriaSecret20_Complete",
    text = "IGUI_SFQuest_Questyno_VictoriaSecret20_A_Text",
    texture = "media/textures/Item_VictoriaSecret.png",
    title = "IGUI_SFQuest_Questyno_VictoriaSecret20_Title",
}
table.insert(SFQuest_Database.QuestPool, secretQuest20A);


local secretQuest21 = {
    guid = "Questyno_VictoriaSecret21",

    awaardsrep = "LaResistenza;40", -- REP REWARD
    awardsitem = "Money;25", -- ITEM REWARD
    awardstask = "Questyno_VictoriaSecret1", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_VictoriaSecret",
    lore = { "IGUI_SFQuest_Questyno_VictoriaSecret21_Lore" },
    text = "IGUI_SFQuest_Questyno_VictoriaSecret21_Text",
    needsitem = "NecklaceLong_GoldDiamond;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_VictoriaSecret;SFQuest_Questyno_VictoriaSecret21_Complete",
    texture = "media/textures/Item_VictoriaSecret.png",
    title = "IGUI_SFQuest_Questyno_VictoriaSecret21_Title",
    unlockedsound = "QuestUnlocked",
}
table.insert(SFQuest_Database.QuestPool, secretQuest21);

--[[
            *** Susan Lee ***
            Elenco:
                intro. Parla con Susan per sbloccare le daily.
				1. Recuperare Base.antibiotics;2 parlando con (10875,10028,0) (80rep + Base.Disinfectant)
				2. Recuperare LabItems.LabSyringePack;4 parlando con (7683,11515,0) (50rep + Base.SutureNeedle)
				3. Recuperare LabItems.LabSyringePack;4 parlando con (9463,11239,0) (40rep + 20$)
				4. Recuperare Base.PillsSleepingTablets;4 parlando con (8087,11524,0) (100rep + 20$ + Pacco di Sonnifero)
				5. Recuperare Base.PillsVitamins;2 parlando con (11939,6795,0) (70rep + 20$ + Base.Bandage;2)
				6. Recuperare Base.Splint (40rep)
				7. Recuperare Base.Antibiotics (150rep)
				8. Recuperare Base.AlcoholRippedSheets;50 (40rep)
				9. Recuperare LabItems.LabSyringe (80rep)
				10. Recuperare Moveable.location_community_medical_01_24 parlando con (7250,8369,0) (50rep + 40$)
				11. Recuperare Moveable.location_community_medical_01_24 parlando con (5033,10038,0) (45rep + 50$)
				12. Recuperare Moveable.location_community_medical_01_28 parlando con (10287,11351,0) (30rep + 30$)
				13. Recuperare Base.SutureNeedle;3 parlando con (7713,11429,0) (50rep + 25$)
				14. Recuperare Base.SutureNeedleHolder;3 parlando con (7681,11518,0) (70rep + 25$)
				15. Recuperare Corsetto medico parlando con (7298,9618,0) (50rep + 20$)
				16. Recuperare Base.PillsAntiDep;10 parlando con (10673,9819,0) (40rep + Antidepressivo)
				17. Recuperare Base.PillsAntiDep;10 parlando con (8211,10887) (100rep + 25$)
				18. Recuperare Base.PillsVitamins;2,Base.PillsSleepingTablets;2,Base.SutureNeedle,Base.Pills parlando con (7244,8373,0) (35rep)
				19. Recuperare Base.PillsBeta;2,Base.AlcoholWipes;2 parlando con (7244,8357,0) (80rep + Base.AlcoholRippedSheets;5,Base.AlcoholWipe)
				20. Recuperare 2 Beta Bloccanti + Bottiglia di Disinfettante parlando con (7246,8363,0) (50rep + Base.PillsBeta;2,Base.Disinfectant)
				21. Recuperare Base.PlantainCataplasm (50rep + 25$)
				22. Recuperare Base.LemonGrass;3 (40rep + 15$)
				23. Recuperare Moveable.location_community_medical_01_16;Moveable.location_community_medical_01_17 parlando con (6318,5267,0) (200rep)
]]

local leeIntro = {
    guid = "Questyno_SusanLee_Intro",

    awardsrep = "LaResistenza;1", -- REP REWARD
    awardstask = "Questyno_SusanLee1", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_SusanLee_Intro_Lore" },
    ondone = "randomcodedworldfrompool;Questyno_SusanLee;Questyno;SusanLee",
    text = "IGUI_SFQuest_Questyno_SusanLee_Intro_Text",
    texture = "media/textures/Item_SusanLee.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_SusanLee;SFQuest_Questyno_SusanLee_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_SusanLee_Intro_Title",
}
table.insert(SFQuest_Database.QuestPool, leeIntro);

local leeQuest1 = {
    guid = "Questyno_SusanLee1",

    awardstask = "Questyno_SusanLee1_A", -- TASK REWARD
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee1_Lore" },
    objectives = { {
        guid = "Questyno_SusanLee1_A",
        text = "IGUI_SFQuest_Questyno_SusanLee1_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoSusanLee1;additem;Antibiotics;2"
    } },
    text = "IGUI_SFQuest_Questyno_SusanLee1_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee1_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;10875x10028x0:EventoSusanLee1;anim:loot:time:50;updateobjective:Questyno_SusanLee1:1:Completed"
}
table.insert(SFQuest_Database.QuestPool, leeQuest1);

local leeQuest1A = {
    guid = "Questyno_SusanLee1_A",

    awardsrep = "LaResistenza;80", -- REP REWARD
    awardsitem = "Base.Disinfectant;1", -- ITEM REWARD
    awardstask = "Questyno_SusanLee2", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee1_Lore" },
    needsitem = "Antibiotics;2", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_SusanLee;SFQuest_Questyno_SusanLee1_Complete",
    text = "IGUI_SFQuest_Questyno_SusanLee1_A_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee1_Title",
}
table.insert(SFQuest_Database.QuestPool, leeQuest1A);

local leeQuest2 = {
    guid = "Questyno_SusanLee2",

    awardstask = "Questyno_SusanLee2_A", -- TASK REWARD
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee2_Lore" },
    objectives = { {
        guid = "Questyno_SusanLee2_A",
        text = "IGUI_SFQuest_Questyno_SusanLee2_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoSusanLee2;additem;LabItems.LabSyringePack;4"
    } },
    text = "IGUI_SFQuest_Questyno_SusanLee2_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee2_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;7683x11515x0:EventoSusanLee2;anim:loot:time:50;updateobjective:Questyno_SusanLee2:1:Completed"
}
table.insert(SFQuest_Database.QuestPool, leeQuest2);

local leeQuest2A = {
    guid = "Questyno_SusanLee2_A",

    awardsrep = "LaResistenza;50", -- REP REWARD
    awardsitem = "Base.SutureNeedle;1", -- ITEM REWARD
    awardstask = "Questyno_SusanLee3", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee2_Lore" },
    needsitem = "LabItems.LabSyringePack;4", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_SusanLee;SFQuest_Questyno_SusanLee2_Complete",
    text = "IGUI_SFQuest_Questyno_SusanLee2_A_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee2_Title",
}
table.insert(SFQuest_Database.QuestPool, leeQuest2A);

local leeQuest3 = {
    guid = "Questyno_SusanLee3",

    awardstask = "Questyno_SusanLee3_A", -- TASK REWARD
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee3_Lore" },
    objectives = { {
        guid = "Questyno_SusanLee3_A",
        text = "IGUI_SFQuest_Questyno_SusanLee3_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoSusanLee3;additem;LabItems.LabSyringePack;4"
    } },
    text = "IGUI_SFQuest_Questyno_SusanLee3_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee3_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;9463x11239x0:EventoSusanLee3;anim:loot:time:50;updateobjective:Questyno_SusanLee3:1:Completed"
}
table.insert(SFQuest_Database.QuestPool, leeQuest3);

local leeQuest3A = {
    guid = "Questyno_SusanLee3_A",

    awardsrep = "LaResistenza;40", -- REP REWARD
    awardsitem = "Money;20", -- ITEM REWARD
    awardstask = "Questyno_SusanLee4", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee3_Lore" },
    needsitem = "LabItems.LabSyringePack;4", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_SusanLee;SFQuest_Questyno_SusanLee3_Complete",
    text = "IGUI_SFQuest_Questyno_SusanLee3_A_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee3_Title",
}
table.insert(SFQuest_Database.QuestPool, leeQuest3A);

local leeQuest4 = {
    guid = "Questyno_SusanLee4",

    awardstask = "Questyno_SusanLee4_A", -- TASK REWARD
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee4_Lore" },
    objectives = { {
        guid = "Questyno_SusanLee4_A",
        text = "IGUI_SFQuest_Questyno_SusanLee4_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoSusanLee4;additem;PillsSleepingTablets;4"
    } },
    text = "IGUI_SFQuest_Questyno_SusanLee4_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee4_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;8087x11524x0:EventoSusanLee4;anim:loot:time:50;updateobjective:Questyno_SusanLee4:1:Completed"
}
table.insert(SFQuest_Database.QuestPool, leeQuest4);

local leeQuest4A = {
    guid = "Questyno_SusanLee4_A",

    awardsrep = "LaResistenza;100", -- REP REWARD
    awardsitem = "Money;20;PillsSleepingTablets;1", -- ITEM REWARD
    awardstask = "Questyno_SusanLee5", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee4_Lore" },
    needsitem = "PillsSleepingTablets;4", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_SusanLee;SFQuest_Questyno_SusanLee4_Complete",
    text = "IGUI_SFQuest_Questyno_SusanLee4_A_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee4_Title",
}
table.insert(SFQuest_Database.QuestPool, leeQuest4A);

local leeQuest5 = {
    guid = "Questyno_SusanLee5",

    awardstask = "Questyno_SusanLee5_A", -- TASK REWARD
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee5_Lore" },
    objectives = { {
        guid = "Questyno_SusanLee5_A",
        text = "IGUI_SFQuest_Questyno_SusanLee5_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoSusanLee5;additem;PillsVitamins;2"
    } },
    text = "IGUI_SFQuest_Questyno_SusanLee5_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee5_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;11939x6795x0:EventoSusanLee5;anim:loot:time:50;updateobjective:Questyno_SusanLee5:1:Completed"
}
table.insert(SFQuest_Database.QuestPool, leeQuest5);

local leeQuest5A = {
    guid = "Questyno_SusanLee5_A",

    awardsrep = "LaResistenza;70", -- REP REWARD
    awardsitem = "Money;20;Base.Bandage;2", -- ITEM REWARD
    awardstask = "Questyno_SusanLee6", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee5_Lore" },
    needsitem = "PillsVitamins;2", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_SusanLee;SFQuest_Questyno_SusanLee5_Complete",
    text = "IGUI_SFQuest_Questyno_SusanLee5_A_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee5_Title",
}
table.insert(SFQuest_Database.QuestPool, leeQuest5A);

local leeQuest6 = {
    guid = "Questyno_SusanLee6",

    awardsrep = "LaResistenza;40", -- REP REWARD
    awardstask = "Questyno_SusanLee7", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee6_Lore" },
    needsitem = "Splint;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_SusanLee;SFQuest_Questyno_SusanLee6_Complete",
    text = "IGUI_SFQuest_Questyno_SusanLee6_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee6_Title",
    unlockedsound = "QuestUnlocked",
}
table.insert(SFQuest_Database.QuestPool, leeQuest6);

local leeQuest7 = {
    guid = "Questyno_SusanLee7",

    awardsrep = "LaResistenza;150", -- REP REWARD
    awardstask = "Questyno_SusanLee8", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee7_Lore" },
    needsitem = "Antibiotics;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_SusanLee;SFQuest_Questyno_SusanLee7_Complete",
    text = "IGUI_SFQuest_Questyno_SusanLee7_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee7_Title",
    unlockedsound = "QuestUnlocked",
}
table.insert(SFQuest_Database.QuestPool, leeQuest7);

local leeQuest8 = {
    guid = "Questyno_SusanLee8",

    awardsrep = "LaResistenza;40", -- REP REWARD
    awardstask = "Questyno_SusanLee9", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee8_Lore" },
    needsitem = "AlcoholRippedSheets;50", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_SusanLee;SFQuest_Questyno_SusanLee8_Complete",
    text = "IGUI_SFQuest_Questyno_SusanLee8_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee8_Title",
    unlockedsound = "QuestUnlocked",
}
table.insert(SFQuest_Database.QuestPool, leeQuest8);

local leeQuest9 = {
    guid = "Questyno_SusanLee9",

    awardsrep = "LaResistenza;80", -- REP REWARD
    awardstask = "Questyno_SusanLee10", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee9_Lore" },
    needsitem = "LabSyringe;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_SusanLee;SFQuest_Questyno_SusanLee9_Complete",
    text = "IGUI_SFQuest_Questyno_SusanLee9_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee9_Title",
    unlockedsound = "QuestUnlocked",
}
table.insert(SFQuest_Database.QuestPool, leeQuest9);

local leeQuest10 = {
    guid = "Questyno_SusanLee10",

    awardstask = "Questyno_SusanLee10_A", -- TASK REWARD
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee10_Lore" },
    objectives = { {
        guid = "Questyno_SusanLee10_A",
        text = "IGUI_SFQuest_Questyno_SusanLee10_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoSusanLee10;additem;LabItems.ChHydrochloricAcidCan;1"
    } },
    text = "IGUI_SFQuest_Questyno_SusanLee10_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee10_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;7250x8369x0:EventoSusanLee10;anim:loot:time:50;updateobjective:Questyno_SusanLee10:1:Completed"
}
table.insert(SFQuest_Database.QuestPool, leeQuest10);

local leeQuest10A = {
    guid = "Questyno_SusanLee10_A",

    awardsrep = "LaResistenza;50", -- REP REWARD
    awardsitem = "Money;40", -- ITEM REWARD
    awardstask = "Questyno_SusanLee11", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee10_Lore" },
    needsitem = "LabItems.ChHydrochloricAcidCan;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_SusanLee;SFQuest_Questyno_SusanLee10_Complete",
    text = "IGUI_SFQuest_Questyno_SusanLee10_A_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee10_Title",
}
table.insert(SFQuest_Database.QuestPool, leeQuest10A);

local leeQuest11 = {
    guid = "Questyno_SusanLee11",

    awardstask = "Questyno_SusanLee11_A", -- TASK REWARD
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee11_Lore" },
    objectives = { {
        guid = "Questyno_SusanLee11_A",
        text = "IGUI_SFQuest_Questyno_SusanLee11_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoSusanLee11;additem;LabItems.ChSulfuricAcidCan;1"
    } },
    text = "IGUI_SFQuest_Questyno_SusanLee11_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee11_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;5033x10038x0:EventoSusanLee11;anim:loot:time:50;updateobjective:Questyno_SusanLee11:1:Completed"
}
table.insert(SFQuest_Database.QuestPool, leeQuest11);

local leeQuest11A = {
    guid = "Questyno_SusanLee11_A",

    awardsrep = "LaResistenza;45", -- REP REWARD
    awardsitem = "Money;50", -- ITEM REWARD
    awardstask = "Questyno_SusanLee12", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee11_Lore" },
    needsitem = "LabItems.ChSulfuricAcidCan;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_SusanLee;SFQuest_Questyno_SusanLee11_Complete",
    text = "IGUI_SFQuest_Questyno_SusanLee11_A_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee11_Title",
}
table.insert(SFQuest_Database.QuestPool, leeQuest11A);

local leeQuest12 = {
    guid = "Questyno_SusanLee12",

    awardstask = "Questyno_SusanLee12_A", -- TASK REWARD
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee12_Lore" },
    objectives = { {
        guid = "Questyno_SusanLee12_A",
        text = "IGUI_SFQuest_Questyno_SusanLee12_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoSusanLee12;additem;LabItems.ChSodiumHydroxideBag;1"
    } },
    text = "IGUI_SFQuest_Questyno_SusanLee12_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee12_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;10287x11351x0:EventoSusanLee12;anim:loot:time:50;updateobjective:Questyno_SusanLee12:1:Completed"
}
table.insert(SFQuest_Database.QuestPool, leeQuest12);

local leeQuest12A = {
    guid = "Questyno_SusanLee12_A",

    awardsrep = "LaResistenza;200", -- REP REWARD
    awardsitem = "Money;30", -- ITEM REWARD
    awardstask = "Questyno_SusanLee13", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee12_Lore" },
    needsitem = "LabItems.ChSodiumHydroxideBag;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_SusanLee;SFQuest_Questyno_SusanLee12_Complete",
    text = "IGUI_SFQuest_Questyno_SusanLee12_A_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee12_Title",
}
table.insert(SFQuest_Database.QuestPool, leeQuest12A);

local leeQuest13 = {
    guid = "Questyno_SusanLee13",

    awardstask = "Questyno_SusanLee13_A", -- TASK REWARD
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee13_Lore" },
    objectives = { {
        guid = "Questyno_SusanLee13_A",
        text = "IGUI_SFQuest_Questyno_SusanLee13_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoSusanLee13;additem;SutureNeedle;3"
    } },
    text = "IGUI_SFQuest_Questyno_SusanLee13_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee13_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;7713x11429x0:EventoSusanLee13;anim:loot:time:50;updateobjective:Questyno_SusanLee13:1:Completed"
}
table.insert(SFQuest_Database.QuestPool, leeQuest13);

local leeQuest13A = {
    guid = "Questyno_SusanLee13_A",

    awardsrep = "LaResistenza;150", -- REP REWARD
    awardsitem = "Money;25", -- ITEM REWARD
    awardstask = "Questyno_SusanLee14", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee13_Lore" },
    needsitem = "SutureNeedle;3", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_SusanLee;SFQuest_Questyno_SusanLee13_Complete",
    text = "IGUI_SFQuest_Questyno_SusanLee13_A_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee13_Title",
}
table.insert(SFQuest_Database.QuestPool, leeQuest13A);

local leeQuest14 = {
    guid = "Questyno_SusanLee14",

    awardstask = "Questyno_SusanLee14_A", -- TASK REWARD
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee14_Lore" },
    objectives = { {
        guid = "Questyno_SusanLee14_A",
        text = "IGUI_SFQuest_Questyno_SusanLee14_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoSusanLee14;additem;SutureNeedleHolder;3"
    } },
    text = "IGUI_SFQuest_Questyno_SusanLee14_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee14_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;7681x11518x0:EventoSusanLee14;anim:loot:time:50;updateobjective:Questyno_SusanLee14:1:Completed"
}
table.insert(SFQuest_Database.QuestPool, leeQuest14);

local leeQuest14A = {
    guid = "Questyno_SusanLee14_A",

    awardsrep = "LaResistenza;170", -- REP REWARD
    awardsitem = "Money;25", -- ITEM REWARD
    awardstask = "Questyno_SusanLee15", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee14_Lore" },
    needsitem = "SutureNeedleHolder;3", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_SusanLee;SFQuest_Questyno_SusanLee14_Complete",
    text = "IGUI_SFQuest_Questyno_SusanLee14_A_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee14_Title",
}
table.insert(SFQuest_Database.QuestPool, leeQuest14A);

local leeQuest15 = {
    guid = "Questyno_SusanLee15",

    awardstask = "Questyno_SusanLee15_A", -- TASK REWARD
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee15_Lore" },
    objectives = { {
        guid = "Questyno_SusanLee15_A",
        text = "IGUI_SFQuest_Questyno_SusanLee15_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoSusanLee15;additem;JacketLong_Doctor;1"
    } },
    text = "IGUI_SFQuest_Questyno_SusanLee15_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee15_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;7298x9618x0:EventoSusanLee15;anim:loot:time:50;updateobjective:Questyno_SusanLee15:1:Completed"
}
table.insert(SFQuest_Database.QuestPool, leeQuest15);

local leeQuest15A = {
    guid = "Questyno_SusanLee15_A",

    awardsrep = "LaResistenza;50", -- REP REWARD
    awardsitem = "Money;20", -- ITEM REWARD
    awardstask = "Questyno_SusanLee16", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee15_Lore" },
    needsitem = "JacketLong_Doctor;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_SusanLee;SFQuest_Questyno_SusanLee15_Complete",
    text = "IGUI_SFQuest_Questyno_SusanLee15_A_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee15_Title",
}
table.insert(SFQuest_Database.QuestPool, leeQuest15A);

local leeQuest16 = {
    guid = "Questyno_SusanLee16",

    awardstask = "Questyno_SusanLee16_A", -- TASK REWARD
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee16_Lore" },
    objectives = { {
        guid = "Questyno_SusanLee16_A",
        text = "IGUI_SFQuest_Questyno_SusanLee16_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoSusanLee16;additem;PillsAntiDep;10"
    } },
    text = "IGUI_SFQuest_Questyno_SusanLee16_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee16_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;10673x9819x0:EventoSusanLee16;anim:loot:time:50;updateobjective:Questyno_SusanLee16:1:Completed"
}
table.insert(SFQuest_Database.QuestPool, leeQuest16);

local leeQuest16A = {
    guid = "Questyno_SusanLee16_A",

    awardsrep = "LaResistenza;40", -- REP REWARD
    awardsitem = "PillsAntiDep;1", -- ITEM REWARD
    awardstask = "Questyno_SusanLee17", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee16_Lore" },
    needsitem = "PillsAntiDep;10", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_SusanLee;SFQuest_Questyno_SusanLee16_Complete",
    text = "IGUI_SFQuest_Questyno_SusanLee16_A_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee16_Title",
}
table.insert(SFQuest_Database.QuestPool, leeQuest16A);

local leeQuest17 = {
    guid = "Questyno_SusanLee17",

    awardstask = "Questyno_SusanLee17_A", -- TASK REWARD
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee17_Lore" },
    objectives = { {
        guid = "Questyno_SusanLee17_A",
        text = "IGUI_SFQuest_Questyno_SusanLee17_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoSusanLee17;additem;PillsAntiDep;10"
    } },
    text = "IGUI_SFQuest_Questyno_SusanLee17_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee17_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;8211x10887x0:EventoSusanLee17;anim:loot:time:50;updateobjective:Questyno_SusanLee17:1:Completed"
}
table.insert(SFQuest_Database.QuestPool, leeQuest17);

local leeQuest17A = {
    guid = "Questyno_SusanLee17_A",

    awardsrep = "LaResistenza;40", -- REP REWARD
    awardstask = "Questyno_SusanLee18", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee17_Lore" },
    needsitem = "PillsAntiDep;10", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_SusanLee;SFQuest_Questyno_SusanLee17_Complete",
    text = "IGUI_SFQuest_Questyno_SusanLee17_A_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee17_Title",
}
table.insert(SFQuest_Database.QuestPool, leeQuest17A);

local leeQuest18 = {
    guid = "Questyno_SusanLee18",

    awardstask = "Questyno_SusanLee18_A", -- TASK REWARD
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee18_Lore" },
    objectives = { {
        guid = "Questyno_SusanLee18_A",
        text = "IGUI_SFQuest_Questyno_SusanLee18_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoSusanLee18;additem;PillsVitamins;2;additem;PillsSleepingTablets;2;additem;SutureNeedle;additem;Pills;1"
    } },
    text = "IGUI_SFQuest_Questyno_SusanLee18_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee18_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;7244x8373x0:EventoSusanLee18;anim:loot:time:50;updateobjective:Questyno_SusanLee18:1:Completed"
}
table.insert(SFQuest_Database.QuestPool, leeQuest18);

local leeQuest18A = {
    guid = "Questyno_SusanLee18_A",

    awardstask = "Questyno_SusanLee18_B", -- TASK REWARD
    completesound = "levelup",
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee18_Lore" },
    objectives = { {
        guid = "Questyno_SusanLee18_B",
        text = "IGUI_SFQuest_Questyno_SusanLee18_B",
        hidden = false,
        needsitem = "PillsVitamins;2",
        onobtained = "updateobjective;Questyno_SusanLee18_A;1;Completed;removeitem;PillsVitamins;2"
    },{
        guid = "Questyno_SusanLee18_C",
        text = "IGUI_SFQuest_Questyno_SusanLee18_C",
        hidden = false,
        needsitem = "PillsSleepingTablets;2",
        onobtained = "updateobjective;Questyno_SusanLee18_A;2;Completed;removeitem;PillsSleepingTablets;2"
    },{
        guid = "Questyno_SusanLee18_D",
        text = "IGUI_SFQuest_Questyno_SusanLee18_D",
        hidden = false,
        needsitem = "SutureNeedle;1",
        onobtained = "updateobjective;Questyno_SusanLee18_A;3;Completed;removeitem;SutureNeedle;1"
    },{
        guid = "Questyno_SusanLee18_E",
        text = "IGUI_SFQuest_Questyno_SusanLee18_E",
        hidden = false,
        needsitem = "Pills;1",
        onobtained = "updateobjective;Questyno_SusanLee18_A;4;Completed;removeitem;Pills;1"
    } },
    text = "IGUI_SFQuest_Questyno_SusanLee18_A_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee18_Title",
}
table.insert(SFQuest_Database.QuestPool, leeQuest18A);

local leeQuest18B = {
    guid = "Questyno_SusanLee18_B",

    awardsrep = "LaResistenza;35", -- REP REWARD
    awardstask = "Questyno_SusanLee19", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee18_Lore" },
    unlocks = "unlockworldevent;Questyno_SusanLee;SFQuest_Questyno_SusanLee18_Complete",
    text = "IGUI_SFQuest_Questyno_SusanLee18_B_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee18_Title",
}
table.insert(SFQuest_Database.QuestPool, leeQuest18B);

--				19. Recuperare Base.PillsBeta;2,Base.AlcoholWipes;2 parlando con (7244,8357,0) (80rep + Base.AlcoholRippedSheets;5,Base.AlcoholWipe)

local leeQuest19 = {
    guid = "Questyno_SusanLee19",

    awardstask = "Questyno_SusanLee19_A", -- TASK REWARD
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee19_Lore" },
    objectives = { {
        guid = "Questyno_SusanLee19_A",
        text = "IGUI_SFQuest_Questyno_SusanLee19_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoSusanLee19;additem;PillsBeta;2;additem;AlcoholWipes;2"
    } },
    text = "IGUI_SFQuest_Questyno_SusanLee19_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee19_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;7244x8357x0:EventoSusanLee19;anim:loot:time:50;updateobjective:Questyno_SusanLee19:1:Completed"
}
table.insert(SFQuest_Database.QuestPool, leeQuest19);

local leeQuest19A = {
    guid = "Questyno_SusanLee19_A",

    awardstask = "Questyno_SusanLee19_B", -- TASK REWARD
    completesound = "levelup",
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee19_Lore" },
    objectives = { {
        guid = "Questyno_SusanLee19_B",
        text = "IGUI_SFQuest_Questyno_SusanLee19_B",
        hidden = false,
        needsitem = "PillsBeta;2",
        onobtained = "updateobjective;Questyno_SusanLee19_A;1:Completed;removeitem;PillsBeta;2"
    },{
        guid = "Questyno_SusanLee19_C",
        text = "IGUI_SFQuest_Questyno_SusanLee19_C",
        hidden = false,
        needsitem = "AlcoholWipes;2",
        onobtained = "updateobjective;Questyno_SusanLee19_A;2:Completed;removeitem;AlcoholWipes;2"
    } },
    text = "IGUI_SFQuest_Questyno_SusanLee19_A_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee19_Title",
}
table.insert(SFQuest_Database.QuestPool, leeQuest19A);

local leeQuest19B = {
    guid = "Questyno_SusanLee19_B",

    awardsrep = "LaResistenza;80", -- REP REWARD
    awardsitem = "AlcoholRippedSheets;5Base.AlcoholWipe;1", -- ITEM REWARD
    awardstask = "Questyno_SusanLee20", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee19_Lore" },
    unlocks = "unlockworldevent;Questyno_SusanLee;SFQuest_Questyno_SusanLee19_Complete",
    text = "IGUI_SFQuest_Questyno_SusanLee19_A_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee19_Title",
}
table.insert(SFQuest_Database.QuestPool, leeQuest19B);

--20. Recuperare 2 Beta Bloccanti + Bottiglia di Disinfettante parlando con (7246,8363,0) (50rep + Base.PillsBeta;2,Base.Disinfectant)

local leeQuest20 = {
    guid = "Questyno_SusanLee20",

    awardstask = "Questyno_SusanLee20_A", -- TASK REWARD
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee20_Lore" },
    objectives = { {
        guid = "Questyno_SusanLee20_A",
        text = "IGUI_SFQuest_Questyno_SusanLee20_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoSusanLee20;additem;PillsBeta;2;additem;Disinfectant;1"
    } },
    text = "IGUI_SFQuest_Questyno_SusanLee20_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee20_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;7246x8363x0:EventoSusanLee20;anim:loot:time:50;updateobjective:Questyno_SusanLee20:1:Completed"
}
table.insert(SFQuest_Database.QuestPool, leeQuest20);

local leeQuest20A = {
    guid = "Questyno_SusanLee20_A",

    awardstask = "Questyno_SusanLee20_B", -- TASK REWARD
    completesound = "levelup",
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee20_Lore" },
    objectives = { {
        guid = "Questyno_SusanLee20_B",
        text = "IGUI_SFQuest_Questyno_SusanLee20_B",
        hidden = false,
        needsitem = "PillsBeta;2",
        onobtained = "updateobjective;Questyno_SusanLee20_A;1:Completed;removeitem;PillsBeta;2"
    },{
        guid = "Questyno_SusanLee20_C",
        text = "IGUI_SFQuest_Questyno_SusanLee20_C",
        hidden = false,
        needsitem = "Disinfectant;1",
        onobtained = "updateobjective;Questyno_SusanLee20_A;2:Completed;removeitem;Disinfectant;1"
    } },
    text = "IGUI_SFQuest_Questyno_SusanLee20_A_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee20_Title",
}
table.insert(SFQuest_Database.QuestPool, leeQuest20A);

local leeQuest20B = {
    guid = "Questyno_SusanLee20_B",

    awardsrep = "LaResistenza;50", -- REP REWARD
    awardsitem = "PillsBeta;2Base.Disinfectant;1", -- ITEM REWARD
    awardstask = "Questyno_SusanLee21", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee20_Lore" },
    unlocks = "unlockworldevent;Questyno_SusanLee;SFQuest_Questyno_SusanLee20_Complete",
    text = "IGUI_SFQuest_Questyno_SusanLee20_A_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee20_Title",
}
table.insert(SFQuest_Database.QuestPool, leeQuest20B);

--21. Recuperare Base.PlantainCataplasm (50rep + 25$)

local leeQuest21 = {
    guid = "Questyno_SusanLee21",

    awardsrep = "LaResistenza;50", -- REP REWARD
    awardsitem = "Money;25", -- ITEM REWARD
    awardstask = "Questyno_SusanLee22", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee21_Lore" },
    needsitem = "PlantainCataplasm;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_SusanLee;SFQuest_Questyno_SusanLee21_Complete",
    text = "IGUI_SFQuest_Questyno_SusanLee21_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee21_Title",
    unlockedsound = "QuestUnlocked",
}
table.insert(SFQuest_Database.QuestPool, leeQuest21);

-- 				22. Recuperare Base.LemonGrass;3 (40rep + 15$)

local leeQuest22 = {
    guid = "Questyno_SusanLee22",

    awardsrep = "LaResistenza;40", -- REP REWARD
    awardsitem = "Money;15", -- ITEM REWARD
    awardstask = "Questyno_SusanLee23", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee22_Lore" },
    needsitem = "LemonGrass;3", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_SusanLee;SFQuest_Questyno_SusanLee22_Complete",
    text = "IGUI_SFQuest_Questyno_SusanLee22_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee22_Title",
    unlockedsound = "QuestUnlocked",
}
table.insert(SFQuest_Database.QuestPool, leeQuest22);

local leeQuest23 = {
    guid = "Questyno_SusanLee23",

    awardstask = "Questyno_SusanLee23_A", -- TASK REWARD
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee23_Lore" },
    objectives = { {
        guid = "Questyno_SusanLee23_A",
        text = "IGUI_SFQuest_Questyno_SusanLee23_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoSusanLee23;additem;Mattress;2"
    } },
    text = "IGUI_SFQuest_Questyno_SusanLee23_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee23_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;6318x5267x0:EventoSusanLee23;anim:loot:time:50;updateobjective:Questyno_SusanLee23:1:Completed"
}
table.insert(SFQuest_Database.QuestPool, leeQuest23);

local leeQuest23A = {
    guid = "Questyno_SusanLee23_A",

    awardsrep = "LaResistenza;200", -- REP REWARD
    awardstask = "Questyno_SusanLee1", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_SusanLee",
    lore = { "IGUI_SFQuest_Questyno_SusanLee23_Lore" },
    needsitem = "Mattress;2", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_SusanLee;SFQuest_Questyno_SusanLee23_Complete",
    text = "IGUI_SFQuest_Questyno_SusanLee23_A_Text",
    texture = "media/textures/Item_SusanLee.png",
    title = "IGUI_SFQuest_Questyno_SusanLee23_Title",
}
table.insert(SFQuest_Database.QuestPool, leeQuest23A);

--[[
            *** George Scott ***
            Elenco:
                intro. Parla con George Scott per sbloccare le daily.
				1. Recuperare Base.Wine2 (140rep + 25$)
				2. Recuperare Base.Jacket_Chef (80rep)
				3. Recuperare Base.Hat_HockeyMask parlando con  (10780,9885,0) (35rep)
				4. Recuperare Base.Earbuds parlando con (10780,9885,0) (80rep)
				5. Recuperare Base.Dart parlando con (10211,8251,0) (50rep)
				6. Recuperare Base.ToiletPaper;4 (75rep + 30$)
				7. Recuperare Base.Cube parlando con (11128,6856,0) (150rep + 50$)
				8. Recuperare Base.CardDeck (30rep)
				9. Recuperare Base.VideoGame;Base.VideoGame parlando con (10339,8175,0);(10203,8313,0) (100rep)
				10. Recuperare Tromba;Bacchette;Chitarra Classica parlando con (8506,7685,0);(8385,7674,1);(8195,7506,0) (140rep + 50$)
				11. Recuperare Base.Basketball parlando con (12566,9951,0) (80rep)
				12. Recuperare Base.ChessWhite;Base.ChessBlack;Base.CheckerBoard parlando con (12338,9647,1) (50rep)
				13. Recuperare Base.Toothpaste (50rep + 20$)
				14. Recuperare Base.Hat_Cowboy parlando con (8159,9611,0) (50rep + 100$)
				15. Recuperare Base.Shoes_RedTrainers;Base.Trousers_JeanBaggy;Base.Skirt_Long (40rep + 50$)
				16. Recuperare Moveables.DylansElectronics01_46 parlando con (9747,10589,0) (100rep + SWeapons.SalvagedMachete)
				17. Recuperare Base.Disc_Retail (45rep)
				18. Recuperare Base.CDplayer;Base.Battery;2 (50rep)
				19. Recuperare Base.Hat_Bandana parlando con (7431,9700,0) (60rep)
				20. Recuperare Base.TrousersMesh_DenimLight;Base.JacketLong_Random (100rep + 40$)
				21. Recuperare Base.AmmoStrap_Shells (50rep)
				22. Recuperare Base.WristWatch_Right_ClassicGold (50rep)
				23. Recuperare Base.HolsterDouble (150rep + 25$)
]]

local scottIntro = {
    guid = "Questyno_GeorgeScott_Intro",

    awardsrep = "LaResistenza;1", -- REP REWARD
    awardstask = "Questyno_GeorgeScott1", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_GeorgeScott_Intro_Lore" },
    ondone = "randomcodedworldfrompool;Questyno_GeorgeScott;Questyno;GeorgeScott",
    text = "IGUI_SFQuest_Questyno_GeorgeScott_Intro_Text",
    texture = "media/textures/Item_GeorgeScott.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_GeorgeScott_Intro_Title",
}
table.insert(SFQuest_Database.QuestPool, scottIntro);

local scottQuest1 = {
    guid = "Questyno_GeorgeScott1",

    awardsrep = "LaResistenza;140", -- REP REWARD
    awardsitem = "Money;25", -- ITEM REWARD
    awardstask = "Questyno_GeorgeScott2", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_GeorgeScott",
    lore = { "IGUI_SFQuest_Questyno_GeorgeScott1_Lore" },
    needsitem = "Wine2;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott1_Complete",
    text = "IGUI_SFQuest_Questyno_GeorgeScott1_Text",
    texture = "media/textures/Item_GeorgeScott.png",
    title = "IGUI_SFQuest_Questyno_GeorgeScott1_Title",
    unlockedsound = "QuestUnlocked",
}
table.insert(SFQuest_Database.QuestPool, scottQuest1);

local scottQuest2 = {
    guid = "Questyno_GeorgeScott2",

    awardsrep = "LaResistenza;80", -- REP REWARD
    awardstask = "Questyno_GeorgeScott3", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_GeorgeScott",
    lore = { "IGUI_SFQuest_Questyno_GeorgeScott2_Lore" },
    needsitem = "Jacket_Chef;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott2_Complete",
    text = "IGUI_SFQuest_Questyno_GeorgeScott2_Text",
    texture = "media/textures/Item_GeorgeScott.png",
    title = "IGUI_SFQuest_Questyno_GeorgeScott2_Title",
    unlockedsound = "QuestUnlocked",
}
table.insert(SFQuest_Database.QuestPool, scottQuest2);

local scottQuest3 = {
    guid = "Questyno_GeorgeScott3",

    awardstask = "Questyno_GeorgeScott3_A", -- TASK REWARD
    dailycode = "Questyno_GeorgeScott",
    lore = { "IGUI_SFQuest_Questyno_GeorgeScott3_Lore" },
    objectives = { {
        guid = "Questyno_GeorgeScott3_A",
        text = "IGUI_SFQuest_Questyno_GeorgeScott3_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoGeorgeScott3;additem;Hat_HockeyMask;1"
    } },
    text = "IGUI_SFQuest_Questyno_GeorgeScott3_Text",
    texture = "media/textures/Item_GeorgeScott.png",
    title = "IGUI_SFQuest_Questyno_GeorgeScott3_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;10780x9885x0:EventoGeorgeScott3;anim:loot:time:50;updateobjective:Questyno_GeorgeScott3:1:Completed"
}
table.insert(SFQuest_Database.QuestPool, scottQuest3);

local scottQuest3A = {
    guid = "Questyno_GeorgeScott3_A",

    awardsrep = "LaResistenza;35", -- REP REWARD
    awardstask = "Questyno_GeorgeScott4", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_GeorgeScott",
    lore = { "IGUI_SFQuest_Questyno_GeorgeScott3_Lore" },
    needsitem = "Hat_HockeyMask;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott3_Complete",
    text = "IGUI_SFQuest_Questyno_GeorgeScott3_A_Text",
    texture = "media/textures/Item_GeorgeScott.png",
    title = "IGUI_SFQuest_Questyno_GeorgeScott3_Title",
}
table.insert(SFQuest_Database.QuestPool, scottQuest3A);

local scottQuest4 = {
    guid = "Questyno_GeorgeScott4",

    awardstask = "Questyno_GeorgeScott4_A", -- TASK REWARD
    dailycode = "Questyno_GeorgeScott",
    lore = { "IGUI_SFQuest_Questyno_GeorgeScott4_Lore" },
    objectives = { {
        guid = "Questyno_GeorgeScott4_A",
        text = "IGUI_SFQuest_Questyno_GeorgeScott4_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoGeorgeScott4;additem;Earbuds;1"
    } },
    text = "IGUI_SFQuest_Questyno_GeorgeScott4_Text",
    texture = "media/textures/Item_GeorgeScott.png",
    title = "IGUI_SFQuest_Questyno_GeorgeScott4_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;7383x8285x0:EventoGeorgeScott4;anim:loot:time:50;updateobjective:Questyno_GeorgeScott4:1:Completed"
}
table.insert(SFQuest_Database.QuestPool, scottQuest4);

local scottQuest4A = {
    guid = "Questyno_GeorgeScott4_A",

    awardsrep = "LaResistenza;80", -- REP REWARD
    awardstask = "Questyno_GeorgeScott5", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_GeorgeScott",
    lore = { "IGUI_SFQuest_Questyno_GeorgeScott4_Lore" },
    needsitem = "Earbuds;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott4_Complete",
    text = "IGUI_SFQuest_Questyno_GeorgeScott4_A_Text",
    texture = "media/textures/Item_GeorgeScott.png",
    title = "IGUI_SFQuest_Questyno_GeorgeScott4_Title",
}
table.insert(SFQuest_Database.QuestPool, scottQuest4A);

local scottQuest5 = {
    guid = "Questyno_GeorgeScott5",

    awardstask = "Questyno_GeorgeScott5_A", -- TASK REWARD
    dailycode = "Questyno_GeorgeScott",
    lore = { "IGUI_SFQuest_Questyno_GeorgeScott5_Lore" },
    objectives = { {
        guid = "Questyno_GeorgeScott5_A",
        text = "IGUI_SFQuest_Questyno_GeorgeScott5_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoGeorgeScott5;additem;Dart;1"
    } },
    text = "IGUI_SFQuest_Questyno_GeorgeScott5_Text",
    texture = "media/textures/Item_GeorgeScott.png",
    title = "IGUI_SFQuest_Questyno_GeorgeScott5_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;10211x8251x0:EventoGeorgeScott5;anim:loot:time:50;updateobjective:Questyno_GeorgeScott5:1:Completed"
}
table.insert(SFQuest_Database.QuestPool, scottQuest5);

local scottQuest5A = {
    guid = "Questyno_GeorgeScott5_A",

    awardsrep = "LaResistenza;50", -- REP REWARD
    awardstask = "Questyno_GeorgeScott6", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_GeorgeScott",
    lore = { "IGUI_SFQuest_Questyno_GeorgeScott5_Lore" },
    needsitem = "Dart;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott5_Complete",
    text = "IGUI_SFQuest_Questyno_GeorgeScott5_A_Text",
    texture = "media/textures/Item_GeorgeScott.png",
    title = "IGUI_SFQuest_Questyno_GeorgeScott5_Title",
}
table.insert(SFQuest_Database.QuestPool, scottQuest5A);

local scottQuest6 = {
    guid = "Questyno_GeorgeScott6",

    awardsrep = "LaResistenza;75", -- REP REWARD
    awardsitem = "Money;30", -- ITEM REWARD
    awardstask = "Questyno_GeorgeScott7", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_GeorgeScott",
    lore = { "IGUI_SFQuest_Questyno_GeorgeScott6_Lore" },
    needsitem = "ToiletPaper;4", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott6_Complete",
    text = "IGUI_SFQuest_Questyno_GeorgeScott6_Text",
    texture = "media/textures/Item_GeorgeScott.png",
    title = "IGUI_SFQuest_Questyno_GeorgeScott6_Title",
    unlockedsound = "QuestUnlocked",
}
table.insert(SFQuest_Database.QuestPool, scottQuest6);

local scottQuest7 = {
    guid = "Questyno_GeorgeScott7",

    awardstask = "Questyno_GeorgeScott7_A", -- TASK REWARD
    dailycode = "Questyno_GeorgeScott",
    lore = { "IGUI_SFQuest_Questyno_GeorgeScott7_Lore" },
    objectives = { {
        guid = "Questyno_GeorgeScott7_A",
        text = "IGUI_SFQuest_Questyno_GeorgeScott7_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoGeorgeScott7;additem;Cube;1"
    } },
    text = "IGUI_SFQuest_Questyno_GeorgeScott7_Text",
    texture = "media/textures/Item_GeorgeScott.png",
    title = "IGUI_SFQuest_Questyno_GeorgeScott7_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;11128x6856x0:EventoGeorgeScott7;anim:loot:time:50;updateobjective:Questyno_GeorgeScott7:1:Completed"
}
table.insert(SFQuest_Database.QuestPool, scottQuest7);

local scottQuest7A = {
    guid = "Questyno_GeorgeScott7_A",

    awardsrep = "LaResistenza;150", -- REP REWARD
    awardsitem = "Money;50", -- ITEM REWARD
    awardstask = "Questyno_GeorgeScott8", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_GeorgeScott",
    lore = { "IGUI_SFQuest_Questyno_GeorgeScott7_Lore" },
    needsitem = "Cube;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott7_Complete",
    text = "IGUI_SFQuest_Questyno_GeorgeScott7_A_Text",
    texture = "media/textures/Item_GeorgeScott.png",
    title = "IGUI_SFQuest_Questyno_GeorgeScott7_Title",
}
table.insert(SFQuest_Database.QuestPool, scottQuest7A);

local scottQuest8 = {
    guid = "Questyno_GeorgeScott8",

    awardsrep = "LaResistenza;30", -- REP REWARD
    awardstask = "Questyno_GeorgeScott9", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_GeorgeScott",
    lore = { "IGUI_SFQuest_Questyno_GeorgeScott8_Lore" },
    needsitem = "CardDeck;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott8_Complete",
    text = "IGUI_SFQuest_Questyno_GeorgeScott8_Text",
    texture = "media/textures/Item_GeorgeScott.png",
    title = "IGUI_SFQuest_Questyno_GeorgeScott8_Title",
    unlockedsound = "QuestUnlocked",
}
table.insert(SFQuest_Database.QuestPool, scottQuest8);

local scottQuest9 = {
    guid = "Questyno_GeorgeScott9",

    awardstask = "Questyno_GeorgeScott9_A", -- TASK REWARD
    dailycode = "Questyno_GeorgeScott",
    lore = { "IGUI_SFQuest_Questyno_GeorgeScott9_Lore" },
    objectives = { {
        guid = "Questyno_GeorgeScott9_A",
        text = "IGUI_SFQuest_Questyno_GeorgeScott9_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoGeorgeScott9;additem;VideoGame;1;clickevent;10203x8313x0:EventoGeorgeScott9A;anim:loot:time:50;updateobjective:Questyno_GeorgeScott9:2:Completed"
    }, {
        guid = "Questyno_GeorgeScott9_B",
        text = "IGUI_SFQuest_Questyno_GeorgeScott9_B",
        hidden = true,
        oncompleted = "removeclickevent;EventoGeorgeScott9A;additem;VideoGame;1"
    } },
    text = "IGUI_SFQuest_Questyno_GeorgeScott9_Text",
    texture = "media/textures/Item_GeorgeScott.png",
    title = "IGUI_SFQuest_Questyno_GeorgeScott9_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;10339x8175x0:EventoGeorgeScott9;anim:loot:time:50;updateobjective:Questyno_GeorgeScott9:1:Completed"
}
table.insert(SFQuest_Database.QuestPool, scottQuest9);

local scottQuest9A = {
    guid = "Questyno_GeorgeScott9_A",

    awardsrep = "LaResistenza;100", -- REP REWARD
    awardstask = "Questyno_GeorgeScott10", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_GeorgeScott",
    lore = { "IGUI_SFQuest_Questyno_GeorgeScott9_Lore" },
    needsitem = "VideoGame;2", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott9_Complete",
    text = "IGUI_SFQuest_Questyno_GeorgeScott9_A_Text",
    texture = "media/textures/Item_GeorgeScott.png",
    title = "IGUI_SFQuest_Questyno_GeorgeScott9_Title",
}
table.insert(SFQuest_Database.QuestPool, scottQuest9A);

local scottQuest10 = {
    guid = "Questyno_GeorgeScott10",

    awardstask = "Questyno_GeorgeScott10_A", -- TASK REWARD
    dailycode = "Questyno_GeorgeScott",
    lore = { "IGUI_SFQuest_Questyno_GeorgeScott10_Lore" },
    objectives = { {
        guid = "Questyno_GeorgeScott10_A",
        text = "IGUI_SFQuest_Questyno_GeorgeScott10_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoGeorgeScott10;additem;Trumpet;1;revealobjective;Questyno_GeorgeScott10;2;clickevent;8385x7674x1:EventoGeorgeScott10A;anim:loot:time:50;updateobjective:Questyno_GeorgeScott10:2:Completed"
    }, {
        guid = "Questyno_GeorgeScott10_B",
        text = "IGUI_SFQuest_Questyno_GeorgeScott10_B",
        hidden = true,
        oncompleted = "removeclickevent;EventoGeorgeScott10A;additem;Chopsticks;1;revealobjective;Questyno_GeorgeScott10;3;clickevent;8195x7506x0:EventoGeorgeScott10B;anim:loot:time:50;updateobjective:Questyno_GeorgeScott10:3:Completed"
    }, {
        guid = "Questyno_GeorgeScott10_C",
        text = "IGUI_SFQuest_Questyno_GeorgeScott10_C",
        hidden = true,
        oncompleted = "removeclickevent;EventoGeorgeScott10B;additem;GuitarAcoustic;1"
    } },
    text = "IGUI_SFQuest_Questyno_GeorgeScott10_Text",
    texture = "media/textures/Item_GeorgeScott.png",
    title = "IGUI_SFQuest_Questyno_GeorgeScott10_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;8506x7685x0:EventoGeorgeScott10;anim:loot:time:50;updateobjective:Questyno_GeorgeScott10:1:Completed"
}
table.insert(SFQuest_Database.QuestPool, scottQuest10);

local scottQuest10A = {
    guid = "Questyno_GeorgeScott10_A",

    awardstask = "Questyno_GeorgeScott10_B", -- TASK REWARD
    dailycode = "Questyno_GeorgeScott",
    lore = { "IGUI_SFQuest_Questyno_GeorgeScott10_Lore" },
    objectives = { {
        guid = "Questyno_GeorgeScott10_D",
        text = "IGUI_SFQuest_Questyno_GeorgeScott10_D",
        hidden = false,
        needsitem = "Trumpet;1",
        onobtained = "updateobjective;Questyno_GeorgeScott10_A;1;Completed;removeitem;Trumpet;1"
    },{
        guid = "Questyno_GeorgeScott10_E",
        text = "IGUI_SFQuest_Questyno_GeorgeScott10_E",
        hidden = false,
        needsitem = "Chopsticks;1",
        onobtained = "updateobjective;Questyno_GeorgeScott10_A;2;Completed;removeitem;Chopsticks;1"
    }, {
        guid = "Questyno_GeorgeScott10_F",
        text = "IGUI_SFQuest_Questyno_GeorgeScott10_F",
        hidden = false,
        needsitem = "GuitarAcoustic;1",
        onobtained = "updateobjective;Questyno_GeorgeScott10_A;3;Completed;removeitem;GuitarAcoustic;1"
    } },
    text = "IGUI_SFQuest_Questyno_GeorgeScott10_A_Text",
    texture = "media/textures/Item_GeorgeScott.png",
    title = "IGUI_SFQuest_Questyno_GeorgeScott10_Title",
}
table.insert(SFQuest_Database.QuestPool, scottQuest10A);

local scottQuest10B = {
    guid = "Questyno_GeorgeScott10_B",

    awardsrep = "LaResistenza;140", -- REP REWARD
    awardsitem = "Money;50", -- ITEM REWARD
    awardstask = "Questyno_GeorgeScott11", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_GeorgeScott",
    lore = { "IGUI_SFQuest_Questyno_GeorgeScott10_Lore" },
    unlocks = "unlockworldevent;Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott10_Complete",
    text = "IGUI_SFQuest_Questyno_GeorgeScott10_B_Text",
    texture = "media/textures/Item_GeorgeScott.png",
    title = "IGUI_SFQuest_Questyno_GeorgeScott10_Title",
}
table.insert(SFQuest_Database.QuestPool, scottQuest10B);

local scottQuest11 = {
    guid = "Questyno_GeorgeScott11",

    awardstask = "Questyno_GeorgeScott11_A", -- TASK REWARD
    dailycode = "Questyno_GeorgeScott",
    lore = { "IGUI_SFQuest_Questyno_GeorgeScott11_Lore" },
    objectives = { {
        guid = "Questyno_GeorgeScott11_A",
        text = "IGUI_SFQuest_Questyno_GeorgeScott11_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoGeorgeScott11;additem;Basketball;1"
    } },
    text = "IGUI_SFQuest_Questyno_GeorgeScott11_Text",
    texture = "media/textures/Item_GeorgeScott.png",
    title = "IGUI_SFQuest_Questyno_GeorgeScott11_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;12566x9951x0:EventoGeorgeScott11;anim:loot:time:50;updateobjective:Questyno_GeorgeScott11:1:Completed"
}
table.insert(SFQuest_Database.QuestPool, scottQuest11);

local scottQuest11A = {
    guid = "Questyno_GeorgeScott11_A",

    awardsrep = "LaResistenza;80", -- REP REWARD
    awardstask = "Questyno_GeorgeScott12", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_GeorgeScott",
    lore = { "IGUI_SFQuest_Questyno_GeorgeScott11_Lore" },
    needsitem = "Basketball;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott11_Complete",
    text = "IGUI_SFQuest_Questyno_GeorgeScott11_A_Text",
    texture = "media/textures/Item_GeorgeScott.png",
    title = "IGUI_SFQuest_Questyno_GeorgeScott11_Title",
}
table.insert(SFQuest_Database.QuestPool, scottQuest11A);

local scottQuest12 = {
    guid = "Questyno_GeorgeScott12",

    awardstask = "Questyno_GeorgeScott12_A", -- TASK REWARD
    dailycode = "Questyno_GeorgeScott",
    lore = { "IGUI_SFQuest_Questyno_GeorgeScott12_Lore" },
    objectives = { {
        guid = "Questyno_GeorgeScott12_A",
        text = "IGUI_SFQuest_Questyno_GeorgeScott12_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoGeorgeScott12;additem;ChessWhite;1;additem;ChessBlack;1;additem;CheckerBoard;1",
    } },
    text = "IGUI_SFQuest_Questyno_GeorgeScott12_Text",
    texture = "media/textures/Item_GeorgeScott.png",
    title = "IGUI_SFQuest_Questyno_GeorgeScott12_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;12338x9647x1:EventoGeorgeScott12;anim:loot:time:50;updateobjective:Questyno_GeorgeScott12:1:Completed"
}
table.insert(SFQuest_Database.QuestPool, scottQuest12);

local scottQuest12A = {
    guid = "Questyno_GeorgeScott12_A",

    awardstask = "Questyno_GeorgeScott12_B", -- TASK REWARD
    dailycode = "Questyno_GeorgeScott",
    lore = { "IGUI_SFQuest_Questyno_GeorgeScott12_Lore" },
    objectives = { {
        guid = "Questyno_GeorgeScott12_B",
        text = "IGUI_SFQuest_Questyno_GeorgeScott12_B",
        hidden = false,
        needsitem = "ChessWhite;1",
        onobtained = "updateobjective;Questyno_GeorgeScott12_A;1;Completed;removeitem;ChessWhite;1"
    },{
        guid = "Questyno_GeorgeScott12_C",
        text = "IGUI_SFQuest_Questyno_GeorgeScott12_C",
        hidden = false,
        needsitem = "ChessBlack;1",
        onobtained = "updateobjective;Questyno_GeorgeScott12_A;2;Completed;removeitem;ChessBlack;1"
    }, {
        guid = "Questyno_GeorgeScott12_D",
        text = "IGUI_SFQuest_Questyno_GeorgeScott12_D",
        hidden = false,
        needsitem = "CheckerBoard;1",
        onobtained = "updateobjective;Questyno_GeorgeScott12_A;3;Completed;removeitem;CheckerBoard;1"
    } },
    text = "IGUI_SFQuest_Questyno_GeorgeScott12_A_Text",
    texture = "media/textures/Item_GeorgeScott.png",
    title = "IGUI_SFQuest_Questyno_GeorgeScott12_Title",
}
table.insert(SFQuest_Database.QuestPool, scottQuest12A);

local scottQuest12B = {
    guid = "Questyno_GeorgeScott12_B",

    awardsrep = "LaResistenza;150", -- REP REWARD
    awardstask = "Questyno_GeorgeScott13", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_GeorgeScott",
    lore = { "IGUI_SFQuest_Questyno_GeorgeScott12_Lore" },
    unlocks = "unlockworldevent;Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott12_Complete",
    text = "IGUI_SFQuest_Questyno_GeorgeScott12_B_Text",
    texture = "media/textures/Item_GeorgeScott.png",
    title = "IGUI_SFQuest_Questyno_GeorgeScott12_Title",
}
table.insert(SFQuest_Database.QuestPool, scottQuest12B);

local scottQuest13 = {
    guid = "Questyno_GeorgeScott13",

    awardsrep = "LaResistenza;50", -- REP REWARD
    awardsitem = "Money;20", -- ITEM REWARD
    awardstask = "Questyno_GeorgeScott14", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_GeorgeScott",
    lore = { "IGUI_SFQuest_Questyno_GeorgeScott13_Lore" },
    needsitem = "Toothpaste;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott13_Complete",
    text = "IGUI_SFQuest_Questyno_GeorgeScott13_Text",
    texture = "media/textures/Item_GeorgeScott.png",
    title = "IGUI_SFQuest_Questyno_GeorgeScott13_Title",
    unlockedsound = "QuestUnlocked",
}
table.insert(SFQuest_Database.QuestPool, scottQuest13);

local scottQuest14 = {
    guid = "Questyno_GeorgeScott14",

    awardstask = "Questyno_GeorgeScott14_A", -- TASK REWARD
    dailycode = "Questyno_GeorgeScott",
    lore = { "IGUI_SFQuest_Questyno_GeorgeScott14_Lore" },
    objectives = { {
        guid = "Questyno_GeorgeScott14_A",
        text = "IGUI_SFQuest_Questyno_GeorgeScott14_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoGeorgeScott14;additem;Hat_Cowboy;1"
    } },
    text = "IGUI_SFQuest_Questyno_GeorgeScott14_Text",
    texture = "media/textures/Item_GeorgeScott.png",
    title = "IGUI_SFQuest_Questyno_GeorgeScott14_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;8159x9611x0:EventoGeorgeScott14;anim:loot:time:50;updateobjective:Questyno_GeorgeScott14:1:Completed"
}
table.insert(SFQuest_Database.QuestPool, scottQuest14);

local scottQuest14A = {
    guid = "Questyno_GeorgeScott14_A",

    awardsrep = "LaResistenza;80", -- REP REWARD
    awardsitem = "Money;100", -- ITEM REWARD
    awardstask = "Questyno_GeorgeScott15", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_GeorgeScott",
    lore = { "IGUI_SFQuest_Questyno_GeorgeScott14_Lore" },
    needsitem = "Hat_Cowboy;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott14_Complete",
    text = "IGUI_SFQuest_Questyno_GeorgeScott14_A_Text",
    texture = "media/textures/Item_GeorgeScott.png",
    title = "IGUI_SFQuest_Questyno_GeorgeScott14_Title",
}
table.insert(SFQuest_Database.QuestPool, scottQuest14A);

local scottQuest15 = {
    guid = "Questyno_GeorgeScott15",

    awardstask = "Questyno_GeorgeScott15_A", -- TASK REWARD
    dailycode = "Questyno_GeorgeScott",
    lore = { "IGUI_SFQuest_Questyno_GeorgeScott15_Lore" },
    objectives = { {
        guid = "Questyno_GeorgeScott15_A",
        text = "IGUI_SFQuest_Questyno_GeorgeScott15_A",
        hidden = false,
        needsitem = "Shoes_RedTrainers;1",
        onobtained = "updateobjective;Questyno_GeorgeScott15_A;1;Completed;removeitem;Shoes_RedTrainers;1"
    },{
        guid = "Questyno_GeorgeScott15_B",
        text = "IGUI_SFQuest_Questyno_GeorgeScott15_B",
        hidden = false,
        needsitem = "Trousers_JeanBaggy;1",
        onobtained = "updateobjective;Questyno_GeorgeScott15_A;2;Completed;removeitem;Trousers_JeanBaggy;1"
    }, {
        guid = "Questyno_GeorgeScott15_C",
        text = "IGUI_SFQuest_Questyno_GeorgeScott15_C",
        hidden = false,
        needsitem = "Skirt_Long;1",
        onobtained = "updateobjective;Questyno_GeorgeScott15_A;3;Completed;removeitem;Skirt_Long;1"
    } },
    text = "IGUI_SFQuest_Questyno_GeorgeScott15_Text",
    texture = "media/textures/Item_GeorgeScott.png",
    title = "IGUI_SFQuest_Questyno_GeorgeScott15_Title",
    unlockedsound = "QuestUnlocked",
}
table.insert(SFQuest_Database.QuestPool, scottQuest15);

local scottQuest15A = {
    guid = "Questyno_GeorgeScott15_A",

    awardsrep = "LaResistenza;40", -- REP REWARD
    awardsitem = "Money;50", -- ITEM REWARD
    awardstask = "Questyno_GeorgeScott16", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_GeorgeScott",
    lore = { "IGUI_SFQuest_Questyno_GeorgeScott15_Lore" },
    unlocks = "unlockworldevent;Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott15_Complete",
    text = "IGUI_SFQuest_Questyno_GeorgeScott15_A_Text",
    texture = "media/textures/Item_GeorgeScott.png",
    title = "IGUI_SFQuest_Questyno_GeorgeScott15_Title",
}
table.insert(SFQuest_Database.QuestPool, scottQuest15A);

local scottQuest16 = {
    guid = "Questyno_GeorgeScott16",

    awardsrep = "LaResistenza;100", -- REP REWARD
    awardsitem = "SWeapons.SalvagedMachete;1", -- ITEM REWARD
    awardstask = "Questyno_GeorgeScott17", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_GeorgeScott",
    lore = { "IGUI_SFQuest_Questyno_GeorgeScott16_Lore" },
    needsitem = "Tag#GuitarElectricBass;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott16_Complete",
    text = "IGUI_SFQuest_Questyno_GeorgeScott16_Text",
    texture = "media/textures/Item_GeorgeScott.png",
    title = "IGUI_SFQuest_Questyno_GeorgeScott16_Title",
}
table.insert(SFQuest_Database.QuestPool, scottQuest16);


local scottQuest17 = {
    guid = "Questyno_GeorgeScott17",

    awardsrep = "LaResistenza;45", -- REP REWARD
    awardstask  = "Questyno_GeorgeScott18", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_GeorgeScott",
    lore = { "IGUI_SFQuest_Questyno_GeorgeScott17_Lore" },
    needsitem = "Base.Disc_Retail;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott17_Complete",
    text = "IGUI_SFQuest_Questyno_GeorgeScott17_Text",
    texture = "media/textures/Item_GeorgeScott.png",
    title = "IGUI_SFQuest_Questyno_GeorgeScott17_Title",
    unlockedsound = "QuestUnlocked",
}
table.insert(SFQuest_Database.QuestPool, scottQuest17);


local scottQuest18 = {
    guid = "Questyno_GeorgeScott18",

    awardstask = "Questyno_GeorgeScott18_A", -- TASK REWARD
    dailycode = "Questyno_GeorgeScott",
    lore = { "IGUI_SFQuest_Questyno_GeorgeScott18_Lore" },
    objectives = { {
        guid = "Questyno_GeorgeScott18_A",
        text = "IGUI_SFQuest_Questyno_GeorgeScott18_A",
        hidden = false,
        needsitem = "Radio.CDplayer;1",
        onobtained = "updateobjective;Questyno_GeorgeScott18;1;Completed;removeitem;Radio.CDplayer;1"
    },{
        guid = "Questyno_GeorgeScott18_B",
        text = "IGUI_SFQuest_Questyno_GeorgeScott18_B",
        hidden = false,
        needsitem = "Base.Battery;2",
        onobtained = "updateobjective;Questyno_GeorgeScott18;2;Completed;removeitem;Base.Battery;2"
    } },
    text = "IGUI_SFQuest_Questyno_GeorgeScott18_Text",
    texture = "media/textures/Item_GeorgeScott.png",
    title = "IGUI_SFQuest_Questyno_GeorgeScott18_Title",
    unlockedsound = "QuestUnlocked",
}
table.insert(SFQuest_Database.QuestPool, scottQuest18);

local scottQuest18A = {
    guid = "Questyno_GeorgeScott18_A",

    awardsrep = "LaResistenza;50", -- REP REWARD
    awardstask = "Questyno_GeorgeScott19", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_GeorgeScott",
    lore = { "IGUI_SFQuest_Questyno_GeorgeScott18_Lore" },
    unlocks = "unlockworldevent;Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott18_Complete",
    text = "IGUI_SFQuest_Questyno_GeorgeScott18_A_Text",
    texture = "media/textures/Item_GeorgeScott.png",
    title = "IGUI_SFQuest_Questyno_GeorgeScott18_Title",
}
table.insert(SFQuest_Database.QuestPool, scottQuest18A);


local scottQuest19 = {
    guid = "Questyno_GeorgeScott19",

    awardstask = "Questyno_GeorgeScott19_A", -- TASK REWARD
    dailycode = "Questyno_GeorgeScott",
    lore = { "IGUI_SFQuest_Questyno_GeorgeScott19_Lore" },
    objectives = { {
        guid = "Questyno_GeorgeScott19_A",
        text = "IGUI_SFQuest_Questyno_GeorgeScott19_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoGeorgeScott19;additem;Base.Hat_Bandana;1"
    } },
    text = "IGUI_SFQuest_Questyno_GeorgeScott19_Text",
    texture = "media/textures/Item_GeorgeScott.png",
    title = "IGUI_SFQuest_Questyno_GeorgeScott19_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;7431x9700x0:EventoGeorgeScott19;anim:loot:time:50;updateobjective:Questyno_GeorgeScott19:1:Completed"
}
table.insert(SFQuest_Database.QuestPool, scottQuest19);

local scottQuest19A = {
    guid = "Questyno_GeorgeScott19_A",

    awardsrep = "LaResistenza;80", -- REP REWARD
    awardstask = "Questyno_GeorgeScott20", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_GeorgeScott",
    lore = { "IGUI_SFQuest_Questyno_GeorgeScott19_Lore" },
    needsitem = "Base.Hat_Bandana;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott19_Complete",
    text = "IGUI_SFQuest_Questyno_GeorgeScott19_A_Text",
    texture = "media/textures/Item_GeorgeScott.png",
    title = "IGUI_SFQuest_Questyno_GeorgeScott19_Title",
}
table.insert(SFQuest_Database.QuestPool, scottQuest19A);


local scottQuest20 = {
    guid = "Questyno_GeorgeScott20",

    awardstask = "Questyno_GeorgeScott20_A", -- TASK REWARD
    dailycode = "Questyno_GeorgeScott",
    lore = { "IGUI_SFQuest_Questyno_GeorgeScott20_Lore" },
    objectives = { {
        guid = "Questyno_GeorgeScott20_A",
        text = "IGUI_SFQuest_Questyno_GeorgeScott20_A",
        hidden = false,
        needsitem = "Base.TrousersMesh_DenimLight;1",
        onobtained = "updateobjective;Questyno_GeorgeScott20;1;Completed;removeitem;Base.TrousersMesh_DenimLight;1"
    },{
        guid = "Questyno_GeorgeScott20_B",
        text = "IGUI_SFQuest_Questyno_GeorgeScott20_B",
        hidden = false,
        needsitem = "Base.JacketLong_Random;1",
        onobtained = "updateobjective;Questyno_GeorgeScott20;2;Completed;removeitem;Base.JacketLong_Random;1"
    } },
    text = "IGUI_SFQuest_Questyno_GeorgeScott20_Text",
    texture = "media/textures/Item_GeorgeScott.png",
    title = "IGUI_SFQuest_Questyno_GeorgeScott20_Title",
    unlockedsound = "QuestUnlocked",
}
table.insert(SFQuest_Database.QuestPool, scottQuest20);

local scottQuest20A = {
    guid = "Questyno_GeorgeScott20_A",

    awardsrep = "LaResistenza;100", -- REP REWARD
    awardsitem = "Money;40", -- ITEM REWARD
    awardstask = "Questyno_GeorgeScott21", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_GeorgeScott",
    lore = { "IGUI_SFQuest_Questyno_GeorgeScott20_Lore" },
    unlocks = "unlockworldevent;Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott20_Complete",
    text = "IGUI_SFQuest_Questyno_GeorgeScott20_A_Text",
    texture = "media/textures/Item_GeorgeScott.png",
    title = "IGUI_SFQuest_Questyno_GeorgeScott20_Title",
}
table.insert(SFQuest_Database.QuestPool, scottQuest20A);


local scottQuest21 = {
    guid = "Questyno_GeorgeScott21",

    awardsrep = "LaResistenza;50", -- REP REWARD
    awardstask = "Questyno_GeorgeScott22", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_GeorgeScott",
    lore = { "IGUI_SFQuest_Questyno_GeorgeScott21_Lore" },
    needsitem = "Base.AmmoStrap_Shells;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott21_Complete",
    text = "IGUI_SFQuest_Questyno_GeorgeScott21_Text",
    texture = "media/textures/Item_GeorgeScott.png",
    title = "IGUI_SFQuest_Questyno_GeorgeScott21_Title",
    unlockedsound = "QuestUnlocked",
}
table.insert(SFQuest_Database.QuestPool, scottQuest21);


local scottQuest22 = {
    guid = "Questyno_GeorgeScott22",

    awardsrep = "LaResistenza;50", -- REP REWARD
    awardstask = "Questyno_GeorgeScott23", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_GeorgeScott",
    lore = { "IGUI_SFQuest_Questyno_GeorgeScott22_Lore" },
    needsitem = "Tag#WatchLuxury;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott22_Complete",
    text = "IGUI_SFQuest_Questyno_GeorgeScott22_Text",
    texture = "media/textures/Item_GeorgeScott.png",
    title = "IGUI_SFQuest_Questyno_GeorgeScott22_Title",
    unlockedsound = "QuestUnlocked",
}
table.insert(SFQuest_Database.QuestPool, scottQuest22);

local scottQuest23 = {
    guid = "Questyno_GeorgeScott23",

    awardsrep = "LaResistenza;150", -- REP REWARD
    awardsitem = "Money;25", -- ITEM REWARD
    awardstask = "Questyno_GeorgeScott1", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_GeorgeScott",
    lore = { "IGUI_SFQuest_Questyno_GeorgeScott23_Lore" },
    needsitem = "Base.HolsterDouble;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott23_Complete",
    text = "IGUI_SFQuest_Questyno_GeorgeScott23_Text",
    texture = "media/textures/Item_GeorgeScott.png",
    title = "IGUI_SFQuest_Questyno_GeorgeScott23_Title",
    unlockedsound = "QuestUnlocked",
}
table.insert(SFQuest_Database.QuestPool, scottQuest23);

--[[
            *** Samuel Young ***
            Elenco:
                intro. Parla con Samuel Young per sbloccare le daily.
				1. Recuperare Base.DeadRabbit;4 (275rep)
				2. Recuperare Base.DeadRabbit;2 (150rep)
				3. Recuperare TrapCrate:30 (100rep + Spago)
				4. Recuperare Base.TrapBox;15 (200rep + 30$)
				5. Recuperare Base.DeadSquirrel;2 (80rep)
				6. Recuperare Base.DeadBird;4 (200rep)
				7. Recuperare Base.DeadRabbit;2 (80rep + DehydratedMeatStick;8)
				8. Recuperare Moveables.camping_01_17 parlando con (11217,8963,0) (40rep + 50$)
				9. Recuperare Base.DeadBird;2 (90rep + Base.BeefJerky)
				10. Recuperare Base.DeadSquirrel;2 (50rep + 30$ + Base.BeefJerky;3)
				11. Recuperare Base.TrapBox;6 (50rep + 30$)
				12. Recuperare Base.TrapCrate;8 (60rep + 20$)
				13. Recuperare Base.Cabbage;10;Base.Carrots;2;farming.Potato;4 (200rep)
				14. Recuperare Base.Grasshopper;10;Base.Worm;20 (140rep)
				15. Recuperare Base.DeadRabbit;6 (190rep)
				16. Recuperare Base.DeadSquirrel;10 parlando con (11380,9501,0) (150rep + Base.DeadSquirrel)
				17. Recuperare Base.DeadRabbit;10 parlando con (11330,9482,0) (150rep + Base.DeadRabbit)
				18. Recuperare Base.DeadRabbit;2 (60rep)
				19. Recuperare Base.LeatherStrips;20 (60rep + Scrap Club)
				20. Recuperare Base.LeatherStrips;10 (40rep)
				21. Recuperare Base.TrapMouse (50rep)
				22. Recuperare Base.DeadRabbit;6 (250rep + 50$)
				23. Parlare con (8008,11896,0) (35rep + Base.Salt)
]]

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_SamuelYoung_Intro",

    awardsrep = "LaResistenza;1", -- REP REWARD
    awardstask = "Questyno_SamuelYoung1", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_SamuelYoung_Intro_Lore" },
    ondone = "randomcodedworldfrompool;Questyno_SamuelYoung;Questyno;SamuelYoung",
    text = "IGUI_SFQuest_Questyno_SamuelYoung_Intro_Text",
    texture = "media/textures/Item_SamuelYoung.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_SamuelYoung_Intro_Title",
});

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_SamuelYoung1",

    awardsrep = "LaResistenza;275", -- REP REWARD
    awardstask = "Questyno_SamuelYoung2", -- TODO: REMOVE WHEN TESTING IS DONE
    needsitem = "DeadRabbit;4", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_SamuelYoung",
    lore = { "IGUI_SFQuest_Questyno_SamuelYoung1_Lore" },
    text = "IGUI_SFQuest_Questyno_SamuelYoung1_Text",
    texture = "media/textures/Item_SamuelYoung.png",
    onobtained = "unlockworldevent;Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung1_Complete",
    title = "IGUI_SFQuest_Questyno_SamuelYoung1_Title",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_SamuelYoung2",

    awardsrep = "LaResistenza;150", -- REP REWARD
    awardstask = "Questyno_SamuelYoung3", -- TODO: REMOVE WHEN TESTING IS DONE
    needsitem = "DeadRabbit;2", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_SamuelYoung",
    lore = { "IGUI_SFQuest_Questyno_SamuelYoung2_Lore" },
    text = "IGUI_SFQuest_Questyno_SamuelYoung2_Text",
    texture = "media/textures/Item_SamuelYoung.png",
    onobtained = "unlockworldevent;Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung2_Complete",
    title = "IGUI_SFQuest_Questyno_SamuelYoung2_Title",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_SamuelYoung3",

    awardsrep = "LaResistenza;100", -- REP REWARD
    awardsitem = "Base.Twine;1", -- ITEM REWARD
    awardstask = "Questyno_SamuelYoung4", -- TODO: REMOVE WHEN TESTING IS DONE
    needsitem = "TrapCrate;10", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_SamuelYoung",
    lore = { "IGUI_SFQuest_Questyno_SamuelYoung3_Lore" },
    text = "IGUI_SFQuest_Questyno_SamuelYoung3_Text",
    texture = "media/textures/Item_SamuelYoung.png",
    onobtained = "unlockworldevent;Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung3_Complete",
    title = "IGUI_SFQuest_Questyno_SamuelYoung3_Title",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_SamuelYoung4",

    awardsrep = "LaResistenza;200", -- REP REWARD
    awardsitem = "Money;30", -- ITEM REWARD
    awardstask = "Questyno_SamuelYoung5", -- TODO: REMOVE WHEN TESTING IS DONE
    needsitem = "TrapBox;15", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_SamuelYoung",
    lore = { "IGUI_SFQuest_Questyno_SamuelYoung4_Lore" },
    text = "IGUI_SFQuest_Questyno_SamuelYoung4_Text",
    texture = "media/textures/Item_SamuelYoung.png",
    onobtained = "unlockworldevent;Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung4_Complete",
    title = "IGUI_SFQuest_Questyno_SamuelYoung4_Title",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_SamuelYoung5",

    awardsrep = "LaResistenza;80", -- REP REWARD
    awardstask = "Questyno_SamuelYoung6", -- TODO: REMOVE WHEN TESTING IS DONE
    needsitem = "DeadSquirrel;2", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_SamuelYoung",
    lore = { "IGUI_SFQuest_Questyno_SamuelYoung5_Lore" },
    text = "IGUI_SFQuest_Questyno_SamuelYoung5_Text",
    texture = "media/textures/Item_SamuelYoung.png",
    onobtained = "unlockworldevent;Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung5_Complete",
    title = "IGUI_SFQuest_Questyno_SamuelYoung5_Title",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_SamuelYoung6",

    awardsrep = "LaResistenza;200", -- REP REWARD
    awardstask = "Questyno_SamuelYoung7", -- TODO: REMOVE WHEN TESTING IS DONE
    needsitem = "DeadBird;4", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_SamuelYoung",
    lore = { "IGUI_SFQuest_Questyno_SamuelYoung6_Lore" },
    text = "IGUI_SFQuest_Questyno_SamuelYoung6_Text",
    texture = "media/textures/Item_SamuelYoung.png",
    onobtained = "unlockworldevent;Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung6_Complete",
    title = "IGUI_SFQuest_Questyno_SamuelYoung6_Title",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_SamuelYoung7",

    awardsrep = "LaResistenza;80", -- REP REWARD
    awardsitem = "Base.DehydratedMeatStick;8", -- ITEM REWARD
    awardstask = "Questyno_SamuelYoung8", -- TODO: REMOVE WHEN TESTING IS DONE
    needsitem = "DeadRabbit;2", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_SamuelYoung",
    lore = { "IGUI_SFQuest_Questyno_SamuelYoung7_Lore" },
    text = "IGUI_SFQuest_Questyno_SamuelYoung7_Text",
    texture = "media/textures/Item_SamuelYoung.png",
    onobtained = "unlockworldevent;Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung7_Complete",
    title = "IGUI_SFQuest_Questyno_SamuelYoung7_Title",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_SamuelYoung8",

    awardstask = "Questyno_SamuelYoung8_A",
    dailycode = "Questyno_SamuelYoung",
    lore = { "IGUI_SFQuest_Questyno_SamuelYoung8_Lore" },
    objectives = { {
        guid = "Questyno_SamuelYoung8_A",
        text = "IGUI_SFQuest_Questyno_SamuelYoung8_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoSamuelYoung8;additem;PynoTweaks.RollingPapers;1",
    } },
    text = "IGUI_SFQuest_Questyno_SamuelYoung8_Text",
    texture = "media/textures/Item_SamuelYoung.png",
    title = "IGUI_SFQuest_Questyno_SamuelYoung8_Title",
    unlocks = "clickevent;11217x8963x0:EventoSamuelYoung8;time:50:anim:loot;updateobjective:Questyno_SamuelYoung8:1:Completed",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_SamuelYoung8_A",

    awardsrep = "LaResistenza;40",
    awardsitem = "Money;50",
    awardstask = "Questyno_SamuelYoung9", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_SamuelYoung",
    lore = { "IGUI_SFQuest_Questyno_SamuelYoung8_Lore" },
    needsitem = "PynoTweaks.RollingPapers;1",
    onobtained = "unlockworldevent;Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung8_Complete",
    text = "IGUI_SFQuest_Questyno_SamuelYoung8_A_Text",
    texture = "media/textures/Item_SamuelYoung.png",
    title = "IGUI_SFQuest_Questyno_SamuelYoung8_Title",
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_SamuelYoung9",

    awardsrep = "LaResistenza;90", -- REP REWARD
    awardsitem = "Base.BeefJerky;1", -- ITEM REWARD
    awardstask = "Questyno_SamuelYoung10", -- TODO: REMOVE WHEN TESTING IS DONE
    needsitem = "DeadBird;2", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_SamuelYoung",
    lore = { "IGUI_SFQuest_Questyno_SamuelYoung9_Lore" },
    text = "IGUI_SFQuest_Questyno_SamuelYoung9_Text",
    texture = "media/textures/Item_SamuelYoung.png",
    onobtained = "unlockworldevent;Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung9_Complete",
    title = "IGUI_SFQuest_Questyno_SamuelYoung9_Title",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_SamuelYoung10",

    awardsrep = "LaResistenza;50", -- REP REWARD
    awardsitem = "Money;30;Base.BeefJerky;3", -- ITEM REWARD
    awardstask = "Questyno_SamuelYoung11", -- TODO: REMOVE WHEN TESTING IS DONE
    needsitem = "DeadSquirrel;2", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_SamuelYoung",
    lore = { "IGUI_SFQuest_Questyno_SamuelYoung10_Lore" },
    text = "IGUI_SFQuest_Questyno_SamuelYoung10_Text",
    texture = "media/textures/Item_SamuelYoung.png",
    onobtained = "unlockworldevent;Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung10_Complete",
    title = "IGUI_SFQuest_Questyno_SamuelYoung10_Title",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_SamuelYoung11",

    awardsrep = "LaResistenza;50", -- REP REWARD
    awardsitem = "Money;30", -- ITEM REWARD
    awardstask = "Questyno_SamuelYoung12", -- TODO: REMOVE WHEN TESTING IS DONE
    needsitem = "TrapBox;6", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_SamuelYoung",
    lore = { "IGUI_SFQuest_Questyno_SamuelYoung11_Lore" },
    text = "IGUI_SFQuest_Questyno_SamuelYoung11_Text",
    texture = "media/textures/Item_SamuelYoung.png",
    onobtained = "unlockworldevent;Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung11_Complete",
    title = "IGUI_SFQuest_Questyno_SamuelYoung11_Title",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_SamuelYoung12",

    awardsrep = "LaResistenza;60", -- REP REWARD
    awardsitem = "Money;20", -- ITEM REWARD
    awardstask = "Questyno_SamuelYoung13", -- TODO: REMOVE WHEN TESTING IS DONE
    needsitem = "TrapCrate;8", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_SamuelYoung",
    lore = { "IGUI_SFQuest_Questyno_SamuelYoung12_Lore" },
    text = "IGUI_SFQuest_Questyno_SamuelYoung12_Text",
    texture = "media/textures/Item_SamuelYoung.png",
    onobtained = "unlockworldevent;Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung12_Complete",
    title = "IGUI_SFQuest_Questyno_SamuelYoung12_Title",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamuelYoung13",
    
    awardstask = "Questyno_SamuelYoung13_A",
    dailycode = "Questyno_SamuelYoung",
    lore = { "IGUI_SFQuest_Questyno_SamuelYoung13_Lore" },
    objectives = { {
        guid = "Questyno_SamuelYoung13_A",
        text = "IGUI_SFQuest_Questyno_SamuelYoung13_A",
        hidden = false,
        needsitem = "Cabbage;10",
        onobtained = "updateobjective;Questyno_SamuelYoung13;1;Completed;removeitem;Cabbage;10"
    }, {
        guid = "Questyno_SamuelYoung13_B",
        text = "IGUI_SFQuest_Questyno_SamuelYoung13_B",
        hidden = false,
        needsitem = "Carrots;2",
        onobtained = "updateobjective;Questyno_SamuelYoung13;2;Completed;removeitem;Carrots;2"
    }, {
        guid = "Questyno_SamuelYoung13_C",
        text = "IGUI_SFQuest_Questyno_SamuelYoung13_C",
        hidden = false,
        needsitem = "Potato;4",
        onobtained = "updateobjective;Questyno_SamuelYoung13;3;Completed;removeitem;Potato;4"
    } },
    text = "IGUI_SFQuest_Questyno_SamuelYoung13_Text",
    texture = "media/textures/Item_SamuelYoung.png",
    title = "IGUI_SFQuest_Questyno_SamuelYoung13_Title",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_SamuelYoung13_A",

    awardsrep = "LaResistenza;200",
    awardstask = "Questyno_SamuelYoung14", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",                                                                                          -- Suono completamento quest, sempre uguale
    dailycode = "Questyno_SamuelYoung",
    lore = { "IGUI_SFQuest_Questyno_SamuelYoung13_Lore" },
    unlocks = "unlockworldevent;Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung13_Complete",
    text = "IGUI_SFQuest_Questyno_SamuelYoung13_A_Text",
    texture = "media/textures/Item_SamuelYoung.png",
    title = "IGUI_SFQuest_Questyno_SamuelYoung13_Title",
})

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamuelYoung14",
    
    awardstask = "Questyno_SamuelYoung14_A",
    dailycode = "Questyno_SamuelYoung",
    lore = { "IGUI_SFQuest_Questyno_SamuelYoung14_Lore" },
    objectives = { {
        guid = "Questyno_SamuelYoung14_A",
        text = "IGUI_SFQuest_Questyno_SamuelYoung14_A",
        hidden = false,
        needsitem = "Grasshopper;10",
        onobtained = "updateobjective;Questyno_SamuelYoung14;1;Completed;removeitem;Grasshopper;10"
    }, {
        guid = "Questyno_SamuelYoung14_B",
        text = "IGUI_SFQuest_Questyno_SamuelYoung14_B",
        hidden = false,
        needsitem = "Worm;20",
        onobtained = "updateobjective;Questyno_SamuelYoung14;2;Completed;removeitem;Worm;20"
    } },
    text = "IGUI_SFQuest_Questyno_SamuelYoung14_Text",
    texture = "media/textures/Item_SamuelYoung.png",
    title = "IGUI_SFQuest_Questyno_SamuelYoung14_Title",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_SamuelYoung14_A",

    awardsrep = "LaResistenza;140",
    awardstask = "Questyno_SamuelYoung15", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",                                                                                          -- Suono completamento quest, sempre uguale
    dailycode = "Questyno_SamuelYoung",
    lore = { "IGUI_SFQuest_Questyno_SamuelYoung14_Lore" },
    unlocks = "unlockworldevent;Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung14_Complete",
    text = "IGUI_SFQuest_Questyno_SamuelYoung14_A_Text",
    texture = "media/textures/Item_SamuelYoung.png",
    title = "IGUI_SFQuest_Questyno_SamuelYoung14_Title",
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_SamuelYoung15",

    awardsrep = "LaResistenza;190", -- REP REWARD
    awardstask = "Questyno_SamuelYoung16", -- TODO: REMOVE WHEN TESTING IS DONE
    needsitem = "DeadRabbit;6", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_SamuelYoung",
    lore = { "IGUI_SFQuest_Questyno_SamuelYoung15_Lore" },
    text = "IGUI_SFQuest_Questyno_SamuelYoung15_Text",
    texture = "media/textures/Item_SamuelYoung.png",
    onobtained = "unlockworldevent;Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung15_Complete",
    title = "IGUI_SFQuest_Questyno_SamuelYoung15_Title",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_SamuelYoung16",

    awardstask = "Questyno_SamuelYoung16_A",
    dailycode = "Questyno_SamuelYoung",
    lore = { "IGUI_SFQuest_Questyno_SamuelYoung16_Lore" },
    objectives = { {
        guid = "Questyno_SamuelYoung16_A",
        text = "IGUI_SFQuest_Questyno_SamuelYoung16_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoSamuelYoung16;additem;DeadSquirrel;10",
    } },
    text = "IGUI_SFQuest_Questyno_SamuelYoung16_Text",
    texture = "media/textures/Item_SamuelYoung.png",
    title = "IGUI_SFQuest_Questyno_SamuelYoung16_Title",
    unlocks = "clickevent;11380x9501x0:EventoSamuelYoung16;time:50:anim:loot;updateobjective:Questyno_SamuelYoung16:1:Completed",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_SamuelYoung16_A",

    awardsrep = "LaResistenza;150",
    awardsitem = "DeadSquirrel;1",
    awardstask = "Questyno_SamuelYoung17", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_SamuelYoung",
    lore = { "IGUI_SFQuest_Questyno_SamuelYoung16_Lore" },
    needsitem = "DeadSquirrel;10",
    onobtained = "unlockworldevent;Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung16_Complete",
    text = "IGUI_SFQuest_Questyno_SamuelYoung16_A_Text",
    texture = "media/textures/Item_SamuelYoung.png",
    title = "IGUI_SFQuest_Questyno_SamuelYoung16_Title",
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_SamuelYoung17",

    awardstask = "Questyno_SamuelYoung17_A",
    dailycode = "Questyno_SamuelYoung",
    lore = { "IGUI_SFQuest_Questyno_SamuelYoung17_Lore" },
    objectives = { {
        guid = "Questyno_SamuelYoung17_A",
        text = "IGUI_SFQuest_Questyno_SamuelYoung17_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoSamuelYoung17;additem;DeadRabbit;10",
    } },
    text = "IGUI_SFQuest_Questyno_SamuelYoung17_Text",
    texture = "media/textures/Item_SamuelYoung.png",
    title = "IGUI_SFQuest_Questyno_SamuelYoung17_Title",
    unlocks = "clickevent;11329x9482x0:EventoSamuelYoung17;time:50:anim:loot;updateobjective:Questyno_SamuelYoung17:1:Completed",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_SamuelYoung17_A",

    awardsrep = "LaResistenza;150",
    awardsitem = "DeadRabbit;1",
    awardstask = "Questyno_SamuelYoung18", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_SamuelYoung",
    lore = { "IGUI_SFQuest_Questyno_SamuelYoung17_Lore" },
    needsitem = "DeadRabbit;10",
    onobtained = "unlockworldevent;Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung17_Complete",
    text = "IGUI_SFQuest_Questyno_SamuelYoung17_A_Text",
    texture = "media/textures/Item_SamuelYoung.png",
    title = "IGUI_SFQuest_Questyno_SamuelYoung17_Title",
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_SamuelYoung18",

    awardsrep = "LaResistenza;60", -- REP REWARD
    awardstask = "Questyno_SamuelYoung19", -- TODO: REMOVE WHEN TESTING IS DONE
    needsitem = "DeadRabbit;2", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_SamuelYoung",
    lore = { "IGUI_SFQuest_Questyno_SamuelYoung18_Lore" },
    text = "IGUI_SFQuest_Questyno_SamuelYoung18_Text",
    texture = "media/textures/Item_SamuelYoung.png",
    onobtained = "unlockworldevent;Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung18_Complete",
    title = "IGUI_SFQuest_Questyno_SamuelYoung18_Title",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_SamuelYoung19",

    awardsrep = "LaResistenza;60", -- REP REWARD
    awardsitem = "ScrapClub;1", -- ITEM REWARD
    awardstask = "Questyno_SamuelYoung20", -- TODO: REMOVE WHEN TESTING IS DONE
    needsitem = "LeatherStrips;20", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_SamuelYoung",
    lore = { "IGUI_SFQuest_Questyno_SamuelYoung19_Lore" },
    text = "IGUI_SFQuest_Questyno_SamuelYoung19_Text",
    texture = "media/textures/Item_SamuelYoung.png",
    onobtained = "unlockworldevent;Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung19_Complete",
    title = "IGUI_SFQuest_Questyno_SamuelYoung19_Title",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_SamuelYoung20",

    awardsrep = "LaResistenza;40", -- REP REWARD
    awardstask = "Questyno_SamuelYoung21", -- TODO: REMOVE WHEN TESTING IS DONE
    needsitem = "LeatherStrips;10", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_SamuelYoung",
    lore = { "IGUI_SFQuest_Questyno_SamuelYoung20_Lore" },
    text = "IGUI_SFQuest_Questyno_SamuelYoung20_Text",
    texture = "media/textures/Item_SamuelYoung.png",
    onobtained = "unlockworldevent;Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung20_Complete",
    title = "IGUI_SFQuest_Questyno_SamuelYoung20_Title",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_SamuelYoung21",

    awardsrep = "LaResistenza;50", -- REP REWARD
    awardstask = "Questyno_SamuelYoung22", -- TODO: REMOVE WHEN TESTING IS DONE
    needsitem = "TrapMouse;1", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_SamuelYoung",
    lore = { "IGUI_SFQuest_Questyno_SamuelYoung21_Lore" },
    text = "IGUI_SFQuest_Questyno_SamuelYoung21_Text",
    texture = "media/textures/Item_SamuelYoung.png",
    onobtained = "unlockworldevent;Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung21_Complete",
    title = "IGUI_SFQuest_Questyno_SamuelYoung21_Title",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_SamuelYoung22",

    awardsrep = "LaResistenza;250", -- REP REWARD
    awardsitem = "Money;50", -- ITEM REWARD
    awardstask = "Questyno_SamuelYoung23", -- TODO: REMOVE WHEN TESTING IS DONE
    needsitem = "DeadRabbit;6", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_SamuelYoung",
    lore = { "IGUI_SFQuest_Questyno_SamuelYoung22_Lore" },
    text = "IGUI_SFQuest_Questyno_SamuelYoung22_Text",
    texture = "media/textures/Item_SamuelYoung.png",
    onobtained = "unlockworldevent;Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung22_Complete",
    title = "IGUI_SFQuest_Questyno_SamuelYoung22_Title",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_SamuelYoung23",

    awardsrep = "LaResistenza;35", -- REP REWARD
    awardstask = "Questyno_SamuelYoung1", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_SamuelYoung",
    lore = { "IGUI_SFQuest_Questyno_SamuelYoung23_Lore" },
    objectives = { {
        guid = "Questyno_SamuelYoung23_A",
        text = "IGUI_SFQuest_Questyno_SamuelYoung23_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoSamuelYoung23;additem;Salt;1",
    } },
    text = "IGUI_SFQuest_Questyno_SamuelYoung23_Text",
    texture = "media/textures/Item_SamuelYoung.png",
    title = "IGUI_SFQuest_Questyno_SamuelYoung23_Title",
    unlocks = "clickevent;8008x11896x0:EventoSamuelYoung23;time:50:anim:loot;updateobjective:Questyno_SamuelYoung23:1:Completed",
    unlockedsound = "QuestUnlocked"
})

--[[
            *** Xu Mishura ***
            Elenco:
                intro. Parla con Tony per sbloccare le daily.
				1. Recuperare Base.Dress_Long (100rep)
				2. Recuperare Base.Shoes_ArmyBootsDesert (80rep)
				3. Recuperare Base.Briefs_SmallTrunks_Red (50rep)
				4. Recuperare Base.Briefs_AnimalPrints (60rep)
				5. Recuperare Base.Shoes_RedTrainers (100rep)
				6. Recuperare Base.Trousers_Scrubs (150rep)
				7. Recuperare Base.Skirt_Mini (50rep)
				8. Recuperare Base.Jumper_DiamondPatternTINT (40rep)
				9. Recuperare Base.Shirt_Lumberjack (40rep)
				10. Recuperare Base.Apron_Spiffos (200rep)
				11. Recuperare Base.Vest_Hunting_Camo (180rep)
				12. Recuperare Base.Jacket_Black (100rep)
				13. Recuperare Base.Jacket_Shellsuit_Teal (100rep)
				14. Recuperare Base.Shellsuit_Black (120rep)
				15. Recuperare Base.Jacket_Varsity (100rep)
				16. Recuperare Base.Jacket_WhiteTINT (50rep)
				17. Recuperare Base.HoodieDown_ThiteTINT (60rep)
				18. Recuperare Base.Jumper_PoloNeck (50rep)
				19. Recuperare Spongie.Jumper_military (70rep)
				20. Recuperare Base.Vest_DefaultTEXTURE (80rep)
				21. Recuperare Base.Shirt_HawaiianRed (200rep)
				22. Recuperare Base.Shirt_Denim (50rep)
				23. Recuperare Base.Shirt_PrisonGuard (80rep)
				24. Recuperare Base.Shirt_PoliceBlue (100rep)
				25. Recuperare Base.LongCoat_Bathrobe (100rep)
]]

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_XuMishura_Intro",

    awardsrep = "LaResistenza;1", -- REP REWARD
    awardstask = "Questyno_XuMishura1", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_XuMishura_Intro_Lore" },
    ondone = "randomcodedworldfrompool;Questyno_XuMishura;Questyno;XuMishura",
    text = "IGUI_SFQuest_Questyno_XuMishura_Intro_Text",
    texture = "media/textures/Item_XuMishura.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_XuMishura;SFQuest_Questyno_XuMishura_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_XuMishura_Intro_Title",
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_XuMishura1",

    awardsrep = "LaResistenza;100", -- REP REWARD
    awardstask = "Questyno_XuMishura2", -- TODO: REMOVE WHEN TESTING IS DONE
    needsitem = "Tag#LongDress;1", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_XuMishura",
    lore = { "IGUI_SFQuest_Questyno_XuMishura1_Lore" },
    text = "IGUI_SFQuest_Questyno_XuMishura1_Text",
    texture = "media/textures/Item_XuMishura.png",
    onobtained = "unlockworldevent;Questyno_XuMishura;SFQuest_Questyno_XuMishura1_Complete",
    title = "IGUI_SFQuest_Questyno_XuMishura1_Title",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_XuMishura2",

    awardsrep = "LaResistenza;80", -- REP REWARD
    awardstask = "Questyno_XuMishura3", -- TODO: REMOVE WHEN TESTING IS DONE
    needsitem = "Shoes_ArmyBootsDesert;1", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_XuMishura",
    lore = { "IGUI_SFQuest_Questyno_XuMishura2_Lore" },
    text = "IGUI_SFQuest_Questyno_XuMishura2_Text",
    texture = "media/textures/Item_XuMishura.png",
    onobtained = "unlockworldevent;Questyno_XuMishura;SFQuest_Questyno_XuMishura2_Complete",
    title = "IGUI_SFQuest_Questyno_XuMishura2_Title",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_XuMishura3",

    awardsrep = "LaResistenza;50", -- REP REWARD
    awardstask = "Questyno_XuMishura4", -- TODO: REMOVE WHEN TESTING IS DONE
    needsitem = "Briefs_SmallTrunks_Red;1", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_XuMishura",
    lore = { "IGUI_SFQuest_Questyno_XuMishura3_Lore" },
    text = "IGUI_SFQuest_Questyno_XuMishura3_Text",
    texture = "media/textures/Item_XuMishura.png",
    onobtained = "unlockworldevent;Questyno_XuMishura;SFQuest_Questyno_XuMishura3_Complete",
    title = "IGUI_SFQuest_Questyno_XuMishura3_Title",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_XuMishura4",

    awardsrep = "LaResistenza;60", -- REP REWARD
    awardstask = "Questyno_XuMishura5", -- TODO: REMOVE WHEN TESTING IS DONE
    needsitem = "Briefs_AnimalPrints;1", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_XuMishura",
    lore = { "IGUI_SFQuest_Questyno_XuMishura4_Lore" },
    text = "IGUI_SFQuest_Questyno_XuMishura4_Text",
    texture = "media/textures/Item_XuMishura.png",
    onobtained = "unlockworldevent;Questyno_XuMishura;SFQuest_Questyno_XuMishura4_Complete",
    title = "IGUI_SFQuest_Questyno_XuMishura4_Title",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_XuMishura5",

    awardsrep = "LaResistenza;100", -- REP REWARD
    awardstask = "Questyno_XuMishura6", -- TODO: REMOVE WHEN TESTING IS DONE
    needsitem = "Shoes_RedTrainers;1", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_XuMishura",
    lore = { "IGUI_SFQuest_Questyno_XuMishura5_Lore" },
    text = "IGUI_SFQuest_Questyno_XuMishura5_Text",
    texture = "media/textures/Item_XuMishura.png",
    onobtained = "unlockworldevent;Questyno_XuMishura;SFQuest_Questyno_XuMishura5_Complete",
    title = "IGUI_SFQuest_Questyno_XuMishura5_Title",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_XuMishura6",

    awardsrep = "LaResistenza;150", -- REP REWARD
    awardstask = "Questyno_XuMishura7", -- TODO: REMOVE WHEN TESTING IS DONE
    needsitem = "Trousers_Scrubs;1", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_XuMishura",
    lore = { "IGUI_SFQuest_Questyno_XuMishura6_Lore" },
    text = "IGUI_SFQuest_Questyno_XuMishura6_Text",
    texture = "media/textures/Item_XuMishura.png",
    onobtained = "unlockworldevent;Questyno_XuMishura;SFQuest_Questyno_XuMishura6_Complete",
    title = "IGUI_SFQuest_Questyno_XuMishura6_Title",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_XuMishura7",

    awardsrep = "LaResistenza;50", -- REP REWARD
    awardstask = "Questyno_XuMishura8", -- TODO: REMOVE WHEN TESTING IS DONE
    needsitem = "Skirt_Mini;1", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_XuMishura",
    lore = { "IGUI_SFQuest_Questyno_XuMishura7_Lore" },
    text = "IGUI_SFQuest_Questyno_XuMishura7_Text",
    texture = "media/textures/Item_XuMishura.png",
    onobtained = "unlockworldevent;Questyno_XuMishura;SFQuest_Questyno_XuMishura7_Complete",
    title = "IGUI_SFQuest_Questyno_XuMishura7_Title",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_XuMishura8",

    awardsrep = "LaResistenza;40", -- REP REWARD
    awardstask = "Questyno_XuMishura9", -- TODO: REMOVE WHEN TESTING IS DONE
    needsitem = "Jumper_DiamondPatternTINT;1", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_XuMishura",
    lore = { "IGUI_SFQuest_Questyno_XuMishura8_Lore" },
    text = "IGUI_SFQuest_Questyno_XuMishura8_Text",
    texture = "media/textures/Item_XuMishura.png",
    onobtained = "unlockworldevent;Questyno_XuMishura;SFQuest_Questyno_XuMishura8_Complete",
    title = "IGUI_SFQuest_Questyno_XuMishura8_Title",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_XuMishura9",

    awardsrep = "LaResistenza;40", -- REP REWARD
    awardstask = "Questyno_XuMishura10", -- TODO: REMOVE WHEN TESTING IS DONE
    needsitem = "Shirt_Lumberjack;1", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_XuMishura",
    lore = { "IGUI_SFQuest_Questyno_XuMishura9_Lore" },
    text = "IGUI_SFQuest_Questyno_XuMishura9_Text",
    texture = "media/textures/Item_XuMishura.png",
    onobtained = "unlockworldevent;Questyno_XuMishura;SFQuest_Questyno_XuMishura9_Complete",
    title = "IGUI_SFQuest_Questyno_XuMishura9_Title",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_XuMishura10",

    awardsrep = "LaResistenza;200", -- REP REWARD
    awardstask = "Questyno_XuMishura11", -- TODO: REMOVE WHEN TESTING IS DONE
    needsitem = "Apron_Spiffos;1", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_XuMishura",
    lore = { "IGUI_SFQuest_Questyno_XuMishura10_Lore" },
    text = "IGUI_SFQuest_Questyno_XuMishura10_Text",
    texture = "media/textures/Item_XuMishura.png",
    onobtained = "unlockworldevent;Questyno_XuMishura;SFQuest_Questyno_XuMishura10_Complete",
    title = "IGUI_SFQuest_Questyno_XuMishura10_Title",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_XuMishura11",

    awardsrep = "LaResistenza;180", -- REP REWARD
    awardstask = "Questyno_XuMishura12", -- TODO: REMOVE WHEN TESTING IS DONE
    needsitem = "Vest_Hunting_Camo;1", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_XuMishura",
    lore = { "IGUI_SFQuest_Questyno_XuMishura11_Lore" },
    text = "IGUI_SFQuest_Questyno_XuMishura11_Text",
    texture = "media/textures/Item_XuMishura.png",
    onobtained = "unlockworldevent;Questyno_XuMishura;SFQuest_Questyno_XuMishura11_Complete",
    title = "IGUI_SFQuest_Questyno_XuMishura11_Title",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_XuMishura12",

    awardsrep = "LaResistenza;100", -- REP REWARD
    awardstask = "Questyno_XuMishura13", -- TODO: REMOVE WHEN TESTING IS DONE
    needsitem = "Jacket_Black;1", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_XuMishura",
    lore = { "IGUI_SFQuest_Questyno_XuMishura12_Lore" },
    text = "IGUI_SFQuest_Questyno_XuMishura12_Text",
    texture = "media/textures/Item_XuMishura.png",
    onobtained = "unlockworldevent;Questyno_XuMishura;SFQuest_Questyno_XuMishura12_Complete",
    title = "IGUI_SFQuest_Questyno_XuMishura12_Title",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_XuMishura13",

    awardsrep = "LaResistenza;100", -- REP REWARD
    awardstask = "Questyno_XuMishura14", -- TODO: REMOVE WHEN TESTING IS DONE
    needsitem = "Jacket_Shellsuit_Teal;1", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_XuMishura",
    lore = { "IGUI_SFQuest_Questyno_XuMishura13_Lore" },
    text = "IGUI_SFQuest_Questyno_XuMishura13_Text",
    texture = "media/textures/Item_XuMishura.png",
    onobtained = "unlockworldevent;Questyno_XuMishura;SFQuest_Questyno_XuMishura13_Complete",
    title = "IGUI_SFQuest_Questyno_XuMishura13_Title",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_XuMishura14",

    awardsrep = "LaResistenza;120", -- REP REWARD
    awardstask = "Questyno_XuMishura15", -- TODO: REMOVE WHEN TESTING IS DONE
    needsitem = "Jacket_Shellsuit_Black;1", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_XuMishura",
    lore = { "IGUI_SFQuest_Questyno_XuMishura14_Lore" },
    text = "IGUI_SFQuest_Questyno_XuMishura14_Text",
    texture = "media/textures/Item_XuMishura.png",
    onobtained = "unlockworldevent;Questyno_XuMishura;SFQuest_Questyno_XuMishura14_Complete",
    title = "IGUI_SFQuest_Questyno_XuMishura14_Title",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_XuMishura15",

    awardsrep = "LaResistenza;100", -- REP REWARD
    awardstask = "Questyno_XuMishura16", -- TODO: REMOVE WHEN TESTING IS DONE
    needsitem = "Jacket_Varsity;1", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_XuMishura",
    lore = { "IGUI_SFQuest_Questyno_XuMishura15_Lore" },
    text = "IGUI_SFQuest_Questyno_XuMishura15_Text",
    texture = "media/textures/Item_XuMishura.png",
    onobtained = "unlockworldevent;Questyno_XuMishura;SFQuest_Questyno_XuMishura15_Complete",
    title = "IGUI_SFQuest_Questyno_XuMishura15_Title",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_XuMishura16",

    awardsrep = "LaResistenza;50", -- REP REWARD
    awardstask = "Questyno_XuMishura17", -- TODO: REMOVE WHEN TESTING IS DONE
    needsitem = "Jacket_WhiteTINT;1", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_XuMishura",
    lore = { "IGUI_SFQuest_Questyno_XuMishura16_Lore" },
    text = "IGUI_SFQuest_Questyno_XuMishura16_Text",
    texture = "media/textures/Item_XuMishura.png",
    onobtained = "unlockworldevent;Questyno_XuMishura;SFQuest_Questyno_XuMishura16_Complete",
    title = "IGUI_SFQuest_Questyno_XuMishura16_Title",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_XuMishura17",

    awardsrep = "LaResistenza;60", -- REP REWARD
    awardstask = "Questyno_XuMishura18", -- TODO: REMOVE WHEN TESTING IS DONE
    needsitem = "Tag#HoodieWhite;1", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_XuMishura",
    lore = { "IGUI_SFQuest_Questyno_XuMishura17_Lore" },
    text = "IGUI_SFQuest_Questyno_XuMishura17_Text",
    texture = "media/textures/Item_XuMishura.png",
    onobtained = "unlockworldevent;Questyno_XuMishura;SFQuest_Questyno_XuMishura17_Complete",
    title = "IGUI_SFQuest_Questyno_XuMishura17_Title",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_XuMishura18",

    awardsrep = "LaResistenza;50", -- REP REWARD
    awardstask = "Questyno_XuMishura19", -- TODO: REMOVE WHEN TESTING IS DONE
    needsitem = "Jumper_PoloNeck;1", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_XuMishura",
    lore = { "IGUI_SFQuest_Questyno_XuMishura18_Lore" },
    text = "IGUI_SFQuest_Questyno_XuMishura18_Text",
    texture = "media/textures/Item_XuMishura.png",
    onobtained = "unlockworldevent;Questyno_XuMishura;SFQuest_Questyno_XuMishura18_Complete",
    title = "IGUI_SFQuest_Questyno_XuMishura18_Title",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_XuMishura19",

    awardsrep = "LaResistenza;70", -- REP REWARD
    awardstask = "Questyno_XuMishura20", -- TODO: REMOVE WHEN TESTING IS DONE
    needsitem = "Jumper_Military;1", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_XuMishura",
    lore = { "IGUI_SFQuest_Questyno_XuMishura19_Lore" },
    text = "IGUI_SFQuest_Questyno_XuMishura19_Text",
    texture = "media/textures/Item_XuMishura.png",
    onobtained = "unlockworldevent;Questyno_XuMishura;SFQuest_Questyno_XuMishura19_Complete",
    title = "IGUI_SFQuest_Questyno_XuMishura19_Title",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_XuMishura20",

    awardsrep = "LaResistenza;80", -- REP REWARD
    awardstask = "Questyno_XuMishura21", -- TODO: REMOVE WHEN TESTING IS DONE
    needsitem = "Vest_DefaultTEXTURE;1", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_XuMishura",
    lore = { "IGUI_SFQuest_Questyno_XuMishura20_Lore" },
    text = "IGUI_SFQuest_Questyno_XuMishura20_Text",
    texture = "media/textures/Item_XuMishura.png",
    onobtained = "unlockworldevent;Questyno_XuMishura;SFQuest_Questyno_XuMishura20_Complete",
    title = "IGUI_SFQuest_Questyno_XuMishura20_Title",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_XuMishura21",

    awardsrep = "LaResistenza;200", -- REP REWARD
    awardstask = "Questyno_XuMishura22", -- TODO: REMOVE WHEN TESTING IS DONE
    needsitem = "Tag#HawaiianShirt;1", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_XuMishura",
    lore = { "IGUI_SFQuest_Questyno_XuMishura21_Lore" },
    text = "IGUI_SFQuest_Questyno_XuMishura21_Text",
    texture = "media/textures/Item_XuMishura.png",
    onobtained = "unlockworldevent;Questyno_XuMishura;SFQuest_Questyno_XuMishura21_Complete",
    title = "IGUI_SFQuest_Questyno_XuMishura21_Title",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_XuMishura22",

    awardsrep = "LaResistenza;50", -- REP REWARD
    awardstask = "Questyno_XuMishura23", -- TODO: REMOVE WHEN TESTING IS DONE
    needsitem = "Shirt_Denim;1", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_XuMishura",
    lore = { "IGUI_SFQuest_Questyno_XuMishura22_Lore" },
    text = "IGUI_SFQuest_Questyno_XuMishura22_Text",
    texture = "media/textures/Item_XuMishura.png",
    onobtained = "unlockworldevent;Questyno_XuMishura;SFQuest_Questyno_XuMishura22_Complete",
    title = "IGUI_SFQuest_Questyno_XuMishura22_Title",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_XuMishura23",

    awardsrep = "LaResistenza;80", -- REP REWARD
    awardstask = "Questyno_XuMishura24", -- TODO: REMOVE WHEN TESTING IS DONE
    needsitem = "Shirt_PrisonGuard;1", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_XuMishura",
    lore = { "IGUI_SFQuest_Questyno_XuMishura23_Lore" },
    text = "IGUI_SFQuest_Questyno_XuMishura23_Text",
    texture = "media/textures/Item_XuMishura.png",
    onobtained = "unlockworldevent;Questyno_XuMishura;SFQuest_Questyno_XuMishura23_Complete",
    title = "IGUI_SFQuest_Questyno_XuMishura23_Title",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_XuMishura24",

    awardsrep = "LaResistenza;100", -- REP REWARD
    awardstask = "Questyno_XuMishura25", -- TODO: REMOVE WHEN TESTING IS DONE
    needsitem = "Shirt_PoliceBlue;1", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_XuMishura",
    lore = { "IGUI_SFQuest_Questyno_XuMishura24_Lore" },
    text = "IGUI_SFQuest_Questyno_XuMishura24_Text",
    texture = "media/textures/Item_XuMishura.png",
    onobtained = "unlockworldevent;Questyno_XuMishura;SFQuest_Questyno_XuMishura24_Complete",
    title = "IGUI_SFQuest_Questyno_XuMishura24_Title",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_XuMishura25",

    awardsrep = "LaResistenza;100", -- REP REWARD
    awardstask = "Questyno_XuMishura1", -- TODO: REMOVE WHEN TESTING IS DONE
    needsitem = "LongCoat_Bathrobe;1", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_XuMishura",
    lore = { "IGUI_SFQuest_Questyno_XuMishura25_Lore" },
    text = "IGUI_SFQuest_Questyno_XuMishura25_Text",
    texture = "media/textures/Item_XuMishura.png",
    onobtained = "unlockworldevent;Questyno_XuMishura;SFQuest_Questyno_XuMishura25_Complete",
    title = "IGUI_SFQuest_Questyno_XuMishura25_Title",
    unlockedsound = "QuestUnlocked"
})

--[[
            *** David Turner ***
            Elenco:
                intro. Parla con David Turner per sbloccare le daily.
				1. Recuperare Base.SmallSheetMetal;4 (70rep)
				2. Recuperare Base.SheetMetal;4 (200rep + Base.ScrapVestStudded)
				3. Recuperare Sweapons.ScrapSpear parlando con (4750,10181,0) (100rep + 20$ + Base.PropaneTank)
				4. Recuperare Base.ElectronicsScrap;30,Base.ElectricWire;4,Base.SheetMetal;2 (250rep)
				5. Recuperare Base.ElectronicsScrap;40 (200rep)
				6. Recuperare Base.ElectronicsScrap;20,Base.Battery;4,Radio.RadioTransmitter;4 (250rep + SWeapons.HugeScrapPickaxe)
				7. Recuperare Base.Generator parlando con (9503,6174,0) (80rep + 50$)
				8. Recuperare Base.ElectricWire;10 (70rep + Base.Steak)
				9. Recuperare Base.ScrapMetal;8;Base.ElectronicsScrap;32 (100rep)
				10. Recuperare Base.EngineParts;4 (225rep)
				11. Recuperare Base.MetalPipe;4 (180rep)
				12. Recuperare Base.UnusableMetal;8 (50rep + Base.ScrapKiltStudded)
				13. Recuperare Base.ElectronicsMag1 parlando con (7289,8262,0) (130rep)
				14. Recuperare WaterBottleFull (35rep)
				15. Recuperare Base.SheetMetal;20,Base.EngineParts;20,Base.ElectronicsScrap;20,Base.UnusableMetal;2 parlando con (8224,7501,0) (80rep + Base.SheetMetal;2,Base.EngineParts;6)
				16. Recuperare Base.ElectronicsScrap;40 (100rep)
				17. Recuperare Base.Wrench parlando con (10452,8267,0) (60rep)
				18. Recuperare Base.SheetPaper2 parlando con (16514,6503,0) (65rep + 25$) - password?: swR48x3j
				19. Recuperare Base.MetalPipe;2 (65rep)
				20. Recuperare Base.ScrapMetal;15 (120rep)
				21. Recuperare Base.ScrapMetal;40 (200rep)
				22. Recuperare Base.PipeWrench parlando con (8235,10993,0) (50rep + Base.PipeWrench)
				23. Recuperare Base.ScrapMetal;12 (130rep)
]]

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner_Intro",

    awardsrep = "LaResistenza;1", -- REP REWARD
    awardstask = "Questyno_DavidTurner1", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner_Intro_Lore" },
    ondone = "randomcodedworldfrompool;Questyno_DavidTurner;Questyno;DavidTurner",
    text = "IGUI_SFQuest_Questyno_DavidTurner_Intro_Text",
    texture = "media/textures/Item_DavidTurner.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_DavidTurner;SFQuest_Questyno_DavidTurner_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_DavidTurner_Intro_Title",
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner1",

    awardsrep = "LaResistenza;70", -- REP REWARD
    awardstask = "Questyno_DavidTurner2", -- TODO: REMOVE WHEN TESTING IS DONE
    needsitem = "SmallSheetMetal;4", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner1_Lore" },
    text = "IGUI_SFQuest_Questyno_DavidTurner1_Text",
    texture = "media/textures/Item_DavidTurner.png",
    onobtained = "unlockworldevent;Questyno_DavidTurner;SFQuest_Questyno_DavidTurner1_Complete",
    title = "IGUI_SFQuest_Questyno_DavidTurner1_Title",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner2",

    awardsrep = "LaResistenza;200", -- REP REWARD
    awardsitem = "ScrapVestStudded;1", -- ITEM REWARD
    awardstask = "Questyno_DavidTurner3", -- TODO: REMOVE WHEN TESTING IS DONE
    needsitem = "SheetMetal;4", -- REQUIRE
    completesound = "levelup",
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner2_Lore" },
    text = "IGUI_SFQuest_Questyno_DavidTurner2_Text",
    texture = "media/textures/Item_DavidTurner.png",
    onobtained = "unlockworldevent;Questyno_DavidTurner;SFQuest_Questyno_DavidTurner2_Complete",
    title = "IGUI_SFQuest_Questyno_DavidTurner2_Title",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner3",

    awardstask = "Questyno_DavidTurner3_A",
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner3_Lore" },
    objectives = { {
        guid = "Questyno_DavidTurner3_A",
        text = "IGUI_SFQuest_Questyno_DavidTurner3_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoDavidTurner3;additem;SWeapons.ScrapSpear;1",
    } },
    text = "IGUI_SFQuest_Questyno_DavidTurner3_Text",
    texture = "media/textures/Item_DavidTurner.png",
    title = "IGUI_SFQuest_Questyno_DavidTurner3_Title",
    unlocks = "clickevent;4750x10181x0:EventoDavidTurner3;time:50:anim:loot;updateobjective:Questyno_DavidTurner3:1:Completed",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner3_A",

    awardsrep = "LaResistenza;100",
    awardsitem = "Money;20;PropaneTank;1",
    awardstask = "Questyno_DavidTurner4", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner3_Lore" },
    needsitem = "SWeapons.ScrapSpear;1",
    onobtained = "unlockworldevent;Questyno_DavidTurner;SFQuest_Questyno_DavidTurner3_Complete",
    text = "IGUI_SFQuest_Questyno_DavidTurner3_A_Text",
    texture = "media/textures/Item_DavidTurner.png",
    title = "IGUI_SFQuest_Questyno_DavidTurner3_Title",
})

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_DavidTurner4",

    awardstask = "Questyno_DavidTurner4_A",
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner4_Lore" },
    objectives = { {
        guid = "Questyno_DavidTurner4_A",
        text = "IGUI_SFQuest_Questyno_DavidTurner4_A",
        hidden = false,
        needsitem = "ElectronicsScrap;30",
        onobtained = "updateobjective;Questyno_DavidTurner4;1;Completed;removeitem;ElectronicsScrap;30"
    }, {
        guid = "Questyno_DavidTurner4_B",
        text = "IGUI_SFQuest_Questyno_DavidTurner4_B",
        hidden = false,
        needsitem = "ElectricWire;4",
        onobtained = "updateobjective;Questyno_DavidTurner4;2;Completed;removeitem;ElectricWire;4"
    }, {
        guid = "Questyno_DavidTurner4_C",
        text = "IGUI_SFQuest_Questyno_DavidTurner4_C",
        hidden = false,
        needsitem = "SheetMetal;2",
        onobtained = "updateobjective;Questyno_DavidTurner4;3;Completed;removeitem;SheetMetal;2"
    } },
    text = "IGUI_SFQuest_Questyno_DavidTurner4_Text",
    texture = "media/textures/Item_DavidTurner.png",
    title = "IGUI_SFQuest_Questyno_DavidTurner4_Title",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner4_A",

    awardsrep = "LaResistenza;250",
    awardstask = "Questyno_DavidTurner5", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",                                                                                          -- Suono completamento quest, sempre uguale
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner4_Lore" },
    unlocks = "unlockworldevent;Questyno_DavidTurner;SFQuest_Questyno_DavidTurner4_Complete",
    text = "IGUI_SFQuest_Questyno_DavidTurner4_A_Text",
    texture = "media/textures/Item_DavidTurner.png",
    title = "IGUI_SFQuest_Questyno_DavidTurner4_Title",
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner5",

    awardsrep = "LaResistenza;200",
    awardstask = "Questyno_DavidTurner6", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner5_Lore" },
    needsitem = "ElectronicsScrap;40",
    onobtained = "unlockworldevent;Questyno_DavidTurner;SFQuest_Questyno_DavidTurner5_Complete",
    text = "IGUI_SFQuest_Questyno_DavidTurner5_Text",
    texture = "media/textures/Item_DavidTurner.png",
    title = "IGUI_SFQuest_Questyno_DavidTurner5_Title",
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner6",

    awardstask = "Questyno_DavidTurner6_A",
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner6_Lore" },
    objectives = { {
        guid = "Questyno_DavidTurner6_A",
        text = "IGUI_SFQuest_Questyno_DavidTurner6_A",
        hidden = false,
        needsitem = "ElectronicsScrap;20",
        onobtained = "updateobjective;Questyno_DavidTurner6;1;Completed;removeitem;ElectronicsScrap;20"
    }, {
        guid = "Questyno_DavidTurner6_B",
        text = "IGUI_SFQuest_Questyno_DavidTurner6_B",
        hidden = false,
        needsitem = "Battery;4",
        onobtained = "updateobjective;Questyno_DavidTurner6;2;Completed;removeitem;Battery;4"
    }, {
        guid = "Questyno_DavidTurner6_C",
        text = "IGUI_SFQuest_Questyno_DavidTurner6_C",
        hidden = false,
        needsitem = "Radio.RadioTransmitter;4",
        onobtained = "updateobjective;Questyno_DavidTurner6;3;Completed;removeitem;Radio.RadioTransmitter;4"
    } },
    text = "IGUI_SFQuest_Questyno_DavidTurner6_Text",
    texture = "media/textures/Item_DavidTurner.png",
    title = "IGUI_SFQuest_Questyno_DavidTurner6_Title",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner6_A",

    awardsrep = "LaResistenza;250",
    awardsitem = "SWeapons.HugeScrapPickaxe;1",
    awardstask = "Questyno_DavidTurner7", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner6_Lore" },
    unlocks = "unlockworldevent;Questyno_DavidTurner;SFQuest_Questyno_DavidTurner6_Complete",
    text = "IGUI_SFQuest_Questyno_DavidTurner6_A_Text",
    texture = "media/textures/Item_DavidTurner.png",
    title = "IGUI_SFQuest_Questyno_DavidTurner6_Title",
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner7",

    awardstask = "Questyno_DavidTurner7_A",
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner7_Lore" },
    objectives = { {
        guid = "Questyno_DavidTurner7_A",
        text = "IGUI_SFQuest_Questyno_DavidTurner7_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoDavidTurner7;additem;Generator;1",
    } },
    text = "IGUI_SFQuest_Questyno_DavidTurner7_Text",
    texture = "media/textures/Item_DavidTurner.png",
    title = "IGUI_SFQuest_Questyno_DavidTurner7_Title",
    unlocks = "clickevent;9503x6174x0:EventoDavidTurner7;time:50:anim:loot;updateobjective:Questyno_DavidTurner7:1:Completed",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner7_A",

    awardsrep = "LaResistenza;80",
    awardsitem = "Money;50",
    awardstask = "Questyno_DavidTurner8", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner7_Lore" },
    needsitem = "Generator;1",
    onobtained = "unlockworldevent;Questyno_DavidTurner;SFQuest_Questyno_DavidTurner7_Complete",
    text = "IGUI_SFQuest_Questyno_DavidTurner7_A_Text",
    texture = "media/textures/Item_DavidTurner.png",
    title = "IGUI_SFQuest_Questyno_DavidTurner7_Title",
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner8",

    awardsrep = "LaResistenza;70",
    awardsitem = "Steak;1",
    awardstask = "Questyno_DavidTurner9", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner8_Lore" },
    needsitem = "ElectricWire;10",
    onobtained = "unlockworldevent;Questyno_DavidTurner;SFQuest_Questyno_DavidTurner8_Complete",
    text = "IGUI_SFQuest_Questyno_DavidTurner8_Text",
    texture = "media/textures/Item_DavidTurner.png",
    title = "IGUI_SFQuest_Questyno_DavidTurner8_Title",
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner9",

    awardstask = "Questyno_DavidTurner9_A",
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner9_Lore" },
    objectives = { {
        guid = "Questyno_DavidTurner9_A",
        text = "IGUI_SFQuest_Questyno_DavidTurner9_A",
        hidden = false,
        needsitem = "ScrapMetal;8",
        onobtained = "updateobjective;Questyno_DavidTurner9;1;Completed;removeitem;ScrapMetal;8"
    }, {
        guid = "Questyno_DavidTurner9_B",
        text = "IGUI_SFQuest_Questyno_DavidTurner9_B",
        hidden = false,
        needsitem = "ElectronicsScrap;32",
        onobtained = "updateobjective;Questyno_DavidTurner9;2;Completed;removeitem;ElectronicsScrap;32"
    } },
    text = "IGUI_SFQuest_Questyno_DavidTurner9_Text",
    texture = "media/textures/Item_DavidTurner.png",
    title = "IGUI_SFQuest_Questyno_DavidTurner9_Title",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner9_A",

    awardsrep = "LaResistenza;100",
    awardstask = "Questyno_DavidTurner10", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner9_Lore" },
    unlocks = "unlockworldevent;Questyno_DavidTurner;SFQuest_Questyno_DavidTurner9_Complete",
    text = "IGUI_SFQuest_Questyno_DavidTurner9_A_Text",
    texture = "media/textures/Item_DavidTurner.png",
    title = "IGUI_SFQuest_Questyno_DavidTurner9_Title",
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner10",

    awardsrep = "LaResistenza;225",
    awardstask = "Questyno_DavidTurner11", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner10_Lore" },
    needsitem = "EngineParts;4",
    onobtained = "unlockworldevent;Questyno_DavidTurner;SFQuest_Questyno_DavidTurner10_Complete",
    text = "IGUI_SFQuest_Questyno_DavidTurner10_Text",
    texture = "media/textures/Item_DavidTurner.png",
    title = "IGUI_SFQuest_Questyno_DavidTurner10_Title",
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner11",

    awardsrep = "LaResistenza;180",
    awardstask = "Questyno_DavidTurner12", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner11_Lore" },
    needsitem = "MetalPipe;4",
    onobtained = "unlockworldevent;Questyno_DavidTurner;SFQuest_Questyno_DavidTurner11_Complete",
    text = "IGUI_SFQuest_Questyno_DavidTurner11_Text",
    texture = "media/textures/Item_DavidTurner.png",
    title = "IGUI_SFQuest_Questyno_DavidTurner11_Title",
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner12",

    awardsrep = "LaResistenza;50",
    awardsitem = "ScrapKiltStudded;1",
    awardstask = "Questyno_DavidTurner13", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner12_Lore" },
    needsitem = "UnusableMetal;8",
    onobtained = "unlockworldevent;Questyno_DavidTurner;SFQuest_Questyno_DavidTurner12_Complete",
    text = "IGUI_SFQuest_Questyno_DavidTurner12_Text",
    texture = "media/textures/Item_DavidTurner.png",
    title = "IGUI_SFQuest_Questyno_DavidTurner12_Title",
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner13",

    awardstask = "Questyno_DavidTurner13_A",
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner13_Lore" },
    objectives = { {
        guid = "Questyno_DavidTurner13_A",
        text = "IGUI_SFQuest_Questyno_DavidTurner13_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoDavidTurner13;additem;ElectronicsMag1;1",
    } },
    text = "IGUI_SFQuest_Questyno_DavidTurner13_Text",
    texture = "media/textures/Item_DavidTurner.png",
    title = "IGUI_SFQuest_Questyno_DavidTurner13_Title",
    unlocks = "clickevent;7289x8262x0:EventoDavidTurner13;time:50:anim:loot;updateobjective:Questyno_DavidTurner13:1:Completed",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner13_A",

    awardsrep = "LaResistenza;130",
    awardstask = "Questyno_DavidTurner14", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner13_Lore" },
    needsitem = "ElectronicsMag1;1",
    onobtained = "unlockworldevent;Questyno_DavidTurner;SFQuest_Questyno_DavidTurner13_Complete",
    text = "IGUI_SFQuest_Questyno_DavidTurner13_A_Text",
    texture = "media/textures/Item_DavidTurner.png",
    title = "IGUI_SFQuest_Questyno_DavidTurner13_Title",
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner14",

    awardsrep = "LaResistenza;35",
    awardstask = "Questyno_DavidTurner15", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner14_Lore" },
    needsitem = "Tag#FullWaterBottle;1",
    onobtained = "unlockworldevent;Questyno_DavidTurner;SFQuest_Questyno_DavidTurner14_Complete",
    text = "IGUI_SFQuest_Questyno_DavidTurner14_Text",
    texture = "media/textures/Item_DavidTurner.png",
    title = "IGUI_SFQuest_Questyno_DavidTurner14_Title",
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner15",
    
    awardstask = "Questyno_DavidTurner15_A",
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner15_Lore" },
    objectives = { {
        guid = "Questyno_DavidTurner15_A",
        text = "IGUI_SFQuest_Questyno_DavidTurner15_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoDavidTurner15;additem;EngineParts;20;additem;ElectronicsScrap;20;additem;UnusableMetal;2",
    } },
    text = "IGUI_SFQuest_Questyno_DavidTurner15_Text",
    texture = "media/textures/Item_DavidTurner.png",
    title = "IGUI_SFQuest_Questyno_DavidTurner15_Title",
    unlocks = "clickevent;8224x7501x0:EventoDavidTurner15;time:50:anim:loot;updateobjective:Questyno_DavidTurner15:1:Completed",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner15_A",

    awardstask = "Questyno_DavidTurner15_B",
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner15_Lore" },
    objectives = { {
        guid = "Questyno_DavidTurner15_C",
        text = "IGUI_SFQuest_Questyno_DavidTurner15_C",
        hidden = false,
        needsitem = "EngineParts;20",
        onobtained = "updateobjective;Questyno_DavidTurner15_A;1;Completed;removeitem;EngineParts;20"
    }, {
        guid = "Questyno_DavidTurner15_D",
        text = "IGUI_SFQuest_Questyno_DavidTurner15_D",
        hidden = false,
        needsitem = "ElectronicsScrap;20",
        onobtained = "updateobjective;Questyno_DavidTurner15_A;2;Completed;removeitem;ElectronicsScrap;20"
    }, {
        guid = "Questyno_DavidTurner15_E",
        text = "IGUI_SFQuest_Questyno_DavidTurner15_E",
        hidden = false,
        needsitem = "UnusableMetal;2",
        onobtained = "updateobjective;Questyno_DavidTurner15_A;3;Completed;removeitem;UnusableMetal;2"
    } },
    text = "IGUI_SFQuest_Questyno_DavidTurner15_A_Text",
    texture = "media/textures/Item_DavidTurner.png",
    title = "IGUI_SFQuest_Questyno_DavidTurner15_Title",
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner15_B",
    awardsrep = "LaResistenza;80",
    awardsitem = "SheetMetal;2;EngineParts;6",
    awardstask = "Questyno_DavidTurner16", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner15_Lore" },
    unlocks = "unlockworldevent;Questyno_DavidTurner;SFQuest_Questyno_DavidTurner15_Complete",
    text = "IGUI_SFQuest_Questyno_DavidTurner15_B_Text",
    texture = "media/textures/Item_DavidTurner.png",
    title = "IGUI_SFQuest_Questyno_DavidTurner15_Title",
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner16",

    awardsrep = "LaResistenza;100",
    awardstask = "Questyno_DavidTurner17", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner16_Lore" },
    needsitem = "ElectronicsScrap;40",
    onobtained = "unlockworldevent;Questyno_DavidTurner;SFQuest_Questyno_DavidTurner16_Complete",
    text = "IGUI_SFQuest_Questyno_DavidTurner16_Text",
    texture = "media/textures/Item_DavidTurner.png",
    title = "IGUI_SFQuest_Questyno_DavidTurner16_Title",
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner17",

    awardstask = "Questyno_DavidTurner17_A",
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner17_Lore" },
    objectives = { {
        guid = "Questyno_DavidTurner17_A",
        text = "IGUI_SFQuest_Questyno_DavidTurner17_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoDavidTurner17;additem;Wrench;1",
    } },
    text = "IGUI_SFQuest_Questyno_DavidTurner17_Text",
    texture = "media/textures/Item_DavidTurner.png",
    title = "IGUI_SFQuest_Questyno_DavidTurner17_Title",
    unlocks = "clickevent;10452x8267x0:EventoDavidTurner17;time:50:anim:loot;updateobjective:Questyno_DavidTurner17:1:Completed",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner17_A",

    awardsrep = "LaResistenza;60",
    awardstask = "Questyno_DavidTurner18", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner17_Lore" },
    needsitem = "Wrench;1",
    onobtained = "unlockworldevent;Questyno_DavidTurner;SFQuest_Questyno_DavidTurner17_Complete",
    text = "IGUI_SFQuest_Questyno_DavidTurner17_A_Text",
    texture = "media/textures/Item_DavidTurner.png",
    title = "IGUI_SFQuest_Questyno_DavidTurner17_Title",
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner18",

    awardstask = "Questyno_DavidTurner18_A",
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner18_Lore" },
    objectives = { {
        guid = "Questyno_DavidTurner18_A",
        text = "IGUI_SFQuest_Questyno_DavidTurner18_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoDavidTurner18;additem;SheetPaper2;1",
    } },
    text = "IGUI_SFQuest_Questyno_DavidTurner18_Text",
    texture = "media/textures/Item_DavidTurner.png",
    title = "IGUI_SFQuest_Questyno_DavidTurner18_Title",
    unlocks = "clickevent;12567x9951x0:EventoDavidTurner18;time:50:anim:loot;updateobjective:Questyno_DavidTurner18:1:Completed",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner18_A",

    awardsrep = "LaResistenza;65",
    awardsitem = "Money;25",
    awardstask = "Questyno_DavidTurner19", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner18_Lore" },
    needsitem = "SheetPaper2;1",
    onobtained = "unlockworldevent;Questyno_DavidTurner;SFQuest_Questyno_DavidTurner18_Complete",
    text = "IGUI_SFQuest_Questyno_DavidTurner18_A_Text",
    texture = "media/textures/Item_DavidTurner.png",
    title = "IGUI_SFQuest_Questyno_DavidTurner18_Title",
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner19",

    awardsrep = "LaResistenza;65",
    awardstask = "Questyno_DavidTurner20", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner19_Lore" },
    needsitem = "MetalPipe;2",
    onobtained = "unlockworldevent;Questyno_DavidTurner;SFQuest_Questyno_DavidTurner19_Complete",
    text = "IGUI_SFQuest_Questyno_DavidTurner19_Text",
    texture = "media/textures/Item_DavidTurner.png",
    title = "IGUI_SFQuest_Questyno_DavidTurner19_Title",
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner20",

    awardsrep = "LaResistenza;120",
    awardsitem = "Money;20",
    awardstask = "Questyno_DavidTurner21", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner20_Lore" },
    needsitem = "ScrapMetal;15",
    onobtained = "unlockworldevent;Questyno_DavidTurner;SFQuest_Questyno_DavidTurner20_Complete",
    text = "IGUI_SFQuest_Questyno_DavidTurner20_Text",
    texture = "media/textures/Item_DavidTurner.png",
    title = "IGUI_SFQuest_Questyno_DavidTurner20_Title",
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner21",

    awardsrep = "LaResistenza;200",
    awardsitem = "Money;50",
    awardstask = "Questyno_DavidTurner22", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner21_Lore" },
    needsitem = "ScrapMetal;40",
    onobtained = "unlockworldevent;Questyno_DavidTurner;SFQuest_Questyno_DavidTurner21_Complete",
    text = "IGUI_SFQuest_Questyno_DavidTurner21_Text",
    texture = "media/textures/Item_DavidTurner.png",
    title = "IGUI_SFQuest_Questyno_DavidTurner21_Title",
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner22",

    awardstask = "Questyno_DavidTurner22_A",
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner22_Lore" },
    objectives = { {
        guid = "Questyno_DavidTurner22_A",
        text = "IGUI_SFQuest_Questyno_DavidTurner22_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoDavidTurner22;additem;PipeWrench;1",
    } },
    text = "IGUI_SFQuest_Questyno_DavidTurner22_Text",
    texture = "media/textures/Item_DavidTurner.png",
    title = "IGUI_SFQuest_Questyno_DavidTurner22_Title",
    unlocks = "clickevent;8232x10996x0:EventoDavidTurner22;time:50:anim:loot;updateobjective:Questyno_DavidTurner22:1:Completed",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner22_A",

    awardsrep = "LaResistenza;50",
    awardsitem = "PipeWrench;1",
    awardstask = "Questyno_DavidTurner23", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner22_Lore" },
    needsitem = "PipeWrench;1",
    onobtained = "unlockworldevent;Questyno_DavidTurner;SFQuest_Questyno_DavidTurner22_Complete",
    text = "IGUI_SFQuest_Questyno_DavidTurner22_A_Text",
    texture = "media/textures/Item_DavidTurner.png",
    title = "IGUI_SFQuest_Questyno_DavidTurner22_Title",
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_DavidTurner23",

    awardsrep = "LaResistenza;130",
    awardstask = "Questyno_DavidTurner1", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_DavidTurner",
    lore = { "IGUI_SFQuest_Questyno_DavidTurner23_Lore" },
    needsitem = "ScrapMetal;12",
    onobtained = "unlockworldevent;Questyno_DavidTurner;SFQuest_Questyno_DavidTurner23_Complete",
    text = "IGUI_SFQuest_Questyno_DavidTurner23_Text",
    texture = "media/textures/Item_DavidTurner.png",
    title = "IGUI_SFQuest_Questyno_DavidTurner23_Title",
})
require 'SFQuest_Database'

--[[
            *** BENZINAI ***
            - Juan Baker 3837,7028,1 W
            - Furi Mishura 6688,7467,1 E
            - Sandra Harris 6684,6820,1 S
            - Eric Adams 7659,7316,1 E
            - Ronald Perez 8353,8579,1 E
            - Garrett King 10399,8316,1 E
            - Marvin Perry 8186,11296,1 E
            - Karen Taylor 10144,12787,1 S
            - Charles Davis 9285,8482 E
]]

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JuanBaker",
    awardstask = "Questyno_JuanBaker_A",
    dailycode = "Questyno_JuanBaker",
    lore = { "IGUI_SFQuest_Questyno_JuanBaker_Lore" },
    objectives = { {
        guid = "Questyno_JuanBaker_A",
        text = "IGUI_SFQuest_Questyno_JuanBaker_A",
        hidden = false,
        needsitem = "EmptyCAN6;1",
        onobtained = "updateobjective;Questyno_JuanBaker;1;Completed;removeitem;EmptyCAN6;1",
    }, {
        guid = "Questyno_JuanBaker_B",
        text = "IGUI_SFQuest_Questyno_JuanBaker_B",
        hidden = false,
        needsitem = "MoneyToXP.Rotolo;1",
        onobtained = "updateobjective;Questyno_JuanBaker;2;Completed;removeitem;MoneyToXP.Rotolo;1",
    } },
    text = "IGUI_SFQuest_Questyno_JuanBaker_Text",
    texture = "media/textures/Item_JuanBaker.png",
    title = "IGUI_SFQuest_Questyno_JuanBaker_Title",
    unlockedsound = "QuestUnlocked",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JuanBaker_A",
    awardsitem = "GasCAN6;1",
    awardsrep = "LaResistenza;10",
    completesound = "levelup",
    dailycode = "Questyno_JuanBaker",
    lore = { "IGUI_SFQuest_Questyno_JuanBaker_Lore" },
    text = "IGUI_SFQuest_Questyno_JuanBaker_Text",
    texture = "media/textures/Item_JuanBaker.png",
    title = "IGUI_SFQuest_Questyno_JuanBaker_Title",
    unlocks = "unlockworldevent;Questyno_JuanBaker;SFQuest_Questyno_JuanBaker_Complete"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_FuriMishura",
    awardstask = "Questyno_FuriMishura_A",
    dailycode = "Questyno_FuriMishura",
    lore = { "IGUI_SFQuest_Questyno_FuriMishura_Lore" },
    objectives = { {
        guid = "Questyno_FuriMishura_A",
        text = "IGUI_SFQuest_Questyno_FuriMishura_A",
        hidden = false,
        needsitem = "EmptyCAN6;1",
        onobtained = "updateobjective;Questyno_FuriMishura;1;Completed;removeitem;EmptyCAN6;1",
    }, {
        guid = "Questyno_FuriMishura_B",
        text = "IGUI_SFQuest_Questyno_FuriMishura_B",
        hidden = false,
        needsitem = "MoneyToXP.Rotolo;1",
        onobtained = "updateobjective;Questyno_FuriMishura;2;Completed;removeitem;MoneyToXP.Rotolo;1",
    } },
    text = "IGUI_SFQuest_Questyno_FuriMishura_Text",
    texture = "media/textures/Item_FuriMishura.png",
    title = "IGUI_SFQuest_Questyno_FuriMishura_Title",
    unlockedsound = "QuestUnlocked",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_FuriMishura_A",
    awardsitem = "GasCAN6;1",
    awardsrep = "LaResistenza;10",
    completesound = "levelup",
    dailycode = "Questyno_FuriMishura",
    lore = { "IGUI_SFQuest_Questyno_FuriMishura_Lore" },
    text = "IGUI_SFQuest_Questyno_FuriMishura_Text",
    texture = "media/textures/Item_FuriMishura.png",
    title = "IGUI_SFQuest_Questyno_FuriMishura_Title",
    unlocks = "unlockworldevent;Questyno_FuriMishura;SFQuest_Questyno_FuriMishura_Complete"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SandraHarris",
    awardstask = "Questyno_SandraHarris_A",
    dailycode = "Questyno_SandraHarris",
    lore = { "IGUI_SFQuest_Questyno_SandraHarris_Lore" },
    objectives = { {
        guid = "Questyno_SandraHarris_A",
        text = "IGUI_SFQuest_Questyno_SandraHarris_A",
        hidden = false,
        needsitem = "EmptyCAN6;1",
        onobtained = "updateobjective;Questyno_SandraHarris;1;Completed;removeitem;EmptyCAN6;1",
    }, {
        guid = "Questyno_SandraHarris_B",
        text = "IGUI_SFQuest_Questyno_SandraHarris_B",
        hidden = false,
        needsitem = "MoneyToXP.Rotolo;1",
        onobtained = "updateobjective;Questyno_SandraHarris;2;Completed;removeitem;MoneyToXP.Rotolo;1",
    } },
    text = "IGUI_SFQuest_Questyno_SandraHarris_Text",
    texture = "media/textures/Item_SandraHarris.png",
    title = "IGUI_SFQuest_Questyno_SandraHarris_Title",
    unlockedsound = "QuestUnlocked",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SandraHarris_A",
    awardsitem = "GasCAN6;1",
    awardsrep = "LaResistenza;10",
    completesound = "levelup",
    dailycode = "Questyno_SandraHarris",
    lore = { "IGUI_SFQuest_Questyno_SandraHarris_Lore" },
    text = "IGUI_SFQuest_Questyno_SandraHarris_Text",
    texture = "media/textures/Item_SandraHarris.png",
    title = "IGUI_SFQuest_Questyno_SandraHarris_Title",
    unlocks = "unlockworldevent;Questyno_SandraHarris;SFQuest_Questyno_SandraHarris_Complete"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_EricAdams",
    awardstask = "Questyno_EricAdams_A",
    dailycode = "Questyno_EricAdams",
    lore = { "IGUI_SFQuest_Questyno_EricAdams_Lore" },
    objectives = { {
        guid = "Questyno_EricAdams_A",
        text = "IGUI_SFQuest_Questyno_EricAdams_A",
        hidden = false,
        needsitem = "EmptyCAN6;1",
        onobtained = "updateobjective;Questyno_EricAdams;1;Completed;removeitem;EmptyCAN6;1",
    }, {
        guid = "Questyno_EricAdams_B",
        text = "IGUI_SFQuest_Questyno_EricAdams_B",
        hidden = false,
        needsitem = "MoneyToXP.Rotolo;1",
        onobtained = "updateobjective;Questyno_EricAdams;2;Completed;removeitem;MoneyToXP.Rotolo;1",
    } },
    text = "IGUI_SFQuest_Questyno_EricAdams_Text",
    texture = "media/textures/Item_EricAdams.png",
    title = "IGUI_SFQuest_Questyno_EricAdams_Title",
    unlockedsound = "QuestUnlocked",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_EricAdams_A",
    awardsitem = "GasCAN6;1",
    awardsrep = "LaResistenza;10",
    completesound = "levelup",
    dailycode = "Questyno_EricAdams",
    lore = { "IGUI_SFQuest_Questyno_EricAdams_Lore" },
    text = "IGUI_SFQuest_Questyno_EricAdams_Text",
    texture = "media/textures/Item_EricAdams.png",
    title = "IGUI_SFQuest_Questyno_EricAdams_Title",
    unlocks = "unlockworldevent;Questyno_EricAdams;SFQuest_Questyno_EricAdams_Complete"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RonaldPerez",
    awardstask = "Questyno_RonaldPerez_A",
    dailycode = "Questyno_RonaldPerez",
    lore = { "IGUI_SFQuest_Questyno_RonaldPerez_Lore" },
    objectives = { {
        guid = "Questyno_RonaldPerez_A",
        text = "IGUI_SFQuest_Questyno_RonaldPerez_A",
        hidden = false,
        needsitem = "EmptyCAN6;1",
        onobtained = "updateobjective;Questyno_RonaldPerez;1;Completed;removeitem;EmptyCAN6;1",
    }, {
        guid = "Questyno_RonaldPerez_B",
        text = "IGUI_SFQuest_Questyno_RonaldPerez_B",
        hidden = false,
        needsitem = "MoneyToXP.Rotolo;1",
        onobtained = "updateobjective;Questyno_RonaldPerez;2;Completed;removeitem;MoneyToXP.Rotolo;1",
    } },
    text = "IGUI_SFQuest_Questyno_RonaldPerez_Text",
    texture = "media/textures/Item_RonaldPerez.png",
    title = "IGUI_SFQuest_Questyno_RonaldPerez_Title",
    unlockedsound = "QuestUnlocked",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RonaldPerez_A",
    awardsitem = "GasCAN6;1",
    awardsrep = "LaResistenza;10",
    completesound = "levelup",
    dailycode = "Questyno_RonaldPerez",
    lore = { "IGUI_SFQuest_Questyno_RonaldPerez_Lore" },
    text = "IGUI_SFQuest_Questyno_RonaldPerez_Text",
    texture = "media/textures/Item_RonaldPerez.png",
    title = "IGUI_SFQuest_Questyno_RonaldPerez_Title",
    unlocks = "unlockworldevent;Questyno_RonaldPerez;SFQuest_Questyno_RonaldPerez_Complete"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_GarrettKing",
    awardstask = "Questyno_GarrettKing_A",
    dailycode = "Questyno_GarrettKing",
    lore = { "IGUI_SFQuest_Questyno_GarrettKing_Lore" },
    objectives = { {
        guid = "Questyno_GarrettKing_A",
        text = "IGUI_SFQuest_Questyno_GarrettKing_A",
        hidden = false,
        needsitem = "EmptyCAN6;1",
        onobtained = "updateobjective;Questyno_GarrettKing;1;Completed;removeitem;EmptyCAN6;1",
    }, {
        guid = "Questyno_GarrettKing_B",
        text = "IGUI_SFQuest_Questyno_GarrettKing_B",
        hidden = false,
        needsitem = "MoneyToXP.Rotolo;1",
        onobtained = "updateobjective;Questyno_GarrettKing;2;Completed;removeitem;MoneyToXP.Rotolo;1",
    } },
    text = "IGUI_SFQuest_Questyno_GarrettKing_Text",
    texture = "media/textures/Item_GarrettKing.png",
    title = "IGUI_SFQuest_Questyno_GarrettKing_Title",
    unlockedsound = "QuestUnlocked",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_GarrettKing_A",
    awardsitem = "GasCAN6;1",
    awardsrep = "LaResistenza;10",
    completesound = "levelup",
    dailycode = "Questyno_GarrettKing",
    lore = { "IGUI_SFQuest_Questyno_GarrettKing_Lore" },
    text = "IGUI_SFQuest_Questyno_GarrettKing_Text",
    texture = "media/textures/Item_GarrettKing.png",
    title = "IGUI_SFQuest_Questyno_GarrettKing_Title",
    unlocks = "unlockworldevent;Questyno_GarrettKing;SFQuest_Questyno_GarrettKing_Complete"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MarvinPerry",
    dailycode = "Questyno_MarvinPerry",
    awardstask = "Questyno_MarvinPerry_A",
    lore = { "IGUI_SFQuest_Questyno_MarvinPerry_Lore" },
    objectives = { {
        guid = "Questyno_MarvinPerry_A",
        text = "IGUI_SFQuest_Questyno_MarvinPerry_A",
        hidden = false,
        needsitem = "EmptyCAN6;1",
        onobtained = "updateobjective;Questyno_MarvinPerry;1;Completed;removeitem;EmptyCAN6;1",
    }, {
        guid = "Questyno_MarvinPerry_B",
        text = "IGUI_SFQuest_Questyno_MarvinPerry_B",
        hidden = false,
        needsitem = "MoneyToXP.Rotolo;1",
        onobtained = "updateobjective;Questyno_MarvinPerry;2;Completed;removeitem;MoneyToXP.Rotolo;1",
    } },
    text = "IGUI_SFQuest_Questyno_MarvinPerry_Text",
    texture = "media/textures/Item_MarvinPerry.png",
    title = "IGUI_SFQuest_Questyno_MarvinPerry_Title",
    unlockedsound = "QuestUnlocked",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_MarvinPerry_A",
    awardsitem = "GasCAN6;1",
    awardsrep = "LaResistenza;10",
    completesound = "levelup",
    dailycode = "Questyno_MarvinPerry",
    lore = { "IGUI_SFQuest_Questyno_MarvinPerry_Lore" },
    text = "IGUI_SFQuest_Questyno_MarvinPerry_Text",
    texture = "media/textures/Item_MarvinPerry.png",
    title = "IGUI_SFQuest_Questyno_MarvinPerry_Title",
    unlocks = "unlockworldevent;Questyno_MarvinPerry;SFQuest_Questyno_MarvinPerry_Complete"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_KarenTaylor",
    awardstask = "Questyno_KarenTaylor_A",
    dailycode = "Questyno_KarenTaylor",
    lore = { "IGUI_SFQuest_Questyno_KarenTaylor_Lore" },
    objectives = { {
        guid = "Questyno_KarenTaylor_A",
        text = "IGUI_SFQuest_Questyno_KarenTaylor_A",
        hidden = false,
        needsitem = "EmptyCAN6;1",
        onobtained = "updateobjective;Questyno_KarenTaylor;1;Completed;removeitem;EmptyCAN6;1",
    }, {
        guid = "Questyno_KarenTaylor_B",
        text = "IGUI_SFQuest_Questyno_KarenTaylor_B",
        hidden = false,
        needsitem = "MoneyToXP.Rotolo;1",
        onobtained = "updateobjective;Questyno_KarenTaylor;2;Completed;removeitem;MoneyToXP.Rotolo;1",
    } },
    text = "IGUI_SFQuest_Questyno_KarenTaylor_Text",
    texture = "media/textures/Item_KarenTaylor.png",
    title = "IGUI_SFQuest_Questyno_KarenTaylor_Title",
    unlockedsound = "QuestUnlocked",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_KarenTaylor_A",
    awardsitem = "GasCAN6;1",
    awardsrep = "LaResistenza;10",
    completesound = "levelup",
    dailycode = "Questyno_KarenTaylor",
    lore = { "IGUI_SFQuest_Questyno_KarenTaylor_Lore" },
    text = "IGUI_SFQuest_Questyno_KarenTaylor_Text",
    texture = "media/textures/Item_KarenTaylor.png",
    title = "IGUI_SFQuest_Questyno_KarenTaylor_Title",
    unlocks = "unlockworldevent;Questyno_KarenTaylor;SFQuest_Questyno_KarenTaylor_Complete"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_CharlesDavis",
    awardstask = "Questyno_CharlesDavis_A",
    dailycode = "Questyno_CharlesDavis",
    lore = { "IGUI_SFQuest_Questyno_CharlesDavis_Lore" },
    objectives = { {
        guid = "Questyno_CharlesDavis_A",
        text = "IGUI_SFQuest_Questyno_CharlesDavis_A",
        hidden = false,
        needsitem = "EmptyPetrolCan;1",
        onobtained = "updateobjective;Questyno_CharlesDavis;1;Completed;removeitem;EmptyPetrolCan;1",
    }, {
        guid = "Questyno_CharlesDavis_B",
        text = "IGUI_SFQuest_Questyno_CharlesDavis_B",
        hidden = false,
        needsitem = "Money;15",
        onobtained = "updateobjective;Questyno_CharlesDavis;2;Completed;removeitem;Money;15",
    } },
    text = "IGUI_SFQuest_Questyno_CharlesDavis_Text",
    texture = "media/textures/Item_CharlesDavis.png",
    title = "IGUI_SFQuest_Questyno_CharlesDavis_Title",
    unlockedsound = "QuestUnlocked",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_CharlesDavis_A",
    awardsitem = "PetrolCan;1",
    awardsrep = "LaResistenza;10",
    completesound = "levelup",
    dailycode = "Questyno_CharlesDavis",
    lore = { "IGUI_SFQuest_Questyno_CharlesDavis_Lore" },
    text = "IGUI_SFQuest_Questyno_CharlesDavis_Text",
    texture = "media/textures/Item_CharlesDavis.png",
    title = "IGUI_SFQuest_Questyno_CharlesDavis_Title",
    unlocks = "unlockworldevent;Questyno_CharlesDavis;SFQuest_Questyno_CharlesDavis_Complete"
});

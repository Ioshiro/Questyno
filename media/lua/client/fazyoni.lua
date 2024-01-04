require 'SFQuest_Database'
-- aggiunge il viola
--[[

]]

SFQuest_Database.ColorPool.purple = {0.5, 0.0, 1.0}

-- tier fazioni
LaResistenzaTiersTemplate = {
    {
        tiername = "IGUI_Factions_Template_Tier1",
        minrep = 1,
        barcolor = "red",
    }, {
        tiername = "IGUI_Factions_Template_Tier2",
        minrep = 2,
        barcolor = "purple",
        unlocks = "addreputation;SamFisher;2"
    }, {
        tiername = "IGUI_Factions_Template_Tier3",
        minrep = 175,
        barcolor = "yellow"
    }, {
        tiername = "IGUI_Factions_Template_Tier4",
        minrep = 800,
        barcolor = "green"
    }, {
        tiername = "IGUI_Factions_Template_Tier5",
        minrep = 10000,
        barcolor = "green"
    }, {
        tiername = "IGUI_Factions_Template_Tier6",
        minrep = 100000,
        barcolor = "green"
    }, {
        tiername = "IGUI_Factions_Template_Tier7",
        minrep = 500000,
        barcolor = "green"
    }, {
        tiername = "IGUI_Factions_Template_Tier8",
        minrep = 1000000,
        barcolor = "green"
    }
};

DailyTiersTemplate = {
    {
        tiername = "IGUI_Factions_Daily_Tier1",
        minrep = 1,
        barcolor = "red",
    }, {
        tiername = "IGUI_Factions_Daily_Tier2",
        minrep = 100,
        barcolor = "blue",
        --unlocks = "unlockworldevent;Questyno_SamFisher;Questyno_SamFisher_Intro_Begin;Questyno_SamFisher_Intro"
    },{
        tiername = "IGUI_Factions_Daily_Tier3",
        minrep = 200,
        barcolor = "green",
    },{
        tiername = "IGUI_Factions_Daily_Tier4",
        minrep = 300,
        barcolor = "white",
    }
}

-- fazioni
table.insert(SFQuest_Database.FactionPool, {
    factioncode = "LaResistenza",
    name = "IGUI_Factions_LaResistenza",
    startrep = 0,
    minrep = 0,
    maxtier = 8,
    tiers = LaResistenzaTiersTemplate
});

-- factions for every npc
table.insert(SFQuest_Database.FactionPool,{ factioncode = "SergenteGrif", name = "IGUI_SFQuest_Questyno_Grif_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = DailyTiersTemplate});
table.insert(SFQuest_Database.FactionPool,{ factioncode = "AngelicaStella", name = "IGUI_SFQuest_Questyno_AngelicaStella_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = DailyTiersTemplate});
table.insert(SFQuest_Database.FactionPool,{ factioncode = "HeatherThomas", name = "IGUI_SFQuest_Questyno_HeatherThomas_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = DailyTiersTemplate});
table.insert(SFQuest_Database.FactionPool,{ factioncode = "EliaRima", name = "IGUI_SFQuest_Questyno_EliaRima_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = DailyTiersTemplate});
table.insert(SFQuest_Database.FactionPool,{ factioncode = "BobRepair", name = "IGUI_SFQuest_Questyno_BobRepair_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = DailyTiersTemplate});
table.insert(SFQuest_Database.FactionPool,{ factioncode = "MikePozzo", name = "IGUI_SFQuest_Questyno_MikePozzo_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = DailyTiersTemplate});
table.insert(SFQuest_Database.FactionPool,{ factioncode = "RosaChina", name = "IGUI_SFQuest_Questyno_RosaChina_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = DailyTiersTemplate});
table.insert(SFQuest_Database.FactionPool,{ factioncode = "EmilyTerry", name = "IGUI_SFQuest_Questyno_EmilyTerry_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = DailyTiersTemplate});
table.insert(SFQuest_Database.FactionPool,{ factioncode = "VictoriaSecret", name = "IGUI_SFQuest_Questyno_VictoriaSecret_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = DailyTiersTemplate});
table.insert(SFQuest_Database.FactionPool,{ factioncode = "SusanLee", name = "IGUI_SFQuest_Questyno_SusanLee_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = DailyTiersTemplate});
table.insert(SFQuest_Database.FactionPool,{ factioncode = "GeorgeScott", name = "IGUI_SFQuest_Questyno_GeorgeScott_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = DailyTiersTemplate});
table.insert(SFQuest_Database.FactionPool,{ factioncode = "SamuelYoung", name = "IGUI_SFQuest_Questyno_SamuelYoung_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = DailyTiersTemplate});
table.insert(SFQuest_Database.FactionPool,{ factioncode = "XuMishura", name = "IGUI_SFQuest_Questyno_XuMishura_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = DailyTiersTemplate});
table.insert(SFQuest_Database.FactionPool,{ factioncode = "DavidTurner", name = "IGUI_SFQuest_Questyno_DavidTurner_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = DailyTiersTemplate});
table.insert(SFQuest_Database.FactionPool,{ factioncode = "TonyLupo", name = "IGUI_SFQuest_Questyno_TonyLupo_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = DailyTiersTemplate});
table.insert(SFQuest_Database.FactionPool,{ factioncode = "RafaelPrezioso", name = "IGUI_SFQuest_Questyno_RafaelPrezioso_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = DailyTiersTemplate });
table.insert(SFQuest_Database.FactionPool,{ factioncode = "JeffreyLewis", name = "IGUI_SFQuest_Questyno_JeffreyLewis_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = DailyTiersTemplate });
table.insert(SFQuest_Database.FactionPool,{ factioncode = "ChristopherDavis", name = "IGUI_SFQuest_Questyno_ChristopherDavis_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = DailyTiersTemplate });
table.insert(SFQuest_Database.FactionPool,{ factioncode = "PamelaPerez", name = "IGUI_SFQuest_Questyno_PamelaPerez_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = DailyTiersTemplate });
table.insert(SFQuest_Database.FactionPool,{ factioncode = "SamFisher", name = "IGUI_SFQuest_Questyno_SamFisher_Name", startrep = 0, minrep = 0, maxtier = 4, tiers = DailyTiersTemplate });

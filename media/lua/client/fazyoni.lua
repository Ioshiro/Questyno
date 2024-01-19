require 'SFQuest_Database'
-- aggiunge il viola
--[[

]]

SFQuest_Database.ColorPool.white = {1.0, 1.0, 1.0}
SFQuest_Database.ColorPool.lightpink = {1.0, 0.75, 0.75}
SFQuest_Database.ColorPool.gray = {0.6, 0.6, 0.6}
SFQuest_Database.ColorPool.lightgreen = {0.71, 0.843, 0.65}
SFQuest_Database.ColorPool.darkgreen = {0.42, 0.658, 0.31}
SFQuest_Database.ColorPool.lightred =  {0.866, 0.659, 0.31}
SFQuest_Database.ColorPool.orange = {1.0, 0.6, 0}
SFQuest_Database.ColorPool.purple = {0.4039, 0.30588, 0.6549}
SFQuest_Database.ColorPool.resistenza = {0.5960784, 0.0, 0.0}

-- tier fazioni
LaResistenzaTiersTemplate = {
    {
        tiername = "IGUI_Factions_Resistenza_Tier1",
        minrep = 5,
        barcolor = "white",
    }, {
        tiername = "IGUI_Factions_Resistenza_Tier2",
        minrep = 70,
        barcolor = "lightpink",
        unlocks = "addreputation;SergenteGrif;1"
    }, {
        tiername = "IGUI_Factions_Resistenza_Tier3",
        minrep = 100,
        barcolor = "gray"
    }, {
        tiername = "IGUI_Factions_Resistenza_Tier4",
        minrep = 300,
        barcolor = "lightgreen"
    }, {
        tiername = "IGUI_Factions_Resistenza_Tier5",
        minrep = 9.525,
        barcolor = "darkgreen"
    }, {
        tiername = "IGUI_Factions_Resistenza_Tier6",
        minrep = 90000,
        barcolor = "lightred"
    }, {
        tiername = "IGUI_Factions_Resistenza_Tier7",
        minrep = 400000,
        barcolor = "orange"
    }, {
        tiername = "IGUI_Factions_Resistenza_Tier8",
        minrep = 500000,
        barcolor = "purple"
    }, {
        tiername = "IGUI_Factions_Resistenza_Tier9",
        minrep = 10000000,
        barcolor = "resistenza"
    }
};

StoryTiersTemplate = {
    {
        tiername = "IGUI_Factions_Story_Tier1",
        minrep = 1,
        barcolor = "red",
    }, {
        tiername = "IGUI_Factions_Story_Tier2",
        minrep = 100,
        barcolor = "blue",
    },{
        tiername = "IGUI_Factions_Story_Tier3",
        minrep = 200,
        barcolor = "green",
    },{
        tiername = "IGUI_Factions_Story_Tier4",
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
table.insert(SFQuest_Database.FactionPool,{ factioncode = "SergenteGrif", name = "IGUI_SFQuest_Questyno_Grif_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_Grif_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }}});

table.insert(SFQuest_Database.FactionPool,{ factioncode = "AngelicaStella", name = "IGUI_SFQuest_Questyno_AngelicaStella_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_AngelicaStella_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }}});

table.insert(SFQuest_Database.FactionPool,{ factioncode = "HeatherThomas", name = "IGUI_SFQuest_Questyno_HeatherThomas_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_HeatherThomas_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }}});

table.insert(SFQuest_Database.FactionPool,{ factioncode = "EliaRima", name = "IGUI_SFQuest_Questyno_EliaRima_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_EliaRima_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }}});

table.insert(SFQuest_Database.FactionPool,{ factioncode = "BobRepair", name = "IGUI_SFQuest_Questyno_BobRepair_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_BobRepair_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }}});

table.insert(SFQuest_Database.FactionPool,{ factioncode = "MikePozzo", name = "IGUI_SFQuest_Questyno_MikePozzo_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_MikePozzo_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }}});

table.insert(SFQuest_Database.FactionPool,{ factioncode = "RosaChina", name = "IGUI_SFQuest_Questyno_RosaChina_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_RosaChina_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }}});

table.insert(SFQuest_Database.FactionPool,{ factioncode = "EmilyTerry", name = "IGUI_SFQuest_Questyno_EmilyTerry_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_EmilyTerry_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }}});

table.insert(SFQuest_Database.FactionPool,{ factioncode = "VictoriaSecret", name = "IGUI_SFQuest_Questyno_VictoriaSecret_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_VictoriaSecret_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }}});

table.insert(SFQuest_Database.FactionPool,{ factioncode = "SusanLee", name = "IGUI_SFQuest_Questyno_SusanLee_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_SusanLee_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }}});

table.insert(SFQuest_Database.FactionPool,{ factioncode = "GeorgeScott", name = "IGUI_SFQuest_Questyno_GeorgeScott_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 0, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_GeorgeScott_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }}});

table.insert(SFQuest_Database.FactionPool,{ factioncode = "SamuelYoung", name = "IGUI_SFQuest_Questyno_SamuelYoung_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 0, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_SamuelYoung_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }}});

table.insert(SFQuest_Database.FactionPool,{ factioncode = "XuMishura", name = "IGUI_SFQuest_Questyno_XuMishura_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 0, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_XuMishura_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }}});

table.insert(SFQuest_Database.FactionPool,{ factioncode = "DavidTurner", name = "IGUI_SFQuest_Questyno_DavidTurner_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 0, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_DavidTurner_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }}});

table.insert(SFQuest_Database.FactionPool,{ factioncode = "TonyLupo", name = "IGUI_SFQuest_Questyno_TonyLupo_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 0, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_TonyLupo_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }}});

table.insert(SFQuest_Database.FactionPool,{ factioncode = "RafaelPrezioso", name = "IGUI_SFQuest_Questyno_RafaelPrezioso_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 0, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_RafaelPrezioso_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }}});

table.insert(SFQuest_Database.FactionPool,{ factioncode = "JeffreyLewis", name = "IGUI_SFQuest_Questyno_JeffreyLewis_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 0, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;JeffreyLewis_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }}});

table.insert(SFQuest_Database.FactionPool,{ factioncode = "ChristopherDavis", name = "IGUI_SFQuest_Questyno_ChristopherDavis_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 0, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;ChristopherDavis_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }}});

table.insert(SFQuest_Database.FactionPool,{ factioncode = "PamelaPerez", name = "IGUI_SFQuest_Questyno_PamelaPerez_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 0, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;PamelaPerez_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }}});

table.insert(SFQuest_Database.FactionPool,{ factioncode = "SamFisher", name = "IGUI_SFQuest_Questyno_SamFisher_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = {{tiername = "IGUI_SFQuest_Questyno_Daily_Tier1", minrep = 0, barcolor = "red",}, {tiername = "IGUI_SFQuest_Questyno_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;SamFisher_Intro"},{tiername = "IGUI_SFQuest_Questyno_Daily_Tier3", minrep = 100, barcolor = "green", }}});

table.insert(SFQuest_Database.FactionPool,{ factioncode = "TaylorBlaze", name = "IGUI_SFQuest_Questyno_TaylorBlaze_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = {{tiername = "IGUI_SFQuest_Questyno_Daily_Tier1", minrep = 0, barcolor = "red",}, {tiername = "IGUI_SFQuest_Questyno_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;TaylorBlaze_Intro"},{tiername = "IGUI_SFQuest_Questyno_Daily_Tier3", minrep = 100, barcolor = "green", }}});

table.insert(SFQuest_Database.FactionPool,{ factioncode = "MarcusKane", name = "IGUI_SFQuest_Questyno_MarcusKane_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = {{tiername = "IGUI_SFQuest_Questyno_Daily_Tier1", minrep = 0, barcolor = "red",}, {tiername = "IGUI_SFQuest_Questyno_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;MarcusKane_Intro"},{tiername = "IGUI_SFQuest_Questyno_Daily_Tier3", minrep = 100, barcolor = "green", }}});

table.insert(SFQuest_Database.FactionPool,{ factioncode = "AlexMercer", name = "IGUI_SFQuest_Questyno_AlexMercer_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = {{tiername = "IGUI_SFQuest_Questyno_Daily_Tier1", minrep = 0, barcolor = "red",}, {tiername = "IGUI_SFQuest_Questyno_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;AlexMercer_Intro"},{tiername = "IGUI_SFQuest_Questyno_Daily_Tier3", minrep = 100, barcolor = "green", }}});

table.insert(SFQuest_Database.FactionPool,{ factioncode = "OliviaChambers", name = "IGUI_SFQuest_Questyno_OliviaChambers_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = {{tiername = "IGUI_SFQuest_Questyno_Daily_Tier1", minrep = 0, barcolor = "red",}, {tiername = "IGUI_SFQuest_Questyno_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;OliviaChambers_Intro"},{tiername = "IGUI_SFQuest_Questyno_Daily_Tier3", minrep = 100, barcolor = "green", }}});

table.insert(SFQuest_Database.FactionPool,{ factioncode = "HarperWells", name = "IGUI_SFQuest_Questyno_HarperWells_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = {{tiername = "IGUI_SFQuest_Questyno_Daily_Tier1", minrep = 0, barcolor = "red",}, {tiername = "IGUI_SFQuest_Questyno_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;HarperWells_Intro"},{tiername = "IGUI_SFQuest_Questyno_Daily_Tier3", minrep = 100, barcolor = "green", }}});

table.insert(SFQuest_Database.FactionPool,{ factioncode = "EzekielFlynn", name = "IGUI_SFQuest_Questyno_EzekielFlynn_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = StoryTiersTemplate });

table.insert(SFQuest_Database.FactionPool,{ factioncode = "ElowenBeckett", name = "IGUI_SFQuest_Questyno_ElowenBeckett_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = StoryTiersTemplate });

table.insert(SFQuest_Database.FactionPool,{ factioncode = "JohnBaker", name = "IGUI_SFQuest_Questyno_JohnBaker_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = StoryTiersTemplate });

table.insert(SFQuest_Database.FactionPool,{ factioncode = "EthanSteele", name = "IGUI_SFQuest_Questyno_EthanSteele_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = StoryTiersTemplate });

table.insert(SFQuest_Database.FactionPool,{ factioncode = "BrianWhite", name = "IGUI_SFQuest_Questyno_BrianWhite_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = StoryTiersTemplate });

table.insert(SFQuest_Database.FactionPool,{ factioncode = "RichardBrown", name = "IGUI_SFQuest_Questyno_RichardBrown_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = StoryTiersTemplate });

table.insert(SFQuest_Database.FactionPool,{ factioncode = "RobertWilson", name = "IGUI_SFQuest_Questyno_RobertWilson_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = StoryTiersTemplate });

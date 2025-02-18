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
-- FUORI: 
-- 
LaResistenzaTiersTemplate = {
    {
        tiername = "IGUI_Factions_Resistenza_Tier1",
        minrep = 5,
        barcolor = "white",
    }, {
        tiername = "IGUI_Factions_Resistenza_Tier2",
        minrep = 70,
        barcolor = "lightpink",
        unlocks = "addreputation;EzekielFlynn;100"
    }, {
        tiername = "IGUI_Factions_Resistenza_Tier3",
        minrep = 100,
        barcolor = "gray",
        unlocks = "addreputation;ElowenBeckett;100"
    }, {
        tiername = "IGUI_Factions_Resistenza_Tier4",
        minrep = 2825,
        barcolor = "lightgreen",
        unlocks = "addreputation;RosaChina;100;addreputation;EmilyTerry;100;addreputation;MikePozzo;100;addreputation;PaigeTurner;100;addreputation;AngelicaStella;100;addreputation;LincolnReed;100"
    }, {
        tiername = "IGUI_Factions_Resistenza_Tier5",
        minrep = 17000,
        barcolor = "darkgreen",
        unlocks = "addreputation;PamelaPerez;100;addreputation;HeatherThomas;100;addreputation;EliaRima;100;addreputation;VictoriaSecret;100;addreputation;SusanLee;100;addreputation;GeorgeScott;100;addreputation;XuMishura;100;addreputation;DavidTurner;100;addreputation;TomasJoger;100"
    }, {
        tiername = "IGUI_Factions_Resistenza_Tier6",
        minrep = 180000,
        barcolor = "lightred",
        unlocks = "addreputation;BrianWhite;100;addreputation;SergenteGrif;100;addreputation;BobRepair;100;addreputation;SamuelYoung;100;addreputation;TonyLupo;100;addreputation;RafaelPrezioso;100;addreputation;JeffreyLewis;100;addreputation;ChristopherDavis;100;addreputation;SamFisher;100;addreputation;RobertWilson;100;addreputation;GabrielWalker;100;addreputation;AnselMerrick;100;addreputation;MalachiBlevins;100;addreputation;RichardBrown;100"
        -- DA CREARE: ;addreputation;AaronFletcher;100
    }, {
        tiername = "IGUI_Factions_Resistenza_Tier7",
        minrep = 300000,
        barcolor = "orange",
        unlocks = "addreputation;EthanSteele;100;addreputation;JohnBaker;100;addreputation;MarcusKane;100;addreputation;TaylorBlaze;100;addreputation;MayaBlackwell;100;addreputation;AlexMercer;100;addreputation;GraceChambers;100;addreputation;AndrewTurner;100;addreputation;LucasMiller;100;addreputation;DylanHarris;100;addreputation;KylePorter;100;addreputation;HuxleyThorne;100;addreputation;TessaAnderson;100;addreputation;DorianPrescott;100;addreputation;RyanParker;100;addreputation;JacobTurner;100;addreputation;VivianParker;100"
    }, {
        tiername = "IGUI_Factions_Resistenza_Tier8",
        minrep = 500000,
        barcolor = "purple",
        unlocks = "addreputation;OliviaChambers;100"
    }, {
        tiername = "IGUI_Factions_Resistenza_Tier9",
        minrep = 10000000,
        barcolor = "resistenza",
        unlocks = "addreputation;HarperWells;100;addreputation;JamesMorris;100"
    }, {
        tiername = "IGUI_Factions_Resistenza_Tier10",
        minrep = 10000000,
        barcolor = "white",
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
    maxtier = 9,
    tiers = LaResistenzaTiersTemplate
});
-- tier 2
table.insert(SFQuest_Database.FactionPool,{ factioncode = "EzekielFlynn", name = "IGUI_SFQuest_Questyno_EzekielFlynn_Name", startrep = 0, minrep = 0, maxtier = 4, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_EzekielFlynn_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }, {tiername = "IGUI_Factions_Daily_Tier4", minrep = 100, barcolor = "yellow"}}});
-- tier 3
table.insert(SFQuest_Database.FactionPool,{ factioncode = "ElowenBeckett", name = "IGUI_SFQuest_Questyno_ElowenBeckett_Name", startrep = 0, minrep = 0, maxtier = 4, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_ElowenBeckett_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }, {tiername = "IGUI_Factions_Daily_Tier4", minrep = 100, barcolor = "yellow"}}});
-- tier 4
table.insert(SFQuest_Database.FactionPool,{ factioncode = "AngelicaStella", name = "IGUI_SFQuest_Questyno_AngelicaStella_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_AngelicaStella_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }}});
table.insert(SFQuest_Database.FactionPool,{ factioncode = "LincolnReed", name = "IGUI_SFQuest_Questyno_LincolnReed_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_LincolnReed_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }}});
table.insert(SFQuest_Database.FactionPool,{ factioncode = "RosaChina", name = "IGUI_SFQuest_Questyno_RosaChina_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_RosaChina_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }}});
table.insert(SFQuest_Database.FactionPool,{ factioncode = "EmilyTerry", name = "IGUI_SFQuest_Questyno_EmilyTerry_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_EmilyTerry_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }}});
table.insert(SFQuest_Database.FactionPool,{ factioncode = "PaigeTurner", name = "IGUI_SFQuest_Questyno_PaigeTurner_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_PaigeTurner_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }}});
table.insert(SFQuest_Database.FactionPool,{ factioncode = "MikePozzo", name = "IGUI_SFQuest_Questyno_MikePozzo_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_MikePozzo_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }}});
-- tier 5
table.insert(SFQuest_Database.FactionPool,{ factioncode = "TomasJoger", name = "IGUI_SFQuest_Questyno_TomasJoger_Name", startrep = 0, minrep = 0, maxtier = 4, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_TomasJoger_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }, {tiername = "IGUI_Factions_Daily_Tier4", minrep = 100, barcolor = "yellow"}}});
table.insert(SFQuest_Database.FactionPool,{ factioncode = "HeatherThomas", name = "IGUI_SFQuest_Questyno_HeatherThomas_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_HeatherThomas_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }}});
table.insert(SFQuest_Database.FactionPool,{ factioncode = "EliaRima", name = "IGUI_SFQuest_Questyno_EliaRima_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_EliaRima_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }}});
table.insert(SFQuest_Database.FactionPool,{ factioncode = "VictoriaSecret", name = "IGUI_SFQuest_Questyno_VictoriaSecret_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_VictoriaSecret_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }}});
table.insert(SFQuest_Database.FactionPool,{ factioncode = "SusanLee", name = "IGUI_SFQuest_Questyno_SusanLee_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_SusanLee_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }}});
table.insert(SFQuest_Database.FactionPool,{ factioncode = "GeorgeScott", name = "IGUI_SFQuest_Questyno_GeorgeScott_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_GeorgeScott_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }}});
table.insert(SFQuest_Database.FactionPool,{ factioncode = "XuMishura", name = "IGUI_SFQuest_Questyno_XuMishura_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_XuMishura_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }}});
table.insert(SFQuest_Database.FactionPool,{ factioncode = "DavidTurner", name = "IGUI_SFQuest_Questyno_DavidTurner_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_DavidTurner_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }}});
table.insert(SFQuest_Database.FactionPool,{ factioncode = "PamelaPerez", name = "IGUI_SFQuest_Questyno_PamelaPerez_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_PamelaPerez_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }}});
-- tier 6
table.insert(SFQuest_Database.FactionPool,{ factioncode = "RichardBrown", name = "IGUI_SFQuest_Questyno_RichardBrown_Name", startrep = 0, minrep = 0, maxtier = 4, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_RichardBrown_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }, {tiername = "IGUI_Factions_Daily_Tier4", minrep = 100, barcolor = "yellow"}} });
table.insert(SFQuest_Database.FactionPool,{ factioncode = "BrianWhite", name = "IGUI_SFQuest_Questyno_BrianWhite_Name", startrep = 0, minrep = 0,  maxtier = 4, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_BrianWhite_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }, {tiername = "IGUI_Factions_Daily_Tier4", minrep = 100, barcolor = "yellow"}} });
table.insert(SFQuest_Database.FactionPool,{ factioncode = "RobertWilson", name = "IGUI_SFQuest_Questyno_RobertWilson_Name", startrep = 0, minrep = 0, maxtier = 4, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_RobertWilson_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }, {tiername = "IGUI_Factions_Daily_Tier4", minrep = 100, barcolor = "yellow"}} });
table.insert(SFQuest_Database.FactionPool,{ factioncode = "SergenteGrif", name = "IGUI_SFQuest_Questyno_Grif_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_Grif_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }}});
table.insert(SFQuest_Database.FactionPool,{ factioncode = "BobRepair", name = "IGUI_SFQuest_Questyno_BobRepair_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_BobRepair_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }}});
table.insert(SFQuest_Database.FactionPool,{ factioncode = "SamuelYoung", name = "IGUI_SFQuest_Questyno_SamuelYoung_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_SamuelYoung_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }}});
table.insert(SFQuest_Database.FactionPool,{ factioncode = "TonyLupo", name = "IGUI_SFQuest_Questyno_TonyLupo_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_Lupo_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }}});
table.insert(SFQuest_Database.FactionPool,{ factioncode = "RafaelPrezioso", name = "IGUI_SFQuest_Questyno_RafaelPrezioso_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_RafaelPrezioso_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }}});
table.insert(SFQuest_Database.FactionPool,{ factioncode = "JeffreyLewis", name = "IGUI_SFQuest_Questyno_JeffreyLewis_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_JeffreyLewis_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }}});
table.insert(SFQuest_Database.FactionPool,{ factioncode = "ChristopherDavis", name = "IGUI_SFQuest_Questyno_ChristopherDavis_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_ChristopherDavis_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }}});
table.insert(SFQuest_Database.FactionPool,{ factioncode = "SamFisher", name = "IGUI_SFQuest_Questyno_SamFisher_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_SamFisher_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }}});
table.insert(SFQuest_Database.FactionPool,{ factioncode = "GabrielWalker", name = "IGUI_SFQuest_Questyno_GabrielWalker_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_GabrielWalker_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }}});
table.insert(SFQuest_Database.FactionPool,{ factioncode = "AnselMerrick", name = "IGUI_SFQuest_Questyno_AnselMerrick_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_AnselMerrick_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }}});
table.insert(SFQuest_Database.FactionPool,{ factioncode = "MalachiBlevins", name = "IGUI_SFQuest_Questyno_MalachiBlevins_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = { {tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_MalachiBlevins_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", } } });
-- tier 7
table.insert(SFQuest_Database.FactionPool,{ factioncode = "EthanSteele", name = "IGUI_SFQuest_Questyno_EthanSteele_Name", startrep = 0, minrep = 0, maxtier = 4, tiers =  {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_EthanSteele_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }, {tiername = "IGUI_Factions_Daily_Tier4", minrep = 100, barcolor = "yellow"}}});
table.insert(SFQuest_Database.FactionPool,{ factioncode = "JohnBaker", name = "IGUI_SFQuest_Questyno_JohnBaker_Name", startrep = 0, minrep = 0, maxtier = 4, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_JohnBaker_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }, {tiername = "IGUI_Factions_Daily_Tier4", minrep = 100, barcolor = "yellow"}}});
table.insert(SFQuest_Database.FactionPool,{ factioncode = "KylePorter", name = "IGUI_SFQuest_Questyno_KylePorter_Name", startrep = 0, minrep = 0, maxtier = 4, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_KylePorter_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }, {tiername = "IGUI_Factions_Daily_Tier4", minrep = 100, barcolor = "yellow"}}});
table.insert(SFQuest_Database.FactionPool,{ factioncode = "AndrewTurner", name = "IGUI_SFQuest_Questyno_AndrewTurner_Name", startrep = 0, minrep = 0, maxtier = 4, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_AndrewTurner_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }, {tiername = "IGUI_Factions_Daily_Tier4", minrep = 100, barcolor = "yellow"}}});
table.insert(SFQuest_Database.FactionPool,{ factioncode = "DorianPrescott", name = "IGUI_SFQuest_Questyno_DorianPrescott_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_DorianPrescott_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }}});
table.insert(SFQuest_Database.FactionPool,{ factioncode = "RyanParker", name = "IGUI_SFQuest_Questyno_RyanParker_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_RyanParker_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }}});
table.insert(SFQuest_Database.FactionPool,{ factioncode = "JacobTurner", name = "IGUI_SFQuest_Questyno_JacobTurner_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = { {tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_JacobTurner_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", } } });
table.insert(SFQuest_Database.FactionPool,{ factioncode = "MarcusKane", name = "IGUI_SFQuest_Questyno_MarcusKane_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_MarcusKane_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }}});
table.insert(SFQuest_Database.FactionPool,{ factioncode = "TaylorBlaze", name = "IGUI_SFQuest_Questyno_TaylorBlaze_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_TaylorBlaze_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }}});
table.insert(SFQuest_Database.FactionPool,{ factioncode = "MayaBlackwell", name = "IGUI_SFQuest_Questyno_MayaBlackwell_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_MayaBlackwell_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }}});
table.insert(SFQuest_Database.FactionPool,{ factioncode = "AlexMercer", name = "IGUI_SFQuest_Questyno_AlexMercer_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_AlexMercer_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }}});
table.insert(SFQuest_Database.FactionPool,{ factioncode = "GraceChambers", name = "IGUI_SFQuest_Questyno_GraceChambers_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_GraceChambers_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }}});
table.insert(SFQuest_Database.FactionPool,{ factioncode = "LucasMiller", name = "IGUI_SFQuest_Questyno_LucasMiller_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_LucasMiller_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }}});
table.insert(SFQuest_Database.FactionPool,{ factioncode = "DylanHarris", name = "IGUI_SFQuest_Questyno_DylanHarris_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_DylanHarris_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }}});
table.insert(SFQuest_Database.FactionPool,{ factioncode = "HuxleyThorne", name = "IGUI_SFQuest_Questyno_HuxleyThorne_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_HuxleyThorne_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }}});
table.insert(SFQuest_Database.FactionPool,{ factioncode = "TessaAnderson", name = "IGUI_SFQuest_Questyno_TessaAnderson_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_TessaAnderson_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }}});
table.insert(SFQuest_Database.FactionPool,{ factioncode = "VivianParker", name = "IGUI_SFQuest_Questyno_VivianParker_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = { {tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_VivianParker_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", } } });
-- tier 8
table.insert(SFQuest_Database.FactionPool,{ factioncode = "OliviaChambers", name = "IGUI_SFQuest_Questyno_OliviaChambers_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_OliviaChambers_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }}});
-- tier 9
table.insert(SFQuest_Database.FactionPool,{ factioncode = "JamesMorris", name = "IGUI_SFQuest_Questyno_JamesMorris_Name", startrep = 0, minrep = 0, maxtier = 4, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_JamesMorris_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }, {tiername = "IGUI_Factions_Daily_Tier4", minrep = 100, barcolor = "yellow"}}});
table.insert(SFQuest_Database.FactionPool,{ factioncode = "HarperWells", name = "IGUI_SFQuest_Questyno_HarperWells_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_HarperWells_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }}});
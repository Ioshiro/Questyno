require 'SFQuest_Database'

-- Definizioni globali per il sistema Questyno
-- Colori, template fazioni e altre definizioni condivise

-- Definizioni colori
SFQuest_Database.ColorPool.white = {1.0, 1.0, 1.0}
SFQuest_Database.ColorPool.lightpink = {1.0, 0.75, 0.75}
SFQuest_Database.ColorPool.gray = {0.6, 0.6, 0.6}
SFQuest_Database.ColorPool.lightgreen = {0.71, 0.843, 0.65}
SFQuest_Database.ColorPool.darkgreen = {0.42, 0.658, 0.31}
SFQuest_Database.ColorPool.lightred =  {0.866, 0.659, 0.31}
SFQuest_Database.ColorPool.orange = {1.0, 0.6, 0}
SFQuest_Database.ColorPool.purple = {0.4039, 0.30588, 0.6549}
SFQuest_Database.ColorPool.resistenza = {0.5960784, 0.0, 0.0}

-- Template tier fazioni principali
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
        minrep = 2325,
        barcolor = "lightgreen",
        unlocks = "addreputation;RosaChina;100;addreputation;EmilyTerry;100;addreputation;MikePozzo;100;addreputation;PaigeTurner;100;addreputation;AngelicaStella;100;addreputation;LincolnReed;100;addreputation;TomasJoger;100"
    }, {
        tiername = "IGUI_Factions_Resistenza_Tier5",
        minrep = 17500,
        barcolor = "darkgreen",
        unlocks = "addreputation;PamelaPerez;100;addreputation;HeatherThomas;100;addreputation;EliaRima;100;addreputation;VictoriaSecret;100;addreputation;SusanLee;100;addreputation;GeorgeScott;100;addreputation;XuMishura;100;addreputation;DavidTurner;100;addreputation;RobertWilson;100"
    }, {
        tiername = "IGUI_Factions_Resistenza_Tier6",
        minrep = 180000,
        barcolor = "lightred",
        unlocks = "addreputation;BrianWhite;100;addreputation;MarcusKane;100;addreputation;SergenteGrif;100;addreputation;BobRepair;100;addreputation;AlexMercer;100;addreputation;SamuelYoung;100;addreputation;LucasMiller;100;addreputation;TonyLupo;100;addreputation;RafaelPrezioso;100;addreputation;JeffreyLewis;100;addreputation;ChristopherDavis;100;addreputation;SamFisher;100;addreputation;GabrielWalker;100;addreputation;AnselMerrick;100;addreputation;MalachiBlevins;100;addreputation;RichardBrown;100"
    }, {
        tiername = "IGUI_Factions_Resistenza_Tier7",
        minrep = 300000,
        barcolor = "orange",
        unlocks = "addreputation;HarperWells;100;addreputation;EthanSteele;100;addreputation;JohnBaker;100;addreputation;TaylorBlaze;100;addreputation;MayaBlackwell;100;addreputation;GraceChambers;100;addreputation;AndrewTurner;100;addreputation;KylePorter;100;addreputation;HuxleyThorne;100;addreputation;TessaAnderson;100;addreputation;DorianPrescott;100;addreputation;RyanParker;100;addreputation;JacobTurner;100;addreputation;VivianParker;100"
    }, {
        tiername = "IGUI_Factions_Resistenza_Tier8",
        minrep = 500000,
        barcolor = "purple",
        unlocks = "addreputation;DylanHarris;100;addreputation;OliviaChambers;100"
    }, {
        tiername = "IGUI_Factions_Resistenza_Tier9",
        minrep = 10000000,
        barcolor = "resistenza",
        unlocks = "addreputation;JamesMorris;100"
    }, {
        tiername = "IGUI_Factions_Resistenza_Tier10",
        minrep = 10000000,
        barcolor = "white",
    }
}

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

-- Fazione principale La Resistenza
table.insert(SFQuest_Database.FactionPool, {
    factioncode = "LaResistenza",
    name = "IGUI_Factions_LaResistenza",
    startrep = 0,
    minrep = 0,
    maxtier = 9,
    tiers = LaResistenzaTiersTemplate
})

-- Carica l'indice master degli NPC (che è in shared/)
-- Questo assicura che tutti gli NPC spawn files siano stati caricati
require 'NPC/npc_master_index'
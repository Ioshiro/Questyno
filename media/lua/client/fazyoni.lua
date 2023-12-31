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
        minrep = 75,
        barcolor = "purple",
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

-- fazioni
table.insert(SFQuest_Database.FactionPool, {
    factioncode = "LaResistenza",
    name = "IGUI_Factions_LaResistenza",
    startrep = 0,
    minrep = 0,
    maxtier = 8,
    tiers = LaResistenzaTiersTemplate
});


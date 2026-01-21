require 'SFQuest_Database'

-- Fazione per GabrielWalker
table.insert(SFQuest_Database.FactionPool,{ factioncode = "GabrielWalker", name = "IGUI_SFQuest_Questyno_GabrielWalker_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_GabrielWalker_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }}});


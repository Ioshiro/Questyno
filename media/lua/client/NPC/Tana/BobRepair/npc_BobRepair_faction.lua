require 'SFQuest_Database'

-- Fazione per BobRepair
table.insert(SFQuest_Database.FactionPool,{ factioncode = "BobRepair", name = "IGUI_SFQuest_Questyno_BobRepair_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_BobRepair_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }}});


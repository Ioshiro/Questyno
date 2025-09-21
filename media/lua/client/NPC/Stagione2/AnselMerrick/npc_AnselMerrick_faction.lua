require 'SFQuest_Database'

-- Fazione per AnselMerrick
table.insert(SFQuest_Database.FactionPool,{ factioncode = "AnselMerrick", name = "IGUI_SFQuest_Questyno_AnselMerrick_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_AnselMerrick_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }}});


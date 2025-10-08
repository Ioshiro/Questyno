require 'SFQuest_Database'

-- Fazione per TonyLupo
table.insert(SFQuest_Database.FactionPool,{ factioncode = "TonyLupo", name = "IGUI_SFQuest_Questyno_TonyLupo_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_TonyLupo_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }}});


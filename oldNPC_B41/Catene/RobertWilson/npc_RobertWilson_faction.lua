require 'SFQuest_Database'

-- Fazione per RobertWilson
table.insert(SFQuest_Database.FactionPool,{ factioncode = "RobertWilson", name = "IGUI_SFQuest_Questyno_RobertWilson_Name", startrep = 0, minrep = 0, maxtier = 4, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_RobertWilson_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }, {tiername = "IGUI_Factions_Daily_Tier4", minrep = 100, barcolor = "yellow"}} });


require 'SFQuest_Database'

-- Fazione per EzekielFlynn
table.insert(SFQuest_Database.FactionPool,{ factioncode = "EzekielFlynn", name = "IGUI_SFQuest_EzekielFlynn_Name", startrep = 0, minrep = 0, maxtier = 4, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;EzekielFlynn_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }, {tiername = "IGUI_Factions_Daily_Tier4", minrep = 100, barcolor = "yellow"}}});


require 'SFQuest_Database'

-- Pool quest per EmilyTerry
SFQuest_Database.RandomEventPool = SFQuest_Database.RandomEventPool or {}
SFQuest_Database.RandomEventPool.Questyno = SFQuest_Database.RandomEventPool.Questyno or {}

SFQuest_Database.RandomEventPool.Questyno.EmilyTerry = {
		"Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry1_Begin;Questyno_EmilyTerry1",
		"Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry2_Begin;Questyno_EmilyTerry2",
		"Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry3_Begin;Questyno_EmilyTerry3",
		"Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry4_Begin;Questyno_EmilyTerry4",
		"Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry5_Begin;Questyno_EmilyTerry5",
		"Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry6_Begin;Questyno_EmilyTerry6",
		"Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry7_Begin;Questyno_EmilyTerry7",
		"Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry8_Begin;Questyno_EmilyTerry8",
		"Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry9_Begin;Questyno_EmilyTerry9",
		"Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry10_Begin;Questyno_EmilyTerry10",
		"Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry11_Begin;Questyno_EmilyTerry11",
		"Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry12_Begin;Questyno_EmilyTerry12",
		"Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry13_Begin;Questyno_EmilyTerry13",
		"Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry14_Begin;Questyno_EmilyTerry14",
		--"Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry15_Begin;Questyno_EmilyTerry15",
		"Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry16_Begin;Questyno_EmilyTerry16",
		"Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry17_Begin;Questyno_EmilyTerry17",
		"Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry18_Begin;Questyno_EmilyTerry18",
		"Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry19_Begin;Questyno_EmilyTerry19",
		"Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry20_Begin;Questyno_EmilyTerry20",
		"Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry21_Begin;Questyno_EmilyTerry21",
		"Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry22_Begin;Questyno_EmilyTerry22",
		"Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry23_Begin;Questyno_EmilyTerry23",
		"Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry24_Begin;Questyno_EmilyTerry24",
		"Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry25_Begin;Questyno_EmilyTerry25",
	}

-- Inserimento nel DailyEventPool
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_EmilyTerry",
	condition = "notmaxedwithcode;Questyno_EmilyTerry;1;hasfactiontier;EmilyTerry;3",
	commands = "randomcodedworldfrompool;Questyno_EmilyTerry;Questyno;EmilyTerry",
	days = 0,
	frequency = 1
})

-- Inserimento nel StartingPool per attivazione daily alla creazione personaggio
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_EmilyTerry" })

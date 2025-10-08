require 'SFQuest_Database'

-- Pool quest per SamFisher
SFQuest_Database.RandomEventPool = SFQuest_Database.RandomEventPool or {}
SFQuest_Database.RandomEventPool.Questyno = SFQuest_Database.RandomEventPool.Questyno or {}

SFQuest_Database.RandomEventPool.Questyno.SamFisher = {
		"Questyno_SamFisher;SFQuest_Questyno_SamFisher1_Begin;Questyno_SamFisher1",
		"Questyno_SamFisher;SFQuest_Questyno_SamFisher2_Begin;Questyno_SamFisher2",
		"Questyno_SamFisher;SFQuest_Questyno_SamFisher3_Begin;Questyno_SamFisher3",
		"Questyno_SamFisher;SFQuest_Questyno_SamFisher4_Begin;Questyno_SamFisher4",
		"Questyno_SamFisher;SFQuest_Questyno_SamFisher5_Begin;Questyno_SamFisher5",
		"Questyno_SamFisher;SFQuest_Questyno_SamFisher6_Begin;Questyno_SamFisher6",
		"Questyno_SamFisher;SFQuest_Questyno_SamFisher7_Begin;Questyno_SamFisher7",
		"Questyno_SamFisher;SFQuest_Questyno_SamFisher8_Begin;Questyno_SamFisher8",
		"Questyno_SamFisher;SFQuest_Questyno_SamFisher9_Begin;Questyno_SamFisher9",
		"Questyno_SamFisher;SFQuest_Questyno_SamFisher10_Begin;Questyno_SamFisher10",
		"Questyno_SamFisher;SFQuest_Questyno_SamFisher11_Begin;Questyno_SamFisher11",
		"Questyno_SamFisher;SFQuest_Questyno_SamFisher12_Begin;Questyno_SamFisher12",
		"Questyno_SamFisher;SFQuest_Questyno_SamFisher13_Begin;Questyno_SamFisher13",
		"Questyno_SamFisher;SFQuest_Questyno_SamFisher14_Begin;Questyno_SamFisher14",
		"Questyno_SamFisher;SFQuest_Questyno_SamFisher15_Begin;Questyno_SamFisher15",
		"Questyno_SamFisher;SFQuest_Questyno_SamFisher16_Begin;Questyno_SamFisher16",
		"Questyno_SamFisher;SFQuest_Questyno_SamFisher17_Begin;Questyno_SamFisher17",
		"Questyno_SamFisher;SFQuest_Questyno_SamFisher18_Begin;Questyno_SamFisher18",
		"Questyno_SamFisher;SFQuest_Questyno_SamFisher19_Begin;Questyno_SamFisher19",
		"Questyno_SamFisher;SFQuest_Questyno_SamFisher20_Begin;Questyno_SamFisher20",
		"Questyno_SamFisher;SFQuest_Questyno_SamFisher21_Begin;Questyno_SamFisher21",
		"Questyno_SamFisher;SFQuest_Questyno_SamFisher22_Begin;Questyno_SamFisher22",
		"Questyno_SamFisher;SFQuest_Questyno_SamFisher23_Begin;Questyno_SamFisher23",
		"Questyno_SamFisher;SFQuest_Questyno_SamFisher24_Begin;Questyno_SamFisher24",
	}

-- Inserimento nel DailyEventPool
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_SamFisher",
	condition = "notmaxedwithcode;Questyno_SamFisher;1;hasfactiontier;SamFisher;3",
	commands = "randomcodedworldfrompool;Questyno_SamFisher;Questyno;SamFisher",
	days = 0,
	frequency = 1
})

-- Inserimento nel StartingPool per attivazione daily alla creazione personaggio
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_SamFisher" })

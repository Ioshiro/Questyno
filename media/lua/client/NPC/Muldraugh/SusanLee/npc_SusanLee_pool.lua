require 'SFQuest_Database'

-- Pool quest per SusanLee
SFQuest_Database.RandomEventPool = SFQuest_Database.RandomEventPool or {}
SFQuest_Database.RandomEventPool.Questyno = SFQuest_Database.RandomEventPool.Questyno or {}

SFQuest_Database.RandomEventPool.Questyno.SusanLee = {
		"Questyno_SusanLee;SFQuest_Questyno_SusanLee1_Begin;Questyno_SusanLee1",
		"Questyno_SusanLee;SFQuest_Questyno_SusanLee2_Begin;Questyno_SusanLee2",
		"Questyno_SusanLee;SFQuest_Questyno_SusanLee3_Begin;Questyno_SusanLee3",
		"Questyno_SusanLee;SFQuest_Questyno_SusanLee4_Begin;Questyno_SusanLee4",
		"Questyno_SusanLee;SFQuest_Questyno_SusanLee5_Begin;Questyno_SusanLee5",
		"Questyno_SusanLee;SFQuest_Questyno_SusanLee6_Begin;Questyno_SusanLee6",
		"Questyno_SusanLee;SFQuest_Questyno_SusanLee7_Begin;Questyno_SusanLee7",
		"Questyno_SusanLee;SFQuest_Questyno_SusanLee8_Begin;Questyno_SusanLee8",
		"Questyno_SusanLee;SFQuest_Questyno_SusanLee9_Begin;Questyno_SusanLee9",
		"Questyno_SusanLee;SFQuest_Questyno_SusanLee13_Begin;Questyno_SusanLee13",
		"Questyno_SusanLee;SFQuest_Questyno_SusanLee14_Begin;Questyno_SusanLee14",
		"Questyno_SusanLee;SFQuest_Questyno_SusanLee15_Begin;Questyno_SusanLee15",
		"Questyno_SusanLee;SFQuest_Questyno_SusanLee16_Begin;Questyno_SusanLee16",
		"Questyno_SusanLee;SFQuest_Questyno_SusanLee17_Begin;Questyno_SusanLee17",
		"Questyno_SusanLee;SFQuest_Questyno_SusanLee18_Begin;Questyno_SusanLee18",
		"Questyno_SusanLee;SFQuest_Questyno_SusanLee19_Begin;Questyno_SusanLee19",
		"Questyno_SusanLee;SFQuest_Questyno_SusanLee20_Begin;Questyno_SusanLee20",
		"Questyno_SusanLee;SFQuest_Questyno_SusanLee21_Begin;Questyno_SusanLee21",
		"Questyno_SusanLee;SFQuest_Questyno_SusanLee22_Begin;Questyno_SusanLee22",
		"Questyno_SusanLee;SFQuest_Questyno_SusanLee23_Begin;Questyno_SusanLee23",
	}

-- Inserimento nel DailyEventPool
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_SusanLee",
	condition = "notmaxedwithcode;Questyno_SusanLee;1;hasfactiontier;SusanLee;3",
	commands = "randomcodedworldfrompool;Questyno_SusanLee;Questyno;SusanLee",
	days = 0,
	frequency = 1
})

-- Inserimento nel StartingPool per attivazione daily alla creazione personaggio
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_SusanLee" })

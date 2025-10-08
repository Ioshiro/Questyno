require 'SFQuest_Database'

-- Pool quest per RosaChina
SFQuest_Database.RandomEventPool = SFQuest_Database.RandomEventPool or {}
SFQuest_Database.RandomEventPool.Questyno = SFQuest_Database.RandomEventPool.Questyno or {}

SFQuest_Database.RandomEventPool.Questyno.RosaChina = {
		"Questyno_RosaChina;SFQuest_Questyno_RosaChina1_Begin;Questyno_RosaChina1",
		"Questyno_RosaChina;SFQuest_Questyno_RosaChina2_Begin;Questyno_RosaChina2",
		"Questyno_RosaChina;SFQuest_Questyno_RosaChina3_Begin;Questyno_RosaChina3",
		"Questyno_RosaChina;SFQuest_Questyno_RosaChina4_Begin;Questyno_RosaChina4",
		"Questyno_RosaChina;SFQuest_Questyno_RosaChina5_Begin;Questyno_RosaChina5",
		"Questyno_RosaChina;SFQuest_Questyno_RosaChina6_Begin;Questyno_RosaChina6",
		"Questyno_RosaChina;SFQuest_Questyno_RosaChina7_Begin;Questyno_RosaChina7",
		"Questyno_RosaChina;SFQuest_Questyno_RosaChina8_Begin;Questyno_RosaChina8",
		"Questyno_RosaChina;SFQuest_Questyno_RosaChina9_Begin;Questyno_RosaChina9",
		"Questyno_RosaChina;SFQuest_Questyno_RosaChina10_Begin;Questyno_RosaChina10",
		"Questyno_RosaChina;SFQuest_Questyno_RosaChina11_Begin;Questyno_RosaChina11",
		"Questyno_RosaChina;SFQuest_Questyno_RosaChina12_Begin;Questyno_RosaChina12",
		"Questyno_RosaChina;SFQuest_Questyno_RosaChina13_Begin;Questyno_RosaChina13",
		"Questyno_RosaChina;SFQuest_Questyno_RosaChina14_Begin;Questyno_RosaChina14",
		"Questyno_RosaChina;SFQuest_Questyno_RosaChina15_Begin;Questyno_RosaChina15",
		"Questyno_RosaChina;SFQuest_Questyno_RosaChina16_Begin;Questyno_RosaChina16",
		"Questyno_RosaChina;SFQuest_Questyno_RosaChina17_Begin;Questyno_RosaChina17",
		"Questyno_RosaChina;SFQuest_Questyno_RosaChina18_Begin;Questyno_RosaChina18",
		--"Questyno_RosaChina;SFQuest_Questyno_RosaChina19_Begin;Questyno_RosaChina19",
		"Questyno_RosaChina;SFQuest_Questyno_RosaChina20_Begin;Questyno_RosaChina20",
		"Questyno_RosaChina;SFQuest_Questyno_RosaChina21_Begin;Questyno_RosaChina21",
		"Questyno_RosaChina;SFQuest_Questyno_RosaChina22_Begin;Questyno_RosaChina22",
		"Questyno_RosaChina;SFQuest_Questyno_RosaChina23_Begin;Questyno_RosaChina23",
		"Questyno_RosaChina;SFQuest_Questyno_RosaChina24_Begin;Questyno_RosaChina24",
		"Questyno_RosaChina;SFQuest_Questyno_RosaChina25_Begin;Questyno_RosaChina25",
		--"Questyno_RosaChina;SFQuest_Questyno_RosaChina26_Begin;Questyno_RosaChina26",
		--"Questyno_RosaChina;SFQuest_Questyno_RosaChina27_Begin;Questyno_RosaChina27",
	}

-- Inserimento nel DailyEventPool
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_RosaChina",
	condition = "notmaxedwithcode;Questyno_RosaChina;1;hasfactiontier;RosaChina;3",
	commands = "randomcodedworldfrompool;Questyno_RosaChina;Questyno;RosaChina",
	days = 0,
	frequency = 1
})

-- Inserimento nel StartingPool per attivazione daily alla creazione personaggio
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_RosaChina" })

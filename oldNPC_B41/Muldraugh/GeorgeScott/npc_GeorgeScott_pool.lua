require 'SFQuest_Database'

-- Pool quest per GeorgeScott
SFQuest_Database.RandomEventPool = SFQuest_Database.RandomEventPool or {}
SFQuest_Database.RandomEventPool.Questyno = SFQuest_Database.RandomEventPool.Questyno or {}

SFQuest_Database.RandomEventPool.Questyno.GeorgeScott = {
		"Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott1_Begin;Questyno_GeorgeScott1",
		"Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott2_Begin;Questyno_GeorgeScott2",
		"Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott3_Begin;Questyno_GeorgeScott3",
		"Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott4_Begin;Questyno_GeorgeScott4",
		"Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott5_Begin;Questyno_GeorgeScott5",
		"Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott6_Begin;Questyno_GeorgeScott6",
		"Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott7_Begin;Questyno_GeorgeScott7",
		"Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott8_Begin;Questyno_GeorgeScott8",
		"Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott9_Begin;Questyno_GeorgeScott9",
		"Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott10_Begin;Questyno_GeorgeScott10",
		"Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott11_Begin;Questyno_GeorgeScott11",
		"Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott12_Begin;Questyno_GeorgeScott12",
		"Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott13_Begin;Questyno_GeorgeScott13",
		"Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott14_Begin;Questyno_GeorgeScott14",
		"Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott15_Begin;Questyno_GeorgeScott15",
		"Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott16_Begin;Questyno_GeorgeScott16",
		"Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott17_Begin;Questyno_GeorgeScott17",
		"Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott18_Begin;Questyno_GeorgeScott18",
		"Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott19_Begin;Questyno_GeorgeScott19",
		"Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott20_Begin;Questyno_GeorgeScott20",
		"Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott21_Begin;Questyno_GeorgeScott21",
		"Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott22_Begin;Questyno_GeorgeScott22",
		"Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott23_Begin;Questyno_GeorgeScott23",
	}

-- Inserimento nel DailyEventPool
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_GeorgeScott",
	condition = "notmaxedwithcode;Questyno_GeorgeScott;1;hasfactiontier;GeorgeScott;3",
	commands = "randomcodedworldfrompool;Questyno_GeorgeScott;Questyno;GeorgeScott",
	days = 0,
	frequency = 1
})

-- Inserimento nel StartingPool per attivazione daily alla creazione personaggio
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_GeorgeScott" })

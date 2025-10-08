require 'SFQuest_Database'

-- Pool quest per JeffreyLewis
SFQuest_Database.RandomEventPool = SFQuest_Database.RandomEventPool or {}
SFQuest_Database.RandomEventPool.Questyno = SFQuest_Database.RandomEventPool.Questyno or {}

SFQuest_Database.RandomEventPool.Questyno.JeffreyLewis = {
		"Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis1_Begin;Questyno_JeffreyLewis1",
		"Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis2_Begin;Questyno_JeffreyLewis2",
		"Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis3_Begin;Questyno_JeffreyLewis3",
		"Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis4_Begin;Questyno_JeffreyLewis4",
		"Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis5_Begin;Questyno_JeffreyLewis5",
		"Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis6_Begin;Questyno_JeffreyLewis6",
		"Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis7_Begin;Questyno_JeffreyLewis7",
		"Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis8_Begin;Questyno_JeffreyLewis8",
		"Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis9_Begin;Questyno_JeffreyLewis9",
		"Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis10_Begin;Questyno_JeffreyLewis10",
		"Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis11_Begin;Questyno_JeffreyLewis11",
		"Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis12_Begin;Questyno_JeffreyLewis12",
		"Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis13_Begin;Questyno_JeffreyLewis13",
		"Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis14_Begin;Questyno_JeffreyLewis14",
		"Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis15_Begin;Questyno_JeffreyLewis15",
		"Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis16_Begin;Questyno_JeffreyLewis16",
		"Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis17_Begin;Questyno_JeffreyLewis17",
		"Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis18_Begin;Questyno_JeffreyLewis18",
		"Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis19_Begin;Questyno_JeffreyLewis19",
		"Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis20_Begin;Questyno_JeffreyLewis20",
		"Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis21_Begin;Questyno_JeffreyLewis21",
		"Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis22_Begin;Questyno_JeffreyLewis22",
		"Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis23_Begin;Questyno_JeffreyLewis23",
	}

-- Inserimento nel DailyEventPool
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_JeffreyLewis",
	condition = "notmaxedwithcode;Questyno_JeffreyLewis;1;hasfactiontier;JeffreyLewis;3",
	commands = "randomcodedworldfrompool;Questyno_JeffreyLewis;Questyno;JeffreyLewis",
	days = 0,
	frequency = 1
})

-- Inserimento nel StartingPool per attivazione daily alla creazione personaggio
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_JeffreyLewis" })

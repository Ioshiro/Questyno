require 'SFQuest_Database'

-- Pool quest per Grif
SFQuest_Database.RandomEventPool = SFQuest_Database.RandomEventPool or {}
SFQuest_Database.RandomEventPool.Questyno = SFQuest_Database.RandomEventPool.Questyno or {}

SFQuest_Database.RandomEventPool.Questyno.Grif = {
		"Questyno_Grif;SFQuest_Questyno_Grif1_Begin;Questyno_Grif1",
		"Questyno_Grif;SFQuest_Questyno_Grif2_Begin;Questyno_Grif2",
		"Questyno_Grif;SFQuest_Questyno_Grif3_Begin;Questyno_Grif3",
		"Questyno_Grif;SFQuest_Questyno_Grif4_Begin;Questyno_Grif4",
		"Questyno_Grif;SFQuest_Questyno_Grif5_Begin;Questyno_Grif5",
		"Questyno_Grif;SFQuest_Questyno_Grif6_Begin;Questyno_Grif6",
		"Questyno_Grif;SFQuest_Questyno_Grif7_Begin;Questyno_Grif7",
		"Questyno_Grif;SFQuest_Questyno_Grif8_Begin;Questyno_Grif8",
		"Questyno_Grif;SFQuest_Questyno_Grif9_Begin;Questyno_Grif9",
		"Questyno_Grif;SFQuest_Questyno_Grif10_Begin;Questyno_Grif10",
		"Questyno_Grif;SFQuest_Questyno_Grif11_Begin;Questyno_Grif11",
		"Questyno_Grif;SFQuest_Questyno_Grif12_Begin;Questyno_Grif12",
		"Questyno_Grif;SFQuest_Questyno_Grif13_Begin;Questyno_Grif13",
		"Questyno_Grif;SFQuest_Questyno_Grif14_Begin;Questyno_Grif14",
		"Questyno_Grif;SFQuest_Questyno_Grif15_Begin;Questyno_Grif15",
		"Questyno_Grif;SFQuest_Questyno_Grif16_Begin;Questyno_Grif16",
		"Questyno_Grif;SFQuest_Questyno_Grif17_Begin;Questyno_Grif17",
		"Questyno_Grif;SFQuest_Questyno_Grif18_Begin;Questyno_Grif18",
		"Questyno_Grif;SFQuest_Questyno_Grif19_Begin;Questyno_Grif19",
		"Questyno_Grif;SFQuest_Questyno_Grif20_Begin;Questyno_Grif20",
		"Questyno_Grif;SFQuest_Questyno_Grif21_Begin;Questyno_Grif21",
		"Questyno_Grif;SFQuest_Questyno_Grif22_Begin;Questyno_Grif22",
		"Questyno_Grif;SFQuest_Questyno_Grif23_Begin;Questyno_Grif23",
		"Questyno_Grif;SFQuest_Questyno_Grif24_Begin;Questyno_Grif24",
		"Questyno_Grif;SFQuest_Questyno_Grif25_Begin;Questyno_Grif25",
		"Questyno_Grif;SFQuest_Questyno_Grif26_Begin;Questyno_Grif26",
		"Questyno_Grif;SFQuest_Questyno_Grif27_Begin;Questyno_Grif27",
		"Questyno_Grif;SFQuest_Questyno_Grif28_Begin;Questyno_Grif28",
		"Questyno_Grif;SFQuest_Questyno_Grif29_Begin;Questyno_Grif29",
		"Questyno_Grif;SFQuest_Questyno_Grif30_Begin;Questyno_Grif30",
		"Questyno_Grif;SFQuest_Questyno_Grif31_Begin;Questyno_Grif31",
	}

-- Inserimento nel DailyEventPool
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_Grif",
	condition = "notmaxedwithcode;Questyno_Grif;1;hasfactiontier;Grif;3",
	commands = "randomcodedworldfrompool;Questyno_Grif;Questyno;Grif",
	days = 0,
	frequency = 1
})

-- Inserimento nel StartingPool per attivazione daily alla creazione personaggio
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_SergenteGrif" })

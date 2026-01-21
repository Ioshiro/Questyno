require 'SFQuest_Database'

-- Pool quest per DavidTurner
SFQuest_Database.RandomEventPool = SFQuest_Database.RandomEventPool or {}
SFQuest_Database.RandomEventPool.Questyno = SFQuest_Database.RandomEventPool.Questyno or {}

SFQuest_Database.RandomEventPool.Questyno.DavidTurner = {
		"Questyno_DavidTurner;SFQuest_Questyno_DavidTurner1_Begin;Questyno_DavidTurner1",
		"Questyno_DavidTurner;SFQuest_Questyno_DavidTurner2_Begin;Questyno_DavidTurner2",
		"Questyno_DavidTurner;SFQuest_Questyno_DavidTurner3_Begin;Questyno_DavidTurner3",
		"Questyno_DavidTurner;SFQuest_Questyno_DavidTurner4_Begin;Questyno_DavidTurner4",
		"Questyno_DavidTurner;SFQuest_Questyno_DavidTurner5_Begin;Questyno_DavidTurner5",
		"Questyno_DavidTurner;SFQuest_Questyno_DavidTurner6_Begin;Questyno_DavidTurner6",
		"Questyno_DavidTurner;SFQuest_Questyno_DavidTurner7_Begin;Questyno_DavidTurner7",
		"Questyno_DavidTurner;SFQuest_Questyno_DavidTurner8_Begin;Questyno_DavidTurner8",
		"Questyno_DavidTurner;SFQuest_Questyno_DavidTurner9_Begin;Questyno_DavidTurner9",
		"Questyno_DavidTurner;SFQuest_Questyno_DavidTurner10_Begin;Questyno_DavidTurner10",
		"Questyno_DavidTurner;SFQuest_Questyno_DavidTurner11_Begin;Questyno_DavidTurner11",
		"Questyno_DavidTurner;SFQuest_Questyno_DavidTurner12_Begin;Questyno_DavidTurner12",
		"Questyno_DavidTurner;SFQuest_Questyno_DavidTurner13_Begin;Questyno_DavidTurner13",
		"Questyno_DavidTurner;SFQuest_Questyno_DavidTurner14_Begin;Questyno_DavidTurner14",
		"Questyno_DavidTurner;SFQuest_Questyno_DavidTurner15_Begin;Questyno_DavidTurner15",
		"Questyno_DavidTurner;SFQuest_Questyno_DavidTurner16_Begin;Questyno_DavidTurner16",
		"Questyno_DavidTurner;SFQuest_Questyno_DavidTurner17_Begin;Questyno_DavidTurner17",
		"Questyno_DavidTurner;SFQuest_Questyno_DavidTurner18_Begin;Questyno_DavidTurner18",
		"Questyno_DavidTurner;SFQuest_Questyno_DavidTurner19_Begin;Questyno_DavidTurner19",
		"Questyno_DavidTurner;SFQuest_Questyno_DavidTurner20_Begin;Questyno_DavidTurner20",
		"Questyno_DavidTurner;SFQuest_Questyno_DavidTurner21_Begin;Questyno_DavidTurner21",
		"Questyno_DavidTurner;SFQuest_Questyno_DavidTurner22_Begin;Questyno_DavidTurner22",
		"Questyno_DavidTurner;SFQuest_Questyno_DavidTurner23_Begin;Questyno_DavidTurner23",
	}

-- Inserimento nel DailyEventPool
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_DavidTurner",
	condition = "notmaxedwithcode;Questyno_DavidTurner;1;hasfactiontier;DavidTurner;3",
	commands = "randomcodedworldfrompool;Questyno_DavidTurner;Questyno;DavidTurner",
	days = 0,
	frequency = 1
})

-- Inserimento nel StartingPool per attivazione daily alla creazione personaggio
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_DavidTurner" })

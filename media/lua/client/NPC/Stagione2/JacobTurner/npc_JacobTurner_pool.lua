require 'SFQuest_Database'

-- Pool quest per JacobTurner
SFQuest_Database.RandomEventPool = SFQuest_Database.RandomEventPool or {}
SFQuest_Database.RandomEventPool.Questyno = SFQuest_Database.RandomEventPool.Questyno or {}

SFQuest_Database.RandomEventPool.Questyno.JacobTurner = {
		"Questyno_JacobTurner;SFQuest_Questyno_JacobTurner1_Begin;Questyno_JacobTurner1",
		"Questyno_JacobTurner;SFQuest_Questyno_JacobTurner2_Begin;Questyno_JacobTurner2",
		"Questyno_JacobTurner;SFQuest_Questyno_JacobTurner3_Begin;Questyno_JacobTurner3",
		"Questyno_JacobTurner;SFQuest_Questyno_JacobTurner4_Begin;Questyno_JacobTurner4",
		"Questyno_JacobTurner;SFQuest_Questyno_JacobTurner5_Begin;Questyno_JacobTurner5",
		"Questyno_JacobTurner;SFQuest_Questyno_JacobTurner6_Begin;Questyno_JacobTurner6",
		"Questyno_JacobTurner;SFQuest_Questyno_JacobTurner7_Begin;Questyno_JacobTurner7",
		"Questyno_JacobTurner;SFQuest_Questyno_JacobTurner8_Begin;Questyno_JacobTurner8",
		"Questyno_JacobTurner;SFQuest_Questyno_JacobTurner9_Begin;Questyno_JacobTurner9",
		"Questyno_JacobTurner;SFQuest_Questyno_JacobTurner10_Begin;Questyno_JacobTurner10",
		"Questyno_JacobTurner;SFQuest_Questyno_JacobTurner11_Begin;Questyno_JacobTurner11",
		"Questyno_JacobTurner;SFQuest_Questyno_JacobTurner12_Begin;Questyno_JacobTurner12",
		"Questyno_JacobTurner;SFQuest_Questyno_JacobTurner13_Begin;Questyno_JacobTurner13",
		"Questyno_JacobTurner;SFQuest_Questyno_JacobTurner14_Begin;Questyno_JacobTurner14",
		"Questyno_JacobTurner;SFQuest_Questyno_JacobTurner15_Begin;Questyno_JacobTurner15",
	}

-- Inserimento nel DailyEventPool
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_JacobTurner",
	condition = "notmaxedwithcode;Questyno_JacobTurner;1;hasfactiontier;JacobTurner;3",
	commands = "randomcodedworldfrompool;Questyno_JacobTurner;Questyno;JacobTurner",
	days = 0,
	frequency = 1
})

-- Inserimento nel StartingPool per attivazione daily alla creazione personaggio
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_JacobTurner" })

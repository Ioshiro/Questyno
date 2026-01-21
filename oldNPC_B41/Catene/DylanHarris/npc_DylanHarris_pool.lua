require 'SFQuest_Database'

-- Pool quest per DylanHarris
SFQuest_Database.RandomEventPool = SFQuest_Database.RandomEventPool or {}
SFQuest_Database.RandomEventPool.Questyno = SFQuest_Database.RandomEventPool.Questyno or {}

SFQuest_Database.RandomEventPool.Questyno.DylanHarris = {
		"Questyno_DylanHarris;SFQuest_Questyno_DylanHarris1_Begin;Questyno_DylanHarris1",
		"Questyno_DylanHarris;SFQuest_Questyno_DylanHarris2_Begin;Questyno_DylanHarris2",
		"Questyno_DylanHarris;SFQuest_Questyno_DylanHarris3_Begin;Questyno_DylanHarris3",
		"Questyno_DylanHarris;SFQuest_Questyno_DylanHarris4_Begin;Questyno_DylanHarris4",
		"Questyno_DylanHarris;SFQuest_Questyno_DylanHarris5_Begin;Questyno_DylanHarris5",
		"Questyno_DylanHarris;SFQuest_Questyno_DylanHarris6_Begin;Questyno_DylanHarris6",
		"Questyno_DylanHarris;SFQuest_Questyno_DylanHarris7_Begin;Questyno_DylanHarris7",
	}

-- Inserimento nel DailyEventPool
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_DylanHarris",
	condition = "notmaxedwithcode;Questyno_DylanHarris;1;hasfactiontier;DylanHarris;3",
	commands = "randomcodedworldfrompool;Questyno_DylanHarris;Questyno;DylanHarris",
	days = 0,
	frequency = 1
})

-- Inserimento nel StartingPool per attivazione daily alla creazione personaggio
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_DylanHarris" })

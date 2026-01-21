require 'SFQuest_Database'

-- Pool quest per GabrielWalker
SFQuest_Database.RandomEventPool = SFQuest_Database.RandomEventPool or {}
SFQuest_Database.RandomEventPool.Questyno = SFQuest_Database.RandomEventPool.Questyno or {}

SFQuest_Database.RandomEventPool.Questyno.GabrielWalker = {
		"Questyno_GabrielWalker;SFQuest_Questyno_GabrielWalker1_Begin;Questyno_GabrielWalker1",
		"Questyno_GabrielWalker;SFQuest_Questyno_GabrielWalker2_Begin;Questyno_GabrielWalker2",
		"Questyno_GabrielWalker;SFQuest_Questyno_GabrielWalker3_Begin;Questyno_GabrielWalker3",
		"Questyno_GabrielWalker;SFQuest_Questyno_GabrielWalker4_Begin;Questyno_GabrielWalker4",
		"Questyno_GabrielWalker;SFQuest_Questyno_GabrielWalker5_Begin;Questyno_GabrielWalker5",
		"Questyno_GabrielWalker;SFQuest_Questyno_GabrielWalker6_Begin;Questyno_GabrielWalker6",
		"Questyno_GabrielWalker;SFQuest_Questyno_GabrielWalker7_Begin;Questyno_GabrielWalker7",
		"Questyno_GabrielWalker;SFQuest_Questyno_GabrielWalker8_Begin;Questyno_GabrielWalker8",
		"Questyno_GabrielWalker;SFQuest_Questyno_GabrielWalker9_Begin;Questyno_GabrielWalker9",
	}

-- Inserimento nel DailyEventPool
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_GabrielWalker",
	condition = "notmaxedwithcode;Questyno_GabrielWalker;1;hasfactiontier;GabrielWalker;3",
	commands = "randomcodedworldfrompool;Questyno_GabrielWalker;Questyno;GabrielWalker",
	days = 0,
	frequency = 1
})

-- Inserimento nel StartingPool per attivazione daily alla creazione personaggio
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_GabrielWalker" })

require 'SFQuest_Database'

-- Pool quest per GarrettKing
SFQuest_Database.RandomEventPool = SFQuest_Database.RandomEventPool or {}
SFQuest_Database.RandomEventPool.Questyno = SFQuest_Database.RandomEventPool.Questyno or {}

SFQuest_Database.RandomEventPool.Questyno.GarrettKing = {
		"Questyno_GarrettKing;SFQuest_Questyno_GarrettKing_Begin;Questyno_GarrettKing",
	}

-- Inserimento nel DailyEventPool
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_GarrettKing",
	condition = "notmaxedwithcode;Questyno_GarrettKing;1;hasfactiontier;GarrettKing;3",
	commands = "randomcodedworldfrompool;Questyno_GarrettKing;Questyno;GarrettKing",
	days = 0,
	frequency = 1
})

-- Inserimento nel StartingPool per attivazione daily alla creazione personaggio
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_GarrettKing" })

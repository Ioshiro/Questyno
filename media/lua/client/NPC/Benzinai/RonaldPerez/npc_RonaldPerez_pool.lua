require 'SFQuest_Database'

-- Pool quest per RonaldPerez
SFQuest_Database.RandomEventPool = SFQuest_Database.RandomEventPool or {}
SFQuest_Database.RandomEventPool.Questyno = SFQuest_Database.RandomEventPool.Questyno or {}

SFQuest_Database.RandomEventPool.Questyno.RonaldPerez = {
		"Questyno_RonaldPerez;SFQuest_Questyno_RonaldPerez_Begin;Questyno_RonaldPerez",
	}

-- Inserimento nel DailyEventPool
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_RonaldPerez",
	condition = "notmaxedwithcode;Questyno_RonaldPerez;1;hasfactiontier;RonaldPerez;3",
	commands = "randomcodedworldfrompool;Questyno_RonaldPerez;Questyno;RonaldPerez",
	days = 0,
	frequency = 1
})

-- Inserimento nel StartingPool per attivazione daily alla creazione personaggio
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_RonaldPerez" })

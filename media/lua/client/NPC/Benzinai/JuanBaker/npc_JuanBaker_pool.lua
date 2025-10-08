require 'SFQuest_Database'

-- Pool quest per JuanBaker
SFQuest_Database.RandomEventPool = SFQuest_Database.RandomEventPool or {}
SFQuest_Database.RandomEventPool.Questyno = SFQuest_Database.RandomEventPool.Questyno or {}

SFQuest_Database.RandomEventPool.Questyno.JuanBaker = {
		"Questyno_JuanBaker;SFQuest_Questyno_JuanBaker_Begin;Questyno_JuanBaker",
	}

-- Inserimento nel DailyEventPool
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_JuanBaker",
	condition = "notmaxedwithcode;Questyno_JuanBaker;1;hasfactiontier;JuanBaker;3",
	commands = "randomcodedworldfrompool;Questyno_JuanBaker;Questyno;JuanBaker",
	days = 0,
	frequency = 1
})

-- Inserimento nel StartingPool per attivazione daily alla creazione personaggio
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_JuanBaker" })

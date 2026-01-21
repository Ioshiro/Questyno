require 'SFQuest_Database'

-- Pool quest per SandraHarris
SFQuest_Database.RandomEventPool = SFQuest_Database.RandomEventPool or {}
SFQuest_Database.RandomEventPool.Questyno = SFQuest_Database.RandomEventPool.Questyno or {}

SFQuest_Database.RandomEventPool.Questyno.SandraHarris = {
		"Questyno_SandraHarris;SFQuest_Questyno_SandraHarris_Begin;Questyno_SandraHarris",
	}

-- Inserimento nel DailyEventPool
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_SandraHarris",
	condition = "notmaxedwithcode;Questyno_SandraHarris;1;hasfactiontier;SandraHarris;3",
	commands = "randomcodedworldfrompool;Questyno_SandraHarris;Questyno;SandraHarris",
	days = 0,
	frequency = 1
})

-- Inserimento nel StartingPool per attivazione daily alla creazione personaggio
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_SandraHarris" })

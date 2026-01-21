require 'SFQuest_Database'

-- Pool quest per VivianParker
SFQuest_Database.RandomEventPool = SFQuest_Database.RandomEventPool or {}
SFQuest_Database.RandomEventPool.Questyno = SFQuest_Database.RandomEventPool.Questyno or {}

SFQuest_Database.RandomEventPool.Questyno.VivianParker = {
		"Questyno_VivianParker;SFQuest_Questyno_VivianParker1_Begin;Questyno_VivianParker1",
	}

-- Inserimento nel DailyEventPool
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_VivianParker",
	condition = "notmaxedwithcode;Questyno_VivianParker;1;hasfactiontier;VivianParker;3",
	commands = "randomcodedworldfrompool;Questyno_VivianParker;Questyno;VivianParker",
	days = 0,
	frequency = 1
})

-- Inserimento nel StartingPool per attivazione daily alla creazione personaggio
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_VivianParker" })

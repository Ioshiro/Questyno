require 'SFQuest_Database'

-- Pool quest per LincolnReed
SFQuest_Database.RandomEventPool = SFQuest_Database.RandomEventPool or {}
SFQuest_Database.RandomEventPool.Questyno = SFQuest_Database.RandomEventPool.Questyno or {}

SFQuest_Database.RandomEventPool.Questyno.LincolnReed = {
		"Questyno_LincolnReed;SFQuest_Questyno_LincolnReed1_Begin;Questyno_LincolnReed1",
	}

-- Inserimento nel DailyEventPool
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_LincolnReed",
	condition = "notmaxedwithcode;Questyno_LincolnReed;1;hasfactiontier;LincolnReed;3",
	commands = "randomcodedworldfrompool;Questyno_LincolnReed;Questyno;LincolnReed",
	days = 0,
	frequency = 1
})

-- Inserimento nel StartingPool per attivazione daily alla creazione personaggio
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_LincolnReed" })

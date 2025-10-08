require 'SFQuest_Database'

-- Pool quest per MarvinPerry
SFQuest_Database.RandomEventPool = SFQuest_Database.RandomEventPool or {}
SFQuest_Database.RandomEventPool.Questyno = SFQuest_Database.RandomEventPool.Questyno or {}

SFQuest_Database.RandomEventPool.Questyno.MarvinPerry = {
		"Questyno_MarvinPerry;SFQuest_Questyno_MarvinPerry_Begin;Questyno_MarvinPerry",
	}

-- Inserimento nel DailyEventPool
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_MarvinPerry",
	condition = "notmaxedwithcode;Questyno_MarvinPerry;1;hasfactiontier;MarvinPerry;3",
	commands = "randomcodedworldfrompool;Questyno_MarvinPerry;Questyno;MarvinPerry",
	days = 0,
	frequency = 1
})

-- Inserimento nel StartingPool per attivazione daily alla creazione personaggio
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_MarvinPerry" })

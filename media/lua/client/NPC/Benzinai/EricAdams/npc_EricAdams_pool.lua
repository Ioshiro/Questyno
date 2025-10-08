require 'SFQuest_Database'

-- Pool quest per EricAdams
SFQuest_Database.RandomEventPool = SFQuest_Database.RandomEventPool or {}
SFQuest_Database.RandomEventPool.Questyno = SFQuest_Database.RandomEventPool.Questyno or {}

SFQuest_Database.RandomEventPool.Questyno.EricAdams = {
		"Questyno_EricAdams;SFQuest_Questyno_EricAdams_Begin;Questyno_EricAdams",
	}

-- Inserimento nel DailyEventPool
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_EricAdams",
	condition = "notmaxedwithcode;Questyno_EricAdams;1;hasfactiontier;EricAdams;3",
	commands = "randomcodedworldfrompool;Questyno_EricAdams;Questyno;EricAdams",
	days = 0,
	frequency = 1
})

-- Inserimento nel StartingPool per attivazione daily alla creazione personaggio
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_EricAdams" })

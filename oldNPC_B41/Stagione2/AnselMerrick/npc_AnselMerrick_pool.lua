require 'SFQuest_Database'

-- Pool quest per AnselMerrick
SFQuest_Database.RandomEventPool = SFQuest_Database.RandomEventPool or {}
SFQuest_Database.RandomEventPool.Questyno = SFQuest_Database.RandomEventPool.Questyno or {}

SFQuest_Database.RandomEventPool.Questyno.AnselMerrick = {
		"Questyno_AnselMerrick;SFQuest_Questyno_AnselMerrick1_Begin;Questyno_AnselMerrick1",
		"Questyno_AnselMerrick;SFQuest_Questyno_AnselMerrick2_Begin;Questyno_AnselMerrick2",
		"Questyno_AnselMerrick;SFQuest_Questyno_AnselMerrick3_Begin;Questyno_AnselMerrick3",
	}

-- Inserimento nel DailyEventPool
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_AnselMerrick",
	condition = "notmaxedwithcode;Questyno_AnselMerrick;1;hasfactiontier;AnselMerrick;3",
	commands = "randomcodedworldfrompool;Questyno_AnselMerrick;Questyno;AnselMerrick",
	days = 0,
	frequency = 1
})

-- Inserimento nel StartingPool per attivazione daily alla creazione personaggio
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_AnselMerrick" })

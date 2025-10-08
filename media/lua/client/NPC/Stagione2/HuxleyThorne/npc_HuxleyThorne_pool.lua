require 'SFQuest_Database'

-- Pool quest per HuxleyThorne
SFQuest_Database.RandomEventPool = SFQuest_Database.RandomEventPool or {}
SFQuest_Database.RandomEventPool.Questyno = SFQuest_Database.RandomEventPool.Questyno or {}

SFQuest_Database.RandomEventPool.Questyno.HuxleyThorne = {
		"Questyno_HuxleyThorne;SFQuest_Questyno_HuxleyThorne1_Begin;Questyno_HuxleyThorne1",
		"Questyno_HuxleyThorne;SFQuest_Questyno_HuxleyThorne2_Begin;Questyno_HuxleyThorne2",
		"Questyno_HuxleyThorne;SFQuest_Questyno_HuxleyThorne3_Begin;Questyno_HuxleyThorne3",
	}

-- Inserimento nel DailyEventPool
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_HuxleyThorne",
	condition = "notmaxedwithcode;Questyno_HuxleyThorne;1;hasfactiontier;HuxleyThorne;3",
	commands = "randomcodedworldfrompool;Questyno_HuxleyThorne;Questyno;HuxleyThorne",
	days = 0,
	frequency = 1
})

-- Inserimento nel StartingPool per attivazione daily alla creazione personaggio
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_HuxleyThorne" })

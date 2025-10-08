require 'SFQuest_Database'

-- Pool quest per AlexMercer
SFQuest_Database.RandomEventPool = SFQuest_Database.RandomEventPool or {}
SFQuest_Database.RandomEventPool.Questyno = SFQuest_Database.RandomEventPool.Questyno or {}

SFQuest_Database.RandomEventPool.Questyno.AlexMercer = {
		"Questyno_AlexMercer;SFQuest_Questyno_AlexMercer1_Begin;Questyno_AlexMercer1",
		"Questyno_AlexMercer;SFQuest_Questyno_AlexMercer2_Begin;Questyno_AlexMercer2",
		"Questyno_AlexMercer;SFQuest_Questyno_AlexMercer3_Begin;Questyno_AlexMercer3",
	}

-- Inserimento nel DailyEventPool
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_AlexMercer",
	condition = "notmaxedwithcode;Questyno_AlexMercer;1;hasfactiontier;AlexMercer;3",
	commands = "randomcodedworldfrompool;Questyno_AlexMercer;Questyno;AlexMercer",
	days = 0,
	frequency = 1
})

-- Inserimento nel StartingPool per attivazione daily alla creazione personaggio
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_AlexMercer" })

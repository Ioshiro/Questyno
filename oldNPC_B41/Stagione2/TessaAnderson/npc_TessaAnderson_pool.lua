require 'SFQuest_Database'

-- Pool quest per TessaAnderson
SFQuest_Database.RandomEventPool = SFQuest_Database.RandomEventPool or {}
SFQuest_Database.RandomEventPool.Questyno = SFQuest_Database.RandomEventPool.Questyno or {}

SFQuest_Database.RandomEventPool.Questyno.TessaAnderson = {
		"Questyno_TessaAnderson;SFQuest_Questyno_TessaAnderson1_Begin;Questyno_TessaAnderson1",
		"Questyno_TessaAnderson;SFQuest_Questyno_TessaAnderson2_Begin;Questyno_TessaAnderson2",
		"Questyno_TessaAnderson;SFQuest_Questyno_TessaAnderson3_Begin;Questyno_TessaAnderson3",
		"Questyno_TessaAnderson;SFQuest_Questyno_TessaAnderson4_Begin;Questyno_TessaAnderson4",
		"Questyno_TessaAnderson;SFQuest_Questyno_TessaAnderson5_Begin;Questyno_TessaAnderson5",
		"Questyno_TessaAnderson;SFQuest_Questyno_TessaAnderson6_Begin;Questyno_TessaAnderson6",
	}

-- Inserimento nel DailyEventPool
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_TessaAnderson",
	condition = "notmaxedwithcode;Questyno_TessaAnderson;1;hasfactiontier;TessaAnderson;3",
	commands = "randomcodedworldfrompool;Questyno_TessaAnderson;Questyno;TessaAnderson",
	days = 0,
	frequency = 1
})

-- Inserimento nel StartingPool per attivazione daily alla creazione personaggio
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_TessaAnderson" })

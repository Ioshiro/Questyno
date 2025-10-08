require 'SFQuest_Database'

-- Pool quest per RafaelPrezioso
SFQuest_Database.RandomEventPool = SFQuest_Database.RandomEventPool or {}
SFQuest_Database.RandomEventPool.Questyno = SFQuest_Database.RandomEventPool.Questyno or {}

SFQuest_Database.RandomEventPool.Questyno.RafaelPrezioso = {
		"Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso1_Begin;Questyno_RafaelPrezioso1",
		"Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso2_Begin;Questyno_RafaelPrezioso2",
		"Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso3_Begin;Questyno_RafaelPrezioso3",
		"Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso4_Begin;Questyno_RafaelPrezioso4",
		"Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso5_Begin;Questyno_RafaelPrezioso5",
		"Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso6_Begin;Questyno_RafaelPrezioso6",
		"Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso7_Begin;Questyno_RafaelPrezioso7",
		"Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso8_Begin;Questyno_RafaelPrezioso8",
		"Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso9_Begin;Questyno_RafaelPrezioso9",
		"Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso10_Begin;Questyno_RafaelPrezioso10",
		"Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso11_Begin;Questyno_RafaelPrezioso11",
		"Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso12_Begin;Questyno_RafaelPrezioso12",
		"Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso13_Begin;Questyno_RafaelPrezioso13",
		"Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso14_Begin;Questyno_RafaelPrezioso14",
		"Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso15_Begin;Questyno_RafaelPrezioso15",
		--"Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso16_Begin;Questyno_RafaelPrezioso16",
		"Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso17_Begin;Questyno_RafaelPrezioso17",
		"Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso18_Begin;Questyno_RafaelPrezioso18",
		"Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso19_Begin;Questyno_RafaelPrezioso19",
		"Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso20_Begin;Questyno_RafaelPrezioso20",
		"Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso21_Begin;Questyno_RafaelPrezioso21",
		"Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso22_Begin;Questyno_RafaelPrezioso22",
		"Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso23_Begin;Questyno_RafaelPrezioso23",
	}

-- Inserimento nel DailyEventPool
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_RafaelPrezioso",
	condition = "notmaxedwithcode;Questyno_RafaelPrezioso;1;hasfactiontier;RafaelPrezioso;3",
	commands = "randomcodedworldfrompool;Questyno_RafaelPrezioso;Questyno;RafaelPrezioso",
	days = 0,
	frequency = 1
})

-- Inserimento nel StartingPool per attivazione daily alla creazione personaggio
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_RafaelPrezioso" })

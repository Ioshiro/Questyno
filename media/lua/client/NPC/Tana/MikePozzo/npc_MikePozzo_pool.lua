require 'SFQuest_Database'

-- Pool quest per MikePozzo
SFQuest_Database.RandomEventPool = SFQuest_Database.RandomEventPool or {}
SFQuest_Database.RandomEventPool.Questyno = SFQuest_Database.RandomEventPool.Questyno or {}

SFQuest_Database.RandomEventPool.Questyno.MikePozzo = {
		"Questyno_MikePozzo;SFQuest_Questyno_MikePozzo1_Begin;Questyno_MikePozzo1",
		"Questyno_MikePozzo;SFQuest_Questyno_MikePozzo2_Begin;Questyno_MikePozzo2",
		"Questyno_MikePozzo;SFQuest_Questyno_MikePozzo3_Begin;Questyno_MikePozzo3",
		"Questyno_MikePozzo;SFQuest_Questyno_MikePozzo4_Begin;Questyno_MikePozzo4",
		"Questyno_MikePozzo;SFQuest_Questyno_MikePozzo5_Begin;Questyno_MikePozzo5",
		"Questyno_MikePozzo;SFQuest_Questyno_MikePozzo6_Begin;Questyno_MikePozzo6",
		"Questyno_MikePozzo;SFQuest_Questyno_MikePozzo7_Begin;Questyno_MikePozzo7",
		"Questyno_MikePozzo;SFQuest_Questyno_MikePozzo8_Begin;Questyno_MikePozzo8",
		--"Questyno_MikePozzo;SFQuest_Questyno_MikePozzo9_Begin;Questyno_MikePozzo9",
		"Questyno_MikePozzo;SFQuest_Questyno_MikePozzo10_Begin;Questyno_MikePozzo10",
		"Questyno_MikePozzo;SFQuest_Questyno_MikePozzo11_Begin;Questyno_MikePozzo11",
		"Questyno_MikePozzo;SFQuest_Questyno_MikePozzo12_Begin;Questyno_MikePozzo12",
		--"Questyno_MikePozzo;SFQuest_Questyno_MikePozzo13_Begin;Questyno_MikePozzo13",
		"Questyno_MikePozzo;SFQuest_Questyno_MikePozzo14_Begin;Questyno_MikePozzo14",
		"Questyno_MikePozzo;SFQuest_Questyno_MikePozzo15_Begin;Questyno_MikePozzo15",
		"Questyno_MikePozzo;SFQuest_Questyno_MikePozzo16_Begin;Questyno_MikePozzo16",
		--"Questyno_MikePozzo;SFQuest_Questyno_MikePozzo17_Begin;Questyno_MikePozzo17",
		"Questyno_MikePozzo;SFQuest_Questyno_MikePozzo18_Begin;Questyno_MikePozzo18",
		"Questyno_MikePozzo;SFQuest_Questyno_MikePozzo19_Begin;Questyno_MikePozzo19",
		"Questyno_MikePozzo;SFQuest_Questyno_MikePozzo20_Begin;Questyno_MikePozzo20",
		"Questyno_MikePozzo;SFQuest_Questyno_MikePozzo21_Begin;Questyno_MikePozzo21",
		"Questyno_MikePozzo;SFQuest_Questyno_MikePozzo22_Begin;Questyno_MikePozzo22",
		--"Questyno_MikePozzo;SFQuest_Questyno_MikePozzo23_Begin;Questyno_MikePozzo23",
		"Questyno_MikePozzo;SFQuest_Questyno_MikePozzo24_Begin;Questyno_MikePozzo24",
	}

-- Inserimento nel DailyEventPool
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_MikePozzo",
	condition = "notmaxedwithcode;Questyno_MikePozzo;1;hasfactiontier;MikePozzo;3",
	commands = "randomcodedworldfrompool;Questyno_MikePozzo;Questyno;MikePozzo",
	days = 0,
	frequency = 1
})

-- Inserimento nel StartingPool per attivazione daily alla creazione personaggio
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_MikePozzo" })

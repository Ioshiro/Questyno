require 'SFQuest_Database'

-- Pool quest per MayaBlackwell
SFQuest_Database.RandomEventPool = SFQuest_Database.RandomEventPool or {}
SFQuest_Database.RandomEventPool.Questyno = SFQuest_Database.RandomEventPool.Questyno or {}

SFQuest_Database.RandomEventPool.Questyno.MayaBlackwell = {
		"Questyno_MayaBlackwell;SFQuest_Questyno_MayaBlackwell1_Begin;Questyno_MayaBlackwell1",
		"Questyno_MayaBlackwell;SFQuest_Questyno_MayaBlackwell2_Begin;Questyno_MayaBlackwell2",
		"Questyno_MayaBlackwell;SFQuest_Questyno_MayaBlackwell3_Begin;Questyno_MayaBlackwell3",
		"Questyno_MayaBlackwell;SFQuest_Questyno_MayaBlackwell4_Begin;Questyno_MayaBlackwell4",
		"Questyno_MayaBlackwell;SFQuest_Questyno_MayaBlackwell5_Begin;Questyno_MayaBlackwell5",
		"Questyno_MayaBlackwell;SFQuest_Questyno_MayaBlackwell6_Begin;Questyno_MayaBlackwell6",
		"Questyno_MayaBlackwell;SFQuest_Questyno_MayaBlackwell7_Begin;Questyno_MayaBlackwell7",
		"Questyno_MayaBlackwell;SFQuest_Questyno_MayaBlackwell8_Begin;Questyno_MayaBlackwell8",
		"Questyno_MayaBlackwell;SFQuest_Questyno_MayaBlackwell9_Begin;Questyno_MayaBlackwell9",
		"Questyno_MayaBlackwell;SFQuest_Questyno_MayaBlackwell10_Begin;Questyno_MayaBlackwell10",
		"Questyno_MayaBlackwell;SFQuest_Questyno_MayaBlackwell11_Begin;Questyno_MayaBlackwell11",
		"Questyno_MayaBlackwell;SFQuest_Questyno_MayaBlackwell12_Begin;Questyno_MayaBlackwell12",
		"Questyno_MayaBlackwell;SFQuest_Questyno_MayaBlackwell13_Begin;Questyno_MayaBlackwell13",
	}

-- Inserimento nel DailyEventPool
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_MayaBlackwell",
	condition = "notmaxedwithcode;Questyno_MayaBlackwell;1;hasfactiontier;MayaBlackwell;3",
	commands = "randomcodedworldfrompool;Questyno_MayaBlackwell;Questyno;MayaBlackwell",
	days = 0,
	frequency = 1
})

-- Inserimento nel StartingPool per attivazione daily alla creazione personaggio
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_MayaBlackwell" })

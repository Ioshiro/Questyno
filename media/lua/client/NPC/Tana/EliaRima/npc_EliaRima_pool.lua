require 'SFQuest_Database'

-- Pool quest per EliaRima
SFQuest_Database.RandomEventPool = SFQuest_Database.RandomEventPool or {}
SFQuest_Database.RandomEventPool.Questyno = SFQuest_Database.RandomEventPool.Questyno or {}

SFQuest_Database.RandomEventPool.Questyno.EliaRima = {
		"Questyno_EliaRima;SFQuest_Questyno_EliaRima1_Begin;Questyno_EliaRima1",
		"Questyno_EliaRima;SFQuest_Questyno_EliaRima2_Begin;Questyno_EliaRima2",
		"Questyno_EliaRima;SFQuest_Questyno_EliaRima3_Begin;Questyno_EliaRima3",
		"Questyno_EliaRima;SFQuest_Questyno_EliaRima4_Begin;Questyno_EliaRima4",
		"Questyno_EliaRima;SFQuest_Questyno_EliaRima5_Begin;Questyno_EliaRima5",
		"Questyno_EliaRima;SFQuest_Questyno_EliaRima6_Begin;Questyno_EliaRima6",
		"Questyno_EliaRima;SFQuest_Questyno_EliaRima7_Begin;Questyno_EliaRima7",
		"Questyno_EliaRima;SFQuest_Questyno_EliaRima8_Begin;Questyno_EliaRima8",
		"Questyno_EliaRima;SFQuest_Questyno_EliaRima9_Begin;Questyno_EliaRima9",
		"Questyno_EliaRima;SFQuest_Questyno_EliaRima10_Begin;Questyno_EliaRima10",
		"Questyno_EliaRima;SFQuest_Questyno_EliaRima11_Begin;Questyno_EliaRima11",
		"Questyno_EliaRima;SFQuest_Questyno_EliaRima12_Begin;Questyno_EliaRima12",
		"Questyno_EliaRima;SFQuest_Questyno_EliaRima13_Begin;Questyno_EliaRima13",
		"Questyno_EliaRima;SFQuest_Questyno_EliaRima14_Begin;Questyno_EliaRima14",
		"Questyno_EliaRima;SFQuest_Questyno_EliaRima15_Begin;Questyno_EliaRima15",
		"Questyno_EliaRima;SFQuest_Questyno_EliaRima16_Begin;Questyno_EliaRima16",
		"Questyno_EliaRima;SFQuest_Questyno_EliaRima17_Begin;Questyno_EliaRima17",
		"Questyno_EliaRima;SFQuest_Questyno_EliaRima18_Begin;Questyno_EliaRima18",
		"Questyno_EliaRima;SFQuest_Questyno_EliaRima19_Begin;Questyno_EliaRima19",
		"Questyno_EliaRima;SFQuest_Questyno_EliaRima20_Begin;Questyno_EliaRima20",
		"Questyno_EliaRima;SFQuest_Questyno_EliaRima21_Begin;Questyno_EliaRima21",
		"Questyno_EliaRima;SFQuest_Questyno_EliaRima22_Begin;Questyno_EliaRima22",
		"Questyno_EliaRima;SFQuest_Questyno_EliaRima23_Begin;Questyno_EliaRima23",
	}

-- Inserimento nel DailyEventPool
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_EliaRima",
	condition = "notmaxedwithcode;Questyno_EliaRima;1;hasfactiontier;EliaRima;3",
	commands = "randomcodedworldfrompool;Questyno_EliaRima;Questyno;EliaRima",
	days = 0,
	frequency = 1
})

-- Inserimento nel StartingPool per attivazione daily alla creazione personaggio
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_EliaRima" })

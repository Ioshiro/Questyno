require 'SFQuest_Database'

-- Pool quest per VictoriaSecret
SFQuest_Database.RandomEventPool = SFQuest_Database.RandomEventPool or {}
SFQuest_Database.RandomEventPool.Questyno = SFQuest_Database.RandomEventPool.Questyno or {}

SFQuest_Database.RandomEventPool.Questyno.VictoriaSecret = {
		"Questyno_VictoriaSecret;SFQuest_Questyno_VictoriaSecret1_Begin;Questyno_VictoriaSecret1",
		"Questyno_VictoriaSecret;SFQuest_Questyno_VictoriaSecret2_Begin;Questyno_VictoriaSecret2",
		"Questyno_VictoriaSecret;SFQuest_Questyno_VictoriaSecret3_Begin;Questyno_VictoriaSecret3",
		"Questyno_VictoriaSecret;SFQuest_Questyno_VictoriaSecret4_Begin;Questyno_VictoriaSecret4",
		"Questyno_VictoriaSecret;SFQuest_Questyno_VictoriaSecret5_Begin;Questyno_VictoriaSecret5",
		"Questyno_VictoriaSecret;SFQuest_Questyno_VictoriaSecret6_Begin;Questyno_VictoriaSecret6",
		"Questyno_VictoriaSecret;SFQuest_Questyno_VictoriaSecret7_Begin;Questyno_VictoriaSecret7",
		"Questyno_VictoriaSecret;SFQuest_Questyno_VictoriaSecret8_Begin;Questyno_VictoriaSecret8",
		"Questyno_VictoriaSecret;SFQuest_Questyno_VictoriaSecret9_Begin;Questyno_VictoriaSecret9",
		"Questyno_VictoriaSecret;SFQuest_Questyno_VictoriaSecret10_Begin;Questyno_VictoriaSecret10",
		"Questyno_VictoriaSecret;SFQuest_Questyno_VictoriaSecret11_Begin;Questyno_VictoriaSecret11",
		"Questyno_VictoriaSecret;SFQuest_Questyno_VictoriaSecret12_Begin;Questyno_VictoriaSecret12",
		"Questyno_VictoriaSecret;SFQuest_Questyno_VictoriaSecret13_Begin;Questyno_VictoriaSecret13",
		"Questyno_VictoriaSecret;SFQuest_Questyno_VictoriaSecret14_Begin;Questyno_VictoriaSecret14",
		"Questyno_VictoriaSecret;SFQuest_Questyno_VictoriaSecret15_Begin;Questyno_VictoriaSecret15",
		"Questyno_VictoriaSecret;SFQuest_Questyno_VictoriaSecret16_Begin;Questyno_VictoriaSecret16",
		"Questyno_VictoriaSecret;SFQuest_Questyno_VictoriaSecret17_Begin;Questyno_VictoriaSecret17",
		"Questyno_VictoriaSecret;SFQuest_Questyno_VictoriaSecret18_Begin;Questyno_VictoriaSecret18",
		"Questyno_VictoriaSecret;SFQuest_Questyno_VictoriaSecret19_Begin;Questyno_VictoriaSecret19",
		--"Questyno_VictoriaSecret;SFQuest_Questyno_VictoriaSecret20_Begin;Questyno_VictoriaSecret20",
		"Questyno_VictoriaSecret;SFQuest_Questyno_VictoriaSecret21_Begin;Questyno_VictoriaSecret21",
	}

-- Inserimento nel DailyEventPool
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_VictoriaSecret",
	condition = "notmaxedwithcode;Questyno_VictoriaSecret;1;hasfactiontier;VictoriaSecret;3",
	commands = "randomcodedworldfrompool;Questyno_VictoriaSecret;Questyno;VictoriaSecret",
	days = 0,
	frequency = 1
})

-- Inserimento nel StartingPool per attivazione daily alla creazione personaggio
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_VictoriaSecret" })

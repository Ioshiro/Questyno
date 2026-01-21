require 'SFQuest_Database'

-- Pool quest per Lupo
SFQuest_Database.RandomEventPool = SFQuest_Database.RandomEventPool or {}
SFQuest_Database.RandomEventPool.Questyno = SFQuest_Database.RandomEventPool.Questyno or {}

SFQuest_Database.RandomEventPool.Questyno.TonyLupo = {
		"Questyno_TonyLupo;SFQuest_Questyno_TonyLupo1_Begin;Questyno_TonyLupo1",
		"Questyno_TonyLupo;SFQuest_Questyno_TonyLupo2_Begin;Questyno_TonyLupo2",
		"Questyno_TonyLupo;SFQuest_Questyno_TonyLupo3_Begin;Questyno_TonyLupo3",
		"Questyno_TonyLupo;SFQuest_Questyno_TonyLupo4_Begin;Questyno_TonyLupo4",
		"Questyno_TonyLupo;SFQuest_Questyno_TonyLupo5_Begin;Questyno_TonyLupo5",
		"Questyno_TonyLupo;SFQuest_Questyno_TonyLupo6_Begin;Questyno_TonyLupo6",
		"Questyno_TonyLupo;SFQuest_Questyno_TonyLupo7_Begin;Questyno_TonyLupo7",
		"Questyno_TonyLupo;SFQuest_Questyno_TonyLupo8_Begin;Questyno_TonyLupo8",
		"Questyno_TonyLupo;SFQuest_Questyno_TonyLupo9_Begin;Questyno_TonyLupo9",
		"Questyno_TonyLupo;SFQuest_Questyno_TonyLupo10_Begin;Questyno_TonyLupo10",
		"Questyno_TonyLupo;SFQuest_Questyno_TonyLupo11_Begin;Questyno_TonyLupo11",
		"Questyno_TonyLupo;SFQuest_Questyno_TonyLupo12_Begin;Questyno_TonyLupo12",
		"Questyno_TonyLupo;SFQuest_Questyno_TonyLupo13_Begin;Questyno_TonyLupo13",
		"Questyno_TonyLupo;SFQuest_Questyno_TonyLupo14_Begin;Questyno_TonyLupo14",
		"Questyno_TonyLupo;SFQuest_Questyno_TonyLupo15_Begin;Questyno_TonyLupo15",
		"Questyno_TonyLupo;SFQuest_Questyno_TonyLupo16_Begin;Questyno_TonyLupo16",
		"Questyno_TonyLupo;SFQuest_Questyno_TonyLupo17_Begin;Questyno_TonyLupo17",
		"Questyno_TonyLupo;SFQuest_Questyno_TonyLupo18_Begin;Questyno_TonyLupo18",
		"Questyno_TonyLupo;SFQuest_Questyno_TonyLupo19_Begin;Questyno_TonyLupo19",
		"Questyno_TonyLupo;SFQuest_Questyno_TonyLupo20_Begin;Questyno_TonyLupo20",
		"Questyno_TonyLupo;SFQuest_Questyno_TonyLupo21_Begin;Questyno_TonyLupo21",
		"Questyno_TonyLupo;SFQuest_Questyno_TonyLupo22_Begin;Questyno_TonyLupo22",
		--		"Questyno_TonyLupo;SFQuest_Questyno_TonyLupo23_Begin;Questyno_TonyLupo23",
	}

-- Inserimento nel DailyEventPool
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_TonyLupo",
	condition = "notmaxedwithcode;Questyno_TonyLupo;1;hasfactiontier;TonyLupo;3",
	commands = "randomcodedworldfrompool;Questyno_TonyLupo;Questyno;TonyLupo",
	days = 0,
	frequency = 1
})

-- Inserimento nel StartingPool per attivazione daily alla creazione personaggio
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_TonyLupo" })

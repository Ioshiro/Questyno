require 'SFQuest_Database'

-- Pool quest per HeatherThomas
SFQuest_Database.RandomEventPool = SFQuest_Database.RandomEventPool or {}
SFQuest_Database.RandomEventPool.Questyno = SFQuest_Database.RandomEventPool.Questyno or {}

SFQuest_Database.RandomEventPool.Questyno.HeatherThomas = {
		"Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas1_Begin;Questyno_HeatherThomas1",
		"Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas2_Begin;Questyno_HeatherThomas2",
		"Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas3_Begin;Questyno_HeatherThomas3",
		"Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas4_Begin;Questyno_HeatherThomas4",
		"Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas5_Begin;Questyno_HeatherThomas5",
		"Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas6_Begin;Questyno_HeatherThomas6",
		"Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas7_Begin;Questyno_HeatherThomas7",
		"Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas8_Begin;Questyno_HeatherThomas8",
		"Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas9_Begin;Questyno_HeatherThomas9",
		"Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas10_Begin;Questyno_HeatherThomas10",
		"Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas11_Begin;Questyno_HeatherThomas11",
		"Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas12_Begin;Questyno_HeatherThomas12",
		"Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas13_Begin;Questyno_HeatherThomas13",
		"Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas14_Begin;Questyno_HeatherThomas14",
		"Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas15_Begin;Questyno_HeatherThomas15",
		"Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas16_Begin;Questyno_HeatherThomas16",
		"Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas17_Begin;Questyno_HeatherThomas17",
		"Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas18_Begin;Questyno_HeatherThomas18",
		"Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas19_Begin;Questyno_HeatherThomas19",
		"Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas20_Begin;Questyno_HeatherThomas20",
		"Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas21_Begin;Questyno_HeatherThomas21",
		"Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas22_Begin;Questyno_HeatherThomas22",
		"Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas23_Begin;Questyno_HeatherThomas23",
	}

-- Inserimento nel DailyEventPool
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_HeatherThomas",
	condition = "notmaxedwithcode;Questyno_HeatherThomas;1;hasfactiontier;HeatherThomas;3",
	commands = "randomcodedworldfrompool;Questyno_HeatherThomas;Questyno;HeatherThomas",
	days = 0,
	frequency = 1
})

-- Inserimento nel StartingPool per attivazione daily alla creazione personaggio
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_HeatherThomas" })

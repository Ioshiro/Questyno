require 'SFQuest_Database'

-- Pool quest per HeatherThomas
SFQuest_Database.RandomEventPool = SFQuest_Database.RandomEventPool or {}
SFQuest_Database.RandomEventPool.Questyno = SFQuest_Database.RandomEventPool.Questyno or {}

SFQuest_Database.RandomEventPool.Questyno.HeatherThomas = {
		"HeatherThomas;SFQuest_HeatherThomas1_Begin;HeatherThomas1",
		"HeatherThomas;SFQuest_HeatherThomas2_Begin;HeatherThomas2",
		"HeatherThomas;SFQuest_HeatherThomas3_Begin;HeatherThomas3",
		"HeatherThomas;SFQuest_HeatherThomas4_Begin;HeatherThomas4",
		"HeatherThomas;SFQuest_HeatherThomas5_Begin;HeatherThomas5",
		"HeatherThomas;SFQuest_HeatherThomas6_Begin;HeatherThomas6",
		"HeatherThomas;SFQuest_HeatherThomas7_Begin;HeatherThomas7",
		"HeatherThomas;SFQuest_HeatherThomas8_Begin;HeatherThomas8",
		"HeatherThomas;SFQuest_HeatherThomas9_Begin;HeatherThomas9",
		"HeatherThomas;SFQuest_HeatherThomas10_Begin;HeatherThomas10",
		"HeatherThomas;SFQuest_HeatherThomas11_Begin;HeatherThomas11",
		"HeatherThomas;SFQuest_HeatherThomas12_Begin;HeatherThomas12",
		"HeatherThomas;SFQuest_HeatherThomas13_Begin;HeatherThomas13",
		"HeatherThomas;SFQuest_HeatherThomas14_Begin;HeatherThomas14",
		"HeatherThomas;SFQuest_HeatherThomas15_Begin;HeatherThomas15",
		"HeatherThomas;SFQuest_HeatherThomas16_Begin;HeatherThomas16",
		"HeatherThomas;SFQuest_HeatherThomas17_Begin;HeatherThomas17",
		"HeatherThomas;SFQuest_HeatherThomas18_Begin;HeatherThomas18",
		"HeatherThomas;SFQuest_HeatherThomas19_Begin;HeatherThomas19",
		"HeatherThomas;SFQuest_HeatherThomas20_Begin;HeatherThomas20",
		"HeatherThomas;SFQuest_HeatherThomas21_Begin;HeatherThomas21",
		"HeatherThomas;SFQuest_HeatherThomas22_Begin;HeatherThomas22",
		"HeatherThomas;SFQuest_HeatherThomas23_Begin;HeatherThomas23",
	}

-- Inserimento nel DailyEventPool
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "HeatherThomas",
	condition = "notmaxedwithcode;HeatherThomas;1;hasfactiontier;HeatherThomas;3",
	commands = "randomcodedworldfrompool;HeatherThomas;Questyno;HeatherThomas",
	days = 0,
	frequency = 1
})

-- Inserimento nel StartingPool per attivazione daily alla creazione personaggio
table.insert(SFQuest_Database.StartingPool, { daily = "HeatherThomas" })

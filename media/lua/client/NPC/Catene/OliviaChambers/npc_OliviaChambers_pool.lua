require 'SFQuest_Database'

-- Pool quest per OliviaChambers
SFQuest_Database.RandomEventPool = SFQuest_Database.RandomEventPool or {}
SFQuest_Database.RandomEventPool.Questyno = SFQuest_Database.RandomEventPool.Questyno or {}

SFQuest_Database.RandomEventPool.Questyno.OliviaChambers = {
		"Questyno_OliviaChambers;SFQuest_Questyno_OliviaChambers1_Begin;Questyno_OliviaChambers1",
		"Questyno_OliviaChambers;SFQuest_Questyno_OliviaChambers2_Begin;Questyno_OliviaChambers2",
		"Questyno_OliviaChambers;SFQuest_Questyno_OliviaChambers3_Begin;Questyno_OliviaChambers3",
		"Questyno_OliviaChambers;SFQuest_Questyno_OliviaChambers4_Begin;Questyno_OliviaChambers4",
		"Questyno_OliviaChambers;SFQuest_Questyno_OliviaChambers5_Begin;Questyno_OliviaChambers5",
		"Questyno_OliviaChambers;SFQuest_Questyno_OliviaChambers6_Begin;Questyno_OliviaChambers6",
	}

-- Inserimento nel DailyEventPool
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_OliviaChambers",
	condition = "notmaxedwithcode;Questyno_OliviaChambers;1;hasfactiontier;OliviaChambers;3",
	commands = "randomcodedworldfrompool;Questyno_OliviaChambers;Questyno;OliviaChambers",
	days = 0,
	frequency = 1
})

-- Inserimento nel StartingPool per attivazione daily alla creazione personaggio
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_OliviaChambers" })

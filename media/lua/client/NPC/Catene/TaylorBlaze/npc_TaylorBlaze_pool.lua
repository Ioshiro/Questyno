require 'SFQuest_Database'

-- Pool quest per TaylorBlaze
SFQuest_Database.RandomEventPool = SFQuest_Database.RandomEventPool or {}
SFQuest_Database.RandomEventPool.Questyno = SFQuest_Database.RandomEventPool.Questyno or {}

SFQuest_Database.RandomEventPool.Questyno.TaylorBlaze = {
		"Questyno_TaylorBlaze;SFQuest_Questyno_TaylorBlaze1_Begin;Questyno_TaylorBlaze1",
		"Questyno_TaylorBlaze;SFQuest_Questyno_TaylorBlaze2_Begin;Questyno_TaylorBlaze2",
		"Questyno_TaylorBlaze;SFQuest_Questyno_TaylorBlaze3_Begin;Questyno_TaylorBlaze3",
		"Questyno_TaylorBlaze;SFQuest_Questyno_TaylorBlaze4_Begin;Questyno_TaylorBlaze4",
		"Questyno_TaylorBlaze;SFQuest_Questyno_TaylorBlaze5_Begin;Questyno_TaylorBlaze5",
		"Questyno_TaylorBlaze;SFQuest_Questyno_TaylorBlaze6_Begin;Questyno_TaylorBlaze6",
		"Questyno_TaylorBlaze;SFQuest_Questyno_TaylorBlaze7_Begin;Questyno_TaylorBlaze7",
		"Questyno_TaylorBlaze;SFQuest_Questyno_TaylorBlaze8_Begin;Questyno_TaylorBlaze8",
	}

-- Inserimento nel DailyEventPool
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_TaylorBlaze",
	condition = "notmaxedwithcode;Questyno_TaylorBlaze;1;hasfactiontier;TaylorBlaze;3",
	commands = "randomcodedworldfrompool;Questyno_TaylorBlaze;Questyno;TaylorBlaze",
	days = 0,
	frequency = 1
})

-- Inserimento nel StartingPool per attivazione daily alla creazione personaggio
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_TaylorBlaze" })

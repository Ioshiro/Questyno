require 'SFQuest_Database'

-- Pool quest per DorianPrescott
SFQuest_Database.RandomEventPool = SFQuest_Database.RandomEventPool or {}
SFQuest_Database.RandomEventPool.Questyno = SFQuest_Database.RandomEventPool.Questyno or {}

SFQuest_Database.RandomEventPool.Questyno.DorianPrescott = {
		"Questyno_DorianPrescott;SFQuest_Questyno_DorianPrescott1_Begin;Questyno_DorianPrescott1",
		"Questyno_DorianPrescott;SFQuest_Questyno_DorianPrescott2_Begin;Questyno_DorianPrescott2",
		"Questyno_DorianPrescott;SFQuest_Questyno_DorianPrescott3_Begin;Questyno_DorianPrescott3",
		"Questyno_DorianPrescott;SFQuest_Questyno_DorianPrescott4_Begin;Questyno_DorianPrescott4",
		"Questyno_DorianPrescott;SFQuest_Questyno_DorianPrescott5_Begin;Questyno_DorianPrescott5",
		"Questyno_DorianPrescott;SFQuest_Questyno_DorianPrescott6_Begin;Questyno_DorianPrescott6",
		"Questyno_DorianPrescott;SFQuest_Questyno_DorianPrescott7_Begin;Questyno_DorianPrescott7",
		"Questyno_DorianPrescott;SFQuest_Questyno_DorianPrescott8_Begin;Questyno_DorianPrescott8",
		"Questyno_DorianPrescott;SFQuest_Questyno_DorianPrescott9_Begin;Questyno_DorianPrescott9",
	}

-- Inserimento nel DailyEventPool
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_DorianPrescott",
	condition = "notmaxedwithcode;Questyno_DorianPrescott;1;hasfactiontier;DorianPrescott;3",
	commands = "randomcodedworldfrompool;Questyno_DorianPrescott;Questyno;DorianPrescott",
	days = 0,
	frequency = 1
})

-- Inserimento nel StartingPool per attivazione daily alla creazione personaggio
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_DorianPrescott" })

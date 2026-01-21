require 'SFQuest_Database'

-- Pool quest per HarperWells
SFQuest_Database.RandomEventPool = SFQuest_Database.RandomEventPool or {}
SFQuest_Database.RandomEventPool.Questyno = SFQuest_Database.RandomEventPool.Questyno or {}

SFQuest_Database.RandomEventPool.Questyno.HarperWells = {
		"Questyno_HarperWells;SFQuest_Questyno_HarperWells1_Begin;Questyno_HarperWells1",
		"Questyno_HarperWells;SFQuest_Questyno_HarperWells2_Begin;Questyno_HarperWells2",
		"Questyno_HarperWells;SFQuest_Questyno_HarperWells3_Begin;Questyno_HarperWells3",
		"Questyno_HarperWells;SFQuest_Questyno_HarperWells4_Begin;Questyno_HarperWells4",
	}

-- Inserimento nel DailyEventPool
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_HarperWells",
	condition = "notmaxedwithcode;Questyno_HarperWells;1;hasfactiontier;HarperWells;3",
	commands = "randomcodedworldfrompool;Questyno_HarperWells;Questyno;HarperWells",
	days = 0,
	frequency = 1
})

-- Inserimento nel StartingPool per attivazione daily alla creazione personaggio
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_HarperWells" })

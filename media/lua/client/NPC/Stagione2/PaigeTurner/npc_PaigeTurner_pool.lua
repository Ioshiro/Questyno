require 'SFQuest_Database'

-- Pool quest per PaigeTurner
SFQuest_Database.RandomEventPool = SFQuest_Database.RandomEventPool or {}
SFQuest_Database.RandomEventPool.Questyno = SFQuest_Database.RandomEventPool.Questyno or {}

SFQuest_Database.RandomEventPool.Questyno.PaigeTurner = {
		"Questyno_PaigeTurner;SFQuest_Questyno_PaigeTurner1_Begin;Questyno_PaigeTurner1",
		"Questyno_PaigeTurner;SFQuest_Questyno_PaigeTurner2_Begin;Questyno_PaigeTurner2",
		"Questyno_PaigeTurner;SFQuest_Questyno_PaigeTurner3_Begin;Questyno_PaigeTurner3",
	}

-- Inserimento nel DailyEventPool
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_PaigeTurner",
	condition = "notmaxedwithcode;Questyno_PaigeTurner;1;hasfactiontier;PaigeTurner;3",
	commands = "randomcodedworldfrompool;Questyno_PaigeTurner;Questyno;PaigeTurner",
	days = 0,
	frequency = 1
})

-- Inserimento nel StartingPool per attivazione daily alla creazione personaggio
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_PaigeTurner" })

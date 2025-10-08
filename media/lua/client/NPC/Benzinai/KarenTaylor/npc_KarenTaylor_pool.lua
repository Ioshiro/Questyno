require 'SFQuest_Database'

-- Pool quest per KarenTaylor
SFQuest_Database.RandomEventPool = SFQuest_Database.RandomEventPool or {}
SFQuest_Database.RandomEventPool.Questyno = SFQuest_Database.RandomEventPool.Questyno or {}

SFQuest_Database.RandomEventPool.Questyno.KarenTaylor = {
		"Questyno_KarenTaylor;SFQuest_Questyno_KarenTaylor_Begin;Questyno_KarenTaylor",
	}

-- Inserimento nel DailyEventPool
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_KarenTaylor",
	condition = "notmaxedwithcode;Questyno_KarenTaylor;1;hasfactiontier;KarenTaylor;3",
	commands = "randomcodedworldfrompool;Questyno_KarenTaylor;Questyno;KarenTaylor",
	days = 0,
	frequency = 1
})

-- Inserimento nel StartingPool per attivazione daily alla creazione personaggio
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_KarenTaylor" })

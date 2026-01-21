require 'SFQuest_Database'

-- Pool quest per FuriMishura
SFQuest_Database.RandomEventPool = SFQuest_Database.RandomEventPool or {}
SFQuest_Database.RandomEventPool.Questyno = SFQuest_Database.RandomEventPool.Questyno or {}

SFQuest_Database.RandomEventPool.Questyno.FuriMishura = {
		"Questyno_FuriMishura;SFQuest_Questyno_FuriMishura_Begin;Questyno_FuriMishura",
	}

-- Inserimento nel DailyEventPool
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_FuriMishura",
	condition = "notmaxedwithcode;Questyno_FuriMishura;1;hasfactiontier;FuriMishura;3",
	commands = "randomcodedworldfrompool;Questyno_FuriMishura;Questyno;FuriMishura",
	days = 0,
	frequency = 1
})

-- Inserimento nel StartingPool per attivazione daily alla creazione personaggio
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_FuriMishura" })

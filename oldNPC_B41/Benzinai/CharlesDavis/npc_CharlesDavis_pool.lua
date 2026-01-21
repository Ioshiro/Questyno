require 'SFQuest_Database'

-- Pool quest per CharlesDavis
SFQuest_Database.RandomEventPool = SFQuest_Database.RandomEventPool or {}
SFQuest_Database.RandomEventPool.Questyno = SFQuest_Database.RandomEventPool.Questyno or {}

SFQuest_Database.RandomEventPool.Questyno.CharlesDavis = {
	"Questyno_CharlesDavis;SFQuest_Questyno_CharlesDavis_Begin;Questyno_CharlesDavis",
}

-- Inserimento nel DailyEventPool
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_CharlesDavis",
	condition = "notmaxedwithcode;Questyno_CharlesDavis;1;hasfactiontier;CharlesDavis;3",
	commands = "randomcodedworldfrompool;Questyno_CharlesDavis;Questyno;CharlesDavis",
	days = 0,
	frequency = 1
})

-- Inserimento nel StartingPool per attivazione daily alla creazione personaggio
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_CharlesDavis" })

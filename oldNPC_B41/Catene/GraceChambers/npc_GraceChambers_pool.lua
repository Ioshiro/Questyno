require 'SFQuest_Database'

-- Pool quest per GraceChambers
SFQuest_Database.RandomEventPool = SFQuest_Database.RandomEventPool or {}
SFQuest_Database.RandomEventPool.Questyno = SFQuest_Database.RandomEventPool.Questyno or {}

SFQuest_Database.RandomEventPool.Questyno.GraceChambers = {
		"Questyno_GraceChambers;SFQuest_Questyno_GraceChambers1_Begin;Questyno_GraceChambers1",
		"Questyno_GraceChambers;SFQuest_Questyno_GraceChambers2_Begin;Questyno_GraceChambers2",
		"Questyno_GraceChambers;SFQuest_Questyno_GraceChambers3_Begin;Questyno_GraceChambers3",
		"Questyno_GraceChambers;SFQuest_Questyno_GraceChambers4_Begin;Questyno_GraceChambers4",
	}

-- Inserimento nel DailyEventPool
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_GraceChambers",
	condition = "notmaxedwithcode;Questyno_GraceChambers;1;hasfactiontier;GraceChambers;3",
	commands = "randomcodedworldfrompool;Questyno_GraceChambers;Questyno;GraceChambers",
	days = 0,
	frequency = 1
})

-- Inserimento nel StartingPool per attivazione daily alla creazione personaggio
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_GraceChambers" })

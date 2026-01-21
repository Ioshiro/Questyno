require 'SFQuest_Database'

-- Pool quest per MarcusKane
SFQuest_Database.RandomEventPool = SFQuest_Database.RandomEventPool or {}
SFQuest_Database.RandomEventPool.Questyno = SFQuest_Database.RandomEventPool.Questyno or {}

SFQuest_Database.RandomEventPool.Questyno.MarcusKane = {
		"Questyno_MarcusKane;SFQuest_Questyno_MarcusKane1_Begin;Questyno_MarcusKane1",
		"Questyno_MarcusKane;SFQuest_Questyno_MarcusKane2_Begin;Questyno_MarcusKane2",
		"Questyno_MarcusKane;SFQuest_Questyno_MarcusKane3_Begin;Questyno_MarcusKane3",
		"Questyno_MarcusKane;SFQuest_Questyno_MarcusKane4_Begin;Questyno_MarcusKane4",
	}

-- Inserimento nel DailyEventPool
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_MarcusKane",
	condition = "notmaxedwithcode;Questyno_MarcusKane;1;hasfactiontier;MarcusKane;3",
	commands = "randomcodedworldfrompool;Questyno_MarcusKane;Questyno;MarcusKane",
	days = 0,
	frequency = 1
})

-- Inserimento nel StartingPool per attivazione daily alla creazione personaggio
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_MarcusKane" })

require 'SFQuest_Database'

-- Pool quest per MalachiBlevins
SFQuest_Database.RandomEventPool = SFQuest_Database.RandomEventPool or {}
SFQuest_Database.RandomEventPool.Questyno = SFQuest_Database.RandomEventPool.Questyno or {}

SFQuest_Database.RandomEventPool.Questyno.MalachiBlevins = {
		"Questyno_MalachiBlevins;SFQuest_Questyno_MalachiBlevins1_Begin;Questyno_MalachiBlevins1",
		"Questyno_MalachiBlevins;SFQuest_Questyno_MalachiBlevins2_Begin;Questyno_MalachiBlevins2",
		"Questyno_MalachiBlevins;SFQuest_Questyno_MalachiBlevins3_Begin;Questyno_MalachiBlevins3",
	}

-- Inserimento nel DailyEventPool
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_MalachiBlevins",
	condition = "notmaxedwithcode;Questyno_MalachiBlevins;1;hasfactiontier;MalachiBlevins;3",
	commands = "randomcodedworldfrompool;Questyno_MalachiBlevins;Questyno;MalachiBlevins",
	days = 0,
	frequency = 1
})

-- Inserimento nel StartingPool per attivazione daily alla creazione personaggio
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_MalachiBlevins" })

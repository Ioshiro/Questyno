require 'SFQuest_Database'

-- Pool quest per LucasMiller
SFQuest_Database.RandomEventPool = SFQuest_Database.RandomEventPool or {}
SFQuest_Database.RandomEventPool.Questyno = SFQuest_Database.RandomEventPool.Questyno or {}

SFQuest_Database.RandomEventPool.Questyno.LucasMiller = {
		"Questyno_LucasMiller;SFQuest_Questyno_LucasMiller1_Begin;Questyno_LucasMiller1",
		"Questyno_LucasMiller;SFQuest_Questyno_LucasMiller2_Begin;Questyno_LucasMiller2",
		"Questyno_LucasMiller;SFQuest_Questyno_LucasMiller3_Begin;Questyno_LucasMiller3",
		"Questyno_LucasMiller;SFQuest_Questyno_LucasMiller4_Begin;Questyno_LucasMiller4",
		"Questyno_LucasMiller;SFQuest_Questyno_LucasMiller5_Begin;Questyno_LucasMiller5",
		"Questyno_LucasMiller;SFQuest_Questyno_LucasMiller6_Begin;Questyno_LucasMiller6",
	}

-- Inserimento nel DailyEventPool
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_LucasMiller",
	condition = "notmaxedwithcode;Questyno_LucasMiller;1;hasfactiontier;LucasMiller;3",
	commands = "randomcodedworldfrompool;Questyno_LucasMiller;Questyno;LucasMiller",
	days = 0,
	frequency = 1
})

-- Inserimento nel StartingPool per attivazione daily alla creazione personaggio
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_LucasMiller" })

require 'SFQuest_Database'

-- Quest per RosaChina
table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_RosaChina25",

    awardsrep = "LaResistenza;250", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_RosaChina",
    lore = { "IGUI_SFQuest_Questyno_RosaChina25_Lore" },
    needsitem = "Base.Thread;5", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_RosaChina;SFQuest_Questyno_RosaChina25_Complete",
    text = "IGUI_SFQuest_Questyno_RosaChina25_Text",
    texture = "media/textures/Item_RosaChina.png",
    title = "IGUI_SFQuest_Questyno_RosaChina25_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, chinaQuest26);

local chinaQuest27 = {
    guid = "Questyno_RosaChina27",

    awardsrep = "LaResistenza;400", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_RosaChina",
    lore = { "IGUI_SFQuest_Questyno_RosaChina27_Lore" },
    needsitem = "PredicateFreshFood#MushroomGeneric1;1", -- REQUIRE
    onobtained ="unlockworldevent;Questyno_RosaChina;SFQuest_Questyno_RosaChina27_Complete",
    text = "IGUI_SFQuest_Questyno_RosaChina27_Text",
    texture = "media/textures/Item_RosaChina.png",
    title = "IGUI_SFQuest_Questyno_RosaChina27_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, chinaQuest27);

--[[
            *** Emily Terry ***
            Elenco:
                intro. Parla con Emily Terry per sbloccare le daily.
				1. Recuperare farming.RedRadishSeed;12 (50rep)
				2. Recuperare farming.StrawberrySeed;12 (50rep + Base.Strawberry)
				3. Recuperare LogStacks3;2 (30rep + Base.DriedLentils)
				4. Recuperare Base.LogStacks4;2 (40rep + piccolo pezzo di carne)
				5. Recuperare Base.SheetRope;20 (25rep)
				6. Recuperare Base.SheetRope;40 (40rep)
				7. Recuperare Base.TreeBranch;10 (35rep)
				8. Recuperare Base.Grasshopper;5 (40rep)
				9. Recuperare Base.LemonGrass;5 (50rep + Base.PlantainCataplasm)
				10. Recuperare Base.BlackSage;5 (50rep)
				11. Recuperare Base.NailsBox (60rep + Base.Smallanimalmeat;2)
				12. Recuperare Base.LogStacks2;4 (30rep)
				13. Recuperare Base.LogStacks2;3 (20rep + Base.CommonMallow;5)
				14. Recuperare Base.PercedWood,Base.TreeBranch (25rep)
				15. Recuperare MushroomGeneric6,MushroomGeneric7 (250rep + Base.OilOlive)
				16. Recuperare Base.AxeStone;2,Base.SpearCrafted;2,FlintKnife;2 (50rep)
				17. Recuperare Base.ScrapMetal;2,Base.Plank (30rep + SWeapons.TinCanClub)
				18. Recuperare RippedSheets;50 (40rep)
				19. Recuperare Bambola parlando con (7901,8180,0) (35rep + Base.BerryBlack;5)
				20. Recuperare Base.PotOfSoupRecipe (35rep + 20$ + Base.Pot)
				21. Recuperare Base.Mattress;2 parlando con (10934,8492,0) (35rep)
				22. Recuperare Base.AxeStone;4 (40rep + 10$)
				23. Recuperare Base.HammerStone;4 (30rep + 10$)
				24. Recuperare Base.Stone;10 (35rep)
]]

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_EmilyTerry_Intro",

    awardsrep = "EmilyTerry;100", -- REP REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_EmilyTerry_Intro_Lore" },
    ondone = "randomcodedworldfrompool;Questyno_EmilyTerry;Questyno;EmilyTerry",
    text = "IGUI_SFQuest_Questyno_EmilyTerry_Intro_Text",
    texture = "media/textures/Item_EmilyTerry.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_EmilyTerry_Intro_Title",
});



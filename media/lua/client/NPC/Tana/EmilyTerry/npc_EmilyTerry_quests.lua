require 'SFQuest_Database'

-- Quest per EmilyTerry
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


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_EmilyTerry15",

    awardsrep = "LaResistenza;350", -- REP REWARD
    awardsitem = "Base.OilOlive",  -- ITEM REWARD
    dailycode = "Questyno_EmilyTerry",
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_EmilyTerry15_Lore" },
    needsitem = "PredicateFreshFood#MushroomGeneric7;1",
    onobtained = "unlockworldevent;Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry15_Complete",
    text = "IGUI_SFQuest_Questyno_EmilyTerry15_Text",
    texture = "media/textures/Item_EmilyTerry.png",
    title = "IGUI_SFQuest_Questyno_EmilyTerry15_Title",
    unlockedsound = "QuestUnlocked"
})


table.insert(SFQuest_Database.QuestPool, emilyTerryQuest24);

local emilyTerryQuest25 = {
    guid = "Questyno_EmilyTerry25",

    awardsrep = "LaResistenza;50", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_EmilyTerry",
    lore = { "IGUI_SFQuest_Questyno_EmilyTerry25_Lore" },
    needsitem = "Base.DenimStrips;40", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry25_Complete",
    text = "IGUI_SFQuest_Questyno_EmilyTerry25_Text",
    texture = "media/textures/Item_EmilyTerry.png",
    title = "IGUI_SFQuest_Questyno_EmilyTerry25_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, emilyTerryQuest25);

-- Stagione 2

--[[
            *** RyanParker ***
            Elenco:
                intro. Parla con RyanParker per sbloccare le daily.
                1. Recupera DjackzVinyl @ 11414x11467x0 (300rep, 50$)
                2. Recupera DjackzVinyl @ 6664x11421x0 (300rep, 50$)
                3. Recupera DjackzVinyl @ 11609x6880x1 (300rep, 50$)
                4. Recupera DjackzVinyl @ 7917x10059x0 (300rep, 50$)
                5. Recupera DjackzVinyl @ 5286x9436x0 (300rep, 50$)
                6. Recupera DjackzVinyl @ 39777x7672x0 (600rep, 100$)
                7. Recupera DjackzVinyl @ 5644x11079x0 (600rep, 100$)
                8. Recupera DjackzVinyl @ 7641x10277x0 (600rep, 100$)
                9. Recupera DjackzVinyl @ 7244x7207x1 (600rep, 100$)
                10. Recupera DjackzVinyl @ 8455x11805x0 (600rep, 100$)
                11. Recupera DjackzVinyl @ 4651x6629x0 (600rep, 100$)
                12. Recupera DjackzVinyl @ 3916x9236x0 (600rep, 100$)
                13. Recupera DjackzVinyl @ 6212x4075x0 (600rep, 100$)
                14. Recupera DjackzVinyl @ 4136x12145x0 (600rep, 100$)
                15. Recupera DjackzVinyl @ 6469x10257x0 (600rep, 100$)
                16. Recupera DjackzVinyl @ 8337x13743x1 (1200rep, 200$)
                17. Recupera DjackzVinyl @ 5018x5846x0 (1200rep, 200$)
                18. Recupera DjackzVinyl @ 12267x12122x0 (1200rep, 200$)
                19. Recupera DjackzVinyl @ 13761x2622x0 (1200rep, 200$)
                20. Recupera DjackzVinyl @ 12371x1984x1 (1200rep, 200$)
]]

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RyanParker_Intro",

    awardsrep = "RyanParker;100", -- REP REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_RyanParker_Intro_Lore" },
    ondone = "randomcodedworldfrompool;Questyno_RyanParker;Questyno;RyanParker",
    text = "IGUI_SFQuest_Questyno_RyanParker_Intro_Text",
    texture = "media/textures/Item_RyanParker.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_RyanParker;SFQuest_Questyno_RyanParker_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_RyanParker_Intro_Title",
});



require 'SFQuest_Database'

-- Quest per GeorgeScott
table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_GeorgeScott10",

    awardstask = "Questyno_GeorgeScott10_A", -- TASK REWARD
    dailycode = "Questyno_GeorgeScott",
    lore = { "IGUI_SFQuest_Questyno_GeorgeScott10_Lore" },
    objectives = { {
        guid = "Questyno_GeorgeScott10_A",
        text = "IGUI_SFQuest_Questyno_GeorgeScott10_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoGeorgeScott10;additem;Trumpet;1;revealobjective;Questyno_GeorgeScott10;2;clickevent;8385x7674x1:EventoGeorgeScott10A;anim:loot:time:50;updateobjective:Questyno_GeorgeScott10:2:Completed"
    }, {
        guid = "Questyno_GeorgeScott10_B",
        text = "IGUI_SFQuest_Questyno_GeorgeScott10_B",
        hidden = true,
        oncompleted = "removeclickevent;EventoGeorgeScott10A;additem;Chopsticks;1;revealobjective;Questyno_GeorgeScott10;3;clickevent;8195x7506x0:EventoGeorgeScott10B;anim:loot:time:50;updateobjective:Questyno_GeorgeScott10:3:Completed"
    }, {
        guid = "Questyno_GeorgeScott10_C",
        text = "IGUI_SFQuest_Questyno_GeorgeScott10_C",
        hidden = true,
        oncompleted = "removeclickevent;EventoGeorgeScott10B;additem;GuitarAcoustic;1"
    } },
    text = "IGUI_SFQuest_Questyno_GeorgeScott10_Text",
    texture = "media/textures/Item_GeorgeScott.png",
    title = "IGUI_SFQuest_Questyno_GeorgeScott10_Title",
    unlockedsound = "QuestUnlocked",
    unlocks = "clickevent;8506x7685x0:EventoGeorgeScott10;anim:loot:time:50;updateobjective:Questyno_GeorgeScott10:1:Completed"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_GeorgeScott10_A",

    awardstask = "Questyno_GeorgeScott10_B", -- TASK REWARD
    dailycode = "Questyno_GeorgeScott",
    lore = { "IGUI_SFQuest_Questyno_GeorgeScott10_Lore" },
    objectives = { {
        guid = "Questyno_GeorgeScott10_D",
        text = "IGUI_SFQuest_Questyno_GeorgeScott10_D",
        hidden = false,
        needsitem = "Trumpet;1",
        onobtained = "updateobjective;Questyno_GeorgeScott10_A;1;Completed;removeitem;Trumpet;1"
    },{
        guid = "Questyno_GeorgeScott10_E",
        text = "IGUI_SFQuest_Questyno_GeorgeScott10_E",
        hidden = false,
        needsitem = "Chopsticks;1",
        onobtained = "updateobjective;Questyno_GeorgeScott10_A;2;Completed;removeitem;Chopsticks;1"
    }, {
        guid = "Questyno_GeorgeScott10_F",
        text = "IGUI_SFQuest_Questyno_GeorgeScott10_F",
        hidden = false,
        needsitem = "GuitarAcoustic;1",
        onobtained = "updateobjective;Questyno_GeorgeScott10_A;3;Completed;removeitem;GuitarAcoustic;1"
    } },
    text = "IGUI_SFQuest_Questyno_GeorgeScott10_A_Text",
    texture = "media/textures/Item_GeorgeScott.png",
    title = "IGUI_SFQuest_Questyno_GeorgeScott10_Title",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_GeorgeScott10_B",

    awardsrep = "LaResistenza;140", -- REP REWARD
    awardsitem = "Money;50", -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_GeorgeScott",
    lore = { "IGUI_SFQuest_Questyno_GeorgeScott10_Lore" },
    unlocks = "unlockworldevent;Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott10_Complete",
    text = "IGUI_SFQuest_Questyno_GeorgeScott10_B_Text",
    texture = "media/textures/Item_GeorgeScott.png",
    title = "IGUI_SFQuest_Questyno_GeorgeScott10_Title",
});


table.insert(SFQuest_Database.QuestPool, scottQuest22);

local scottQuest23 = {
    guid = "Questyno_GeorgeScott23",

    awardsrep = "LaResistenza;150", -- REP REWARD
    awardsitem = "Money;25", -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_GeorgeScott",
    lore = { "IGUI_SFQuest_Questyno_GeorgeScott23_Lore" },
    needsitem = "Base.HolsterDouble;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott23_Complete",
    text = "IGUI_SFQuest_Questyno_GeorgeScott23_Text",
    texture = "media/textures/Item_GeorgeScott.png",
    title = "IGUI_SFQuest_Questyno_GeorgeScott23_Title",
    unlockedsound = "QuestUnlocked",
}
table.insert(SFQuest_Database.QuestPool, scottQuest23);

--[[
            *** Samuel Young ***
            Elenco:
                intro. Parla con Samuel Young per sbloccare le daily.
				1. Recuperare Base.DeadRabbit;4 (275rep)
				2. Recuperare Base.DeadRabbit;2 (150rep)
				3. Recuperare TrapCrate:30 (100rep + Spago)
				4. Recuperare Base.TrapBox;15 (200rep + 30$)
				5. Recuperare Base.DeadSquirrel;2 (80rep)
				6. Recuperare Base.DeadBird;4 (200rep)
				7. Recuperare Base.DeadRabbit;2 (80rep + DehydratedMeatStick;8)
				8. Recuperare Moveables.camping_01_17 parlando con (11217,8963,0) (40rep + 50$)
				9. Recuperare Base.DeadBird;2 (90rep + Base.BeefJerky)
				10. Recuperare Base.DeadSquirrel;2 (50rep + 30$ + Base.BeefJerky;3)
				11. Recuperare Base.TrapBox;6 (50rep + 30$)
				12. Recuperare Base.TrapCrate;8 (60rep + 20$)
				13. Recuperare Base.Cabbage;10;Base.Carrots;2;farming.Potato;4 (200rep)
				14. Recuperare Base.Grasshopper;10;Base.Worm;20 (140rep)
				15. Recuperare Base.DeadRabbit;6 (190rep)
				16. Recuperare Base.DeadSquirrel;10 parlando con (11380,9501,0) (150rep + Base.DeadSquirrel)
				17. Recuperare Base.DeadRabbit;10 parlando con (11330,9482,0) (150rep + Base.DeadRabbit)
				18. Recuperare Base.DeadRabbit;2 (60rep)
				19. Recuperare Base.LeatherStrips;20 (60rep + Scrap Club)
				20. Recuperare Base.LeatherStrips;10 (40rep)
				21. Recuperare Base.TrapMouse (50rep)
				22. Recuperare Base.DeadRabbit;6 (250rep + 50$)
				23. Parlare con (8008,11896,0) (35rep + Base.Salt)
]]

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_SamuelYoung_Intro",

    awardsrep = "SamuelYoung;100", -- REP REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_SamuelYoung_Intro_Lore" },
    ondone = "randomcodedworldfrompool;Questyno_SamuelYoung;Questyno;SamuelYoung",
    text = "IGUI_SFQuest_Questyno_SamuelYoung_Intro_Text",
    texture = "media/textures/Item_SamuelYoung.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_SamuelYoung_Intro_Title",
});



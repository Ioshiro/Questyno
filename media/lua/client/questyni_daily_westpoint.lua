require 'SFQuest_Database'

--[[                  TODO      *** NPC X: Tony "Lupo" (Spawn Point)
                Totale: 1825PF 350$
                Elenco:
                    intro. Parla con Tony per sbloccare le daily.
                    1. Recupera 1 pacco di .308 e uccidi 100z (35 rep + 15$) (TODO: fare la logica delle kill con consegna oggetto)
                    2. Recupera 2 pacchi di 9mm e uccidi 50z (40 rep + 25$) (TODO: fare la logica delle kill con consegna oggetto)
                    3. Recupera Base.Shotgun;3 (65 rep + 50$)
                    4. Recupera Base.AssaultRifle,Base.556Clip (100 rep + 20$)
                    5. Recupera Base.AssaultRifle2;2,Base.M14Clip (140 rep)
                    6. Recupera 10 pacchi .38  a 10633,10401,0 (150 rep)
                    7. Recupera 10 pacchi .45 a 9745,10566,2 (150 rep + 25$)
                    8. Recupera Base.762Box (100 rep + 40$)
                    9. Recupera Base.Pistol,Base.9mmClip (40 rep + 20$)
                    10. Recupera Base.Bullets45Box;2,Base.45Clip;2 (200 rep)
                    11. Recupera 2 fucili a pompa e 2 pacchi di cartucce (150 rep)
                    12. Recupeera 3 molotov (120 rep)
                    13. Recupera 1 molotov (35 rep)
                    14. Recupera Base.DoubleBarrelShotgun,Base.ShotgunShellsBox;2 (120 rep + 30$)
                    15. Recupera Base.Revolver_Long,Base.Bullets44Box;3 (140 rep)
                    16. Recupera Base.Bullets44Box,Base.Bullets9mmBox,Base.Bullets38Box,Base.Bullets45Box (150 rep)
                    17. Recupera 2 pacchi .44 (45 rep)
                    18. Recupera 1 pacco 9mm (40 rep)
                    19. Recupera 1 pacco .308 (35 rep)
                    20. Recupera Base.Revolver (35 rep + 30$)
                    21. Recupera Base.Pistol3(40 rep)
                    22. Recupera 1 Magnum (60 rep)
                    #23. Recupera 5 scatole cartucce a xxx,xxx,x (200 rep + 4 shotgunshellsbox)
]]

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_Lupo_Intro",

    awardsrep = "TonyLupo;100", -- REP REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_Lupo_Intro_Lore" },
    ondone = "randomcodedworldfrompool;Questyno_Lupo;Questyno;Lupo",
    text = "IGUI_SFQuest_Questyno_Lupo_Intro_Text",
    texture = "media/textures/Item_TonyLupo.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_Lupo_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_Lupo_Intro_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_Lupo1",

    awardsrep = "LaResistenza;150", -- REP REWARD
    awardsitem = "Money;20",       -- MONEY REWARD
    completesound = "levelup",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo1_Lore" },
    needsitem = "308Box;8", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_Lupo1_Complete",
    text = "IGUI_SFQuest_Questyno_Lupo1_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo1_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_Lupo2",

    awardsrep = "LaResistenza;250", -- REP REWARD
    awardsitem = "Money;25",       -- MONEY REWARD
    completesound = "levelup",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo2_Lore" },
    needsitem = "Bullets9mmBox;2", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_Lupo2_Complete",
    text = "IGUI_SFQuest_Questyno_Lupo2_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo2_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_Lupo3",

    awardsrep = "LaResistenza;200", -- REP REWARD
    awardsitem = "Money;50",       -- MONEY REWARD
    completesound = "levelup",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo3_Lore" },
    needsitem = "Shotgun;3", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_Lupo3_Complete",
    text = "IGUI_SFQuest_Questyno_Lupo3_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo3_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_Lupo4",
    
    awardstask = "Questyno_Lupo4_A",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo4_Lore" },                                                        
    objectives = { {
        guid = "Questyno_Lupo4_A",
        text = "IGUI_SFQuest_Questyno_Lupo4_A",
        hidden = false,
        needsitem = "AssaultRifle;1",
        onobtained = "updateobjective;Questyno_Lupo4;1;Completed;removeitem;AssaultRifle;1"
    }, {
        guid = "Questyno_Lupo4_B",
        text = "IGUI_SFQuest_Questyno_Lupo4_B",
        hidden = false,
        needsitem = "556Box;1",
        onobtained = "updateobjective;Questyno_Lupo4;2;Completed;removeitem;556Box;1"
    } },
    text = "IGUI_SFQuest_Questyno_Lupo4_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo4_Title",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_Lupo4_A",
    
    awardsrep = "LaResistenza;200",
    awardsitem = "Money;20",
    completesound = "levelup",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo4_Lore" },
    unlocks = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_Lupo4_Complete",
    text = "IGUI_SFQuest_Questyno_Lupo4_A_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo4_Title",
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_Lupo5",
    
    awardstask = "Questyno_Lupo5_A",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo5_Lore" },
    objectives = { {
        guid = "Questyno_Lupo5_A",
        text = "IGUI_SFQuest_Questyno_Lupo5_A",
        hidden = false,
        needsitem = "AssaultRifle2;1",
        onobtained = "updateobjective;Questyno_Lupo5;1;Completed;removeitem;AssaultRifle2;1"
    }, {
        guid = "Questyno_Lupo5_B",
        text = "IGUI_SFQuest_Questyno_Lupo5_B",
        hidden = false,
        needsitem = "308Box;1",
        onobtained = "updateobjective;Questyno_Lupo5;2;Completed;removeitem;308Box;1"
    } },
    text = "IGUI_SFQuest_Questyno_Lupo5_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo5_Title",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_Lupo5_A",
    
    awardsrep = "LaResistenza;600",
    completesound = "levelup",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo5_Lore" },
    unlocks = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_Lupo5_Complete",
    text = "IGUI_SFQuest_Questyno_Lupo5_A_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo5_Title",
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_Lupo6",
    
    awardstask = "Questyno_Lupo6_A",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo6_Lore" },
    objectives = { {
        guid = "Questyno_Lupo6_A",
        text = "IGUI_SFQuest_Questyno_Lupo6_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoLupo6;additem;Bullets38Box;10",
    } },
    text = "IGUI_SFQuest_Questyno_Lupo6_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo6_Title",
    unlocks = "clickevent;10633x10401x0:EventoLupo6;time:50:anim:loot;updateobjective:Questyno_Lupo6:1:Completed",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_Lupo6_A",
    
    awardsrep = "LaResistenza;150",
    completesound = "levelup",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo6_Lore" },
    needsitem = "Bullets38Box;10",
    onobtained = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_Lupo6_Complete",
    text = "IGUI_SFQuest_Questyno_Lupo6_A_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo6_Title",
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_Lupo7",
    
    awardstask = "Questyno_Lupo7_A",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo7_Lore" },
    objectives = { {
        guid = "Questyno_Lupo7_A",
        text = "IGUI_SFQuest_Questyno_Lupo7_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoLupo7;additem;Bullets45Box;10",
    } },
    text = "IGUI_SFQuest_Questyno_Lupo7_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo7_Title",
    unlocks = "clickevent;9745x10566x2:EventoLupo7;time:50:anim:loot;updateobjective:Questyno_Lupo7:1:Completed",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_Lupo7_A",
    
    awardsrep = "LaResistenza;150",
    awardsitem = "Money;25",
    completesound = "levelup",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo7_Lore" },
    needsitem = "Bullets45Box;10",
    onobtained = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_Lupo7_Complete",
    text = "IGUI_SFQuest_Questyno_Lupo7_A_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo7_Title",
})


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_Lupo8",

    awardsrep = "LaResistenza;200", -- REP REWARD
    awardsitem = "Money;40",       -- MONEY REWARD
    completesound = "levelup",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo8_Lore" },
    needsitem = "762Box;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_Lupo8_Complete",
    text = "IGUI_SFQuest_Questyno_Lupo8_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo8_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_Lupo9",
    
    awardstask = "Questyno_Lupo9_A",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo9_Lore" },                                                        
    objectives = { {
        guid = "Questyno_Lupo9_A",
        text = "IGUI_SFQuest_Questyno_Lupo9_A",
        hidden = false,
        needsitem = "Pistol;1",
        onobtained = "updateobjective;Questyno_Lupo9;1;Completed;removeitem;Pistol;1"
    }, {
        guid = "Questyno_Lupo9_B",
        text = "IGUI_SFQuest_Questyno_Lupo9_B",
        hidden = false,
        needsitem = "Bullets9mmBox;1",
        onobtained = "updateobjective;Questyno_Lupo9;2;Completed;removeitem;Bullets9mmBox;1"
    } },
    text = "IGUI_SFQuest_Questyno_Lupo9_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo9_Title",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_Lupo9_A",
    
    awardsrep = "LaResistenza;100",
    awardsitem = "Money;20",
    completesound = "levelup",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo9_Lore" },
    unlocks = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_Lupo9_Complete",
    text = "IGUI_SFQuest_Questyno_Lupo9_A_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo9_Title",
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_Lupo10",
    
    awardstask = "Questyno_Lupo10_A",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo10_Lore" },
    objectives = { {
        guid = "Questyno_Lupo10_A",
        text = "IGUI_SFQuest_Questyno_Lupo10_A",
        hidden = false,
        needsitem = "Bullets45Box;2",
        onobtained = "updateobjective;Questyno_Lupo10;1;Completed;removeitem;Bullets45Box;2"
    }, {
        guid = "Questyno_Lupo10_B",
        text = "IGUI_SFQuest_Questyno_Lupo10_B",
        hidden = false,
        needsitem = "45Clip;2",
        onobtained = "updateobjective;Questyno_Lupo10;2;Completed;removeitem;45Clip;2"
    } },
    text = "IGUI_SFQuest_Questyno_Lupo10_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo10_Title",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_Lupo10_A",
    
    awardsrep = "LaResistenza;200",
    completesound = "levelup",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo10_Lore" },
    unlocks = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_Lupo10_Complete",
    text = "IGUI_SFQuest_Questyno_Lupo10_A_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo10_Title",
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_Lupo11",
    
    awardstask = "Questyno_Lupo11_A",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo11_Lore" },
    objectives = { {
        guid = "Questyno_Lupo11_A",
        text = "IGUI_SFQuest_Questyno_Lupo11_A",
        hidden = false,
        needsitem = "ShotgunShellsBox;2",
        onobtained = "updateobjective;Questyno_Lupo11;1;Completed;removeitem;ShotgunShellsBox;2"
    },
    {
        guid = "Questyno_Lupo11_B",
        text = "IGUI_SFQuest_Questyno_Lupo11_B",
        hidden = false,
        needsitem = "Shotgun;2",
        onobtained = "updateobjective;Questyno_Lupo11;2;Completed;removeitem;Shotgun;2"
    } },
    text = "IGUI_SFQuest_Questyno_Lupo11_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo11_Title",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_Lupo11_A",

    awardsrep = "LaResistenza;400",
    completesound = "levelup",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo11_Lore" },
    unlocks = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_Lupo11_Complete",
    text = "IGUI_SFQuest_Questyno_Lupo11_A_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo11_Title",
})
 
table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_Lupo12",

    awardsrep = "LaResistenza;400", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo12_Lore" },
    needsitem = "Molotov;3", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_Lupo12_Complete",
    text = "IGUI_SFQuest_Questyno_Lupo12_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo12_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_Lupo13",

    awardsrep = "LaResistenza;150", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo13_Lore" },
    needsitem = "Molotov;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_Lupo13_Complete",
    text = "IGUI_SFQuest_Questyno_Lupo13_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo13_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_Lupo14",
    
    awardstask = "Questyno_Lupo14_A",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo14_Lore" },                                                        
    objectives = { {
        guid = "Questyno_Lupo14_A",
        text = "IGUI_SFQuest_Questyno_Lupo14_A",
        hidden = false,
        needsitem = "DoubleBarrelShotgun;1",
        onobtained = "updateobjective;Questyno_Lupo14;1;Completed;removeitem;DoubleBarrelShotgun;1"
    }, {
        guid = "Questyno_Lupo14_B",
        text = "IGUI_SFQuest_Questyno_Lupo14_B",
        hidden = false,
        needsitem = "ShotgunShellsBox;2",
        onobtained = "updateobjective;Questyno_Lupo14;2;Completed;removeitem;ShotgunShellsBox;2"
    } },
    text = "IGUI_SFQuest_Questyno_Lupo14_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo14_Title",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_Lupo14_A",
    
    awardsrep = "LaResistenza;200",
    awardsitem = "Money;30",
    completesound = "levelup",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo14_Lore" },
    unlocks = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_Lupo14_Complete",
    text = "IGUI_SFQuest_Questyno_Lupo14_A_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo14_Title",
})

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_Lupo15",
    
    awardstask = "Questyno_Lupo15_A",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo15_Lore" },                                                        
    objectives = { {
        guid = "Questyno_Lupo15_A",
        text = "IGUI_SFQuest_Questyno_Lupo15_A",
        hidden = false,
        needsitem = "Revolver_Long;1",
        onobtained = "updateobjective;Questyno_Lupo15;1;Completed;removeitem;Revolver_Long;1"
    }, {
        guid = "Questyno_Lupo15_B",
        text = "IGUI_SFQuest_Questyno_Lupo15_B",
        hidden = false,
        needsitem = "Bullets44Box;3",
        onobtained = "updateobjective;Questyno_Lupo15;2;Completed;removeitem;Bullets44Box;3"
    } },
    text = "IGUI_SFQuest_Questyno_Lupo15_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo15_Title",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_Lupo15_A",
    
    awardsrep = "LaResistenza;400",
    completesound = "levelup",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo15_Lore" },
    unlocks = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_Lupo15_Complete",
    text = "IGUI_SFQuest_Questyno_Lupo15_A_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo15_Title",
})

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_Lupo16",
    
    awardstask = "Questyno_Lupo16_A",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo16_Lore" },                                                        
    objectives = { {
        guid = "Questyno_Lupo16_A",
        text = "IGUI_SFQuest_Questyno_Lupo16_A",
        hidden = false,
        needsitem = "Bullets44Box;1",
        onobtained = "updateobjective;Questyno_Lupo16;1;Completed;removeitem;Bullets44Box;1"
    }, {
        guid = "Questyno_Lupo16_B",
        text = "IGUI_SFQuest_Questyno_Lupo16_B",
        hidden = false,
        needsitem = "Bullets9mmBox;1",
        onobtained = "updateobjective;Questyno_Lupo16;2;Completed;removeitem;Bullets9mmBox;1"
    }, {
        guid = "Questyno_Lupo16_C",
        text = "IGUI_SFQuest_Questyno_Lupo16_C",
        hidden = false,
        needsitem = "Bullets38Box;1",
        onobtained = "updateobjective;Questyno_Lupo16;3;Completed;removeitem;Bullets38Box;1"
    }, {
        guid = "Questyno_Lupo16_D",
        text = "IGUI_SFQuest_Questyno_Lupo16_D",
        hidden = false,
        needsitem = "Bullets45Box;1",
        onobtained = "updateobjective;Questyno_Lupo16;4;Completed;removeitem;Bullets45Box;1"
    } },
    text = "IGUI_SFQuest_Questyno_Lupo16_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo16_Title",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_Lupo16_A",
    
    awardsrep = "LaResistenza;250",
    completesound = "levelup",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo16_Lore" },
    unlocks = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_Lupo16_Complete",
    text = "IGUI_SFQuest_Questyno_Lupo16_A_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo16_Title",
})

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_Lupo17",

    awardsrep = "LaResistenza;100", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo17_Lore" },
    needsitem = "Bullets44Box;2", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_Lupo17_Complete",
    text = "IGUI_SFQuest_Questyno_Lupo17_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo17_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_Lupo18",

    awardsrep = "LaResistenza;60", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo18_Lore" },
    needsitem = "Bullets9mmBox;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_Lupo18_Complete",
    text = "IGUI_SFQuest_Questyno_Lupo18_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo18_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_Lupo19",

    awardsrep = "LaResistenza;80", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo19_Lore" },
    needsitem = "308Box;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_Lupo19_Complete",
    text = "IGUI_SFQuest_Questyno_Lupo19_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo19_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_Lupo20",

    awardsrep = "LaResistenza;100", -- REP REWARD
    awardsitem = "Money;30",       -- MONEY REWARD
    completesound = "levelup",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo20_Lore" },
    needsitem = "Revolver;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_Lupo20_Complete",
    text = "IGUI_SFQuest_Questyno_Lupo20_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo20_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_Lupo21",

    awardsrep = "LaResistenza;40", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo21_Lore" },
    needsitem = "Pistol3;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_Lupo21_Complete",
    text = "IGUI_SFQuest_Questyno_Lupo21_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo21_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_Lupo22",

    awardsrep = "LaResistenza;60", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo22_Lore" },
    needsitem = "Revolver_Long;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_Lupo22_Complete",
    text = "IGUI_SFQuest_Questyno_Lupo22_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo22_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_Lupo23",

    awardsrep = "LaResistenza;400", -- REP REWARD
    awardsitem = "ShotgunShellsBox;4;Money;50",       -- MONEY REWARD
    completesound = "levelup",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo23_Lore" },
    needsitem = "ShotgunShellsBox;5", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_Lupo23_Complete",
    text = "IGUI_SFQuest_Questyno_Lupo23_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo23_Title",
    unlockedsound = "QuestUnlocked"
});


--[[
            *** Rafael 'Prezioso' ***
            Elenco:
                intro. Parla con Rafael per sbloccare le daily.
				1. Recuperare Base.WhiskeyFull (120rep + 25$)
				2. Recuperare Base.Wine (80rep + 15$)
				3. Recuperare Base.Trumpet parlando con (10837,10184,0) (35rep)
				4. Recuperare Base.GuitarElectricBassBlue parlando con (7386,8285,0) (45rep)
				5. Recuperare Base.Speaker;2 parlando con (7383,8285,0) (35rep)
				6. Recuperare Base.ToiletPaper;2 (40rep + 30$)
				7. Recuperare Base.Bell parlando con (11437,6665,0) (150rep + 30$)
				8. Recuperare Base.CardDeck (25rep)
				9. Recuperare Base.VideoGame parlando con (9693,11536,0), Base.VideoGame parlando con (10013,11552,0) (80rep)
				10. Recuperare Base.GuitarAcoustic parlando con (10757,10088,0), Base.Trumpet parlando con (10913,10035,0), Base.Drumstick parlando con (10750,9913,0) (100rep + 50$)
				11. Recuperare Base.GamePieceRed,Base.PieceBlack,Base.CheckerBoard parlando con (8244, 11686,0) (45rep)
				12. Recuperare Base.CheckerBoard,ChessWhite,ChessBlack parlando con (6984,8428,0) (50rep)
				13. Recuperare Base.Yoyo (50rep + 20$)
				14. Recuperare Base.PirateHat parlando con (7465,9615,0) (50rep + 100$)
				15. Recuperare Base.Jumper_RoundNeck,Base.Trousers_Denim (40rep + 50$)
				16. Recuperare Moveables.DylansClutter01_55 parlando con (11228,8859,0) (100rep + SWeapons.SalvagedBlade)
				17. Recuperare Moveables.DylansGardenStuff01_32 parlando con (7383,8285,0) (45rep)
				18. Recuperare Moveables.DylansWallDeco01_10 parlando con (8346,11716,0) (35rep)
				19. Recuperare Base.Glasses_Eyepatch_Right parlando con (7338,9663,0) (50rep)
				20. Recuperare Base.Suit_Jacket,Base.Trousers_Suit (80rep)
				21. Recuperare Base.Neackle_DogTag;20 (50rep)
				22. Recuperare Base.NoseStud_Gold (30rep)
				23. Recuperare Base.Tie_BowTieWorn (150rep + 40$)
]]

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso_Intro",

    awardsrep = "RafaelPrezioso;100",
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso_Intro_Lore" },
    ondone = "randomcodedworldfrompool;Questyno_RafaelPrezioso;Questyno;RafaelPrezioso",
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso_Intro_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso_Intro_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso1",

    awardsrep = "LaResistenza;180",
    awardsitem = "Money;25",
    completesound = "levelup",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso1_Lore" },
    needsitem = "Base.WhiskeyFull;1",
    onobtained = "unlockworldevent;Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso1_Complete",
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso1_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso1_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso2",

    awardsrep = "LaResistenza;150",
    awardsitem = "Money;15",
    completesound = "levelup",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso2_Lore" },
    needsitem = "Base.Wine;1",
    onobtained = "unlockworldevent;Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso2_Complete",
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso2_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso2_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso3",
    awardstask = "Questyno_RafaelPrezioso3_A",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso3_Lore" },
    objectives = { {
        guid = "Questyno_RafaelPrezioso3_A",
        text = "IGUI_SFQuest_Questyno_RafaelPrezioso3_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoRafaelPrezioso3;additem;Base.Trumpet;1",
    } },
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso3_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso3_Title",
    unlocks = "clickevent;10837x10184x0:EventoRafaelPrezioso3;time:50:anim:loot;updateobjective:Questyno_RafaelPrezioso3:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso3_A",
    awardsrep = "LaResistenza;150",
    completesound = "levelup",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso3_Lore" },
    needsitem = "Base.Trumpet;1",
    onobtained = "unlockworldevent;Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso3_Complete",
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso3_A_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso3_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso4",
    awardstask = "Questyno_RafaelPrezioso4_A",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso4_Lore" },
    objectives = { {
        guid = "Questyno_RafaelPrezioso4_A",
        text = "IGUI_SFQuest_Questyno_RafaelPrezioso4_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoRafaelPrezioso4;additem;Base.GuitarElectricBassBlue;1",
    } },
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso4_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso4_Title",
    unlocks = "clickevent;7386x8285x0:EventoRafaelPrezioso4;time:50:anim:loot;updateobjective:Questyno_RafaelPrezioso4:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso4_A",
    awardsrep = "LaResistenza;45",
    completesound = "levelup",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso4_Lore" },
    needsitem = "Base.GuitarElectricBassBlue;1",
    onobtained = "unlockworldevent;Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso4_Complete",
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso4_A_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso4_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso5",
    awardstask = "Questyno_RafaelPrezioso5_A",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso5_Lore" },
    objectives = { {
        guid = "Questyno_RafaelPrezioso5_A",
        text = "IGUI_SFQuest_Questyno_RafaelPrezioso5_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoRafaelPrezioso5;additem;Base.Speaker;2",
    } },
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso5_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso5_Title",
    unlocks = "clickevent;7383x8285x0:EventoRafaelPrezioso5;time:50:anim:loot;updateobjective:Questyno_RafaelPrezioso5:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso5_A",
    awardsrep = "LaResistenza;35",
    completesound = "levelup",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso5_Lore" },
    needsitem = "Base.Speaker;2",
    onobtained = "unlockworldevent;Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso5_Complete",
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso5_A_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso5_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso6",
    awardsrep = "LaResistenza;250",
    awardsitem = "Money;30",
    completesound = "levelup",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso6_Lore" },
    needsitem = "Base.ToiletPaper;2",
    onobtained = "unlockworldevent;Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso6_Complete",
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso6_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso6_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso7",
    awardstask = "Questyno_RafaelPrezioso7_A",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso7_Lore" },
    objectives = { {
        guid = "Questyno_RafaelPrezioso7_A",
        text = "IGUI_SFQuest_Questyno_RafaelPrezioso7_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoRafaelPrezioso7;additem;Base.Bell;1",
    } },
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso7_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso7_Title",
    unlocks = "clickevent;11437x6665x0:EventoRafaelPrezioso7;time:50:anim:loot;updateobjective:Questyno_RafaelPrezioso7:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso7_A",
    awardsrep = "LaResistenza;150",
    awardsitem = "Money;30",
    completesound = "levelup",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso7_Lore" },
    needsitem = "Base.Bell;1",
    onobtained = "unlockworldevent;Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso7_Complete",
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso7_A_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso7_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso8",
    awardsrep = "LaResistenza;25",
    completesound = "levelup",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso8_Lore" },
    needsitem = "Base.CardDeck;1",
    onobtained = "unlockworldevent;Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso8_Complete",
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso8_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso8_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso9",
    awardstask = "Questyno_RafaelPrezioso9_A",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso9_Lore" },
    objectives = { {
        guid = "Questyno_RafaelPrezioso9_A",
        text = "IGUI_SFQuest_Questyno_RafaelPrezioso9_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoRafaelPrezioso9;additem;Base.VideoGame;1;revealobjective;Questyno_RafaelPrezioso9;2;clickevent;10013x11552x0:EventoRafaelPrezioso9A;time:50:anim:loot;updateobjective:Questyno_RafaelPrezioso9:2:Completed",
    }, {
        guid = "Questyno_RafaelPrezioso9_B",
        text = "IGUI_SFQuest_Questyno_RafaelPrezioso9_B",
        hidden = true,
        oncompleted = "removeclickevent;EventoRafaelPrezioso9A;additem;Base.VideoGame;1",
    } },
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso9_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso9_Title",
    unlocks = "clickevent;9693x11536x0:EventoRafaelPrezioso9;time:50:anim:loot;updateobjective:Questyno_RafaelPrezioso9:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso9_A",
    awardsrep = "LaResistenza;800",
    awardsitem = "Money;30",
    completesound = "levelup",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso9_Lore" },
    needsitem = "Base.VideoGame;2",
    onobtained = "unlockworldevent;Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso9_Complete",
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso9_A_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso9_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso10",
    awardstask = "Questyno_RafaelPrezioso10_A",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso10_Lore" },
    objectives = { {
        guid = "Questyno_RafaelPrezioso10_A",
        text = "IGUI_SFQuest_Questyno_RafaelPrezioso10_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoRafaelPrezioso10;additem;Base.GuitarAcoustic;1;clickevent;10913x10035x0:EventoRafaelPrezioso10A;time:50:anim:loot;updateobjective:Questyno_RafaelPrezioso10:2:Completed;revealobjective;Questyno_RafaelPrezioso10;2",
    }, {
        guid = "Questyno_RafaelPrezioso10_B",
        text = "IGUI_SFQuest_Questyno_RafaelPrezioso10_B",
        hidden = true,
        oncompleted = "removeclickevent;EventoRafaelPrezioso10A;additem;Base.Trumpet;1;revealobjective;Questyno_RafaelPrezioso10;3;clickevent;10750x9913x0:EventoRafaelPrezioso10B;time:50:anim:loot;updateobjective:Questyno_RafaelPrezioso10:3:Completed",
    }, {
        guid = "Questyno_RafaelPrezioso10_C",
        text = "IGUI_SFQuest_Questyno_RafaelPrezioso10_C",
        hidden = true,
        oncompleted = "removeclickevent;EventoRafaelPrezioso10B;additem;Base.Drumstick;1",
    } },
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso10_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso10_Title",
    unlocks = "clickevent;10757x10088x0:EventoRafaelPrezioso10;time:50:anim:loot;updateobjective:Questyno_RafaelPrezioso10:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso10_A",
    awardstask = "Questyno_RafaelPrezioso10_B",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso10_Lore" },
    objectives = {
        {
            guid = "Questyno_RafaelPrezioso10_D",
            text = "IGUI_SFQuest_Questyno_RafaelPrezioso10_D",
            hidden = false,
            needsitem = "Base.GuitarAcoustic;1",
            onobtained = "updateobjective;Questyno_RafaelPrezioso10_A;1;Completed;removeitem;Base.GuitarAcoustic;1"
        },
        {
            guid = "Questyno_RafaelPrezioso10_E",
            text = "IGUI_SFQuest_Questyno_RafaelPrezioso10_E",
            hidden = false,
            needsitem = "Base.Trumpet;1",
            onobtained = "updateobjective;Questyno_RafaelPrezioso10_A;2;Completed;removeitem;Base.Trumpet;1"
        },
        {
            guid = "Questyno_RafaelPrezioso10_F",
            text = "IGUI_SFQuest_Questyno_RafaelPrezioso10_F",
            hidden = false,
            needsitem = "Base.Drumstick;1",
            onobtained = "updateobjective;Questyno_RafaelPrezioso10_A;3;Completed;removeitem;Base.Drumstick;1"
        }
    },
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso10_A_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso10_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso10_B",
    awardsrep = "LaResistenza;230",
    awardsitem = "Money;50",
    completesound = "levelup",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso10_Lore" },
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso10_B_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso10_Title",
    unlocks = "unlockworldevent;Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso10_Complete",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso11",
    awardstask = "Questyno_RafaelPrezioso11_A",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso11_Lore" },
    objectives = { {
        guid = "Questyno_RafaelPrezioso11_A",
        text = "IGUI_SFQuest_Questyno_RafaelPrezioso11_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoRafaelPrezioso11;additem;Base.GamePieceRed;1;additem;Base.GamePieceBlack;1;additem;Base.CheckerBoard;1",
    } },
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso11_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso11_Title",
    unlocks = "clickevent;8245x11686x0:EventoRafaelPrezioso11;time:50:anim:loot;updateobjective:Questyno_RafaelPrezioso11:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso11_A",
    awardstask = "Questyno_RafaelPrezioso11_B",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso11_Lore" },
    objectives = {
        {
            guid = "Questyno_RafaelPrezioso11_B",
            text = "IGUI_SFQuest_Questyno_RafaelPrezioso11_B",
            hidden = false,
            needsitem = "Base.GamePieceRed;1",
            onobtained = "updateobjective;Questyno_RafaelPrezioso11_A;1;Completed;removeitem;Base.GamePieceRed;1"
        },
        {
            guid = "Questyno_RafaelPrezioso11_C",
            text = "IGUI_SFQuest_Questyno_RafaelPrezioso11_C",
            hidden = false,
            needsitem = "Base.GamePieceBlack;1",
            onobtained = "updateobjective;Questyno_RafaelPrezioso11_A;2;Completed;removeitem;Base.GamePieceBlack;1"
        },
        {
            guid = "Questyno_RafaelPrezioso11_D",
            text = "IGUI_SFQuest_Questyno_RafaelPrezioso11_D",
            hidden = false,
            needsitem = "Base.CheckerBoard;1",
            onobtained = "updateobjective;Questyno_RafaelPrezioso11_A;3;Completed;removeitem;Base.CheckerBoard;1"
        }
    },
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso11_A_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso11_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso11_B",
    awardsrep = "LaResistenza;180",
    completesound = "levelup",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso11_Lore" },
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso11_B_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso11_Title",
    unlocks = "unlockworldevent;Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso11_Complete",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso12",
    awardstask = "Questyno_RafaelPrezioso12_A",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso12_Lore" },
    objectives = { {
        guid = "Questyno_RafaelPrezioso12_A",
        text = "IGUI_SFQuest_Questyno_RafaelPrezioso12_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoRafaelPrezioso12;additem;Base.CheckerBoard;1;additem;ChessWhite;1;additem;ChessBlack;1",
    } },
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso12_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso12_Title",
    unlocks = "clickevent;6984x8428x0:EventoRafaelPrezioso12;time:50:anim:loot;updateobjective:Questyno_RafaelPrezioso12:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso12_A",
    awardstask = "Questyno_RafaelPrezioso12_B",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso12_Lore" },
    objectives = {
        {
            guid = "Questyno_RafaelPrezioso12_B",
            text = "IGUI_SFQuest_Questyno_RafaelPrezioso12_B",
            hidden = false,
            needsitem = "Base.CheckerBoard;1",
            onobtained = "updateobjective;Questyno_RafaelPrezioso12_A;1;Completed;removeitem;Base.CheckerBoard;1"
        },
        {
            guid = "Questyno_RafaelPrezioso12_C",
            text = "IGUI_SFQuest_Questyno_RafaelPrezioso12_C",
            hidden = false,
            needsitem = "ChessWhite;1",
            onobtained = "updateobjective;Questyno_RafaelPrezioso12_A;2;Completed;removeitem;ChessWhite;1"
        },
        {
            guid = "Questyno_RafaelPrezioso12_D",
            text = "IGUI_SFQuest_Questyno_RafaelPrezioso12_D",
            hidden = false,
            needsitem = "ChessBlack;1",
            onobtained = "updateobjective;Questyno_RafaelPrezioso12_A;3;Completed;removeitem;ChessBlack;1"
        }
    },
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso12_A_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso12_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso12_B",
    awardsrep = "LaResistenza;50",
    completesound = "levelup",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso12_Lore" },
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso12_B_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso12_Title",
    unlocks = "unlockworldevent;Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso12_Complete",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso13",
    awardsrep = "LaResistenza;300",
    awardsitem = "Money;20",
    completesound = "levelup",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso13_Lore" },
    needsitem = "Base.Yoyo;3",
    onobtained = "unlockworldevent;Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso13_Complete",
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso13_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso13_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso14",
    awardstask = "Questyno_RafaelPrezioso14_A",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso14_Lore" },
    objectives = { {
        guid = "Questyno_RafaelPrezioso14_A",
        text = "IGUI_SFQuest_Questyno_RafaelPrezioso14_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoRafaelPrezioso14;additem;Base.PirateHat;1",
    } },
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso14_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso14_Title",
    unlocks = "clickevent;7465x9615x2:EventoRafaelPrezioso14;time:50:anim:loot;updateobjective:Questyno_RafaelPrezioso14:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso14_A",
    awardsrep = "LaResistenza;50",
    awardsitem = "Money;100",
    completesound = "levelup",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso14_Lore" },
    needsitem = "Base.PirateHat;1",
    onobtained = "unlockworldevent;Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso14_Complete",
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso14_A_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso14_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso15",
    awardstask = "Questyno_RafaelPrezioso15_A",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso15_Lore" },
    objectives = { {
        guid = "Questyno_RafaelPrezioso15_A",
        text = "IGUI_SFQuest_Questyno_RafaelPrezioso15_A",
        hidden = false,
        needsitem = "Base.Trousers_Denim;1",
        onobtained = "updateobjective;Questyno_RafaelPrezioso15;1;Completed;removeitem;Base.Trousers_Denim;1",
    },{
        guid = "Questyno_RafaelPrezioso15_B",
        text = "IGUI_SFQuest_Questyno_RafaelPrezioso15_B",
        hidden = false,
        needsitem = "Base.Jumper_RoundNeck;1",
        onobtained = "updateobjective;Questyno_RafaelPrezioso15;2;Completed;removeitem;Base.Jumper_RoundNeck;1",
    }},
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso15_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso15_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso15_A",
    awardsrep = "LaResistenza;40",
    awardsitem = "Money;50",
    completesound = "levelup",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso15_Lore" },
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso15_A_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso15_Title",
    unlocks = "unlockworldevent;Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso15_Complete",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso16",
    awardstask = "Questyno_RafaelPrezioso16_A",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso16_Lore" },
    objectives = { {
        guid = "Questyno_RafaelPrezioso16_A",
        text = "IGUI_SFQuest_Questyno_RafaelPrezioso16_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoRafaelPrezioso16;additem;Drumstick;1",
    } },
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso16_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso16_Title",
    unlocks = "clickevent;11228x8859x0:EventoRafaelPrezioso16;time:50:anim:loot;updateobjective:Questyno_RafaelPrezioso16:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso16_A",
    awardsrep = "LaResistenza;250",
    awardsitem = "SWeapons.SalvagedBlade;1",
    awardstask = "Questyno_RafaelPrezioso17",
    completesound = "levelup",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso16_Lore" },
    needsitem = "Drumstick;1",
    onobtained = "unlockworldevent;Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso16_Complete",
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso16_A_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso16_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso17",
    awardstask = "Questyno_RafaelPrezioso17_A",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso17_Lore" },
    objectives = { {
        guid = "Questyno_RafaelPrezioso17_A",
        text = "IGUI_SFQuest_Questyno_RafaelPrezioso17_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoRafaelPrezioso17;additem;Fertilizer;1",
    } },
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso17_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso17_Title",
    unlocks = "clickevent;6668x11376x0:EventoRafaelPrezioso17;time:50:anim:loot;updateobjective:Questyno_RafaelPrezioso17:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso17_A",
    awardsrep = "LaResistenza;180",
    completesound = "levelup",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso17_Lore" },
    needsitem = "Fertilizer;1",
    onobtained = "unlockworldevent;Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso17_Complete",
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso17_A_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso17_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso18",
    awardstask = "Questyno_RafaelPrezioso18_A",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso18_Lore" },
    objectives = { {
        guid = "Questyno_RafaelPrezioso18_A",
        text = "IGUI_SFQuest_Questyno_RafaelPrezioso18_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoRafaelPrezioso18;additem;PaintBlue;1;additem;PaintRed;1;additem;PaintYellow;1",
    } },
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso18_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso18_Title",
    unlocks = "clickevent;5636x10965x0:EventoRafaelPrezioso18;time:50:anim:loot;updateobjective:Questyno_RafaelPrezioso18:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso18_A",
    awardstask = "Questyno_RafaelPrezioso18_B",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso18_Lore" },
    objectives = {
        {
            guid = "Questyno_RafaelPrezioso18_B",
            text = "IGUI_SFQuest_Questyno_RafaelPrezioso18_B",
            hidden = false,
            needsitem = "PaintBlue;1",
            onobtained = "updateobjective;Questyno_RafaelPrezioso18_A;1;Completed;removeitem;PaintBlue;1"
        },
        {
            guid = "Questyno_RafaelPrezioso18_C",
            text = "IGUI_SFQuest_Questyno_RafaelPrezioso18_C",
            hidden = false,
            needsitem = "PaintRed;1",
            onobtained = "updateobjective;Questyno_RafaelPrezioso18_A;2;Completed;removeitem;PaintRed;1"
        },
        {
            guid = "Questyno_RafaelPrezioso18_D",
            text = "IGUI_SFQuest_Questyno_RafaelPrezioso18_D",
            hidden = false,
            needsitem = "PaintYellow;1",
            onobtained = "updateobjective;Questyno_RafaelPrezioso18_A;3;Completed;removeitem;PaintYellow;1"
        }
    },
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso18_A_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso18_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso18_B",
    awardsrep = "LaResistenza;350",
    completesound = "levelup",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso18_Lore" },
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso18_B_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso18_Title",
    unlocks = "unlockworldevent;Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso18_Complete",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso19",
    awardsrep = "LaResistenza;50",
    completesound = "levelup",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso19_Lore" },
    needsitem = "Tag#Bandana;1",
    onobtained = "unlockworldevent;Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso19_Complete",
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso19_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso19_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso20",
    awardstask = "Questyno_RafaelPrezioso20_A",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso20_Lore" },
    objectives = { {
        guid = "Questyno_RafaelPrezioso20_A",
        text = "IGUI_SFQuest_Questyno_RafaelPrezioso20_A",
        hidden = false,
        needsitem = "Base.Suit_Jacket;1",
        onobtained = "updateobjective;Questyno_RafaelPrezioso20;1;Completed;removeitem;Base.Suit_Jacket;1",
    },{
        guid = "Questyno_RafaelPrezioso20_B",
        text = "IGUI_SFQuest_Questyno_RafaelPrezioso20_B",
        hidden = false,
        needsitem = "Base.Trousers_Suit;1",
        onobtained = "updateobjective;Questyno_RafaelPrezioso20;2;Completed;removeitem;Base.Trousers_Suit;1",
    }},
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso20_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso20_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso20_A",
    awardsrep = "LaResistenza;80",
    completesound = "levelup",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso20_Lore" },
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso20_A_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso20_Title",
    unlocks = "unlockworldevent;Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso20_Complete",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso21",
    awardsrep = "LaResistenza;400",
    completesound = "levelup",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso21_Lore" },
    needsitem = "Base.Necklace_DogTag;50",
    onobtained = "unlockworldevent;Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso21_Complete",
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso21_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso21_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso22",
    awardsrep = "LaResistenza;30",
    completesound = "levelup",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso22_Lore" },
    needsitem = "Base.NoseStud_Gold;1",
    onobtained = "unlockworldevent;Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso22_Complete",
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso22_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso22_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso23",
    awardsrep = "LaResistenza;150",
    awardsitem = "Money;40",
    completesound = "levelup",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso23_Lore" },
    needsitem = "Base.Tie_BowTieWorn;1",
    onobtained = "unlockworldevent;Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso23_Complete",
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso23_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso23_Title",
});

--[[
            *** Jeffrey Lewis ***
            Elenco:
                intro. Parla con Jeffrey Lewis per sbloccare le daily.
				1. Recuperare Base.BookCarpentry1,Base.BookCarpentry2,Base.BookCooking1,Base.BookElectrician2 (200rep)
				2. Recuperare Base.BookCarpentry2,Base.BookCooking3,Base.BookForaging1,Base.BookForaging3 (160rep)
				3. Recuperare Base.BookMechanic2,Base.BookMetalWelding1,Base.BookMechanic4 (150rep)
				4. Recuperare Base.BookFirstAid2,Base.BookMechanic3,Base.BookFirstAid1,Base.BookFishing1 (150rep)
				5. Recuperare BaseBookFarming2,Base.BookFirstAid3,Base.BookFishing2,Base.BookFirstAid5 (130rep)
				6. Recuperare Base.BookFarming4,Base.BookTrapping4,Base.BookForaging4,Base.BookForaging5 (180rep)
				7. Recupero Base.ElectronicsMag3,Base.FarmingMag1,Base.FishingMag2,Base.ElectronicsMag2 a (8346x11716x0) (100rep + 25$)
				8. Recupero  Base.BookMechanic1,Base.BookCarpentry5,Base.BookFarming5,Base.BookFirstAid5,Base.BookMechanic5,Base.BookMetalWelding5 a (10611,10363,0) (70rep + 30$) 
				9. Recuperare Base.TVMagazine;5 (60rep)
				10. Recuperare Base.BookFarming1,Base.BookFarming2,Base.BookFarming3,Base.BookFarming4,Base.BookFarming5 (250rep)
				11. Recuperare Base.BookElectrician1,Base.BookElectrician2,Base.BookElectrician3,Base.BookElectrician4,Base.BookElectrician5 (220rep)
				12. Recuperare Base.TVMagazine;10 (200rep)
				13. Recuperare Base.BookFishing3,Base.BookMetalWelding2,Base.BookMetalWelding3,Base.BookCarpentry4,Base.BookTrapping2 (140rep)
				14. Recuperare Base.BookFishing4,Base.BookMetalWelding1,Base.BookMetalWelding2,Base.BookCarpentry2,Base.BookTrapping5 (150rep)
				15. Recuperare Base.BookForaging4,Base.BookForaging3,Base.BookMechanic1,Base.BookCarpentry2,BaseBookFarming5 (130rep)
				16. Recupero Base.HuntingMag1,Base.HuntingMag2 a (9681,11178,0) (80rep) 
				17. Recuperare Base.FishingMag1,Base.FishingMag2 parlando con (8090,11511,0) (75rep)
				18. Recuperare Base.ElectronicsMag1,Base.ElectronicsMag2,Base.ElectronicsMag3 parlando con (10627,9973,0) (70rep + 30$)
				19. Recuperare Base.SheetPaper2;4,Base.Crayons;2 (100rep + 20$)
				20. Recuperare Base.Magazine;5 (120rep)
				21. Recuperare Base.MagazineWordsearch1,Base.MagazineWordsearch2,Base.MagazineWordsearch3,MagazineCrossword1,MagazineCrossword2,MagazineCrossword3 (200rep)
				22. Recuperare Base.BookCarpentry5 (40rep)
				23. Recuperare Base.BookTrapping3 (50rep)
]]

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis_Intro",

    awardsrep = "JeffreyLewis;100",
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis_Intro_Lore" },
    ondone = "randomcodedworldfrompool;Questyno_JeffreyLewis;Questyno;JeffreyLewis",
    text = "IGUI_SFQuest_Questyno_JeffreyLewis_Intro_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis_Intro_Title"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis1",
    awardstask = "Questyno_JeffreyLewis1_A",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis1_Lore" },
    objectives = { {
        guid = "Questyno_JeffreyLewis1_A",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis1_A",
        hidden = false,
        needsitem = "Base.BookCarpentry1;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis1;1;Completed;removeitem;Base.BookCarpentry1;1",
    },{
        guid = "Questyno_JeffreyLewis1_B",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis1_B",
        hidden = false,
        needsitem = "Base.BookCarpentry2;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis1;2;Completed;removeitem;Base.BookCarpentry2;1",
    },{
        guid = "Questyno_JeffreyLewis1_C",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis1_C",
        hidden = false,
        needsitem = "Base.BookCooking1;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis1;3;Completed;removeitem;Base.BookCooking1;1",
    },{
        guid = "Questyno_JeffreyLewis1_D",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis1_D",
        hidden = false,
        needsitem = "Base.BookElectrician2;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis1;4;Completed;removeitem;Base.BookElectrician2;1",
    }},
    text = "IGUI_SFQuest_Questyno_JeffreyLewis1_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis1_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis1_A",
    awardsrep = "LaResistenza;200",
    completesound = "levelup",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis1_Lore" },
    text = "IGUI_SFQuest_Questyno_JeffreyLewis1_A_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis1_Title",
    unlocks = "unlockworldevent;Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis1_Complete",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis2",
    awardstask = "Questyno_JeffreyLewis2_A",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis2_Lore" },
    objectives = { {
        guid = "Questyno_JeffreyLewis2_A",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis2_A",
        hidden = false,
        needsitem = "Base.BookCarpentry2;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis2;1;Completed;removeitem;Base.BookCarpentry2;1",
    },{
        guid = "Questyno_JeffreyLewis2_B",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis2_B",
        hidden = false,
        needsitem = "Base.BookCooking3;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis2;2;Completed;removeitem;Base.BookCooking3;1",
    },{
        guid = "Questyno_JeffreyLewis2_C",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis2_C",
        hidden = false,
        needsitem = "Base.BookForaging1;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis2;3;Completed;removeitem;Base.BookForaging1;1",
    },{
        guid = "Questyno_JeffreyLewis2_D",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis2_D",
        hidden = false,
        needsitem = "Base.BookForaging3;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis2;4;Completed;removeitem;Base.BookForaging3;1",
    }},
    text = "IGUI_SFQuest_Questyno_JeffreyLewis2_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis2_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis2_A",
    awardsrep = "LaResistenza;160",
    completesound = "levelup",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis2_Lore" },
    text = "IGUI_SFQuest_Questyno_JeffreyLewis2_A_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis2_Title",
    unlocks = "unlockworldevent;Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis2_Complete",
});
    
table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis3",
    awardstask = "Questyno_JeffreyLewis3_A",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis3_Lore" },
    objectives = { {
        guid = "Questyno_JeffreyLewis3_A",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis3_A",
        hidden = false,
        needsitem = "Base.BookMechanic2;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis3;1;Completed;removeitem;Base.BookMechanic2;1",
    },{
        guid = "Questyno_JeffreyLewis3_B",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis3_B",
        hidden = false,
        needsitem = "Base.BookMetalWelding1;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis3;2;Completed;removeitem;Base.BookMetalWelding1;1",
    },{
        guid = "Questyno_JeffreyLewis3_C",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis3_C",
        hidden = false,
        needsitem = "Base.BookMechanic4;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis3;3;Completed;removeitem;Base.BookMechanic4;1",
    }},
    text = "IGUI_SFQuest_Questyno_JeffreyLewis3_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis3_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis3_A",
    awardsrep = "LaResistenza;150",
    completesound = "levelup",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis3_Lore" },
    text = "IGUI_SFQuest_Questyno_JeffreyLewis3_A_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis3_Title",
    unlocks = "unlockworldevent;Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis3_Complete",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis4",
    awardstask = "Questyno_JeffreyLewis4_A",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis4_Lore" },
    objectives = { {
        guid = "Questyno_JeffreyLewis4_A",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis4_A",
        hidden = false,
        needsitem = "Base.BookFirstAid2;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis4;1;Completed;removeitem;Base.BookFirstAid2;1",
    },{
        guid = "Questyno_JeffreyLewis4_B",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis4_B",
        hidden = false,
        needsitem = "Base.BookMechanic3;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis4;2;Completed;removeitem;Base.BookMechanic3;1",
    },{
        guid = "Questyno_JeffreyLewis4_C",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis4_C",
        hidden = false,
        needsitem = "Base.BookFirstAid1;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis4;3;Completed;removeitem;Base.BookFirstAid1;1",
    },{
        guid = "Questyno_JeffreyLewis4_D",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis4_D",
        hidden = false,
        needsitem = "Base.BookFishing1;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis4;4;Completed;removeitem;Base.BookFishing1;1",
    }},
    text = "IGUI_SFQuest_Questyno_JeffreyLewis4_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis4_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis4_A",
    awardsrep = "LaResistenza;150",
    completesound = "levelup",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis4_Lore" },
    text = "IGUI_SFQuest_Questyno_JeffreyLewis4_A_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis4_Title",
    unlocks = "unlockworldevent;Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis4_Complete",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis5",
    awardstask = "Questyno_JeffreyLewis5_A",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis5_Lore" },
    objectives = { {
        guid = "Questyno_JeffreyLewis5_A",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis5_A",
        hidden = false,
        needsitem = "Base.BookFarming2;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis5;1;Completed;removeitem;Base.BookFarming2;1",
    },{
        guid = "Questyno_JeffreyLewis5_B",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis5_B",
        hidden = false,
        needsitem = "Base.BookFirstAid3;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis5;2;Completed;removeitem;Base.BookFirstAid3;1",
    },{
        guid = "Questyno_JeffreyLewis5_C",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis5_C",
        hidden = false,
        needsitem = "Base.BookFishing2;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis5;3;Completed;removeitem;Base.BookFishing2;1",
    },{
        guid = "Questyno_JeffreyLewis5_D",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis5_D",
        hidden = false,
        needsitem = "Base.BookFirstAid5;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis5;4;Completed;removeitem;Base.BookFirstAid5;1",
    }},
    text = "IGUI_SFQuest_Questyno_JeffreyLewis5_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis5_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis5_A",
    awardsrep = "LaResistenza;200",
    completesound = "levelup",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis5_Lore" },
    text = "IGUI_SFQuest_Questyno_JeffreyLewis5_A_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis5_Title",
    unlocks = "unlockworldevent;Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis5_Complete",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis6",
    awardstask = "Questyno_JeffreyLewis6_A",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis6_Lore" },
    objectives = { {
        guid = "Questyno_JeffreyLewis6_A",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis6_A",
        hidden = false,
        needsitem = "Base.BookFarming4;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis6;1;Completed;removeitem;Base.BookFarming4;1",
    },{
        guid = "Questyno_JeffreyLewis6_B",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis6_B",
        hidden = false,
        needsitem = "Base.BookTrapping4;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis6;2;Completed;removeitem;Base.BookTrapping4;1",
    },{
        guid = "Questyno_JeffreyLewis6_C",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis6_C",
        hidden = false,
        needsitem = "Base.BookForaging4;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis6;3;Completed;removeitem;Base.BookForaging4;1",
    },{
        guid = "Questyno_JeffreyLewis6_D",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis6_D",
        hidden = false,
        needsitem = "Base.BookForaging5;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis6;4;Completed;removeitem;Base.BookForaging5;1",
    }},
    text = "IGUI_SFQuest_Questyno_JeffreyLewis6_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis6_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis6_A",
    awardsrep = "LaResistenza;180",
    completesound = "levelup",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis6_Lore" },
    text = "IGUI_SFQuest_Questyno_JeffreyLewis6_A_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis6_Title",
    unlocks = "unlockworldevent;Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis6_Complete",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis7",
    awardstask = "Questyno_JeffreyLewis7_A",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis7_Lore" },
    objectives = { {
        guid = "Questyno_JeffreyLewis7_A",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis7_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoJeffreyLewis7;additem;ElectronicsMag3;1;additem;FarmingMag1;1;additem;FishingMag2;1;additem;ElectronicsMag2;1",
    } },
    text = "IGUI_SFQuest_Questyno_JeffreyLewis7_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis7_Title",
    unlocks = "clickevent;10611x10363x0:EventoJeffreyLewis7;time:50:anim:loot;updateobjective:Questyno_JeffreyLewis7:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis7_A",
    
    awardstask = "Questyno_JeffreyLewis7_B",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis7_Lore" },
    objectives = {
        {
            guid = "Questyno_JeffreyLewis7_B",
            text = "IGUI_SFQuest_Questyno_JeffreyLewis7_B",
            hidden = false,
            needsitem = "Base.ElectronicsMag3;1",
            onobtained = "updateobjective;Questyno_JeffreyLewis7_A;1;Completed;removeitem;Base.ElectronicsMag3;1",
        },{
            guid = "Questyno_JeffreyLewis7_C",
            text = "IGUI_SFQuest_Questyno_JeffreyLewis7_C",
            hidden = false,
            needsitem = "Base.FarmingMag1;1",
            onobtained = "updateobjective;Questyno_JeffreyLewis7_A;2;Completed;removeitem;Base.FarmingMag1;1",
        },{
            guid = "Questyno_JeffreyLewis7_D",
            text = "IGUI_SFQuest_Questyno_JeffreyLewis7_D",
            hidden = false,
            needsitem = "Base.FishingMag2;1",
            onobtained = "updateobjective;Questyno_JeffreyLewis7_A;3;Completed;removeitem;Base.FishingMag2;1",
        },{
            guid = "Questyno_JeffreyLewis7_E",
            text = "IGUI_SFQuest_Questyno_JeffreyLewis7_E",
            hidden = false,
            needsitem = "Base.ElectronicsMag2;1",
            onobtained = "updateobjective;Questyno_JeffreyLewis7_A;4;Completed;removeitem;Base.ElectronicsMag2;1",
        } },
        text = "IGUI_SFQuest_Questyno_JeffreyLewis7_A_Text",
        texture = "media/textures/Item_JeffreyLewis.png",
        title = "IGUI_SFQuest_Questyno_JeffreyLewis7_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis7_B",
    awardsrep = "LaResistenza;300",
    awardsitem = "Money;25",
    completesound = "levelup",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis7_Lore" },
    text = "IGUI_SFQuest_Questyno_JeffreyLewis7_B_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis7_Title",
    unlocks = "unlockworldevent;Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis7_Complete",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis8",
    awardstask = "Questyno_JeffreyLewis8_A",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis8_Lore" },
    objectives = { {
        guid = "Questyno_JeffreyLewis8_A",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis8_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoJeffreyLewis8;additem;BookMechanic1;1;additem;BookCarpentry5;1;additem;BookFarming5;1;additem;BookFirstAid5;1;additem;BookMechanic5;1;additem;BookMetalWelding5;1",
    } },
    text = "IGUI_SFQuest_Questyno_JeffreyLewis8_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis8_Title",
    unlocks = "clickevent;8140x9694x0:EventoJeffreyLewis8;time:50:anim:loot;updateobjective:Questyno_JeffreyLewis8:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis8_A",
    awardstask = "Questyno_JeffreyLewis8_B",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis8_Lore" },
    objectives = { {
        guid = "Questyno_JeffreyLewis8_B",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis8_B",
        hidden = false,
        needsitem = "Base.BookMechanic1;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis8_A;1;Completed;removeitem;Base.BookMechanic1;1",
    },{
        guid = "Questyno_JeffreyLewis8_C",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis8_C",
        hidden = false,
        needsitem = "Base.BookCarpentry5;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis8_A;2;Completed;removeitem;Base.BookCarpentry5;1",
    },{
        guid = "Questyno_JeffreyLewis8_D",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis8_D",
        hidden = false,
        needsitem = "Base.BookFarming5;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis8_A;3;Completed;removeitem;Base.BookFarming5;1",
    },{
        guid = "Questyno_JeffreyLewis8_E",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis8_E",
        hidden = false,
        needsitem = "Base.BookFirstAid5;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis8_A;4;Completed;removeitem;Base.BookFirstAid5;1",
    },{
        guid = "Questyno_JeffreyLewis8_F",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis8_F",
        hidden = false,
        needsitem = "Base.BookMechanic5;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis8_A;5;Completed;removeitem;Base.BookMechanic5;1",
    },{
        guid = "Questyno_JeffreyLewis8_G",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis8_G",
        hidden = false,
        needsitem = "Base.BookMetalWelding5;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis8_A;6;Completed;removeitem;Base.BookMetalWelding5;1",
    }},
    text = "IGUI_SFQuest_Questyno_JeffreyLewis8_A_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis8_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis8_B",
    awardsrep = "LaResistenza;300",
    awardsitem = "Money;30",
    completesound = "levelup",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis8_Lore" },
    text = "IGUI_SFQuest_Questyno_JeffreyLewis8_B_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis8_Title",
    unlocks = "unlockworldevent;Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis8_Complete",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis9",
    awardsrep = "LaResistenza;450",
    dailycode = "Questyno_JeffreyLewis",
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis9_Lore" },
    needsitem = "Base.TVMagazine;50",
    onobtained = "unlockworldevent;Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis9_Complete",
    text = "IGUI_SFQuest_Questyno_JeffreyLewis9_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis9_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis10",
    awardstask = "Questyno_JeffreyLewis10_A",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis10_Lore" },
    objectives = { {
        guid = "Questyno_JeffreyLewis10_A",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis10_A",
        hidden = false,
        needsitem = "Base.BookFarming1;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis10;1;Completed;removeitem;Base.BookFarming1;1",
    },{
        guid = "Questyno_JeffreyLewis10_B",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis10_B",
        hidden = false,
        needsitem = "Base.BookFarming2;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis10;2;Completed;removeitem;Base.BookFarming2;1",
    },{
        guid = "Questyno_JeffreyLewis10_C",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis10_C",
        hidden = false,
        needsitem = "Base.BookFarming3;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis10;3;Completed;removeitem;Base.BookFarming3;1",
    },{
        guid = "Questyno_JeffreyLewis10_D",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis10_D",
        hidden = false,
        needsitem = "Base.BookFarming4;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis10;4;Completed;removeitem;Base.BookFarming4;1",
    },{
        guid = "Questyno_JeffreyLewis10_E",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis10_E",
        hidden = false,
        needsitem = "Base.BookFarming5;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis10;5;Completed;removeitem;Base.BookFarming5;1",
    }},
    text = "IGUI_SFQuest_Questyno_JeffreyLewis10_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis10_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis10_A",
    awardsrep = "LaResistenza;250",
    completesound = "levelup",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis10_Lore" },
    text = "IGUI_SFQuest_Questyno_JeffreyLewis10_A_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis10_Title",
    unlocks = "unlockworldevent;Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis10_Complete",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis11",
    awardstask = "Questyno_JeffreyLewis11_A",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis11_Lore" },
    objectives = { {
        guid = "Questyno_JeffreyLewis11_A",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis11_A",
        hidden = false,
        needsitem = "Base.BookElectrician1;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis11;1;Completed;removeitem;Base.BookElectrician1;1",
    },{
        guid = "Questyno_JeffreyLewis11_B",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis11_B",
        hidden = false,
        needsitem = "Base.BookElectrician2;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis11;2;Completed;removeitem;Base.BookElectrician2;1",
    },{
        guid = "Questyno_JeffreyLewis11_C",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis11_C",
        hidden = false,
        needsitem = "Base.BookElectrician3;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis11;3;Completed;removeitem;Base.BookElectrician3;1",
    },{
        guid = "Questyno_JeffreyLewis11_D",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis11_D",
        hidden = false,
        needsitem = "Base.BookElectrician4;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis11;4;Completed;removeitem;Base.BookElectrician4;1",
    },{
        guid = "Questyno_JeffreyLewis11_E",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis11_E",
        hidden = false,
        needsitem = "Base.BookElectrician5;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis11;5;Completed;removeitem;Base.BookElectrician5;1",
    }},
    text = "IGUI_SFQuest_Questyno_JeffreyLewis11_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis11_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis11_A",
    awardsrep = "LaResistenza;220",
    completesound = "levelup",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis11_Lore" },
    text = "IGUI_SFQuest_Questyno_JeffreyLewis11_A_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis11_Title",
    unlocks = "unlockworldevent;Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis11_Complete",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis12",
    awardsrep = "LaResistenza;1100",
    completesound = "levelup",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis12_Lore" },
    needsitem = "Base.TVMagazine;10",
    onobtained = "unlockworldevent;Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis12_Complete",
    text = "IGUI_SFQuest_Questyno_JeffreyLewis12_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis12_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis13",
    awardstask = "Questyno_JeffreyLewis13_A",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis13_Lore" },
    objectives = { {
        guid = "Questyno_JeffreyLewis13_A",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis13_A",
        hidden = false,
        needsitem = "Base.BookFishing3;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis13;1;Completed;removeitem;Base.BookFishing3;1",
    },{
        guid = "Questyno_JeffreyLewis13_B",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis13_B",
        hidden = false,
        needsitem = "Base.BookMetalWelding2;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis13;2;Completed;removeitem;Base.BookMetalWelding2;1",
    },{
        guid = "Questyno_JeffreyLewis13_C",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis13_C",
        hidden = false,
        needsitem = "Base.BookMetalWelding3;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis13;3;Completed;removeitem;Base.BookMetalWelding3;1",
    },{
        guid = "Questyno_JeffreyLewis13_D",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis13_D",
        hidden = false,
        needsitem = "Base.BookCarpentry4;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis13;4;Completed;removeitem;Base.BookCarpentry4;1",
    },{
        guid = "Questyno_JeffreyLewis13_E",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis13_E",
        hidden = false,
        needsitem = "Base.BookTrapping2;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis13;5;Completed;removeitem;Base.BookTrapping2;1",
    }},
    text = "IGUI_SFQuest_Questyno_JeffreyLewis13_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis13_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis13_A",
    awardsrep = "LaResistenza;140",
    completesound = "levelup",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis13_Lore" },
    text = "IGUI_SFQuest_Questyno_JeffreyLewis13_A_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis13_Title",
    unlocks = "unlockworldevent;Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis13_Complete",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis14",
    awardstask = "Questyno_JeffreyLewis14_A",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis14_Lore" },
    objectives = { {
        guid = "Questyno_JeffreyLewis14_A",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis14_A",
        hidden = false,
        needsitem = "Base.BookFishing4;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis14;1;Completed;removeitem;Base.BookFishing4;1",
    },{
        guid = "Questyno_JeffreyLewis14_B",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis14_B",
        hidden = false,
        needsitem = "Base.BookMetalWelding1;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis14;2;Completed;removeitem;Base.BookMetalWelding1;1",
    },{
        guid = "Questyno_JeffreyLewis14_C",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis14_C",
        hidden = false,
        needsitem = "Base.BookMetalWelding2;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis14;3;Completed;removeitem;Base.BookMetalWelding2;1",
    },{
        guid = "Questyno_JeffreyLewis14_D",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis14_D",
        hidden = false,
        needsitem = "Base.BookCarpentry2;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis14;4;Completed;removeitem;Base.BookCarpentry2;1",
    },{
        guid = "Questyno_JeffreyLewis14_E",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis14_E",
        hidden = false,
        needsitem = "Base.BookTrapping5;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis14;5;Completed;removeitem;Base.BookTrapping5;1",
    }},
    text = "IGUI_SFQuest_Questyno_JeffreyLewis14_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis14_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis14_A",
    awardsrep = "LaResistenza;150",
    completesound = "levelup",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis14_Lore" },
    text = "IGUI_SFQuest_Questyno_JeffreyLewis14_A_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis14_Title",
    unlocks = "unlockworldevent;Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis14_Complete",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis15",
    awardstask = "Questyno_JeffreyLewis15_A",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis15_Lore" },
    objectives = { {
        guid = "Questyno_JeffreyLewis15_A",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis15_A",
        hidden = false,
        needsitem = "Base.BookForaging4;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis15;1;Completed;removeitem;Base.BookForaging4;1",
    },{
        guid = "Questyno_JeffreyLewis15_B",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis15_B",
        hidden = false,
        needsitem = "Base.BookForaging3;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis15;2;Completed;removeitem;Base.BookForaging3;1",
    },{
        guid = "Questyno_JeffreyLewis15_C",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis15_C",
        hidden = false,
        needsitem = "Base.BookMechanic1;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis15;3;Completed;removeitem;Base.BookMechanic1;1",
    },{
        guid = "Questyno_JeffreyLewis15_D",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis15_D",
        hidden = false,
        needsitem = "Base.BookCarpentry2;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis15;4;Completed;removeitem;Base.BookCarpentry2;1",
    },{
        guid = "Questyno_JeffreyLewis15_E",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis15_E",
        hidden = false,
        needsitem = "Base.BookFarming5;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis15;5;Completed;removeitem;Base.BookFarming5;1",
    }},
    text = "IGUI_SFQuest_Questyno_JeffreyLewis15_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis15_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis15_A",
    awardsrep = "LaResistenza;130",
    completesound = "levelup",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis15_Lore" },
    text = "IGUI_SFQuest_Questyno_JeffreyLewis15_A_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis15_Title",
    unlocks = "unlockworldevent;Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis15_Complete",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis16",
    awardstask = "Questyno_JeffreyLewis16_A",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis16_Lore" },
    objectives = { {
        guid = "Questyno_JeffreyLewis16_A",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis16_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoJeffreyLewis16;additem;HuntingMag1;1;additem;HuntingMag2;1",
    } },
    text = "IGUI_SFQuest_Questyno_JeffreyLewis16_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis16_Title",
    unlocks = "clickevent;9681x11178x0:EventoJeffreyLewis16;time:50:anim:loot;updateobjective:Questyno_JeffreyLewis16:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis16_A",
    awardstask = "Questyno_JeffreyLewis16_B",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis16_Lore" },
    objectives = { {
        guid = "Questyno_JeffreyLewis16_B",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis16_B",
        hidden = false,
        needsitem = "Base.HuntingMag1;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis16_A;1;Completed;removeitem;Base.HuntingMag1;1",
    },{
        guid = "Questyno_JeffreyLewis16_C",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis16_C",
        hidden = false,
        needsitem = "Base.HuntingMag2;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis16_A;2;Completed;removeitem;Base.HuntingMag2;1",
    }},
    text = "IGUI_SFQuest_Questyno_JeffreyLewis16_A_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis16_Title",
}); 

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis16_B",
    awardsrep = "LaResistenza;550",
    completesound = "levelup",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis16_Lore" },
    text = "IGUI_SFQuest_Questyno_JeffreyLewis16_B_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis16_Title",
    unlocks = "unlockworldevent;Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis16_Complete",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis17",
    awardstask = "Questyno_JeffreyLewis17_A",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis17_Lore" },
    objectives = { {
        guid = "Questyno_JeffreyLewis17_A",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis17_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoJeffreyLewis17;additem;FishingMag1;1;additem;FishingMag2;1",
    }},
    text = "IGUI_SFQuest_Questyno_JeffreyLewis17_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis17_Title",
    unlocks= "clickevent;10076x10697x0:EventoJeffreyLewis17;time:50:anim:loot;updateobjective:Questyno_JeffreyLewis17:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis17_A",
    awardstask = "Questyno_JeffreyLewis17_B",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis17_A_Lore" },
    objectives = { {
        guid = "Questyno_JeffreyLewis17_B",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis17_B",
        hidden = false,
        needsitem = "Base.FishingMag1;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis17_A;1;Completed;removeitem;Base.FishingMag1;1",
    },{
        guid = "Questyno_JeffreyLewis17_C",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis17_C",
        hidden = false,
        needsitem = "Base.FishingMag2;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis17_A;2;Completed;removeitem;Base.FishingMag2;1",
    }},
    text = "IGUI_SFQuest_Questyno_JeffreyLewis17_A_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis17_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis17_B",
    awardsrep = "LaResistenza;250",
    completesound = "levelup",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis17_Lore" },
    text = "IGUI_SFQuest_Questyno_JeffreyLewis17_B_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis17_Title",
    unlocks = "unlockworldevent;Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis17_Complete",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis18",
    awardstask = "Questyno_JeffreyLewis18_A",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis18_Lore" },
    objectives = { {
        guid = "Questyno_JeffreyLewis18_A",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis18_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoJeffreyLewis18;additem;ElectronicsMag1;1;additem;ElectronicsMag2;1;additem;ElectronicsMag3;1",
    }},
    text = "IGUI_SFQuest_Questyno_JeffreyLewis18_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis18_Title",
    unlocks= "clickevent;10627x9973x0:EventoJeffreyLewis18;time:50:anim:loot;updateobjective:Questyno_JeffreyLewis18:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis18_A",
    awardstask = "Questyno_JeffreyLewis18_B",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis18_A_Lore" },
    objectives = { {
        guid = "Questyno_JeffreyLewis18_B",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis18_B",
        hidden = false,
        needsitem = "Base.ElectronicsMag1;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis18_A;1;Completed;removeitem;Base.ElectronicsMag1;1",
    },{
        guid = "Questyno_JeffreyLewis18_C",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis18_C",
        hidden = false,
        needsitem = "Base.ElectronicsMag2;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis18_A;2;Completed;removeitem;Base.ElectronicsMag2;1",
    },{
        guid = "Questyno_JeffreyLewis18_D",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis18_D",
        hidden = false,
        needsitem = "Base.ElectronicsMag3;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis18_A;3;Completed;removeitem;Base.ElectronicsMag3;1",
    }},
    text = "IGUI_SFQuest_Questyno_JeffreyLewis18_A_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis18_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis18_B",
    awardsrep = "LaResistenza;70",
    awardsitem = "Money;30",
    completesound = "levelup",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis18_Lore" },
    text = "IGUI_SFQuest_Questyno_JeffreyLewis18_B_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis18_Title",
    unlocks = "unlockworldevent;Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis18_Complete",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis19",
    awardstask = "Questyno_JeffreyLewis19_A",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis19_Lore" },
    objectives = { {
        guid = "Questyno_JeffreyLewis19_A",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis19_A",
        hidden = false,
        needsitem = "Base.SheetPaper2;4",
        onobtained = "updateobjective;Questyno_JeffreyLewis19;1;Completed;removeitem;Base.SheetPaper2;4",
    },{
        guid = "Questyno_JeffreyLewis19_B",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis19_B",
        hidden = false,
        needsitem = "Base.Crayons;2",
        onobtained = "updateobjective;Questyno_JeffreyLewis19;2;Completed;removeitem;Base.Crayons;2",
    }},
    text = "IGUI_SFQuest_Questyno_JeffreyLewis19_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis19_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis19_A",
    awardsrep = "LaResistenza;100",
    awardsitem = "Money;20",
    completesound = "levelup",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis19_Lore" },
    text = "IGUI_SFQuest_Questyno_JeffreyLewis19_A_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis19_Title",
    unlocks = "unlockworldevent;Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis19_Complete",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis20",
    awardsrep = "LaResistenza;560",
    completesound = "levelup",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis20_Lore" },
    needsitem = "Base.Magazine;30",
    onobtained = "unlockworldevent;Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis20_Complete",
    text = "IGUI_SFQuest_Questyno_JeffreyLewis20_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis20_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis21",
    awardstask = "Questyno_JeffreyLewis21_A",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis21_Lore" },
    objectives = { {
        guid = "Questyno_JeffreyLewis21_A",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis21_A",
        hidden = false,
        needsitem = "Base.MagazineWordsearch1;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis21;1;Completed;removeitem;Base.MagazineWordsearch1;1",
    },{
        guid = "Questyno_JeffreyLewis21_B",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis21_B",
        hidden = false,
        needsitem = "Base.MagazineWordsearch2;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis21;2;Completed;removeitem;Base.MagazineWordsearch2;1",
    },{
        guid = "Questyno_JeffreyLewis21_C",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis21_C",
        hidden = false,
        needsitem = "Base.MagazineWordsearch3;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis21;3;Completed;removeitem;Base.MagazineWordsearch3;1",
    },{
        guid = "Questyno_JeffreyLewis21_D",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis21_D",
        hidden = false,
        needsitem = "Base.MagazineCrossword1;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis21;4;Completed;removeitem;Base.MagazineCrossword1;1",
    },{
        guid = "Questyno_JeffreyLewis21_E",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis21_E",
        hidden = false,
        needsitem = "Base.MagazineCrossword2;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis21;5;Completed;removeitem;Base.MagazineCrossword2;1",
    },{
        guid = "Questyno_JeffreyLewis21_F",
        text = "IGUI_SFQuest_Questyno_JeffreyLewis21_F",
        hidden = false,
        needsitem = "Base.MagazineCrossword3;1",
        onobtained = "updateobjective;Questyno_JeffreyLewis21;6;Completed;removeitem;Base.MagazineCrossword3;1",
    }},
    text = "IGUI_SFQuest_Questyno_JeffreyLewis21_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis21_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis21_A",
    awardsrep = "LaResistenza;200",
    completesound = "levelup",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis21_Lore" },
    text = "IGUI_SFQuest_Questyno_JeffreyLewis21_A_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis21_Title",
    unlocks = "unlockworldevent;Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis21_Complete",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis22",
    awardsrep = "LaResistenza;40",
    completesound = "levelup",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis22_Lore" },
    needsitem = "Base.BookCarpentry5;1",
    onobtained = "unlockworldevent;Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis22_Complete",
    text = "IGUI_SFQuest_Questyno_JeffreyLewis22_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis22_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_JeffreyLewis23",
    awardsrep = "LaResistenza;50",
    completesound = "levelup",
    dailycode = "Questyno_JeffreyLewis",
    lore = { "IGUI_SFQuest_Questyno_JeffreyLewis23_Lore" },
    needsitem = "Base.BookTrapping3;1",
    onobtained = "unlockworldevent;Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis23_Complete",
    text = "IGUI_SFQuest_Questyno_JeffreyLewis23_Text",
    texture = "media/textures/Item_JeffreyLewis.png",
    title = "IGUI_SFQuest_Questyno_JeffreyLewis23_Title",
    unlockedsound = "QuestUnlocked"
});


--[[
            *** Christopher Davis ***
            Elenco:
                intro. Parla con Christopher Davis per sbloccare le daily.
				1. Recuperare Base.PotOfSoupRecipe;2 (50rep + 10$ + Base.Pot;2)
				2. Recuperare Base.PanRecipe;2 (50rep + 15$ + Base.Pan;2)
				3. Recuperare farming.Cabbage;3 (200rep + 30$)
				4. Recuperare BaseSalad;2 (150rep + Base.Bowl;2)
				5. Recuperare Base.Butter;2 parlando con  (12315,11739,0) (60rep + 70$)
				6. Recuperare Base.Hotsauce,Base.Pepper,Base.FishRoe parlando con (8199,11177,0) (100rep + Base.SushiEgg)
				7. Recuperare Base.Rabbitmeat (ANCHE 25%) (65rep + Base.Burger)
				8. Recuperare Base.Apron_Black (150rep + 50$)
				9. Recuperare Base.GridlePan;2 (100rep)
				10. Recuperare Base.Saucepan;2 (100rep)
				11. Recuperare Base.KitchenKnife;4 (200rep)
				12. Recuperare Base.Cereal;2 parlando con (7373,9732,0) (50rep)
				13. Recuperare Base.BeerCan (150rep)
				14. Recuperare Base.WaterBottleFull (40rep)
				15. Recuperare Base.CannedCornedBeef;3,Base.Cereal;2,Base.CannedChili;2,Base.Lobster;3 parlando con  (8108,9699,0) (60rep + Base.Lobster)
				16. Recuperare Base.Lard parlando con (11287,8287,0) (25rep + Base.Milk)
				17. Recuperare 35$ (50rep + Base.Butter)
				18. Recuperare Base.Egg;4 parlando con (13603,6883,0) (40rep + FETTA DI Base.PineApple)
				19. Recuperare Base.Spoon;6 (100rep + 20$)
				20. Recuperare Base.PanRecipe (100rep + Base.Pan)
				21. Recuperare Base.PotSoupRecipe;2 (50rep + Base.Pot;2)
				22. Recuperare Base.CleaningLiquid2;2 (200rep + 30$)
				23. Recuperare Base.RoastingPan (70rep + Smallanimalmeat)
				24. Recuperare Base.Fork;6 (200rep + 30$)
]]

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ChristopherDavis_Intro",

    awardsrep = "ChristopherDavis;100",
    -- dailycode = "Questyno_ChristopherDavis",
    lore = { "IGUI_SFQuest_Questyno_ChristopherDavis_Intro_Lore" },
    ondone = "randomcodedworldfrompool;Questyno_ChristopherDavis;Questyno;ChristopherDavis",
    text = "IGUI_SFQuest_Questyno_ChristopherDavis_Intro_Text",
    texture = "media/textures/Item_ChristopherDavis.png",
    title = "IGUI_SFQuest_Questyno_ChristopherDavis_Intro_Title",
    unique = true,
    unlockedsound = "QuestUnlocked",
    unlocks = "unlockworldevent;Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis_Intro_Complete",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ChristopherDavis1",
    awardsrep = "LaResistenza;100",
    awardsitem = "Money;10;Pot;2",
    completesound = "levelup",
    dailycode = "Questyno_ChristopherDavis",
    lore = { "IGUI_SFQuest_Questyno_ChristopherDavis1_Lore" },
    needsitem = "PredicateFoodWeight#Base.PotOfSoupRecipe;2;4",
    onobtained = "unlockworldevent;Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis1_Complete",
    text = "IGUI_SFQuest_Questyno_ChristopherDavis1_Text",
    texture = "media/textures/Item_ChristopherDavis.png",
    title = "IGUI_SFQuest_Questyno_ChristopherDavis1_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ChristopherDavis2",
    awardsrep = "LaResistenza;120",
    awardsitem = "Money;15;Pan;2",
    completesound = "levelup",
    dailycode = "Questyno_ChristopherDavis",
    lore = { "IGUI_SFQuest_Questyno_ChristopherDavis2_Lore" },
    needsitem = "PredicateFoodWeight#Base.PanFriedVegetables;2;1.5",
    onobtained = "unlockworldevent;Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis2_Complete",
    text = "IGUI_SFQuest_Questyno_ChristopherDavis2_Text",
    texture = "media/textures/Item_ChristopherDavis.png",
    title = "IGUI_SFQuest_Questyno_ChristopherDavis2_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ChristopherDavis3",
    awardsrep = "LaResistenza;200",
    awardsitem = "Money;30",
    completesound = "levelup",
    dailycode = "Questyno_ChristopherDavis",
    lore = { "IGUI_SFQuest_Questyno_ChristopherDavis3_Lore" },
    needsitem = "PredicateFreshFood#farming.Cabbage;3",
    onobtained = "unlockworldevent;Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis3_Complete",
    text = "IGUI_SFQuest_Questyno_ChristopherDavis3_Text",
    texture = "media/textures/Item_ChristopherDavis.png",
    title = "IGUI_SFQuest_Questyno_ChristopherDavis3_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ChristopherDavis4",
    awardsrep = "LaResistenza;150",
    awardsitem = "Money;20;Base.Bowl;2",
    completesound = "levelup",
    dailycode = "Questyno_ChristopherDavis",
    lore = { "IGUI_SFQuest_Questyno_ChristopherDavis4_Lore" },
    needsitem = "PredicateFoodWeight#farming.Salad;2;1",
    onobtained = "unlockworldevent;Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis4_Complete",
    text = "IGUI_SFQuest_Questyno_ChristopherDavis4_Text",
    texture = "media/textures/Item_ChristopherDavis.png",
    title = "IGUI_SFQuest_Questyno_ChristopherDavis4_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ChristopherDavis5",
    awardstask = "Questyno_ChristopherDavis5_A",
    dailycode = "Questyno_ChristopherDavis",
    lore = { "IGUI_SFQuest_Questyno_ChristopherDavis5_Lore" },
    objectives = { {
        guid = "Questyno_ChristopherDavis5_A",
        text = "IGUI_SFQuest_Questyno_ChristopherDavis5_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoChristopherDavis5;additem;Base.Butter;2",
    } },
    text = "IGUI_SFQuest_Questyno_ChristopherDavis5_Text",
    texture = "media/textures/Item_ChristopherDavis.png",
    title = "IGUI_SFQuest_Questyno_ChristopherDavis5_Title",
    unlocks = "clickevent;12315x11739x0:EventoChristopherDavis5;time:50:anim:loot;updateobjective:Questyno_ChristopherDavis5:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ChristopherDavis5_A",
    awardsrep = "LaResistenza;1500",
    awardsitem = "Money;70",
    completesound = "levelup",
    dailycode = "Questyno_ChristopherDavis",
    lore = { "IGUI_SFQuest_Questyno_ChristopherDavis5_Lore" },
    needsitem = "PredicateFoodWeight#Base.Butter;2;0.3",
    onobtained = "unlockworldevent;Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis5_Complete",
    text = "IGUI_SFQuest_Questyno_ChristopherDavis5_A_Text",
    texture = "media/textures/Item_ChristopherDavis.png",
    title = "IGUI_SFQuest_Questyno_ChristopherDavis5_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ChristopherDavis6",
    awardstask = "Questyno_ChristopherDavis6_A",
    dailycode = "Questyno_ChristopherDavis",
    lore = { "IGUI_SFQuest_Questyno_ChristopherDavis6_Lore" },
    objectives = { {
        guid = "Questyno_ChristopherDavis6_A",
        text = "IGUI_SFQuest_Questyno_ChristopherDavis6_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoChristopherDavis6;additem;Base.Hotsauce;1;additem;Base.Pepper;1;additem;Base.FishRoe;1",
    } },
    text = "IGUI_SFQuest_Questyno_ChristopherDavis6_Text",
    texture = "media/textures/Item_ChristopherDavis.png",
    title = "IGUI_SFQuest_Questyno_ChristopherDavis6_Title",
    unlocks = "clickevent;8199x11177x0:EventoChristopherDavis6;time:50:anim:loot;updateobjective:Questyno_ChristopherDavis6:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ChristopherDavis6_A",
    awardstask = "Questyno_ChristopherDavis6_B",
    dailycode = "Questyno_ChristopherDavis",
    lore = { "IGUI_SFQuest_Questyno_ChristopherDavis6_A_Lore" },
    objectives = { {
        guid = "Questyno_ChristopherDavis6_B",
        text = "IGUI_SFQuest_Questyno_ChristopherDavis6_B",
        hidden = false,
        needsitem = "Base.Hotsauce;1",
        onobtained = "updateobjective;Questyno_ChristopherDavis6_A;1;Completed;removeitem;Base.Hotsauce;1",
    },{
        guid = "Questyno_ChristopherDavis6_C",
        text = "IGUI_SFQuest_Questyno_ChristopherDavis6_C",
        hidden = false,
        needsitem = "Base.Pepper;1",
        onobtained = "updateobjective;Questyno_ChristopherDavis6_A;2;Completed;removeitem;Base.Pepper;1",
    },{
        guid = "Questyno_ChristopherDavis6_D",
        text = "IGUI_SFQuest_Questyno_ChristopherDavis6_D",
        hidden = false,
        needsitem = "Base.FishRoe;1",
        onobtained = "updateobjective;Questyno_ChristopherDavis6_A;3;Completed;removeitem;Base.FishRoe;1",
    }},
    text = "IGUI_SFQuest_Questyno_ChristopherDavis6_A_Text",
    texture = "media/textures/Item_ChristopherDavis.png",
    title = "IGUI_SFQuest_Questyno_ChristopherDavis6_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ChristopherDavis6_B",
    awardsrep = "LaResistenza;300",
    awardsitem = "Base.SushiEgg;4",
    completesound = "levelup",
    dailycode = "Questyno_ChristopherDavis",
    lore = { "IGUI_SFQuest_Questyno_ChristopherDavis6_Lore" },
    text = "IGUI_SFQuest_Questyno_ChristopherDavis6_B_Text",
    texture = "media/textures/Item_ChristopherDavis.png",
    title = "IGUI_SFQuest_Questyno_ChristopherDavis6_Title",
    unlocks = "unlockworldevent;Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis6_Complete",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ChristopherDavis7",
    awardsrep = "LaResistenza;65",
    awardsitem = "Base.Burger;1",
    completesound = "levelup",
    dailycode = "Questyno_ChristopherDavis",
    lore = { "IGUI_SFQuest_Questyno_ChristopherDavis7_Lore" },
    needsitem = "PredicateFreshFood#Base.Rabbitmeat;1",
    onobtained = "unlockworldevent;Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis7_Complete",
    text = "IGUI_SFQuest_Questyno_ChristopherDavis7_Text",
    texture = "media/textures/Item_ChristopherDavis.png",
    title = "IGUI_SFQuest_Questyno_ChristopherDavis7_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ChristopherDavis8",
    awardsrep = "LaResistenza;150",
    awardsitem = "Money;50",
    completesound = "levelup",
    dailycode = "Questyno_ChristopherDavis",
    lore = { "IGUI_SFQuest_Questyno_ChristopherDavis8_Lore" },
    needsitem = "Base.Apron_Black;1",
    onobtained = "unlockworldevent;Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis8_Complete",
    text = "IGUI_SFQuest_Questyno_ChristopherDavis8_Text",
    texture = "media/textures/Item_ChristopherDavis.png",
    title = "IGUI_SFQuest_Questyno_ChristopherDavis8_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ChristopherDavis9",
    awardsrep = "LaResistenza;135",
    completesound = "levelup",
    dailycode = "Questyno_ChristopherDavis",
    lore = { "IGUI_SFQuest_Questyno_ChristopherDavis9_Lore" },
    needsitem = "Base.GridlePan;2",
    onobtained = "unlockworldevent;Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis9_Complete",
    text = "IGUI_SFQuest_Questyno_ChristopherDavis9_Text",
    texture = "media/textures/Item_ChristopherDavis.png",
    title = "IGUI_SFQuest_Questyno_ChristopherDavis9_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ChristopherDavis10",
    awardsrep = "LaResistenza;150",
    completesound = "levelup",
    dailycode = "Questyno_ChristopherDavis",
    lore = { "IGUI_SFQuest_Questyno_ChristopherDavis10_Lore" },
    needsitem = "Base.Saucepan;2",
    onobtained = "unlockworldevent;Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis10_Complete",
    text = "IGUI_SFQuest_Questyno_ChristopherDavis10_Text",
    texture = "media/textures/Item_ChristopherDavis.png",
    title = "IGUI_SFQuest_Questyno_ChristopherDavis10_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ChristopherDavis11",
    awardsrep = "LaResistenza;200",
    completesound = "levelup",
    dailycode = "Questyno_ChristopherDavis",
    lore = { "IGUI_SFQuest_Questyno_ChristopherDavis11_Lore" },
    needsitem = "Base.KitchenKnife;4",
    onobtained = "unlockworldevent;Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis11_Complete",
    text = "IGUI_SFQuest_Questyno_ChristopherDavis11_Text",
    texture = "media/textures/Item_ChristopherDavis.png",
    title = "IGUI_SFQuest_Questyno_ChristopherDavis11_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ChristopherDavis12",
    awardstask = "Questyno_ChristopherDavis12_A",
    dailycode = "Questyno_ChristopherDavis",
    lore = { "IGUI_SFQuest_Questyno_ChristopherDavis12_Lore" },
    objectives = { {
        guid = "Questyno_ChristopherDavis12_A",
        text = "IGUI_SFQuest_Questyno_ChristopherDavis12_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoChristopherDavis12;additem;Base.Cereal;2",
    } },
    text = "IGUI_SFQuest_Questyno_ChristopherDavis12_Text",
    texture = "media/textures/Item_ChristopherDavis.png",
    title = "IGUI_SFQuest_Questyno_ChristopherDavis12_Title",
    unlocks = "clickevent;7373x9732x0:EventoChristopherDavis12;time:50:anim:loot;updateobjective:Questyno_ChristopherDavis12:1:Completed",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ChristopherDavis12_A",
    awardsrep = "LaResistenza;100",
    completesound = "levelup",
    dailycode = "Questyno_ChristopherDavis",
    lore = { "IGUI_SFQuest_Questyno_ChristopherDavis12_Lore" },
    needsitem = "PredicateFoodWeight#Base.Cereal;2;0.3",
    onobtained = "unlockworldevent;Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis12_Complete",
    text = "IGUI_SFQuest_Questyno_ChristopherDavis12_A_Text",
    texture = "media/textures/Item_ChristopherDavis.png",
    title = "IGUI_SFQuest_Questyno_ChristopherDavis12_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ChristopherDavis13",
    awardsrep = "LaResistenza;150",
    completesound = "levelup",
    dailycode = "Questyno_ChristopherDavis",
    lore = { "IGUI_SFQuest_Questyno_ChristopherDavis13_Lore" },
    needsitem = "Base.BeerCan",
    onobtained = "unlockworldevent;Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis13_Complete",
    text = "IGUI_SFQuest_Questyno_ChristopherDavis13_Text",
    texture = "media/textures/Item_ChristopherDavis.png",
    title = "IGUI_SFQuest_Questyno_ChristopherDavis13_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ChristopherDavis14",
    awardsrep = "LaResistenza;40",
    completesound = "levelup",
    dailycode = "Questyno_ChristopherDavis",
    lore = { "IGUI_SFQuest_Questyno_ChristopherDavis14_Lore" },
    needsitem = "Tag#FullWaterBottle;1",
    onobtained = "unlockworldevent;Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis14_Complete",
    text = "IGUI_SFQuest_Questyno_ChristopherDavis14_Text",
    texture = "media/textures/Item_ChristopherDavis.png",
    title = "IGUI_SFQuest_Questyno_ChristopherDavis14_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ChristopherDavis15",
    awardstask = "Questyno_ChristopherDavis15_A",
    dailycode = "Questyno_ChristopherDavis",
    lore = { "IGUI_SFQuest_Questyno_ChristopherDavis15_Lore" },
    objectives = { {
        guid = "Questyno_ChristopherDavis15_A",
        text = "IGUI_SFQuest_Questyno_ChristopherDavis15_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoChristopherDavis15;additem;Base.CannedCornedBeef;3;additem;Base.Cereal;2;additem;Base.CannedChili;2;additem;Base.Lobster;3",
    } },
    text = "IGUI_SFQuest_Questyno_ChristopherDavis15_Text",
    texture = "media/textures/Item_ChristopherDavis.png",
    title = "IGUI_SFQuest_Questyno_ChristopherDavis15_Title",
    unlocks = "clickevent;8108x9699x0:EventoChristopherDavis15;time:50:anim:loot;updateobjective:Questyno_ChristopherDavis15:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ChristopherDavis15_A",
    awardstask = "Questyno_ChristopherDavis15_B",
    dailycode = "Questyno_ChristopherDavis",
    lore = { "IGUI_SFQuest_Questyno_ChristopherDavis15_A_Lore" },
    objectives = { {
        guid = "Questyno_ChristopherDavis15_B",
        text = "IGUI_SFQuest_Questyno_ChristopherDavis15_B",
        hidden = false,
        needsitem = "Base.CannedCornedBeef;3",
        onobtained = "updateobjective;Questyno_ChristopherDavis15_A;1;Completed;removeitem;Base.CannedCornedBeef;3",
    },{
        guid = "Questyno_ChristopherDavis15_C",
        text = "IGUI_SFQuest_Questyno_ChristopherDavis15_C",
        hidden = false,
        needsitem = "Base.Cereal;2",
        onobtained = "updateobjective;Questyno_ChristopherDavis15_A;2;Completed;removeitem;Base.Cereal;2",
    },{
        guid = "Questyno_ChristopherDavis15_D",
        text = "IGUI_SFQuest_Questyno_ChristopherDavis15_D",
        hidden = false,
        needsitem = "Base.CannedChili;2",
        onobtained = "updateobjective;Questyno_ChristopherDavis15_A;3;Completed;removeitem;Base.CannedChili;2",
    },{
        guid = "Questyno_ChristopherDavis15_E",
        text = "IGUI_SFQuest_Questyno_ChristopherDavis15_E",
        hidden = false,
        needsitem = "Base.Lobster;3",
        onobtained = "updateobjective;Questyno_ChristopherDavis15_A;4;Completed;removeitem;Base.Lobster;3",
    }},
    text = "IGUI_SFQuest_Questyno_ChristopherDavis15_A_Text",
    texture = "media/textures/Item_ChristopherDavis.png",
    title = "IGUI_SFQuest_Questyno_ChristopherDavis15_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ChristopherDavis15_B",
    awardsrep = "LaResistenza;120",
    awardsitem = "Base.Lobster;1",
    completesound = "levelup",
    dailycode = "Questyno_ChristopherDavis",
    lore = { "IGUI_SFQuest_Questyno_ChristopherDavis15_Lore" },
    text = "IGUI_SFQuest_Questyno_ChristopherDavis15_B_Text",
    texture = "media/textures/Item_ChristopherDavis.png",
    title = "IGUI_SFQuest_Questyno_ChristopherDavis15_Title",
    unlocks = "unlockworldevent;Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis15_Complete",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ChristopherDavis16",
    awardstask = "Questyno_ChristopherDavis16_A",
    dailycode = "Questyno_ChristopherDavis",
    lore = { "IGUI_SFQuest_Questyno_ChristopherDavis16_Lore" },
    objectives = { {
        guid = "Questyno_ChristopherDavis16_A",
        text = "IGUI_SFQuest_Questyno_ChristopherDavis16_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoChristopherDavis16;additem;Base.Lard;1",
    } },
    text = "IGUI_SFQuest_Questyno_ChristopherDavis16_Text",
    texture = "media/textures/Item_ChristopherDavis.png",
    title = "IGUI_SFQuest_Questyno_ChristopherDavis16_Title",
    unlocks = "clickevent;11287x8287x0:EventoChristopherDavis16;time:50:anim:loot;updateobjective:Questyno_ChristopherDavis16:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ChristopherDavis16_A",
    awardsrep = "LaResistenza;70",
    awardsitem = "Base.Salt;1",
    completesound = "levelup",
    dailycode = "Questyno_ChristopherDavis",
    lore = { "IGUI_SFQuest_Questyno_ChristopherDavis16_Lore" },
    needsitem = "PredicateFoodWeight#Base.Lard;0.22",
    onobtained = "unlockworldevent;Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis16_Complete",
    text = "IGUI_SFQuest_Questyno_ChristopherDavis16_A_Text",
    texture = "media/textures/Item_ChristopherDavis.png",
    title = "IGUI_SFQuest_Questyno_ChristopherDavis16_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ChristopherDavis17",
    awardsrep = "LaResistenza;50",
    awardsitem = "Base.Butter;1",
    completesound = "levelup",
    dailycode = "Questyno_ChristopherDavis",
    lore = { "IGUI_SFQuest_Questyno_ChristopherDavis17_Lore" },
    needsitem = "Money;35",
    onobtained = "unlockworldevent;Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis17_Complete",
    text = "IGUI_SFQuest_Questyno_ChristopherDavis17_Text",
    texture = "media/textures/Item_ChristopherDavis.png",
    title = "IGUI_SFQuest_Questyno_ChristopherDavis17_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ChristopherDavis18",
    awardstask = "Questyno_ChristopherDavis18_A",
    dailycode = "Questyno_ChristopherDavis",
    lore = { "IGUI_SFQuest_Questyno_ChristopherDavis18_Lore" },
    objectives = { {
        guid = "Questyno_ChristopherDavis18_A",
        text = "IGUI_SFQuest_Questyno_ChristopherDavis18_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoChristopherDavis18;additem;Base.Egg;4",
    } },
    text = "IGUI_SFQuest_Questyno_ChristopherDavis18_Text",
    texture = "media/textures/Item_ChristopherDavis.png",
    title = "IGUI_SFQuest_Questyno_ChristopherDavis18_Title",
    unlocks = "clickevent;13603x6883x0:EventoChristopherDavis18;time:50:anim:loot;updateobjective:Questyno_ChristopherDavis18:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ChristopherDavis18_A",
    awardsrep = "LaResistenza;100",
    awardsitem = "Base.Pineapple;1",
    completesound = "levelup",
    dailycode = "Questyno_ChristopherDavis",
    lore = { "IGUI_SFQuest_Questyno_ChristopherDavis18_Lore" },
    needsitem = "Base.Egg;4",
    onobtained = "unlockworldevent;Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis18_Complete",
    text = "IGUI_SFQuest_Questyno_ChristopherDavis18_A_Text",
    texture = "media/textures/Item_ChristopherDavis.png",
    title = "IGUI_SFQuest_Questyno_ChristopherDavis18_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ChristopherDavis19",
    awardsrep = "LaResistenza;150",
    awardsitem = "Money;20",
    completesound = "levelup",
    dailycode = "Questyno_ChristopherDavis",
    lore = { "IGUI_SFQuest_Questyno_ChristopherDavis19_Lore" },
    needsitem = "Base.Spoon;6",
    onobtained = "unlockworldevent;Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis19_Complete",
    text = "IGUI_SFQuest_Questyno_ChristopherDavis19_Text",
    texture = "media/textures/Item_ChristopherDavis.png",
    title = "IGUI_SFQuest_Questyno_ChristopherDavis19_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ChristopherDavis20",
    awardsrep = "LaResistenza;100",
    awardsitem = "Base.Pan;1",
    completesound = "levelup",
    dailycode = "Questyno_ChristopherDavis",
    lore = { "IGUI_SFQuest_Questyno_ChristopherDavis20_Lore" },
    needsitem = "Base.PanFriedVegetables;1",
    onobtained = "unlockworldevent;Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis20_Complete",
    text = "IGUI_SFQuest_Questyno_ChristopherDavis20_Text",
    texture = "media/textures/Item_ChristopherDavis.png",
    title = "IGUI_SFQuest_Questyno_ChristopherDavis20_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ChristopherDavis21",
    awardsrep = "LaResistenza;50",
    awardsitem = "Base.Pot;2",
    completesound = "levelup",
    dailycode = "Questyno_ChristopherDavis",
    lore = { "IGUI_SFQuest_Questyno_ChristopherDavis21_Lore" },
    needsitem = "PredicateFoodWeight#Base.PotOfSoupRecipe;2;4",
    onobtained = "unlockworldevent;Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis21_Complete",
    text = "IGUI_SFQuest_Questyno_ChristopherDavis21_Text",
    texture = "media/textures/Item_ChristopherDavis.png",
    title = "IGUI_SFQuest_Questyno_ChristopherDavis21_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ChristopherDavis22",
    awardsrep = "LaResistenza;450",
    awardsitem = "Money;30",
    completesound = "levelup",
    dailycode = "Questyno_ChristopherDavis",
    lore = { "IGUI_SFQuest_Questyno_ChristopherDavis22_Lore" },
    needsitem = "Base.CleaningLiquid2;4",
    onobtained = "unlockworldevent;Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis22_Complete",
    text = "IGUI_SFQuest_Questyno_ChristopherDavis22_Text",
    texture = "media/textures/Item_ChristopherDavis.png",
    title = "IGUI_SFQuest_Questyno_ChristopherDavis22_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ChristopherDavis23",
    awardsrep = "LaResistenza;70",
    awardsitem = "Base.Smallanimalmeat;1",
    completesound = "levelup",
    dailycode = "Questyno_ChristopherDavis",
    lore = { "IGUI_SFQuest_Questyno_ChristopherDavis23_Lore" },
    needsitem = "Base.RoastingPan;1",
    onobtained = "unlockworldevent;Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis23_Complete",
    text = "IGUI_SFQuest_Questyno_ChristopherDavis23_Text",
    texture = "media/textures/Item_ChristopherDavis.png",
    title = "IGUI_SFQuest_Questyno_ChristopherDavis23_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_ChristopherDavis24",
    awardsrep = "LaResistenza;250",
    awardsitem = "Money;30",
    completesound = "levelup",
    dailycode = "Questyno_ChristopherDavis",
    lore = { "IGUI_SFQuest_Questyno_ChristopherDavis24_Lore" },
    needsitem = "Base.BreadKnife;12",
    onobtained = "unlockworldevent;Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis24_Complete",
    text = "IGUI_SFQuest_Questyno_ChristopherDavis24_Text",
    texture = "media/textures/Item_ChristopherDavis.png",
    title = "IGUI_SFQuest_Questyno_ChristopherDavis24_Title",
    unlockedsound = "QuestUnlocked"
});

--[[
            *** Pamela Perez ***
            Elenco:
                intro. Parla con Pamela Perez per sbloccare le daily.
				1. Recuperare farming.CarrotSeed;24 (100rep)
				2. Recuperare farming.BroccoliSeed;24 (100rep + Base.Strewberrie)
				3. Recuperare LogStacks3;2 (40rep + Base.DriedBlackBeans)
				4. Recuperare Base.LogStacks4;2 (50rep + Base.MincedMeat)
				5. Recuperare Base.SheetRope;40 (40rep)
				6. Recuperare Base.SheetRope;60 (60rep)
				7. Recuperare Base.TreeBranch;20 (60rep)
				8. Recuperare Base.Grasshopper;10 (70rep)
				9. Recuperare Base.LemonGrass;10 (75rep + Base.ComfreyCataplasm)
				10. Recuperare Base.BlackSage;10 (80rep)
				11. Recuperare Base.NailsBox;2 (95rep + Base.Smallanimalmeat;2)
				12. Recuperare Base.LogStacks2;5 (45rep)
				13. Recuperare Base.LogStacks2;4 (40rep + Base.CommonMallow;10)
				14. Recuperare Base.Twigs;50 (75rep)
				15. Recuperare MushroomGeneric6,MushroomGeneric7 (50rep + Base.RiceVinegar)
				16. Recuperare Base.AxeStone;4,Base.SpearCrafted;4,FlintKnife;4 (85rep)
				17. Recuperare Base.ScrapMetal;4,Base.Plank (50rep + Base.PickAxe)
				18. Recuperare RippedSheers;100 (70rep)
				19. Recuperare Base.Doll parlando con (7901,8180,0) (50rep + Base.BerryBlack;2)
				20. Recuperare Base.PotOfSoupRecipe (60rep + 20$ + Base.Pot;2)
				21. Recuperare Base.Mattress;2 parlando con (10934,8492,0) (45rep)
				22. Recuperare Base.AxeStone;8 (70rep)
				23. Recuperare Base.HammerStone;8 (50rep + 15$)
				24. Recuperare Base.Stone;20 (60rep)
]]

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PamelaPerez_Intro",

    awardsrep = "PamelaPerez;100",
    -- dailycode = "Questyno_PamelaPerez",
    lore = { "IGUI_SFQuest_Questyno_PamelaPerez_Intro_Lore" },
    ondone = "randomcodedworldfrompool;Questyno_PamelaPerez;Questyno;PamelaPerez",
    text = "IGUI_SFQuest_Questyno_PamelaPerez_Intro_Text",
    texture = "media/textures/Item_PamelaPerez.png",
    title = "IGUI_SFQuest_Questyno_PamelaPerez_Intro_Title",
    unique = true,
    unlockedsound = "QuestUnlocked",
    unlocks = "unlockworldevent;Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez_Intro_Complete",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PamelaPerez1",
    awardsrep = "LaResistenza;100",
    completesound = "levelup",
    dailycode = "Questyno_PamelaPerez",
    lore = { "IGUI_SFQuest_Questyno_PamelaPerez1_Lore" },
    needsitem = "farming.CarrotSeed;24",
    onobtained = "unlockworldevent;Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez1_Complete",
    text = "IGUI_SFQuest_Questyno_PamelaPerez1_Text",
    texture = "media/textures/Item_PamelaPerez.png",
    title = "IGUI_SFQuest_Questyno_PamelaPerez1_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PamelaPerez2",
    awardsrep = "LaResistenza;100",
    awardsitem = "farming.Strewberrie;1",
    completesound = "levelup",
    dailycode = "Questyno_PamelaPerez",
    lore = { "IGUI_SFQuest_Questyno_PamelaPerez2_Lore" },
    needsitem = "farming.BroccoliSeed;24",
    onobtained = "unlockworldevent;Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez2_Complete",
    text = "IGUI_SFQuest_Questyno_PamelaPerez2_Text",
    texture = "media/textures/Item_PamelaPerez.png",
    title = "IGUI_SFQuest_Questyno_PamelaPerez2_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PamelaPerez3",
    awardsrep = "LaResistenza;40",
    awardsitem = "Base.DriedBlackBeans;1",
    completesound = "levelup",
    dailycode = "Questyno_PamelaPerez",
    lore = { "IGUI_SFQuest_Questyno_PamelaPerez3_Lore" },
    needsitem = "LogStacks3;2",
    onobtained = "unlockworldevent;Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez3_Complete",
    text = "IGUI_SFQuest_Questyno_PamelaPerez3_Text",
    texture = "media/textures/Item_PamelaPerez.png",
    title = "IGUI_SFQuest_Questyno_PamelaPerez3_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PamelaPerez4",
    awardsrep = "LaResistenza;50",
    awardsitem = "Base.MincedMeat;1",
    completesound = "levelup",
    dailycode = "Questyno_PamelaPerez",
    lore = { "IGUI_SFQuest_Questyno_PamelaPerez4_Lore" },
    needsitem = "Base.LogStacks4;2",
    onobtained = "unlockworldevent;Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez4_Complete",
    text = "IGUI_SFQuest_Questyno_PamelaPerez4_Text",
    texture = "media/textures/Item_PamelaPerez.png",
    title = "IGUI_SFQuest_Questyno_PamelaPerez4_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PamelaPerez5",
    awardsrep = "LaResistenza;40",
    completesound = "levelup",
    dailycode = "Questyno_PamelaPerez",
    lore = { "IGUI_SFQuest_Questyno_PamelaPerez5_Lore" },
    needsitem = "Base.SheetRope;40",
    onobtained = "unlockworldevent;Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez5_Complete",
    text = "IGUI_SFQuest_Questyno_PamelaPerez5_Text",
    texture = "media/textures/Item_PamelaPerez.png",
    title = "IGUI_SFQuest_Questyno_PamelaPerez5_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PamelaPerez6",
    awardsrep = "LaResistenza;60",
    completesound = "levelup",
    dailycode = "Questyno_PamelaPerez",
    lore = { "IGUI_SFQuest_Questyno_PamelaPerez6_Lore" },
    needsitem = "Base.SheetRope;60",
    onobtained = "unlockworldevent;Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez6_Complete",
    text = "IGUI_SFQuest_Questyno_PamelaPerez6_Text",
    texture = "media/textures/Item_PamelaPerez.png",
    title = "IGUI_SFQuest_Questyno_PamelaPerez6_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PamelaPerez7",
    awardsrep = "LaResistenza;60",
    completesound = "levelup",
    dailycode = "Questyno_PamelaPerez",
    lore = { "IGUI_SFQuest_Questyno_PamelaPerez7_Lore" },
    needsitem = "Base.TreeBranch;20",
    onobtained = "unlockworldevent;Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez7_Complete",
    text = "IGUI_SFQuest_Questyno_PamelaPerez7_Text",
    texture = "media/textures/Item_PamelaPerez.png",
    title = "IGUI_SFQuest_Questyno_PamelaPerez7_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PamelaPerez8",
    awardsrep = "LaResistenza;70",
    completesound = "levelup",
    dailycode = "Questyno_PamelaPerez",
    lore = { "IGUI_SFQuest_Questyno_PamelaPerez8_Lore" },
    needsitem = "PredicateFreshFood#Base.Grasshopper;10",
    onobtained = "unlockworldevent;Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez8_Complete",
    text = "IGUI_SFQuest_Questyno_PamelaPerez8_Text",
    texture = "media/textures/Item_PamelaPerez.png",
    title = "IGUI_SFQuest_Questyno_PamelaPerez8_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PamelaPerez9",
    awardsrep = "LaResistenza;75",
    awardsitem = "Base.ComfreyCataplasm;1",
    completesound = "levelup",
    dailycode = "Questyno_PamelaPerez",
    lore = { "IGUI_SFQuest_Questyno_PamelaPerez9_Lore" },
    needsitem = "PredicateFreshFood#Base.LemonGrass;10",
    onobtained = "unlockworldevent;Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez9_Complete",
    text = "IGUI_SFQuest_Questyno_PamelaPerez9_Text",
    texture = "media/textures/Item_PamelaPerez.png",
    title = "IGUI_SFQuest_Questyno_PamelaPerez9_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PamelaPerez10",
    awardsrep = "LaResistenza;80",
    completesound = "levelup",
    dailycode = "Questyno_PamelaPerez",
    lore = { "IGUI_SFQuest_Questyno_PamelaPerez10_Lore" },
    needsitem = "PredicateFreshFood#Base.BlackSage;10",
    onobtained = "unlockworldevent;Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez10_Complete",
    text = "IGUI_SFQuest_Questyno_PamelaPerez10_Text",
    texture = "media/textures/Item_PamelaPerez.png",
    title = "IGUI_SFQuest_Questyno_PamelaPerez10_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PamelaPerez11",
    awardsrep = "LaResistenza;95",
    awardsitem = "Base.Smallanimalmeat;2",
    completesound = "levelup",
    dailycode = "Questyno_PamelaPerez",
    lore = { "IGUI_SFQuest_Questyno_PamelaPerez11_Lore" },
    needsitem = "Base.NailsBox;2",
    onobtained = "unlockworldevent;Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez11_Complete",
    text = "IGUI_SFQuest_Questyno_PamelaPerez11_Text",
    texture = "media/textures/Item_PamelaPerez.png",
    title = "IGUI_SFQuest_Questyno_PamelaPerez11_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PamelaPerez12",
    awardsrep = "LaResistenza;45",
    completesound = "levelup",
    dailycode = "Questyno_PamelaPerez",
    lore = { "IGUI_SFQuest_Questyno_PamelaPerez12_Lore" },
    needsitem = "Base.LogStacks2;5",
    onobtained = "unlockworldevent;Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez12_Complete",
    text = "IGUI_SFQuest_Questyno_PamelaPerez12_Text",
    texture = "media/textures/Item_PamelaPerez.png",
    title = "IGUI_SFQuest_Questyno_PamelaPerez12_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PamelaPerez13",
    awardsrep = "LaResistenza;40",
    awardsitem = "Base.CommonMallow;10",
    completesound = "levelup",
    dailycode = "Questyno_PamelaPerez",
    lore = { "IGUI_SFQuest_Questyno_PamelaPerez13_Lore" },
    needsitem = "Base.LogStacks2;4",
    onobtained = "unlockworldevent;Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez13_Complete",
    text = "IGUI_SFQuest_Questyno_PamelaPerez13_Text",
    texture = "media/textures/Item_PamelaPerez.png",
    title = "IGUI_SFQuest_Questyno_PamelaPerez13_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PamelaPerez14",
    awardsrep = "LaResistenza;75",
    completesound = "levelup",
    dailycode = "Questyno_PamelaPerez",
    lore = { "IGUI_SFQuest_Questyno_PamelaPerez14_Lore" },
    needsitem = "Base.Twigs;50",
    onobtained = "unlockworldevent;Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez14_Complete",
    text = "IGUI_SFQuest_Questyno_PamelaPerez14_Text",
    texture = "media/textures/Item_PamelaPerez.png",
    title = "IGUI_SFQuest_Questyno_PamelaPerez14_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PamelaPerez15",
    awardsrep = "LaResistenza;250",
    awardsitem = "Base.RiceVinegar;1",
    completesound = "levelup",
    dailycode = "Questyno_PamelaPerez",
    lore = { "IGUI_SFQuest_Questyno_PamelaPerez15_Lore" },
    needsitem = "MushroomGeneric5;1",
    onobtained = "unlockworldevent;Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez15_Complete",
    text = "IGUI_SFQuest_Questyno_PamelaPerez15_Text",
    texture = "media/textures/Item_PamelaPerez.png",
    title = "IGUI_SFQuest_Questyno_PamelaPerez15_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PamelaPerez16",
    awardstask = "Questyno_PamelaPerez16_A",
    dailycode = "Questyno_PamelaPerez",
    lore = { "IGUI_SFQuest_Questyno_PamelaPerez16_Lore" },
    objectives = { {
        guid = "Questyno_PamelaPerez16_A",
        text = "IGUI_SFQuest_Questyno_PamelaPerez16_A",
        hidden = false,
        needsitem = "Base.AxeStone;4",
        onobtained = "updateobjective;Questyno_PamelaPerez16;1;Completed;removeitem;Base.AxeStone;8",
    }, {
        guid = "Questyno_PamelaPerez16_B",
        text = "IGUI_SFQuest_Questyno_PamelaPerez16_B",
        hidden = false,
        needsitem = "Base.SpearCrafted;4",
        onobtained = "updateobjective;Questyno_PamelaPerez16;2;Completed;removeitem;Base.SpearCrafted;8",
    }, {
        guid = "Questyno_PamelaPerez16_C",
        text = "IGUI_SFQuest_Questyno_PamelaPerez16_C",
        hidden = false,
        needsitem = "FlintKnife;4",
        onobtained = "updateobjective;Questyno_PamelaPerez16;3;Completed;removeitem;FlintKnife;8",
    } },
    text = "IGUI_SFQuest_Questyno_PamelaPerez16_Text",
    texture = "media/textures/Item_PamelaPerez.png",
    title = "IGUI_SFQuest_Questyno_PamelaPerez16_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PamelaPerez16_A",
    awardsrep = "LaResistenza;150",
    completesound = "levelup",
    dailycode = "Questyno_PamelaPerez",
    lore = { "IGUI_SFQuest_Questyno_PamelaPerez16_Lore" },
    text = "IGUI_SFQuest_Questyno_PamelaPerez16_A_Text",
    texture = "media/textures/Item_PamelaPerez.png",
    title = "IGUI_SFQuest_Questyno_PamelaPerez16_Title",
    unlocks = "unlockworldevent;Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez16_Complete",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PamelaPerez17",
    awardstask = "Questyno_PamelaPerez17_A",
    dailycode = "Questyno_PamelaPerez",
    lore = { "IGUI_SFQuest_Questyno_PamelaPerez17_Lore" },
    objectives = { {
        guid = "Questyno_PamelaPerez17_A",
        text = "IGUI_SFQuest_Questyno_PamelaPerez17_A",
        hidden = false,
        needsitem = "Base.ScrapMetal;4",
        onobtained = "updateobjective;Questyno_PamelaPerez17;1;Completed;removeitem;Base.ScrapMetal;4",
    }, {
        guid = "Questyno_PamelaPerez17_B",
        text = "IGUI_SFQuest_Questyno_PamelaPerez17_B",
        hidden = false,
        needsitem = "Base.Plank;1",
        onobtained = "updateobjective;Questyno_PamelaPerez17;2;Completed;removeitem;Base.Plank;1",
    } },
    text = "IGUI_SFQuest_Questyno_PamelaPerez17_Text",
    texture = "media/textures/Item_PamelaPerez.png",
    title = "IGUI_SFQuest_Questyno_PamelaPerez17_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PamelaPerez17_A",
    awardsrep = "LaResistenza;50",
    awardsitem = "Base.PickAxe;1",
    completesound = "levelup",
    dailycode = "Questyno_PamelaPerez",
    lore = { "IGUI_SFQuest_Questyno_PamelaPerez17_A_Lore" },
    text = "IGUI_SFQuest_Questyno_PamelaPerez17_A_Text",
    texture = "media/textures/Item_PamelaPerez.png",
    title = "IGUI_SFQuest_Questyno_PamelaPerez17_Title",
    unlocks = "unlockworldevent;Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez17_Complete",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PamelaPerez18",
    awardsrep = "LaResistenza;70",
    completesound = "levelup",
    dailycode = "Questyno_PamelaPerez",
    lore = { "IGUI_SFQuest_Questyno_PamelaPerez18_Lore" },
    needsitem = "RippedSheets;100",
    onobtained = "unlockworldevent;Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez18_Complete",
    text = "IGUI_SFQuest_Questyno_PamelaPerez18_Text",
    texture = "media/textures/Item_PamelaPerez.png",
    title = "IGUI_SFQuest_Questyno_PamelaPerez18_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PamelaPerez19",
    awardstask = "Questyno_PamelaPerez19_A",
    dailycode = "Questyno_PamelaPerez",
    lore = { "IGUI_SFQuest_Questyno_PamelaPerez19_Lore" },
    objectives = { {
        guid = "Questyno_PamelaPerez19_A",
        text = "IGUI_SFQuest_Questyno_PamelaPerez19_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoPamelaPerez19;additem;Base.Doll;1"
    } },
    text = "IGUI_SFQuest_Questyno_PamelaPerez19_Text",
    texture = "media/textures/Item_PamelaPerez.png",
    title = "IGUI_SFQuest_Questyno_PamelaPerez19_Title",
    unlocks = "clickevent;9504x6857x0:EventoPamelaPerez19;time:50:anim:loot;updateobjective:Questyno_PamelaPerez19:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PamelaPerez19_A",
    awardsrep = "LaResistenza;100",
    awardsitem = "Base.BerryBlack;2",
    completesound = "levelup",
    dailycode = "Questyno_PamelaPerez",
    lore = { "IGUI_SFQuest_Questyno_PamelaPerez19_A_Lore" },
    needsitem = "Base.Doll;1",
    onobtained = "unlockworldevent;Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez19_Complete",
    text = "IGUI_SFQuest_Questyno_PamelaPerez19_A_Text",
    texture = "media/textures/Item_PamelaPerez.png",
    title = "IGUI_SFQuest_Questyno_PamelaPerez19_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PamelaPerez20",
    awardsrep = "LaResistenza;60",
    awardsitem = "Money;20;Pot;2",
    completesound = "levelup",
    dailycode = "Questyno_PamelaPerez",
    lore = { "IGUI_SFQuest_Questyno_PamelaPerez20_Lore" },
    needsitem = "PredicateFoodWeight#Base.PotOfSoupRecipe;2;4",
    onobtained = "unlockworldevent;Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez20_Complete",
    text = "IGUI_SFQuest_Questyno_PamelaPerez20_Text",
    texture = "media/textures/Item_PamelaPerez.png",
    title = "IGUI_SFQuest_Questyno_PamelaPerez20_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PamelaPerez21",
    awardstask = "Questyno_PamelaPerez21_A",
    dailycode = "Questyno_PamelaPerez",
    lore = { "IGUI_SFQuest_Questyno_PamelaPerez21_Lore" },
    objectives = { {
        guid = "Questyno_PamelaPerez21_A",
        text = "IGUI_SFQuest_Questyno_PamelaPerez21_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoPamelaPerez21;additem;Base.Mattress;2"
    } },
    text = "IGUI_SFQuest_Questyno_PamelaPerez21_Text",
    texture = "media/textures/Item_PamelaPerez.png",
    title = "IGUI_SFQuest_Questyno_PamelaPerez21_Title",
    unlocks = "clickevent;10934x8492x0:EventoPamelaPerez21;time:50:anim:loot;updateobjective:Questyno_PamelaPerez21:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PamelaPerez21_A",
    awardsrep = "LaResistenza;120",
    completesound = "levelup",
    dailycode = "Questyno_PamelaPerez",
    lore = { "IGUI_SFQuest_Questyno_PamelaPerez21_A_Lore" },
    needsitem = "Base.Mattress;2",
    onobtained = "unlockworldevent;Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez21_Complete",
    text = "IGUI_SFQuest_Questyno_PamelaPerez21_A_Text",
    texture = "media/textures/Item_PamelaPerez.png",
    title = "IGUI_SFQuest_Questyno_PamelaPerez21_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PamelaPerez22",
    awardsrep = "LaResistenza;150",
    completesound = "levelup",
    dailycode = "Questyno_PamelaPerez",
    lore = { "IGUI_SFQuest_Questyno_PamelaPerez22_Lore" },
    needsitem = "Base.AxeStone;15",
    onobtained = "unlockworldevent;Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez22_Complete",
    text = "IGUI_SFQuest_Questyno_PamelaPerez22_Text",
    texture = "media/textures/Item_PamelaPerez.png",
    title = "IGUI_SFQuest_Questyno_PamelaPerez22_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PamelaPerez23",
    awardsrep = "LaResistenza;50",
    awardsitem = "Money;15",
    completesound = "levelup",
    dailycode = "Questyno_PamelaPerez",
    lore = { "IGUI_SFQuest_Questyno_PamelaPerez23_Lore" },
    needsitem = "Base.HammerStone;8",
    onobtained = "unlockworldevent;Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez23_Complete",
    text = "IGUI_SFQuest_Questyno_PamelaPerez23_Text",
    texture = "media/textures/Item_PamelaPerez.png",
    title = "IGUI_SFQuest_Questyno_PamelaPerez23_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PamelaPerez24",
    awardsrep = "LaResistenza;60",
    completesound = "levelup",
    dailycode = "Questyno_PamelaPerez",
    lore = { "IGUI_SFQuest_Questyno_PamelaPerez24_Lore" },
    needsitem = "Base.Stone;20",
    onobtained = "unlockworldevent;Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez24_Complete",
    text = "IGUI_SFQuest_Questyno_PamelaPerez24_Text",
    texture = "media/textures/Item_PamelaPerez.png",
    title = "IGUI_SFQuest_Questyno_PamelaPerez24_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PamelaPerez25",
    awardstask = "Questyno_PamelaPerez25_A",
    dailycode = "Questyno_PamelaPerez",
    lore = { "IGUI_SFQuest_Questyno_PamelaPerez25_Lore" },
    objectives = { {
        guid = "Questyno_PamelaPerez25_A",
        text = "IGUI_SFQuest_Questyno_PamelaPerez25_A",
        hidden = false,
        needsitem = "farming.BroccoliBagSeed;1",
        onobtained = "updateobjective;Questyno_PamelaPerez25;1;Completed;removeitem;farming.BroccoliBagSeed;1",
    }, {
        guid = "Questyno_PamelaPerez25_B",
        text = "IGUI_SFQuest_Questyno_PamelaPerez25_B",
        hidden = false,
        needsitem = "farming.CarrotBagSeed;1",
        onobtained = "updateobjective;Questyno_PamelaPerez25;2;Completed;removeitem;farming.CarrotBagSeed;1",
    }, {
        guid = "Questyno_PamelaPerez25_C",
        text = "IGUI_SFQuest_Questyno_PamelaPerez25_C",
        hidden = false,
        needsitem = "farming.StrewberrieBagSeed;1",
        onobtained = "updateobjective;Questyno_PamelaPerez25;2;Completed;removeitem;farming.StrewberrieBagSeed;1",
    }, {
        guid = "Questyno_PamelaPerez25_D",
        text = "IGUI_SFQuest_Questyno_PamelaPerez25_D",
        hidden = false,
        needsitem = "farming.PotatoBagSeed;1",
        onobtained = "updateobjective;Questyno_PamelaPerez25;2;Completed;removeitem;farming.PotatoBagSeed;1",
    }, {
        guid = "Questyno_PamelaPerez25_E",
        text = "IGUI_SFQuest_Questyno_PamelaPerez25_E",
        hidden = false,
        needsitem = "farming.TomatoBagSeed;1",
        onobtained = "updateobjective;Questyno_PamelaPerez25;2;Completed;removeitem;farming.TomatoBagSeed;1",
    } },
    text = "IGUI_SFQuest_Questyno_PamelaPerez25_Text",
    texture = "media/textures/Item_PamelaPerez.png",
    title = "IGUI_SFQuest_Questyno_PamelaPerez25_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_PamelaPerez25_A",
    awardsrep = "LaResistenza;450",
    awardsitem = "Base.SackProduce_Lettuce;1;Base.SackProduce_Corn;1",
    completesound = "levelup",
    dailycode = "Questyno_PamelaPerez",
    lore = { "IGUI_SFQuest_Questyno_PamelaPerez25_A_Lore" },
    text = "IGUI_SFQuest_Questyno_PamelaPerez25_A_Text",
    texture = "media/textures/Item_PamelaPerez.png",
    title = "IGUI_SFQuest_Questyno_PamelaPerez25_Title",
    unlocks = "unlockworldevent;Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez25_Complete",
});

--[[
            *** Sam Fisher ***
            Elenco:
                intro. Parla con Sam Fisher per sbloccare le daily.
				1. Recuperare Base.Worm;10 (100rep + Base.Panfish)
				2. Recuperare Base.FishingLine (1/5) (50rep + 30$)
				3. Recuperare Base.WoodenStick,Base.Paperclip (50rep + Base.FishingMag1)
				4. Recuperare Base.Panfish  (40rep + Base.FishingTackle)
				5. Recuperare Base.Catfish (35-55cm) (50rep + Base.BeerBottle)
				6. Recuperare Base.BaitFish;3 (40rep + Base.Bass)
				7. Recuperare Base.FishingNet (70rep + Base.Wire)
				8. Recuperare Base.Snail;2,Base.Grasshopper;2,Base.Worm;3 parlando con (8633,7477,0) (60rep + Base.Wine)
				9. Recuperare Base.Perch (40-60cm) (150rep + 50$)
				10. Recuperare Base.FishingRod parlando con (11218,8961,0) (100rep + 50$)
				11. Recuperare Base.Catfish,Base.Panfish (80rep + Base.Twine)
				12. Recuperare Base.Crappie (150rep)
				13. Recuperare Base.BeerCan;2 (100rep + Base.FishFillet,Base.BeerCanEmpty)
				14. Recuperare Base.Worm;20 (150rep)
				15. Recuperare Base.Parsley,Base.LemonGrass (80rep + Base.PanRecipe,Base.BeerBottle)
				16. Recuperare Base.Paperclip;15 (70rep)
				17. Recuperare Base.Catfish (35-55cm) (100rep + 100$)
				18. Recuperare Base.Trout (50-70cm) (100rep + 100$)
				19. Uccidere 30 Zombie (100rep + Base.HuntingKnife)
				20. Recuperare Base.Seaweed;50 parlando con (11286,6582,0) (50rep + Base.Seaweed;15,Base.PlateBlue,Base.FishFried)
				21. Recuperare Base.LogStacks4;2 (60rep + 20$)
				22. Recuperare Base.Worm;12 (40rep)
				23. Uccidere 25 Zombie (40rep + Base.BaseballBat)
				24. Recuperare Base.BaitFish;5 (80rep + 30$)
]]

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher_Intro",

    awardsrep = "SamFisher;100",
    -- dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher_Intro_Lore" },
    ondone = "randomcodedworldfrompool;Questyno_SamFisher;Questyno;SamFisher",
    text = "IGUI_SFQuest_Questyno_SamFisher_Intro_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher_Intro_Title",
    unique = true,
    unlockedsound = "QuestUnlocked",
    unlocks = "unlockworldevent;Questyno_SamFisher;SFQuest_Questyno_SamFisher_Intro_Complete",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher1",
    awardsrep = "LaResistenza;100",
    awardsitem = "Base.Panfish;1",
    completesound = "levelup",
    dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher1_Lore" },
    needsitem = "PredicateFreshFood#Base.Worm;10",
    onobtained = "unlockworldevent;Questyno_SamFisher;SFQuest_Questyno_SamFisher1_Complete",
    text = "IGUI_SFQuest_Questyno_SamFisher1_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher1_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher2",
    awardsrep = "LaResistenza;50",
    awardsitem = "Money;30",
    completesound = "levelup",
    dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher2_Lore" },
    needsitem = "Base.FishingLine;1",
    onobtained = "unlockworldevent;Questyno_SamFisher;SFQuest_Questyno_SamFisher2_Complete",
    text = "IGUI_SFQuest_Questyno_SamFisher2_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher2_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher3",
    awardstask = "Questyno_SamFisher3_A",
    dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher3_Lore" },
    objectives = { {
        guid = "Questyno_SamFisher3_A",
        text = "IGUI_SFQuest_Questyno_SamFisher3_A",
        hidden = false,
        needsitem = "Base.WoodenStick;1",
        onobtained = "updateobjective;Questyno_SamFisher3;1;Completed;removeitem;Base.WoodenStick;1",
    }, {
        guid = "Questyno_SamFisher3_B",
        text = "IGUI_SFQuest_Questyno_SamFisher3_B",
        hidden = false,
        needsitem = "Base.Paperclip;1",
        onobtained = "updateobjective;Questyno_SamFisher3;2;Completed;removeitem;Base.Paperclip;1",
    } },
    text = "IGUI_SFQuest_Questyno_SamFisher3_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher3_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher3_A",
    awardsrep = "LaResistenza;50",
    awardsitem = "Base.FishingMag1;1",
    completesound = "levelup",
    dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher3_A_Lore" },
    text = "IGUI_SFQuest_Questyno_SamFisher3_A_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher3_Title",
    unlocks = "unlockworldevent;Questyno_SamFisher;SFQuest_Questyno_SamFisher3_Complete",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher4",
    awardsrep = "LaResistenza;250",
    awardsitem = "Base.FishingTackle;1",
    completesound = "levelup",
    dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher4_Lore" },
    needsitem = "Base.Panfish;1",
    onobtained = "unlockworldevent;Questyno_SamFisher;SFQuest_Questyno_SamFisher4_Complete",
    text = "IGUI_SFQuest_Questyno_SamFisher4_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher4_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher5",
    awardsrep = "LaResistenza;250",
    awardsitem = "Base.BeerBottle;1",
    completesound = "levelup",
    dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher5_Lore" },
    needsitem = "TagPredicateBigFish#Catfish;1",
    onobtained = "unlockworldevent;Questyno_SamFisher;SFQuest_Questyno_SamFisher5_Complete",
    text = "IGUI_SFQuest_Questyno_SamFisher5_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher5_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher6",
    awardsrep = "LaResistenza;40",
    awardsitem = "Base.Bass;1",
    completesound = "levelup",
    dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher6_Lore" },
    needsitem = "Base.BaitFish;3",
    onobtained = "unlockworldevent;Questyno_SamFisher;SFQuest_Questyno_SamFisher6_Complete",
    text = "IGUI_SFQuest_Questyno_SamFisher6_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher6_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher7",
    awardsrep = "LaResistenza;70",
    awardsitem = "Base.Wire;1",
    completesound = "levelup",
    dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher7_Lore" },
    needsitem = "Base.FishingNet;1",
    onobtained = "unlockworldevent;Questyno_SamFisher;SFQuest_Questyno_SamFisher7_Complete",
    text = "IGUI_SFQuest_Questyno_SamFisher7_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher7_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher8",
    awardstask = "Questyno_SamFisher8_A",
    dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher8_Lore" },
    objectives = { {
        guid = "Questyno_SamFisher8_A",
        text = "IGUI_SFQuest_Questyno_SamFisher8_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoSamFisher8;additem;Snail;2;additem;Grasshopper;2;additem;Worm;3"
    } },
    text = "IGUI_SFQuest_Questyno_SamFisher8_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher8_Title",
    unlocks = "clickevent;8633x7477x0:EventoSamFisher8;time:50:anim:loot;updateobjective:Questyno_SamFisher8:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher8_A",
    awardstask = "Questyno_SamFisher8_B",
    dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher8_A_Lore" },
    objectives = { {
        guid = "Questyno_SamFisher8_B",
        text = "IGUI_SFQuest_Questyno_SamFisher8_B",
        hidden = false,
        needsitem = "PredicateFreshFood#Base.Snail;2",
        onobtained = "updateobjective;Questyno_SamFisher8_A;1;Completed;removeitem;Base.Snail;2",
    }, {
        guid = "Questyno_SamFisher8_C",
        text = "IGUI_SFQuest_Questyno_SamFisher8_C",
        hidden = false,
        needsitem = "PredicateFreshFood#Base.Grasshopper;2",
        onobtained = "updateobjective;Questyno_SamFisher8_A;2;Completed;removeitem;Base.Grasshopper;2",
    }, {
        guid = "Questyno_SamFisher8_D",
        text = "IGUI_SFQuest_Questyno_SamFisher8_D",
        hidden = false,
        needsitem = "PredicateFreshFood#Base.Worm;3",
        onobtained = "updateobjective;Questyno_SamFisher8_A;3;Completed;removeitem;Base.Worm;3",
    } },
    text = "IGUI_SFQuest_Questyno_SamFisher8_A_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher8_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher8_B",
    awardsrep = "LaResistenza;60",
    awardsitem = "Base.Wine;1",
    completesound = "levelup",
    dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher8_B_Lore" },
    text = "IGUI_SFQuest_Questyno_SamFisher8_B_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher8_Title",
    unlocks = "unlockworldevent;Questyno_SamFisher;SFQuest_Questyno_SamFisher8_Complete",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher9",
    awardsrep = "LaResistenza;150",
    awardsitem = "Money;50",
    completesound = "levelup",
    dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher9_Lore" },
    needsitem = "TagPredicateBigFish#Perch;1",
    onobtained = "unlockworldevent;Questyno_SamFisher;SFQuest_Questyno_SamFisher9_Complete",
    text = "IGUI_SFQuest_Questyno_SamFisher9_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher9_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher10",
    awardstask = "Questyno_SamFisher10_A",
    dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher10_Lore" },
    objectives = { {
        guid = "Questyno_SamFisher10_A",
        text = "IGUI_SFQuest_Questyno_SamFisher10_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoSamFisher10;additem;Base.FishingRod;1"
    } },
    text = "IGUI_SFQuest_Questyno_SamFisher10_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher10_Title",
    unlocks = "clickevent;11218x8961x0:EventoSamFisher10;time:50:anim:loot;updateobjective:Questyno_SamFisher10:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher10_A",
    awardsrep = "LaResistenza;100",
    awardsitem = "Money;50",
    completesound = "levelup",
    dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher10_A_Lore" },
    needsitem = "FishingRod;1",
    onobtained = "unlockworldevent;Questyno_SamFisher;SFQuest_Questyno_SamFisher10_Complete",
    text = "IGUI_SFQuest_Questyno_SamFisher10_A_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher10_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher11",
    awardstask = "Questyno_SamFisher11_A",
    dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher11_Lore" },
    objectives = { {
        guid = "Questyno_SamFisher11_A",
        text = "IGUI_SFQuest_Questyno_SamFisher11_A",
        hidden = false,
        needsitem = "PredicateFreshFood#Catfish;1",
        onobtained = "updateobjective;Questyno_SamFisher11;1;Completed;removeitem;Catfish;1",
    }, {
        guid = "Questyno_SamFisher11_B",
        text = "IGUI_SFQuest_Questyno_SamFisher11_B",
        hidden = false,
        needsitem = "PredicateFreshFood#Panfish;1",
        onobtained = "updateobjective;Questyno_SamFisher11;2;Completed;removeitem;Panfish;1",
    } },
    text = "IGUI_SFQuest_Questyno_SamFisher11_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher11_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher11_A",
    awardsrep = "LaResistenza;120",
    awardsitem = "Base.Twine;1",
    completesound = "levelup",
    dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher11_A_Lore" },
    text = "IGUI_SFQuest_Questyno_SamFisher11_A_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher11_Title",
    unlocks = "unlockworldevent;Questyno_SamFisher;SFQuest_Questyno_SamFisher11_Complete",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher12",
    awardsrep = "LaResistenza;150",
    completesound = "levelup",
    dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher12_Lore" },
    needsitem = "PredicateFreshFood#Crappie;1",
    onobtained = "unlockworldevent;Questyno_SamFisher;SFQuest_Questyno_SamFisher12_Complete",
    text = "IGUI_SFQuest_Questyno_SamFisher12_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher12_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher13",
    awardsrep = "LaResistenza;100",
    awardsitem = "Base.FishFillet;1;Base.BeerCanEmpty;1",
    completesound = "levelup",
    dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher13_Lore" },
    needsitem = "Base.BeerCan;2",
    onobtained = "unlockworldevent;Questyno_SamFisher;SFQuest_Questyno_SamFisher13_Complete",
    text = "IGUI_SFQuest_Questyno_SamFisher13_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher13_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher14",
    awardsrep = "LaResistenza;150",
    completesound = "levelup",
    dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher14_Lore" },
    needsitem = "PredicateFreshFood#Base.Worm;20",
    onobtained = "unlockworldevent;Questyno_SamFisher;SFQuest_Questyno_SamFisher14_Complete",
    text = "IGUI_SFQuest_Questyno_SamFisher14_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher14_Title",
    unlockedsound = "QuestUnlocked"
});

--				15. Recuperare Base.Parsley,Base.LemonGrass (80rep + Base.PanRecipe,Base.BeerBottle)

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher15",
    awardstask = "Questyno_SamFisher15_A",
    dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher15_Lore" },
    objectives = { {
        guid = "Questyno_SamFisher15_A",
        text = "IGUI_SFQuest_Questyno_SamFisher15_A",
        hidden = false,
        needsitem = "Base.Parsley;1",
        onobtained = "updateobjective;Questyno_SamFisher15;1;Completed;removeitem;Base.Parsley;1",
    }, {
        guid = "Questyno_SamFisher15_B",
        text = "IGUI_SFQuest_Questyno_SamFisher15_B",
        hidden = false,
        needsitem = "PredicateFreshFood#Base.LemonGrass;1",
        onobtained = "updateobjective;Questyno_SamFisher15;2;Completed;removeitem;Base.LemonGrass;1",
    } },
    text = "IGUI_SFQuest_Questyno_SamFisher15_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher15_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher15_A",
    awardsrep = "LaResistenza;80",
    awardsitem = "Base.PanFriedVegetables;1;Base.BeerBottle;1",
    completesound = "levelup",
    dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher15_A_Lore" },
    text = "IGUI_SFQuest_Questyno_SamFisher15_A_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher15_Title",
    unlocks = "unlockworldevent;Questyno_SamFisher;SFQuest_Questyno_SamFisher15_Complete",
});

--				16. Recuperare Base.Paperclip;15 (70rep)

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher16",
    awardsrep = "LaResistenza;150",
    completesound = "levelup",
    dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher16_Lore" },
    needsitem = "Base.PaperclipBox;3",
    onobtained = "unlockworldevent;Questyno_SamFisher;SFQuest_Questyno_SamFisher16_Complete",
    text = "IGUI_SFQuest_Questyno_SamFisher16_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher16_Title",
    unlockedsound = "QuestUnlocked"
});

--				17. Pagare scommessa 50$, Recuperare Base.Catfish (35-55cm) (100rep + 100$)

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher17",
    awardstask = "Questyno_SamFisher17_A",
    dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher17_Lore" },
    needsitem = "Money;50",
    onobtained = "unlockworldevent;Questyno_SamFisher;SFQuest_Questyno_SamFisher17_Complete",
    text = "IGUI_SFQuest_Questyno_SamFisher17_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher17_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher17_A",
    awardsrep = "LaResistenza;100",
    awardsitem = "Money;100",
    completesound = "levelup",
    dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher17_Lore" },
    needsitem = "TagPredicateBigFish#Catfish;1",
    onobtained = "unlockworldevent;Questyno_SamFisher;SFQuest_Questyno_SamFisher17_A_Complete",
    text = "IGUI_SFQuest_Questyno_SamFisher17_A_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher17_Title",
});

--				18. Pagare scommessa 50$, Recuperare Base.Trout (50-70cm) (100rep + 100$)

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher18",
    awardstask = "Questyno_SamFisher18_A",
    dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher18_Lore" },
    needsitem = "Money;50",
    onobtained = "unlockworldevent;Questyno_SamFisher;SFQuest_Questyno_SamFisher18_Complete",
    text = "IGUI_SFQuest_Questyno_SamFisher18_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher18_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher18_A",
    awardsrep = "LaResistenza;100",
    awardsitem = "Money;100",
    completesound = "levelup",
    dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher18_Lore" },
    needsitem = "TagPredicateBigFish#Trout;1",
    onobtained = "unlockworldevent;Questyno_SamFisher;SFQuest_Questyno_SamFisher18_A_Complete",
    text = "IGUI_SFQuest_Questyno_SamFisher18_A_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher18_Title",
    unlockedsound = "QuestUnlocked"
});

--				19. Uccidere 30 Zombie (100rep + Base.HuntingKnife)


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher19",
    awardsrep = "LaResistenza;100", -- REP REWARD
    awardsitem = "Base.HuntingKnife;1", -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher19_Lore" },
    text = "IGUI_SFQuest_Questyno_SamFisher19_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher19_Title",
    unlocks = "actionevent;killzombies:30;unlockworldevent:Questyno_SamFisher:SFQuest_Questyno_SamFisher19_Complete", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});

--				20. Recuperare Base.Seaweed;50 parlando con (11286,6582,0) (50rep + Base.Seaweed;15,Base.PlateBlue,Base.FishFried)

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher20",
    awardstask = "Questyno_SamFisher20_A",
    dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher20_Lore" },
    objectives = { {
        guid = "Questyno_SamFisher20_A",
        text = "IGUI_SFQuest_Questyno_SamFisher20_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoSamFisher20;additem;Base.Seaweed;50"
    } },
    text = "IGUI_SFQuest_Questyno_SamFisher20_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher20_Title",
    unlocks = "clickevent;11286x6582x0:EventoSamFisher20;time:50:anim:loot;updateobjective:Questyno_SamFisher20:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher20_A",
    awardsrep = "LaResistenza;50",
    awardsitem = "Base.Seaweed;15;Base.PlateBlue;1;Base.FishFried;1",
    completesound = "levelup",
    dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher20_A_Lore" },
    needsitem = "Base.Seaweed;50",
    onobtained = "unlockworldevent;Questyno_SamFisher;SFQuest_Questyno_SamFisher20_Complete",
    text = "IGUI_SFQuest_Questyno_SamFisher20_A_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher20_Title",
});

--				21. Recuperare Base.LogStacks4;2 (60rep + 20$)

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher21",
    awardsrep = "LaResistenza;60",
    awardsitem = "Money;20",
    completesound = "levelup",
    dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher21_Lore" },
    needsitem = "Base.LogStacks4;2",
    onobtained = "unlockworldevent;Questyno_SamFisher;SFQuest_Questyno_SamFisher21_Complete",
    text = "IGUI_SFQuest_Questyno_SamFisher21_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher21_Title",
    unlockedsound = "QuestUnlocked"
});

--				22. Recuperare Base.Worm;12 (40rep)

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher22",
    awardsrep = "LaResistenza;200",
    completesound = "levelup",
    dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher22_Lore" },
    needsitem = "PredicateFreshFood#Base.Worm;20",
    onobtained = "unlockworldevent;Questyno_SamFisher;SFQuest_Questyno_SamFisher22_Complete",
    text = "IGUI_SFQuest_Questyno_SamFisher22_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher22_Title",
    unlockedsound = "QuestUnlocked"
});

--				23. Uccidere 25 Zombie (40rep + Base.BaseballBat)

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher23",
    awardsrep = "LaResistenza;40",
    awardsitem = "Base.BaseballBat;1",
    completesound = "levelup",
    dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher23_Lore" },
    text = "IGUI_SFQuest_Questyno_SamFisher23_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher23_Title",
    unlocks = "actionevent;killzombies:25;unlockworldevent:Questyno_SamFisher:SFQuest_Questyno_SamFisher23_Complete",
    unlockedsound = "QuestUnlocked"
});

--				24. Recuperare Base.BaitFish;5 (80rep + 30$)

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_SamFisher24",
    awardsrep = "LaResistenza;80",
    awardsitem = "Money;30",
    completesound = "levelup",
    dailycode = "Questyno_SamFisher",
    lore = { "IGUI_SFQuest_Questyno_SamFisher24_Lore" },
    needsitem = "Base.BaitFish;5",
    onobtained = "unlockworldevent;Questyno_SamFisher;SFQuest_Questyno_SamFisher24_Complete",
    text = "IGUI_SFQuest_Questyno_SamFisher24_Text",
    texture = "media/textures/Item_SamFisher.png",
    title = "IGUI_SFQuest_Questyno_SamFisher24_Title",
    unlockedsound = "QuestUnlocked"
});


-- Stagione 2

--[[
            *** AnselMerrick ***
            Elenco:
                intro. Parla con Ansel per sbloccare le daily.
                1. Uccidi 320 Zombie in Tier 3 (400rep)
                2. Uccidi 420 Zombie in Tier 3 (500rep)
                3. Uccidi 520 Zombie in Tier 3 (600rep + 20$)
]]--

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_AnselMerrick_Intro",

    awardsrep = "AnselMerrick;100", -- REP REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_AnselMerrick_Intro_Lore" },
    ondone = "randomcodedworldfrompool;Questyno_AnselMerrick;Questyno;AnselMerrick",
    text = "IGUI_SFQuest_Questyno_AnselMerrick_Intro_Text",
    texture = "media/textures/Item_AnselMerrick.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_AnselMerrick;SFQuest_Questyno_AnselMerrick_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_AnselMerrick_Intro_Title",
})

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_AnselMerrick1",

    awardsrep = "LaResistenza;400", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_AnselMerrick",
    lore = { "IGUI_SFQuest_Questyno_AnselMerrick1_Lore" },
    text = "IGUI_SFQuest_Questyno_AnselMerrick1_Text",
    texture = "media/textures/Item_AnselMerrick.png",
    title = "IGUI_SFQuest_Questyno_AnselMerrick1_Title",
    unlocks = "actionevent;killzombies:320:tierlevel:3;unlockworldevent:Questyno_AnselMerrick:SFQuest_Questyno_AnselMerrick1_Complete:placeholder:updatequeststatus:Questyno_AnselMerrick1:Obtained", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_AnselMerrick2",

    awardsrep = "LaResistenza;500", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_AnselMerrick",
    lore = { "IGUI_SFQuest_Questyno_AnselMerrick2_Lore" },
    text = "IGUI_SFQuest_Questyno_AnselMerrick2_Text",
    texture = "media/textures/Item_AnselMerrick.png",
    title = "IGUI_SFQuest_Questyno_AnselMerrick2_Title",
    unlocks = "actionevent;killzombies:420:tierlevel:3;unlockworldevent:Questyno_AnselMerrick:SFQuest_Questyno_AnselMerrick2_Complete:placeholder:updatequeststatus:Questyno_AnselMerrick2:Obtained", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_AnselMerrick3",

    awardsrep = "LaResistenza;600", -- REP REWARD
    awardsitem = "Money;20", -- ITEM REWARD
    completesound = "levelup",
    dailycode = "Questyno_AnselMerrick",
    lore = { "IGUI_SFQuest_Questyno_AnselMerrick3_Lore" },
    text = "IGUI_SFQuest_Questyno_AnselMerrick3_Text",
    texture = "media/textures/Item_AnselMerrick.png",
    title = "IGUI_SFQuest_Questyno_AnselMerrick3_Title",
    unlocks = "actionevent;killzombies:520:tierlevel:3;unlockworldevent:Questyno_AnselMerrick:SFQuest_Questyno_AnselMerrick3_Complete:placeholder:updatequeststatus:Questyno_AnselMerrick3:Obtained", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});
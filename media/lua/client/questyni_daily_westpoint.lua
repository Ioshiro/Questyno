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

    awardsrep = "LaResistenza;1", -- REP REWARD
    awardstask = "Questyno_Lupo1", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_Lupo_Intro_Lore" },
    ondone = "addserverpoints;1000",
    text = "IGUI_SFQuest_Questyno_Lupo_Intro_Text",
    texture = "media/textures/Item_TonyLupo.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_Lupo_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_Lupo_Intro_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_Lupo1",

    awardsrep = "LaResistenza;35", -- REP REWARD
    awardsitem = "Money;15",       -- MONEY REWARD
    awardstask = "Questyno_Lupo2", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo1_Lore" },
    needsitem = "308Box;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_TonyLupo;SFQuest_Questyno_Lupo1_Complete",
    text = "IGUI_SFQuest_Questyno_Lupo1_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo1_Title",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_Lupo2",

    awardsrep = "LaResistenza;40", -- REP REWARD
    awardsitem = "Money;25",       -- MONEY REWARD
    awardstask = "Questyno_Lupo3", -- TODO: REMOVE WHEN TESTING IS DONE
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

    awardsitem = "Money;50",       -- MONEY REWARD
    awardsrep = "LaResistenza;65", -- REP REWARD
    awardstask = "Questyno_Lupo4", -- TODO: REMOVE WHEN TESTING IS DONE
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
        needsitem = "AssualtRifle;1",
        onobtained = "updateobjective;Questyno_Lupo4:1:Completed;removeitem;AssualtRifle;1"
    }, {
        guid = "Questyno_Lupo4_B",
        text = "IGUI_SFQuest_Questyno_Lupo4_B",
        hidden = false,
        needsitem = "556Clip;1",
        onobtained = "updateobjective;Questyno_Lupo4:2:Completed;removeitem;556Clip;1"
    } },
    text = "IGUI_SFQuest_Questyno_Lupo4_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo4_Title",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_Lupo4_A",
    
    awardsrep = "LaResistenza;100",
    awardsitem = "Money;20",
    awardsworld = "Questyno_Lupo;SFQuest_Questyno_Lupo5_Begin;Questyno_Lupo5",
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
    
    awardstask = "Questyno_Lupo4_A",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo4_Lore" },
    objectives = { {
        guid = "Questyno_Lupo4_A",
        text = "IGUI_SFQuest_Questyno_Lupo4_A",
        hidden = false,
        needsitem = "AssualtRifle2;2",
        onobtained = "updateobjective;Questyno_Lupo4:1:Completed;removeitem;AssualtRifle2;2"
    }, {
        guid = "Questyno_Lupo4_B",
        text = "IGUI_SFQuest_Questyno_Lupo4_B",
        hidden = false,
        needsitem = "M14Clip;1",
        onobtained = "updateobjective;Questyno_Lupo4:2:Completed;removeitem;M14Clip;1"
    } },
    text = "IGUI_SFQuest_Questyno_Lupo4_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo4_Title",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_Lupo5_A",
    
    awardsrep = "LaResistenza;140",
    awardsworld = "Questyno_Lupo;SFQuest_Questyno_Lupo6_Begin;Questyno_Lupo6",
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
    
    awardsrep = "LaResistenza;[NumeroReputazione]",
    awardsitem = "[NomeRicompensa];[NumeroRicompensa]",
    awardsworld = "Questyno_Lupo;SFQuest_Questyno_Lupo7_Begin;Questyno_Lupo7",
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
    
    awardsrep = "LaResistenza;[NumeroReputazione]",
    awardsitem = "[NomeRicompensa];[NumeroRicompensa]",
    awardsworld = "Questyno_Lupo;SFQuest_Questyno_Lupo8_Begin;Questyno_Lupo8",
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

    awardsrep = "LaResistenza;100", -- REP REWARD
    awardsitem = "Money;40",       -- MONEY REWARD
    awardstask = "Questyno_Lupo9", -- TODO: REMOVE WHEN TESTING IS DONE
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
        onobtained = "updateobjective;Questyno_Lupo9:1:Completed;removeitem;Pistol;1"
    }, {
        guid = "Questyno_Lupo9_B",
        text = "IGUI_SFQuest_Questyno_Lupo9_B",
        hidden = false,
        needsitem = "9mmClip;1",
        onobtained = "updateobjective;Questyno_Lupo9:2:Completed;removeitem;9mmClip;1"
    } },
    text = "IGUI_SFQuest_Questyno_Lupo9_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo9_Title",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_Lupo9_A",
    
    awardsrep = "LaResistenza;40",
    awardsitem = "Money;20",
    awardsworld = "Questyno_Lupo;SFQuest_Questyno_Lupo10_Begin;Questyno_Lupo10",
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
    
    awardstask = "Questyno_Lupo9_A",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo9_Lore" },
    objectives = { {
        guid = "Questyno_Lupo9_A",
        text = "IGUI_SFQuest_Questyno_Lupo9_A",
        hidden = false,
        needsitem = "Bullets45Box;2",
        onobtained = "updateobjective;Questyno_Lupo9:1:Completed;removeitem;Bullets45Box;2"
    }, {
        guid = "Questyno_Lupo9_B",
        text = "IGUI_SFQuest_Questyno_Lupo9_B",
        hidden = false,
        needsitem = "45Clip;2",
        onobtained = "updateobjective;Questyno_Lupo9:2:Completed;removeitem;45Clip;2"
    } },
    text = "IGUI_SFQuest_Questyno_Lupo9_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo9_Title",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_Lupo10_A",
    
    awardsrep = "LaResistenza;200",
    awardsworld = "Questyno_Lupo;SFQuest_Questyno_Lupo11_Begin;Questyno_Lupo11",
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
    
    awardstask = "Questyno_Lupo10_A",
    dailycode = "Questyno_Lupo",
    lore = { "IGUI_SFQuest_Questyno_Lupo10_Lore" },
    objectives = { {
        guid = "Questyno_Lupo10_A",
        text = "IGUI_SFQuest_Questyno_Lupo10_A",
        hidden = false,
        needsitem = "ShotgunShellsBox;2",
        onobtained = "updateobjective;Questyno_Lupo10:1:Completed;removeitem;ShotgunShellsBox;2"
    },
    {
        guid = "Questyno_Lupo10_B",
        text = "IGUI_SFQuest_Questyno_Lupo10_B",
        hidden = false,
        needsitem = "Shotgun;2",
        onobtained = "updateobjective;Questyno_Lupo10:2:Completed;removeitem;Shotgun;2"
    } },
    text = "IGUI_SFQuest_Questyno_Lupo10_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo10_Title",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_Lupo11_A",

    awardsrep = "LaResistenza;150",
    awardsworld = "Questyno_Lupo;SFQuest_Questyno_Lupo12_Begin;Questyno_Lupo12",
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

    awardsrep = "LaResistenza;120", -- REP REWARD
    awardstask = "Questyno_Lupo13", -- TODO: REMOVE WHEN TESTING IS DONE
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

    awardsrep = "LaResistenza;35", -- REP REWARD
    awardstask = "Questyno_Lupo14", -- TODO: REMOVE WHEN TESTING IS DONE
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
        onobtained = "updateobjective;Questyno_Lupo14:1:Completed;removeitem;DoubleBarrelShotgun;1"
    }, {
        guid = "Questyno_Lupo14_B",
        text = "IGUI_SFQuest_Questyno_Lupo14_B",
        hidden = false,
        needsitem = "ShotgunShellsBox;2",
        onobtained = "updateobjective;Questyno_Lupo14:2:Completed;removeitem;ShotgunShellsBox;2"
    } },
    text = "IGUI_SFQuest_Questyno_Lupo14_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo14_Title",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_Lupo14_A",
    
    awardsrep = "LaResistenza;120",
    awardsitem = "Money;30",
    awardsworld = "Questyno_Lupo;SFQuest_Questyno_Lupo15_Begin;Questyno_Lupo15",
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
        onobtained = "updateobjective;Questyno_Lupo15:1:Completed;removeitem;Revolver_Long;1"
    }, {
        guid = "Questyno_Lupo15_B",
        text = "IGUI_SFQuest_Questyno_Lupo15_B",
        hidden = false,
        needsitem = "Bullets44Box;3",
        onobtained = "updateobjective;Questyno_Lupo15:2:Completed;removeitem;Bullets44Box;3"
    } },
    text = "IGUI_SFQuest_Questyno_Lupo15_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo15_Title",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_Lupo15_A",
    
    awardsrep = "LaResistenza;140",
    awardsworld = "Questyno_Lupo;SFQuest_Questyno_Lupo16_Begin;Questyno_Lupo16",
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
        onobtained = "updateobjective;Questyno_Lupo16:1:Completed;removeitem;Bullets44Box;1"
    }, {
        guid = "Questyno_Lupo16_B",
        text = "IGUI_SFQuest_Questyno_Lupo16_B",
        hidden = false,
        needsitem = "Bullets9mmBox;1",
        onobtained = "updateobjective;Questyno_Lupo16:2:Completed;removeitem;Bullets9mmBox;1"
    }, {
        guid = "Questyno_Lupo16_C",
        text = "IGUI_SFQuest_Questyno_Lupo16_C",
        hidden = false,
        needsitem = "Bullets38Box;1",
        onobtained = "updateobjective;Questyno_Lupo16:3:Completed;removeitem;Bullets38Box;1"
    }, {
        guid = "Questyno_Lupo16_D",
        text = "IGUI_SFQuest_Questyno_Lupo16_D",
        hidden = false,
        needsitem = "Bullets45Box;1",
        onobtained = "updateobjective;Questyno_Lupo16:4:Completed;removeitem;Bullets45Box;1"
    } },
    text = "IGUI_SFQuest_Questyno_Lupo16_Text",
    texture = "media/textures/Item_TonyLupo.png",
    title = "IGUI_SFQuest_Questyno_Lupo16_Title",
    unlockedsound = "QuestUnlocked"
})

table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_Lupo16_A",
    
    awardsrep = "LaResistenza;150",
    awardsworld = "Questyno_Lupo;SFQuest_Questyno_Lupo17_Begin;Questyno_Lupo17",
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

    awardsrep = "LaResistenza;45", -- REP REWARD
    awardstask = "Questyno_Lupo18", -- TODO: REMOVE WHEN TESTING IS DONE
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

    awardsrep = "LaResistenza;40", -- REP REWARD
    awardstask = "Questyno_Lupo19", -- TODO: REMOVE WHEN TESTING IS DONE
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

    awardsrep = "LaResistenza;35", -- REP REWARD
    awardstask = "Questyno_Lupo20", -- TODO: REMOVE WHEN TESTING IS DONE
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

    awardsrep = "LaResistenza;35", -- REP REWARD
    awardsitem = "Money;30",       -- MONEY REWARD
    awardstask = "Questyno_Lupo21", -- TODO: REMOVE WHEN TESTING IS DONE
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
    awardstask = "Questyno_Lupo22", -- TODO: REMOVE WHEN TESTING IS DONE
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
    awardstask = "Questyno_Lupo1", -- TODO: REMOVE WHEN TESTING IS DONE
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

    awardsrep = "LaResistenza;200", -- REP REWARD
    awardstask = "Questyno_Lupo1", -- TODO: REMOVE WHEN TESTING IS DONE
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
				21. Recuperare Base.Neackle_DogTag;2 (50rep)
				22. Recuperare Base.NoseStud_Gold (30rep)
				23. Recuperare Base.Tie_BowTieWorn (150rep + 40$)
]]

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso_Intro",

    awardsrep = "LaResistenza;1",
    awardstask = "Questyno_RafaelPrezioso1",
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso_Intro_Lore" },
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso_Intro_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso_Intro_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso1",

    awardsrep = "LaResistenza;120",
    awardsitem = "Money;25",
    awardstask = "Questyno_RafaelPrezioso2",
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

    awardsrep = "LaResistenza;80",
    awardsitem = "Money;15",
    awardstask = "Questyno_RafaelPrezioso3",
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
    awardsrep = "LaResistenza;35",
    awardstask = "Questyno_RafaelPrezioso4",
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
    awardstask = "Questyno_RafaelPrezioso5",
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
    awardstask = "Questyno_RafaelPrezioso6",
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
    awardsrep = "LaResistenza;40",
    awardsitem = "Money;30",
    awardstask = "Questyno_RafaelPrezioso7",
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
    awardstask = "Questyno_RafaelPrezioso8",
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
    awardstask = "Questyno_RafaelPrezioso9",
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
        oncompleted = "removeclickevent;EventoRafaelPrezioso9;additem;Base.VideoGame;1;clickevent;10013x11552x0:EventoRafaelPrezioso9A;time:50:anim:loot;updateobjective:Questyno_RafaelPrezioso9:2:Completed",
    }, {
        guid = "Questyno_RafaelPrezioso9_B",
        text = "IGUI_SFQuest_Questyno_RafaelPrezioso9_B",
        hidden = true,
        oncompleted = "removeclickevent;EventoRafaelPrezioso9A;additem;Base.VideoGame;1",
    } },
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso9_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso9_Title",
    unlocks = "clickevent;9693x11536x0:EventoRafaelPrezioso9;time:50:anim:loot;updateobjective:Questyno_RafaelPrezioso9:1:Completed;clickevent;10013x11552x0:EventoRafaelPrezioso9;time:50:anim:loot;updateobjective:Questyno_RafaelPrezioso9:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso9_A",
    awardsrep = "LaResistenza;80",
    awardsitem = "Money;30",
    awardstask = "Questyno_RafaelPrezioso10",
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
        oncompleted = "removeclickevent;EventoRafaelPrezioso10A;additem;Base.GuitarAcoustic;1;revealobjective;Questyno_RafaelPrezioso10;3;clickevent;10750x9913x0:EventoRafaelPrezioso10B;time:50:anim:loot;updateobjective:Questyno_RafaelPrezioso10:3:Completed",
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
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso10_Lore" },
    objectives = {
        {
            guid = "Questyno_RafaelPrezioso10_D",
            text = "IGUI_SFQuest_Questyno_RafaelPrezioso10_D",
            hidden = false,
            needsitem = "Base.GuitarAcoustic;1",
            onobtained = "updateobjective;Questyno_RafaelPrezioso10_A:1:Completed;removeitem;Base.GuitarAcoustic;1"
        },
        {
            guid = "Questyno_RafaelPrezioso10_E",
            text = "IGUI_SFQuest_Questyno_RafaelPrezioso10_E",
            hidden = false,
            needsitem = "Base.Trumpet;1",
            onobtained = "updateobjective;Questyno_RafaelPrezioso10_A:2:Completed;removeitem;Base.Trumpet;1"
        },
        {
            guid = "Questyno_RafaelPrezioso10_F",
            text = "IGUI_SFQuest_Questyno_RafaelPrezioso10_F",
            hidden = false,
            needsitem = "Base.Drumstick;1",
            onobtained = "updateobjective;Questyno_RafaelPrezioso10_A:3:Completed;removeitem;Base.Drumstick;1"
        }
    },
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso10_A_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso10_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso10_B",
    awardsrep = "LaResistenza;100",
    awardsitem = "Money;50",
    awardstask = "Questyno_RafaelPrezioso11",
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
        oncompleted = "removeclickevent;EventoRafaelPrezioso11;additem;Base.GamePieceRed;1;additem;Base.PieceBlack;1;additem;Base.CheckerBoard;1",
    } },
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso11_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso11_Title",
    unlocks = "clickevent;8244x11686x0:EventoRafaelPrezioso11;time:50:anim:loot;updateobjective:Questyno_RafaelPrezioso11:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso11_A",
    awardstask = "Questyno_RafaelPrezioso11_B",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso11_Lore" },
    objectives = {
        {
            guid = "Questyno_RafaelPrezioso11_B",
            text = "IGUI_SFQuest_Questyno_RafaelPrezioso11_B",
            hidden = false,
            needsitem = "Base.GamePieceRed;1",
            onobtained = "updateobjective;Questyno_RafaelPrezioso11_A:1:Completed;removeitem;Base.GamePieceRed;1"
        },
        {
            guid = "Questyno_RafaelPrezioso11_C",
            text = "IGUI_SFQuest_Questyno_RafaelPrezioso11_C",
            hidden = false,
            needsitem = "Base.PieceBlack;1",
            onobtained = "updateobjective;Questyno_RafaelPrezioso11_A:2:Completed;removeitem;Base.PieceBlack;1"
        },
        {
            guid = "Questyno_RafaelPrezioso11_D",
            text = "IGUI_SFQuest_Questyno_RafaelPrezioso11_D",
            hidden = false,
            needsitem = "Base.CheckerBoard;1",
            onobtained = "updateobjective;Questyno_RafaelPrezioso11_A:3:Completed;removeitem;Base.CheckerBoard;1"
        }
    },
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso11_A_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso11_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso11_B",
    awardsrep = "LaResistenza;45",
    awardstask = "Questyno_RafaelPrezioso12",
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
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso12_Lore" },
    objectives = {
        {
            guid = "Questyno_RafaelPrezioso12_B",
            text = "IGUI_SFQuest_Questyno_RafaelPrezioso12_B",
            hidden = false,
            needsitem = "Base.CheckerBoard;1",
            onobtained = "updateobjective;Questyno_RafaelPrezioso12_A:1:Completed;removeitem;Base.CheckerBoard;1"
        },
        {
            guid = "Questyno_RafaelPrezioso12_C",
            text = "IGUI_SFQuest_Questyno_RafaelPrezioso12_C",
            hidden = false,
            needsitem = "ChessWhite;1",
            onobtained = "updateobjective;Questyno_RafaelPrezioso12_A:2:Completed;removeitem;ChessWhite;1"
        },
        {
            guid = "Questyno_RafaelPrezioso12_D",
            text = "IGUI_SFQuest_Questyno_RafaelPrezioso12_D",
            hidden = false,
            needsitem = "ChessBlack;1",
            onobtained = "updateobjective;Questyno_RafaelPrezioso12_A:3:Completed;removeitem;ChessBlack;1"
        }
    },
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso12_A_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso12_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso12_B",
    awardsrep = "LaResistenza;50",
    awardstask = "Questyno_RafaelPrezioso13",
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
    awardsrep = "LaResistenza;50",
    awardsitem = "Money;20",
    awardstask = "Questyno_RafaelPrezioso14",
    completesound = "levelup",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso13_Lore" },
    needsitem = "Base.Yoyo;1",
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
    unlocks = "clickevent;7465x9615x0:EventoRafaelPrezioso14;time:50:anim:loot;updateobjective:Questyno_RafaelPrezioso14:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso14_A",
    awardsrep = "LaResistenza;50",
    awardsitem = "Money;100",
    awardstask = "Questyno_RafaelPrezioso15",
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
        needsitem = "Base.Jumper_RoundNeck;1",
        onobtained = "updateobjective;Questyno_RafaelPrezioso15:1:Completed;removeitem;Base.Jumper_RoundNeck;1",
    },{
        guid = "Questyno_RafaelPrezioso15_B",
        text = "IGUI_SFQuest_Questyno_RafaelPrezioso15_B",
        hidden = false,
        needsitem = "Base.Trousers_Denim;1",
        onobtained = "updateobjective;Questyno_RafaelPrezioso15:2:Completed;removeitem;Base.Trousers_Denim;1",
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
    awardstask = "Questyno_RafaelPrezioso16",
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
        oncompleted = "removeclickevent;EventoRafaelPrezioso16;additem;Moveables.DylansClutter01_55;1",
    } },
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso16_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso16_Title",
    unlocks = "clickevent;11228x8859x0:EventoRafaelPrezioso16;time:50:anim:loot;updateobjective:Questyno_RafaelPrezioso16:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso16_A",
    awardsrep = "LaResistenza;100",
    awardsitem = "SWeapons.SalvagedBlade;1",
    awardstask = "Questyno_RafaelPrezioso17",
    completesound = "levelup",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso16_Lore" },
    needsitem = "Moveables.DylansClutter01_55;1",
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
        oncompleted = "removeclickevent;EventoRafaelPrezioso17;additem;Moveables.DylansGardenStuff01_32;1",
    } },
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso17_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso17_Title",
    unlocks = "clickevent;7383x8285x0:EventoRafaelPrezioso17;time:50:anim:loot;updateobjective:Questyno_RafaelPrezioso17:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso17_A",
    awardsrep = "LaResistenza;45",
    awardstask = "Questyno_RafaelPrezioso18",
    completesound = "levelup",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso17_Lore" },
    needsitem = "Moveables.DylansGardenStuff01_32;1",
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
        oncompleted = "removeclickevent;EventoRafaelPrezioso18;additem;Moveables.DylansWallDeco01_10;1",
    } },
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso18_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso18_Title",
    unlocks = "clickevent;8346x11716x0:EventoRafaelPrezioso18;time:50:anim:loot;updateobjective:Questyno_RafaelPrezioso18:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso18_A",
    awardsrep = "LaResistenza;35",
    awardstask = "Questyno_RafaelPrezioso19",
    completesound = "levelup",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso18_Lore" },
    needsitem = "Moveables.DylansWallDeco01_10;1",
    onobtained = "unlockworldevent;Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso18_Complete",
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso18_A_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso18_Title",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso19",
    awardstask = "Questyno_RafaelPrezioso19_A",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso19_Lore" },
    objectives = { {
        guid = "Questyno_RafaelPrezioso19_A",
        text = "IGUI_SFQuest_Questyno_RafaelPrezioso19_A",
        hidden = false,
        oncompleted = "removeclickevent;EventoRafaelPrezioso19;additem;Base.Glasses_Eyepatch_Right;1",
    } },
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso19_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso19_Title",
    unlocks = "clickevent;7338x9663x0:EventoRafaelPrezioso19;time:50:anim:loot;updateobjective:Questyno_RafaelPrezioso19:1:Completed",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso19_A",
    awardsrep = "LaResistenza;50",
    awardsitem = "Money;50",
    awardstask = "Questyno_RafaelPrezioso20",
    completesound = "levelup",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso19_Lore" },
    needsitem = "Base.Glasses_Eyepatch_Right;1",
    onobtained = "unlockworldevent;Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso19_Complete",
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso19_A_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso19_Title",
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
        onobtained = "updateobjective;Questyno_RafaelPrezioso20:1:Completed;removeitem;Base.Suit_Jacket;1",
    },{
        guid = "Questyno_RafaelPrezioso20_B",
        text = "IGUI_SFQuest_Questyno_RafaelPrezioso20_B",
        hidden = false,
        needsitem = "Base.Trousers_Suit;1",
        onobtained = "updateobjective;Questyno_RafaelPrezioso20:2:Completed;removeitem;Base.Trousers_Suit;1",
    }},
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso20_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso20_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso20_A",
    awardsrep = "LaResistenza;80",
    awardstask = "Questyno_RafaelPrezioso21",
    completesound = "levelup",
    dailycode = "Questyno_RafaelPrezioso",
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso20_A_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso20_Title",
    unlocks = "unlockworldevent;Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso20_Complete",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso21",
    awardsrep = "LaResistenza;50",
    awardstask = "Questyno_RafaelPrezioso22",
    completesound = "levelup",
    dailycode = "Questyno_RafaelPrezioso",
    lore = { "IGUI_SFQuest_Questyno_RafaelPrezioso21_Lore" },
    needsitem = "Base.Necklace_DogTag;2",
    onobtained = "unlockworldevent;Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso21_Complete",
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso21_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso21_Title",
    unlockedsound = "QuestUnlocked"
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso22",
    awardsrep = "LaResistenza;30",
    awardstask = "Questyno_RafaelPrezioso23",
    completesound = "levelup",
    dailycode = "Questyno_RafaelPrezioso",
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso22_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso22_Title",
    unlocks = "unlockworldevent;Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso22_Complete",
});

table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RafaelPrezioso23",
    awardsrep = "LaResistenza;150",
    awardsitem = "Money;40",
    awardstask = "Questyno_RafaelPrezioso1",
    completesound = "levelup",
    dailycode = "Questyno_RafaelPrezioso",
    text = "IGUI_SFQuest_Questyno_RafaelPrezioso23_Text",
    texture = "media/textures/Item_RafaelPrezioso.png",
    title = "IGUI_SFQuest_Questyno_RafaelPrezioso23_Title",
    unlocks = "unlockworldevent;Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso23_Complete",
});
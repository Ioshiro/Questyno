require 'SFQuest_Database'

-- Sergente Grif 9331x8640,0
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_Grif",
    square = "9331x8640x0",
    name = "IGUI_SFQuest_Questyno_Grif_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_Grif.png",
})

SFQuest_Database.MannequinPool["9331x8640x0"] = {
    sprite = "location_shop_mall_01_68",
    direction = "W",
    beard = "PointyChin",
    beardcolor = "0.8,0.8,0.8",
    hair = "Recede",
    haircolor = "0.8,0.8,0.8",
    outfit = "SergenteGrif"
}


-- factions for every npc
-- daily/monthly/yearly

table.insert(SFQuest_Database.FactionPool,{ factioncode = "SergenteGrif", name = "IGUI_SFQuest_Questyno_Grif_Name", startrep = 0, minrep = 0, maxtier = 3, tiers = {{tiername = "IGUI_Factions_Daily_Tier1", minrep = 1, barcolor = "red",}, {tiername = "IGUI_Factions_Daily_Tier2", minrep = 100, barcolor = "blue", unlocks = "unlockquest;Questyno_Grif_Intro"},{tiername = "IGUI_Factions_Daily_Tier3", minrep = 100, barcolor = "green", }}});


-- DIALOGHI


--[[                    *** NPC 1: Sergente Grif
                Elenco:
                    intro. Parla con Griff per sbloccare le daily.
                    1. Recupera 1 Base.FirstAidKit (25 rep)
                    2. Recupera 1 Base.Pills (35 rep)
                    3. Recupera 1 Base.PillsSleepingtTablets (35 rep)
                    4. Recupera 1 LabItems.LabSyringe (80 rep)
                    5. Recupera 3 Base.Bandage (50 rep)
                    6. Recupera 1 Base.PillsAntiDep (40 rep)
                    7. Recupera 1 Base.PillsVitamins (30 rep)
                    8. Recupera 1 Base.Antibiotics (40 rep)
                    9. Recupera 1 Base.PillsBeta (40 rep + 30$)
                    10. Recupera 1 Base.FirstAidKit, 1 Base.PillsBeta, 1 Base.Pills, 1 Base.Disinfectant (135 rep)
                    11. Recupera 1 Base.FirstAidKit, 1 Base.PillsVitamns, Base.PillsAntiDep, 1 Base.AlcoholWipes (140 rep + 40$)
                    12. Recupera 1 Base.FirstAidKit,Base.PillsSleepingTablets,LabItems.LabSyringe,Base.CottonBalls (120 rep)
                    13. Recupera 2 Base.CottonBalss (60 rep)
                    14. Recupera 1 Base.Disinfectant (40 rep)
                    15. Recupera 1 Salvietta con Alcool (35 rep)
                    16. Recupera 1 Base.SutureNeedle, 1 Base.SutureNeedeleHolder (250 rep + 30$)
                    17. Recupera 1 Base.SutureNeedle (150 rep, 30$)
                    18. Recupera 5 Base.AlcoholBandage (80 rep)
                    19. Recupera 1 Base.Bandaid (20 rep)
                    20. Recupera 3 Base.Bandaid (80 rep + 25$)
                    21. Recupera 1 Base.Tweezers (50 rep)
                    22. Recupera 1 Base.Splint (25 rep)
                    23. Recupera 1 Base.FirstAidKit (10rep + medikit vuoto)
                    24. Recupera 2 Base.Pills (80 rep + 1 Base.Pills)
                    25. Recupera 1 Base.PillsSleepingTablets (25 rep + 1 Base.PillsSleepingTablets)
                    26. Recupera 10 LabItems.LabSyringe (60 rep + 5 LabItems.LabSyringe)
                    27. Recupera 3 Base.Bandage (50 rep + 50$)
                    28. Recupera 1 Base.PillsAntiDep (40 rep + 1 PynoTweaks.Joint)

]]

-- intro. parla con Griff per sbloccare le daily
table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_Grif_Intro_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_Grif_Intro;addreputation;SergenteGrif;100", text = "IGUI_SFQuest_Questyno_Grif_Intro_Complete_Text"})
table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_Grif1_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_Grif1", optional = true, text = "IGUI_SFQuest_Questyno_Grif1_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_Grif1_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_Grif1_Begin_Text_Declined"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_Grif1_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_Grif1", optional = true, text = "IGUI_SFQuest_Questyno_Grif1_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_Grif1_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_Grif1_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_Grif1_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_Grif1", text = "IGUI_SFQuest_Questyno_Grif1_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_Grif2_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_Grif2", optional = true, text = "IGUI_SFQuest_Questyno_Grif2_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_Grif2_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_Grif2_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_Grif2_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_Grif2", text = "IGUI_SFQuest_Questyno_Grif2_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_Grif3_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_Grif3", optional = true, text = "IGUI_SFQuest_Questyno_Grif3_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_Grif3_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_Grif3_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_Grif3_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_Grif3", text = "IGUI_SFQuest_Questyno_Grif3_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_Grif4_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_Grif4", optional = true, text = "IGUI_SFQuest_Questyno_Grif4_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_Grif4_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_Grif4_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_Grif4_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_Grif4", text = "IGUI_SFQuest_Questyno_Grif4_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_Grif5_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_Grif5", optional = true, text = "IGUI_SFQuest_Questyno_Grif5_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_Grif5_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_Grif5_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_Grif5_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_Grif5", text = "IGUI_SFQuest_Questyno_Grif5_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_Grif6_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_Grif6", optional = true, text = "IGUI_SFQuest_Questyno_Grif6_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_Grif6_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_Grif6_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_Grif6_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_Grif6", text = "IGUI_SFQuest_Questyno_Grif6_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_Grif7_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_Grif7", optional = true, text = "IGUI_SFQuest_Questyno_Grif7_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_Grif7_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_Grif7_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_Grif7_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_Grif7", text = "IGUI_SFQuest_Questyno_Grif7_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_Grif8_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_Grif8", optional = true, text = "IGUI_SFQuest_Questyno_Grif8_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_Grif8_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_Grif8_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_Grif8_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_Grif8", text = "IGUI_SFQuest_Questyno_Grif8_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_Grif9_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_Grif9", optional = true, text = "IGUI_SFQuest_Questyno_Grif9_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_Grif9_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_Grif9_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_Grif9_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_Grif9", text = "IGUI_SFQuest_Questyno_Grif9_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_Grif10_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_Grif10", optional = true, text = "IGUI_SFQuest_Questyno_Grif10_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_Grif10_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_Grif10_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_Grif10_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_Grif10_A", text = "IGUI_SFQuest_Questyno_Grif10_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_Grif11_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_Grif11", optional = true, text = "IGUI_SFQuest_Questyno_Grif11_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_Grif11_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_Grif11_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_Grif11_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_Grif11_A", text = "IGUI_SFQuest_Questyno_Grif11_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_Grif12_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_Grif12", optional = true, text = "IGUI_SFQuest_Questyno_Grif12_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_Grif12_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_Grif12_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_Grif12_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_Grif12_A", text = "IGUI_SFQuest_Questyno_Grif12_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_Grif13_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_Grif13", optional = true, text = "IGUI_SFQuest_Questyno_Grif13_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_Grif13_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_Grif13_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_Grif13_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_Grif13", text = "IGUI_SFQuest_Questyno_Grif13_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_Grif14_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_Grif14", optional = true, text = "IGUI_SFQuest_Questyno_Grif14_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_Grif14_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_Grif14_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_Grif14_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_Grif14", text = "IGUI_SFQuest_Questyno_Grif14_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_Grif15_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_Grif15", optional = true, text = "IGUI_SFQuest_Questyno_Grif15_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_Grif15_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_Grif15_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_Grif15_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_Grif15", text = "IGUI_SFQuest_Questyno_Grif15_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_Grif16_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_Grif16", optional = true, text = "IGUI_SFQuest_Questyno_Grif16_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_Grif16_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_Grif16_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_Grif16_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_Grif16_A", text = "IGUI_SFQuest_Questyno_Grif16_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_Grif17_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_Grif17", optional = true, text = "IGUI_SFQuest_Questyno_Grif17_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_Grif17_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_Grif17_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_Grif17_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_Grif17", text = "IGUI_SFQuest_Questyno_Grif17_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_Grif18_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_Grif18", optional = true, text = "IGUI_SFQuest_Questyno_Grif18_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_Grif18_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_Grif18_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_Grif18_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_Grif18", text = "IGUI_SFQuest_Questyno_Grif18_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_Grif19_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_Grif19", optional = true, text = "IGUI_SFQuest_Questyno_Grif19_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_Grif19_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_Grif19_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_Grif19_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_Grif19", text = "IGUI_SFQuest_Questyno_Grif19_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_Grif20_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_Grif20", optional = true, text = "IGUI_SFQuest_Questyno_Grif20_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_Grif20_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_Grif20_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_Grif20_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_Grif20", text = "IGUI_SFQuest_Questyno_Grif20_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_Grif21_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_Grif21", optional = true, text = "IGUI_SFQuest_Questyno_Grif21_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_Grif21_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_Grif21_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_Grif21_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_Grif21", text = "IGUI_SFQuest_Questyno_Grif21_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_Grif22_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_Grif22", optional = true, text = "IGUI_SFQuest_Questyno_Grif22_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_Grif22_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_Grif22_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_Grif22_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_Grif22", text = "IGUI_SFQuest_Questyno_Grif22_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_Grif23_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_Grif23", optional = true, text = "IGUI_SFQuest_Questyno_Grif23_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_Grif23_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_Grif23_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_Grif23_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_Grif23", text = "IGUI_SFQuest_Questyno_Grif23_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_Grif24_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_Grif24", optional = true, text = "IGUI_SFQuest_Questyno_Grif24_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_Grif24_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_Grif24_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_Grif24_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_Grif24", text = "IGUI_SFQuest_Questyno_Grif24_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_Grif25_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_Grif25", optional = true, text = "IGUI_SFQuest_Questyno_Grif25_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_Grif25_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_Grif25_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_Grif25_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_Grif25", text = "IGUI_SFQuest_Questyno_Grif25_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_Grif26_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_Grif26", optional = true, text = "IGUI_SFQuest_Questyno_Grif26_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_Grif26_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_Grif26_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_Grif26_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_Grif26", text = "IGUI_SFQuest_Questyno_Grif26_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_Grif27_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_Grif27", optional = true, text = "IGUI_SFQuest_Questyno_Grif27_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_Grif27_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_Grif27_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_Grif27_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_Grif27", text = "IGUI_SFQuest_Questyno_Grif27_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_Grif28_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_Grif28", optional = true, text = "IGUI_SFQuest_Questyno_Grif28_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_Grif28_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_Grif28_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_Grif28_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_Grif28", text = "IGUI_SFQuest_Questyno_Grif28_Complete"})


--[[
                                                                                    *** DAILY QUEST SPAWN POINT ***
]]

--[[                    *** NPC 1: Sergente Grif (9331x8640x0)
                Elenco:
                    intro. Parla con Griff per sbloccare le daily.
                    1. Recupera 1 Base.FirstAidKit (50 rep)
                    2. Recupera 1 Base.Pills (60 rep)
                    3. Recupera 1 Base.PillsSleepingtTablets (35 rep)
                    4. Recupera 1 LabItems.LabSyringe (80 rep)
                    5. Recupera 3 Base.Bandage (50 rep)
                    6. Recupera 1 Base.PillsAntiDep (40 rep)
                    7. Recupera 1 Base.PillsVitamins (40 rep)
                    8. Recupera 1 Base.Antibiotics (40 rep)
                    9. Recupera 1 Base.PillsBeta (50 rep + 30$)
                    10. Recupera 1 Base.FirstAidKit, 1 Base.PillsBeta, 1 Base.Pills, 1 Base.Disinfectant (135 rep)
                    11. Recupera 1 Base.FirstAidKit, 1 Base.PillsVitamns, Base.PillsAntiDep, 1 Base.AlcoholWipes (200 rep + 40$)
                    12. Recupera 1 Base.FirstAidKit,Base.PillsSleepingTablets,LabItems.LabSyringe,Base.CottonBalls (120 rep)
                    13. Recupera 2 Base.CottonBalss (75 rep)
                    14. Recupera 1 Base.Disinfectant (40 rep)
                    15. Recupera 1 Salvietta con Alcool (50 rep)
                    16. Recupera 1 Base.SutureNeedle, 1 Base.SutureNeedeleHolder (250 rep + 30$)
                    17. Recupera 1 Base.SutureNeedle (150 rep, 30$)
                    18. Recupera 2 Base.AlcoholBandage (80 rep)
                    19. Recupera 1 Base.Bandaid (20 rep)
                    20. Recupera 3 Base.Bandaid (80 rep + 25$)
                    21. Recupera 1 Base.Tweezers (50 rep)
                    22. Recupera 1 Base.Splint (25 rep)
                    23. Recupera 1 Base.FirstAidKit (25rep)
                    24. Recupera 2 Base.Pills (80 rep + 1 Base.Pills)
                    25. Recupera 1 Base.PillsSleepingTablets (25 rep + 1 Base.PillsSleepingTablets)
                    26. Recupera 10 LabItems.LabSyringe (60 rep + 5 LabItems.LabSyringe)
                    27. Recupera 3 Base.Bandage (50 rep + 50$)
                    28. Recupera 1 Base.PillsAntiDep (40 rep + 1 PynoTweaks.Joint)

]]
local grifIntro = {
    guid = "Questyno_Grif_Intro",

    awardsrep = "SergenteGrif;100", -- REP REWARD
    --awardstask = "Questyno_Grif1", -- TODO: REMOVE WHEN TESTING IS DONE
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_Grif_Intro_Lore" },
    ondone = "randomcodedworldfrompool;Questyno_Grif;Questyno;Grif",
    text = "IGUI_SFQuest_Questyno_Grif_Intro_Text",
    texture = "media/textures/Item_Grif.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_Grif;SFQuest_Questyno_Grif_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_Grif_Intro_Title",
}
table.insert(SFQuest_Database.QuestPool, grifIntro);

local grifQuest1 = {
    guid = "Questyno_Grif1",

    awardsrep = "LaResistenza;50", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_Grif",
    lore = { "IGUI_SFQuest_Questyno_Grif1_Lore" },
    needsitem = "FirstAidKit;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_Grif;SFQuest_Questyno_Grif1_Complete",
    text = "IGUI_SFQuest_Questyno_Grif1_Text",
    texture = "media/textures/Item_Grif.png",
    title = "IGUI_SFQuest_Questyno_Grif1_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, grifQuest1);

local grifQuest2 = {
    guid = "Questyno_Grif2",

    awardsrep = "LaResistenza;60", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_Grif",
    lore = { "IGUI_SFQuest_Questyno_Grif2_Lore" },
    needsitem = "Pills;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_Grif;SFQuest_Questyno_Grif2_Complete",
    text = "IGUI_SFQuest_Questyno_Grif2_Text",
    texture = "media/textures/Item_Grif.png",
    title = "IGUI_SFQuest_Questyno_Grif2_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, grifQuest2);

local grifQuest3 = {
    guid = "Questyno_Grif3",

    awardsrep = "LaResistenza;35", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_Grif",
    lore = { "IGUI_SFQuest_Questyno_Grif3_Lore" },
    needsitem = "PillsSleepingTablets;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_Grif;SFQuest_Questyno_Grif3_Complete",
    text = "IGUI_SFQuest_Questyno_Grif3_Text",
    texture = "media/textures/Item_Grif.png",
    title = "IGUI_SFQuest_Questyno_Grif3_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, grifQuest3);

local grifQuest4 = {
    guid = "Questyno_Grif4",

    awardsrep = "LaResistenza;80", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_Grif",
    lore = { "IGUI_SFQuest_Questyno_Grif4_Lore" },
    needsitem = "LabItems.LabSyringe;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_Grif;SFQuest_Questyno_Grif4_Complete",
    text = "IGUI_SFQuest_Questyno_Grif4_Text",
    texture = "media/textures/Item_Grif.png",
    title = "IGUI_SFQuest_Questyno_Grif4_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, grifQuest4);

local grifQuest5 = {
    guid = "Questyno_Grif5",

    awardsrep = "LaResistenza;50", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_Grif",
    lore = { "IGUI_SFQuest_Questyno_Grif5_Lore" },
    needsitem = "Bandage;3", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_Grif;SFQuest_Questyno_Grif5_Complete",
    text = "IGUI_SFQuest_Questyno_Grif5_Text",
    texture = "media/textures/Item_Grif.png",
    title = "IGUI_SFQuest_Questyno_Grif5_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, grifQuest5);

local grifQuest6 = {
    guid = "Questyno_Grif6",

    awardsrep = "LaResistenza;40", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_Grif",
    lore = { "IGUI_SFQuest_Questyno_Grif6_Lore" },
    needsitem = "PillsAntiDep;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_Grif;SFQuest_Questyno_Grif6_Complete",
    text = "IGUI_SFQuest_Questyno_Grif6_Text",
    texture = "media/textures/Item_Grif.png",
    title = "IGUI_SFQuest_Questyno_Grif6_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, grifQuest6);

local grifQuest7 = {
    guid = "Questyno_Grif7",

    awardsrep = "LaResistenza;40", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_Grif",
    lore = { "IGUI_SFQuest_Questyno_Grif7_Lore" },
    needsitem = "PillsVitamins;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_Grif;SFQuest_Questyno_Grif7_Complete",
    text = "IGUI_SFQuest_Questyno_Grif7_Text",
    texture = "media/textures/Item_Grif.png",
    title = "IGUI_SFQuest_Questyno_Grif7_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, grifQuest7);

local grifQuest8 = {
    guid = "Questyno_Grif8",

    awardsrep = "LaResistenza;40", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_Grif",
    lore = { "IGUI_SFQuest_Questyno_Grif8_Lore" },
    needsitem = "Antibiotics;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_Grif;SFQuest_Questyno_Grif8_Complete",
    text = "IGUI_SFQuest_Questyno_Grif8_Text",
    texture = "media/textures/Item_Grif.png",
    title = "IGUI_SFQuest_Questyno_Grif8_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, grifQuest8);

local grifQuest9 = {
    guid = "Questyno_Grif9",

    awardsrep = "LaResistenza;50", -- REP REWARD
    awardsitem = "Money;30",       -- MONEY REWARD
    completesound = "levelup",
    dailycode = "Questyno_Grif",
    lore = { "IGUI_SFQuest_Questyno_Grif9_Lore" },
    needsitem = "PillsBeta;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_Grif;SFQuest_Questyno_Grif9_Complete",
    text = "IGUI_SFQuest_Questyno_Grif9_Text",
    texture = "media/textures/Item_Grif.png",
    title = "IGUI_SFQuest_Questyno_Grif9_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, grifQuest9);

local grifQuest10 = {
    guid = "Questyno_Grif10",

    awardstask = "Questyno_Grif10_A",
    dailycode = "Questyno_Grif",
    lore = { "IGUI_SFQuest_Questyno_Grif10_Lore" },
    objectives = { {
        guid = "Questyno_Grif10_A",
        text = "IGUI_SFQuest_Questyno_Grif10_A",
        needsitem = "FirstAidKit;1",
        onobtained = "updateobjective;Questyno_Grif10;1;Completed;removeitem;FirstAidKit;1",
        hidden = false,
    }, {
        guid = "Questyno_Grif10_B",
        text = "IGUI_SFQuest_Questyno_Grif10_B",
        needsitem = "PillsBeta;1",
        onobtained = "updateobjective;Questyno_Grif10;2;Completed;removeitem;PillsBeta;1",
        hidden = false,
    }, {
        guid = "Questyno_Grif10_C",
        text = "IGUI_SFQuest_Questyno_Grif10_C",
        needsitem = "Pills;1",
        onobtained = "updateobjective;Questyno_Grif10;3;Completed;removeitem;Pills;1",
        hidden = false,
    }, {
        guid = "Questyno_Grif10_D",
        text = "IGUI_SFQuest_Questyno_Grif10_D",
        needsitem = "Disinfectant;1",
        onobtained = "updateobjective;Questyno_Grif10;4;Completed;removeitem;Disinfectant;1",
        hidden = false,
    } }, -- REQUIRE
    text = "IGUI_SFQuest_Questyno_Grif10_Text",
    texture = "media/textures/Item_Grif.png",
    title = "IGUI_SFQuest_Questyno_Grif10_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, grifQuest10);

local grifQuest10A = {
    guid = "Questyno_Grif10_A",

    awardsrep = "LaResistenza;135", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_Grif",
    lore = { "IGUI_SFQuest_Questyno_Grif10_Lore" },
    unlocks = "unlockworldevent;Questyno_Grif;SFQuest_Questyno_Grif10_Complete",
    text = "IGUI_SFQuest_Questyno_Grif10_A_Text",
    texture = "media/textures/Item_Grif.png",
    title = "IGUI_SFQuest_Questyno_Grif10_Title",
}
table.insert(SFQuest_Database.QuestPool, grifQuest10A);

local grifQuest11 = {
    guid = "Questyno_Grif11",

    awardstask = "Questyno_Grif11_A",
    completesound = "levelup",
    dailycode = "Questyno_Grif",
    lore = { "IGUI_SFQuest_Questyno_Grif11_Lore" },
    objectives = { {
        guid = "Questyno_Grif11_A",
        text = "IGUI_SFQuest_Questyno_Grif11_A",
        needsitem = "FirstAidKit;1",
        onobtained = "updateobjective;Questyno_Grif11;1;Completed;removeitem;FirstAidKit;1",
        hidden = false,
    }, {
        guid = "Questyno_Grif11_B",
        text = "IGUI_SFQuest_Questyno_Grif11_B",
        needsitem = "PillsVitamins;1",
        onobtained = "updateobjective;Questyno_Grif11;2;Completed;removeitem;PillsVitamins;1",
        hidden = false,
    }, {
        guid = "Questyno_Grif11_C",
        text = "IGUI_SFQuest_Questyno_Grif11_C",
        needsitem = "PillsAntiDep;1",
        onobtained = "updateobjective;Questyno_Grif11;3;Completed;removeitem;PillsAntiDep;1",
        hidden = false,
    }, {
        guid = "Questyno_Grif11_D",
        text = "IGUI_SFQuest_Questyno_Grif11_D",
        needsitem = "AlcoholWipes;1",
        onobtained = "updateobjective;Questyno_Grif11;4;Completed;removeitem;AlcoholWipes;1",
        hidden = false,
    } },                    -- REQUIRE
    text = "IGUI_SFQuest_Questyno_Grif11_Text",
    texture = "media/textures/Item_Grif.png", -- ICONA
    title = "IGUI_SFQuest_Questyno_Grif11_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, grifQuest11);

local grifQuest11A = {
    guid = "Questyno_Grif11_A",

    awardsrep = "LaResistenza;200", -- REP REWARD
    awardsitem = "Money;40",        -- MONEY REWARD
    completesound = "levelup",
    dailycode = "Questyno_Grif",
    lore = { "IGUI_SFQuest_Questyno_Grif11_Lore" },
    unlocks = "unlockworldevent;Questyno_Grif;SFQuest_Questyno_Grif11_Complete",
    text = "IGUI_SFQuest_Questyno_Grif11_A_Text",
    texture = "media/textures/Item_Grif.png",
    title = "IGUI_SFQuest_Questyno_Grif11_Title",
}
table.insert(SFQuest_Database.QuestPool, grifQuest11A);

local grifQuest12 = {
    guid = "Questyno_Grif12",

    awardstask = "Questyno_Grif12_A",
    dailycode = "Questyno_Grif",
    lore = { "IGUI_SFQuest_Questyno_Grif12_Lore" },
    objectives = {
        {
            guid = "Questyno_Grif12_A",
            text = "IGUI_SFQuest_Questyno_Grif12_A",
            needsitem = "FirstAidKit;1",
            onobtained = "updateobjective;Questyno_Grif12;1;Completed;removeitem;FirstAidKit;1",
            hidden = false,
        }, {
        guid = "Questyno_Grif12_B",
        text = "IGUI_SFQuest_Questyno_Grif12_B",
        needsitem = "PillsSleepingTablets;1",
        onobtained = "updateobjective;Questyno_Grif12;2;Completed;removeitem;PillsSleepingTablets;1",
        hidden = false,
    }, {
        guid = "Questyno_Grif12_C",
        text = "IGUI_SFQuest_Questyno_Grif12_C",
        needsitem = "LabItems.LabSyringe;1",
        onobtained = "updateobjective;Questyno_Grif12;3;Completed;removeitem;LabItems.LabSyringe;1",
        hidden = false,
    }, {
        guid = "Questyno_Grif12_D",
        text = "IGUI_SFQuest_Questyno_Grif12_D",
        needsitem = "CottonBalls;1",
        onobtained = "updateobjective;Questyno_Grif12;4;Completed;removeitem;CottonBalls;1",
        hidden = false,
    }
    }, -- REQUIRE
    text = "IGUI_SFQuest_Questyno_Grif12_Text",
    texture = "media/textures/Item_Grif.png",
    title = "IGUI_SFQuest_Questyno_Grif12_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, grifQuest12);

local grifQuest12A = {
    guid = "Questyno_Grif12_A",

    awardsrep = "LaResistenza;120", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_Grif",
    lore = { "IGUI_SFQuest_Questyno_Grif12_Lore" },
    unlocks = "unlockworldevent;Questyno_Grif;SFQuest_Questyno_Grif12_Complete",
    text = "IGUI_SFQuest_Questyno_Grif12_A_Text",
    texture = "media/textures/Item_Grif.png",
    title = "IGUI_SFQuest_Questyno_Grif12_Title",
}
table.insert(SFQuest_Database.QuestPool, grifQuest12A);

local grifQuest13 = {
    guid = "Questyno_Grif13",

    awardsrep = "LaResistenza;75", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_Grif",
    lore = { "IGUI_SFQuest_Questyno_Grif13_Lore" },
    needsitem = "CottonBalls;2", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_Grif;SFQuest_Questyno_Grif13_Complete",
    text = "IGUI_SFQuest_Questyno_Grif13_Text",
    texture = "media/textures/Item_Grif.png",
    title = "IGUI_SFQuest_Questyno_Grif13_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, grifQuest13);

local grifQuest14 = {
    guid = "Questyno_Grif14",

    awardsrep = "LaResistenza;40", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_Grif",
    lore = { "IGUI_SFQuest_Questyno_Grif14_Lore" },
    needsitem = "Disinfectant;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_Grif;SFQuest_Questyno_Grif14_Complete",
    text = "IGUI_SFQuest_Questyno_Grif14_Text",
    texture = "media/textures/Item_Grif.png",
    title = "IGUI_SFQuest_Questyno_Grif14_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, grifQuest14);

local grifQuest15 = {
    guid = "Questyno_Grif15",

    awardsrep = "LaResistenza;50", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_Grif",
    lore = { "IGUI_SFQuest_Questyno_Grif15_Lore" },
    needsitem = "AlcoholWipes;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_Grif;SFQuest_Questyno_Grif15_Complete",
    text = "IGUI_SFQuest_Questyno_Grif15_Text",
    texture = "media/textures/Item_Grif.png",
    title = "IGUI_SFQuest_Questyno_Grif15_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, grifQuest15);

local grifQuest16 = {
    guid = "Questyno_Grif16",

    awardstask = "Questyno_Grif16_A",
    completesound = "levelup",
    dailycode = "Questyno_Grif",
    lore = { "IGUI_SFQuest_Questyno_Grif16_Lore" },
    objectives = {
        {
            guid = "Questyno_Grif16_A",
            text = "IGUI_SFQuest_Questyno_Grif16_A",
            needsitem = "SutureNeedle;1",
            onobtained = "updateobjective;Questyno_Grif16;1;Completed;removeitem;SutureNeedle;1",
            hidden = false,
        }, {
        guid = "Questyno_Grif16_B",
        text = "IGUI_SFQuest_Questyno_Grif16_B",
        needsitem = "SutureNeedleHolder;1",
        onobtained = "updateobjective;Questyno_Grif16;2;Completed;removeitem;SutureNeedleHolder;1",
        hidden = false,
    }
    }, -- REQUIRE
    text = "IGUI_SFQuest_Questyno_Grif16_Text",
    texture = "media/textures/Item_Grif.png",
    title = "IGUI_SFQuest_Questyno_Grif16_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, grifQuest16);

local grifQuest16A = {
    guid = "Questyno_Grif16_A",

    awardsrep = "LaResistenza;250", -- REP REWARD
    awardsitem = "Money;30",        -- MONEY REWARD
    completesound = "levelup",
    dailycode = "Questyno_Grif",
    lore = { "IGUI_SFQuest_Questyno_Grif16_Lore" },
    unlocks = "unlockworldevent;Questyno_Grif;SFQuest_Questyno_Grif16_Complete",
    text = "IGUI_SFQuest_Questyno_Grif16_A_Text",
    texture = "media/textures/Item_Grif.png",
    title = "IGUI_SFQuest_Questyno_Grif16_Title",
}
table.insert(SFQuest_Database.QuestPool, grifQuest16A);

local grifQuest17 = {
    guid = "Questyno_Grif17",

    awardsrep = "LaResistenza;150", -- REP REWARD
    awardsitem = "Money;30",        -- MONEY REWARD
    completesound = "levelup",
    dailycode = "Questyno_Grif",
    lore = { "IGUI_SFQuest_Questyno_Grif17_Lore" },
    needsitem = "SutureNeedle;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_Grif;SFQuest_Questyno_Grif17_Complete",
    text = "IGUI_SFQuest_Questyno_Grif17_Text",
    texture = "media/textures/Item_Grif.png",
    title = "IGUI_SFQuest_Questyno_Grif17_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, grifQuest17);

local grifQuest18 = {
    guid = "Questyno_Grif18",

    awardsrep = "LaResistenza;80", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_Grif",
    lore = { "IGUI_SFQuest_Questyno_Grif18_Lore" },
    needsitem = "AlcoholBandage;2", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_Grif;SFQuest_Questyno_Grif18_Complete",
    text = "IGUI_SFQuest_Questyno_Grif18_Text",
    texture = "media/textures/Item_Grif.png",
    title = "IGUI_SFQuest_Questyno_Grif18_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, grifQuest18);

local grifQuest19 = {
    guid = "Questyno_Grif19",

    awardsrep = "LaResistenza;20", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_Grif",
    lore = { "IGUI_SFQuest_Questyno_Grif19_Lore" },
    needsitem = "Bandaid;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_Grif;SFQuest_Questyno_Grif19_Complete",
    text = "IGUI_SFQuest_Questyno_Grif19_Text",
    texture = "media/textures/Item_Grif.png",
    title = "IGUI_SFQuest_Questyno_Grif19_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, grifQuest19);

local grifQuest20 = {
    guid = "Questyno_Grif20",

    awardsrep = "LaResistenza;80", -- REP REWARD
    awardsitem = "Money;25",       -- MONEY REWARD
    completesound = "levelup",
    dailycode = "Questyno_Grif",
    lore = { "IGUI_SFQuest_Questyno_Grif20_Lore" },
    needsitem = "Bandaid;3", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_Grif;SFQuest_Questyno_Grif20_Complete",
    text = "IGUI_SFQuest_Questyno_Grif20_Text",
    texture = "media/textures/Item_Grif.png",
    title = "IGUI_SFQuest_Questyno_Grif20_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, grifQuest20);

local grifQuest21 = {
    guid = "Questyno_Grif21",

    awardsrep = "LaResistenza;50", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_Grif",
    lore = { "IGUI_SFQuest_Questyno_Grif21_Lore" },
    needsitem = "Tweezers;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_Grif;SFQuest_Questyno_Grif21_Complete",
    text = "IGUI_SFQuest_Questyno_Grif21_Text",
    texture = "media/textures/Item_Grif.png",
    title = "IGUI_SFQuest_Questyno_Grif21_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, grifQuest21);

local grifQuest22 = {
    guid = "Questyno_Grif22",

    awardsrep = "LaResistenza;25", -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_Grif",
    lore = { "IGUI_SFQuest_Questyno_Grif22_Lore" },
    needsitem = "Splint;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_Grif;SFQuest_Questyno_Grif22_Complete",
    text = "IGUI_SFQuest_Questyno_Grif22_Text",
    texture = "media/textures/Item_Grif.png",
    title = "IGUI_SFQuest_Questyno_Grif22_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, grifQuest22);

local grifQuest23 = {
    guid = "Questyno_Grif23",

    awardsrep = "LaResistenza;25", -- REP REWARD
    awardsitem = "FirstAidKit;1",
    completesound = "levelup",
    dailycode = "Questyno_Grif",
    lore = { "IGUI_SFQuest_Questyno_Grif23_Lore" },
    needsitem = "FirstAidKit;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_Grif;SFQuest_Questyno_Grif23_Complete",
    text = "IGUI_SFQuest_Questyno_Grif23_Text",
    texture = "media/textures/Item_Grif.png",
    title = "IGUI_SFQuest_Questyno_Grif23_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, grifQuest23);

local grifQuest24 = {
    guid = "Questyno_Grif24",

    awardsrep = "LaResistenza;80", -- REP REWARD
    awardsitem = "Pills;1",        -- MONEY REWARD
    completesound = "levelup",
    dailycode = "Questyno_Grif",
    lore = { "IGUI_SFQuest_Questyno_Grif24_Lore" },
    needsitem = "Pills;2", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_Grif;SFQuest_Questyno_Grif24_Complete",
    text = "IGUI_SFQuest_Questyno_Grif24_Text",
    texture = "media/textures/Item_Grif.png",
    title = "IGUI_SFQuest_Questyno_Grif24_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, grifQuest24);

local grifQuest25 = {
    guid = "Questyno_Grif25",

    awardsrep = "LaResistenza;25",         -- REP REWARD
    awardsitem = "PillsSleepingTablets;1", -- MONEY REWARD
    completesound = "levelup",
    dailycode = "Questyno_Grif",
    lore = { "IGUI_SFQuest_Questyno_Grif25_Lore" },
    needsitem = "PillsSleepingTablets;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_Grif;SFQuest_Questyno_Grif25_Complete",
    text = "IGUI_SFQuest_Questyno_Grif25_Text",
    texture = "media/textures/Item_Grif.png",
    title = "IGUI_SFQuest_Questyno_Grif25_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, grifQuest25);

local grifQuest26 = {
    guid = "Questyno_Grif26",

    awardsrep = "LaResistenza;60",        -- REP REWARD
    awardsitem = "LabItems.LabSyringe;5", -- MONEY REWARD
    completesound = "levelup",
    dailycode = "Questyno_Grif",
    lore = { "IGUI_SFQuest_Questyno_Grif26_Lore" },
    needsitem = "LabItems.LabSyringe;10", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_Grif;SFQuest_Questyno_Grif26_Complete",
    text = "IGUI_SFQuest_Questyno_Grif26_Text",
    texture = "media/textures/Item_Grif.png",
    title = "IGUI_SFQuest_Questyno_Grif26_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, grifQuest26);

local grifQuest27 = {
    guid = "Questyno_Grif27",

    awardsrep = "LaResistenza;50", -- REP REWARD
    awardsitem = "Money;50",       -- MONEY REWARD
    completesound = "levelup",
    dailycode = "Questyno_Grif",
    lore = { "IGUI_SFQuest_Questyno_Grif27_Lore" },
    needsitem = "Bandage;3", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_Grif;SFQuest_Questyno_Grif27_Complete",
    text = "IGUI_SFQuest_Questyno_Grif27_Text",
    texture = "media/textures/Item_Grif.png",
    title = "IGUI_SFQuest_Questyno_Grif27_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, grifQuest27);

local grifQuest28 = {
    guid = "Questyno_Grif28",

    awardsrep = "LaResistenza;40",     -- REP REWARD
    awardsitem = "PynoTweaks.Joint;1;PillsAntiDep;1", -- MONEY REWARD
    completesound = "levelup",
    dailycode = "Questyno_Grif",
    lore = { "IGUI_SFQuest_Questyno_Grif28_Lore" },
    needsitem = "PillsAntiDep;1", -- REQUIRE
    onobtained = "unlockworldevent;Questyno_Grif;SFQuest_Questyno_Grif28_Complete",
    text = "IGUI_SFQuest_Questyno_Grif28_Text",
    texture = "media/textures/Item_Grif.png",
    title = "IGUI_SFQuest_Questyno_Grif28_Title",
    unlockedsound = "QuestUnlocked"
}
table.insert(SFQuest_Database.QuestPool, grifQuest28);

Questyno_Grif = {
    Grif = {
		"Questyno_Grif;SFQuest_Questyno_Grif1_Begin;Questyno_Grif1",
		"Questyno_Grif;SFQuest_Questyno_Grif2_Begin;Questyno_Grif2",
		"Questyno_Grif;SFQuest_Questyno_Grif3_Begin;Questyno_Grif3",
		"Questyno_Grif;SFQuest_Questyno_Grif4_Begin;Questyno_Grif4",
		"Questyno_Grif;SFQuest_Questyno_Grif5_Begin;Questyno_Grif5",
		"Questyno_Grif;SFQuest_Questyno_Grif6_Begin;Questyno_Grif6",
		"Questyno_Grif;SFQuest_Questyno_Grif7_Begin;Questyno_Grif7",
		"Questyno_Grif;SFQuest_Questyno_Grif8_Begin;Questyno_Grif8",
		"Questyno_Grif;SFQuest_Questyno_Grif9_Begin;Questyno_Grif9",
		"Questyno_Grif;SFQuest_Questyno_Grif10_Begin;Questyno_Grif10",
		"Questyno_Grif;SFQuest_Questyno_Grif11_Begin;Questyno_Grif11",
		"Questyno_Grif;SFQuest_Questyno_Grif12_Begin;Questyno_Grif12",
		"Questyno_Grif;SFQuest_Questyno_Grif13_Begin;Questyno_Grif13",
		"Questyno_Grif;SFQuest_Questyno_Grif14_Begin;Questyno_Grif14",
		"Questyno_Grif;SFQuest_Questyno_Grif15_Begin;Questyno_Grif15",
		"Questyno_Grif;SFQuest_Questyno_Grif16_Begin;Questyno_Grif16",
		"Questyno_Grif;SFQuest_Questyno_Grif17_Begin;Questyno_Grif17",
		"Questyno_Grif;SFQuest_Questyno_Grif18_Begin;Questyno_Grif18",
		"Questyno_Grif;SFQuest_Questyno_Grif19_Begin;Questyno_Grif19",
		"Questyno_Grif;SFQuest_Questyno_Grif20_Begin;Questyno_Grif20",
		"Questyno_Grif;SFQuest_Questyno_Grif21_Begin;Questyno_Grif21",
		"Questyno_Grif;SFQuest_Questyno_Grif22_Begin;Questyno_Grif22",
		"Questyno_Grif;SFQuest_Questyno_Grif23_Begin;Questyno_Grif23",
		"Questyno_Grif;SFQuest_Questyno_Grif24_Begin;Questyno_Grif24",
		"Questyno_Grif;SFQuest_Questyno_Grif25_Begin;Questyno_Grif25",
		"Questyno_Grif;SFQuest_Questyno_Grif26_Begin;Questyno_Grif26",
		"Questyno_Grif;SFQuest_Questyno_Grif27_Begin;Questyno_Grif27",
		"Questyno_Grif;SFQuest_Questyno_Grif28_Begin;Questyno_Grif28",
	}
}
SFQuest_Database.RandomEventPool.Questyno = Questyno_Grif;


table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_Grif",
	condition = "notmaxedwithcode;Questyno_Grif;1;hasfactiontier;SergenteGrif;3",
	commands = "randomcodedworldfrompool;Questyno_Grif;Questyno;Grif",
	days = 0,
	frequency = 1
});

table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_Grif" })
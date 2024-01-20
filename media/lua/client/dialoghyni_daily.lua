require 'SFQuest_Database'

--[[                        *** NPC 1: Tony "Lupo" (Spawn Point)
                Totale: 1825PF 350$
                Elenco:
                    intro. Parla con Tony per sbloccare le daily.
                    1. Recupera 1 pacco di .308 (25 rep)
                    2. Recupera 2 pacchi di 9mm (40 rep)
                    3. Recupera 3 fucili a pompa (45 rep + 50$)
                    4. Recupera 1 fucile m16 e 1 caricatore m16 (100 rep)
                    5. Recupera 2 m14 e 2 caricatori m14 (120 rep)
                    6. Recupera 1 pacco di .38 (25 rep)
                    7. Recupera 3 pacchi di 5.56 (150 rep)
                    8. Recupera 1 pacco di .44 (30 rep)
                    9. Recupera 1 MSR700 e 1 pacco .223 (40 rep)
                    10. Recupera 5 pacchi .45, 2 colt 1911 e 2 caricatori (150 rep)
                    11. Recupera 2 fucili a pompa e 2 pacchi di cartucce (150 rep)
                    12. Recupeera 3 molotov (120 rep)
                    13. Recupera 1 molotov (35 rep)
                    14. Recupera 1 doppietta e 2 pacchi di cartucce (120 rep)
                    15. Recupera 1 magnum e 3 pacchi .44 (140 rep)
                    16. Recupera 1 pacco .44, 1 pacco 9mm, 1 pacco .38 e 1 pacco .45 auto (150 rep)
                    17. Recupera 2 pacchi .44 (45 rep)
                    18. Recupera 1 pacco 9mm (20 rep)
                    19. Recupera 1 pacco .308 (35 rep)
                    20. Recupera 1 revolver m625 (35 rep)
                    21. Recupera 1 Desert Eagle (40 rep)
                    22. Recupera 1 Magnum (40 rep)
                    23. Recupera 5 scatole cartucce (200 rep)
]]

-- intro. parla con Lupo per sbloccare le daily
table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_Lupo_Intro_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_Lupo_Intro", text = "IGUI_SFQuest_Questyno_Lupo_Intro_Complete_Text"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_Lupo1_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_Lupo1", optional = true, text = "IGUI_SFQuest_Questyno_Lupo1_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_Lupo1_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_Lupo1_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_Lupo1_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_Lupo1", text = "IGUI_SFQuest_Questyno_Lupo1_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_Lupo2_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_Lupo2", optional = true, text = "IGUI_SFQuest_Questyno_Lupo2_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_Lupo2_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_Lupo2_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_Lupo2_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_Lupo2", text = "IGUI_SFQuest_Questyno_Lupo2_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_Lupo3_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_Lupo3", optional = true, text = "IGUI_SFQuest_Questyno_Lupo3_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_Lupo3_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_Lupo3_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_Lupo3_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_Lupo3", text = "IGUI_SFQuest_Questyno_Lupo3_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_Lupo4_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_Lupo4", optional = true, text = "IGUI_SFQuest_Questyno_Lupo4_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_Lupo4_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_Lupo4_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_Lupo4_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_Lupo4_A", text = "IGUI_SFQuest_Questyno_Lupo4_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_Lupo5_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_Lupo5", optional = true, text = "IGUI_SFQuest_Questyno_Lupo5_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_Lupo5_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_Lupo5_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_Lupo5_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_Lupo5_A", text = "IGUI_SFQuest_Questyno_Lupo5_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_Lupo6_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_Lupo6", optional = true, text = "IGUI_SFQuest_Questyno_Lupo6_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_Lupo6_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_Lupo6_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_Lupo6_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_Lupo6_A", text = "IGUI_SFQuest_Questyno_Lupo6_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_Lupo7_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_Lupo7", optional = true, text = "IGUI_SFQuest_Questyno_Lupo7_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_Lupo7_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_Lupo7_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_Lupo7_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_Lupo7_A", text = "IGUI_SFQuest_Questyno_Lupo7_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_Lupo8_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_Lupo8", optional = true, text = "IGUI_SFQuest_Questyno_Lupo8_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_Lupo8_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_Lupo8_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_Lupo8_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_Lupo8", text = "IGUI_SFQuest_Questyno_Lupo8_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_Lupo9_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_Lupo9", optional = true, text = "IGUI_SFQuest_Questyno_Lupo9_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_Lupo9_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_Lupo9_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_Lupo9_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_Lupo9_A", text = "IGUI_SFQuest_Questyno_Lupo9_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_Lupo10_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_Lupo10", optional = true, text = "IGUI_SFQuest_Questyno_Lupo10_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_Lupo10_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_Lupo10_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_Lupo10_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_Lupo10_A", text = "IGUI_SFQuest_Questyno_Lupo10_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_Lupo11_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_Lupo11", optional = true, text = "IGUI_SFQuest_Questyno_Lupo11_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_Lupo11_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_Lupo11_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_Lupo11_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_Lupo11_A", text = "IGUI_SFQuest_Questyno_Lupo11_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_Lupo12_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_Lupo12", optional = true, text = "IGUI_SFQuest_Questyno_Lupo12_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_Lupo12_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_Lupo12_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_Lupo12_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_Lupo12", text = "IGUI_SFQuest_Questyno_Lupo12_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_Lupo13_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_Lupo13", optional = true, text = "IGUI_SFQuest_Questyno_Lupo13_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_Lupo13_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_Lupo13_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_Lupo13_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_Lupo13", text = "IGUI_SFQuest_Questyno_Lupo13_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_Lupo14_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_Lupo14", optional = true, text = "IGUI_SFQuest_Questyno_Lupo14_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_Lupo14_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_Lupo14_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_Lupo14_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_Lupo14_A", text = "IGUI_SFQuest_Questyno_Lupo14_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_Lupo15_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_Lupo15", optional = true, text = "IGUI_SFQuest_Questyno_Lupo15_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_Lupo15_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_Lupo15_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_Lupo15_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_Lupo15_A", text = "IGUI_SFQuest_Questyno_Lupo15_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_Lupo16_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_Lupo16", optional = true, text = "IGUI_SFQuest_Questyno_Lupo16_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_Lupo16_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_Lupo16_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_Lupo16_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_Lupo16_A", text = "IGUI_SFQuest_Questyno_Lupo16_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_Lupo17_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_Lupo17", optional = true, text = "IGUI_SFQuest_Questyno_Lupo17_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_Lupo17_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_Lupo17_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_Lupo17_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_Lupo17", text = "IGUI_SFQuest_Questyno_Lupo17_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_Lupo18_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_Lupo18", optional = true, text = "IGUI_SFQuest_Questyno_Lupo18_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_Lupo18_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_Lupo18_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_Lupo18_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_Lupo18", text = "IGUI_SFQuest_Questyno_Lupo18_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_Lupo19_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_Lupo19", optional = true, text = "IGUI_SFQuest_Questyno_Lupo19_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_Lupo19_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_Lupo19_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_Lupo19_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_Lupo19", text = "IGUI_SFQuest_Questyno_Lupo19_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_Lupo20_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_Lupo20", optional = true, text = "IGUI_SFQuest_Questyno_Lupo20_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_Lupo20_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_Lupo20_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_Lupo20_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_Lupo20", text = "IGUI_SFQuest_Questyno_Lupo20_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_Lupo21_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_Lupo21", optional = true, text = "IGUI_SFQuest_Questyno_Lupo21_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_Lupo21_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_Lupo21_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_Lupo21_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_Lupo21", text = "IGUI_SFQuest_Questyno_Lupo21_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_Lupo22_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_Lupo22", optional = true, text = "IGUI_SFQuest_Questyno_Lupo22_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_Lupo22_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_Lupo22_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_Lupo22_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_Lupo22", text = "IGUI_SFQuest_Questyno_Lupo22_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_Lupo23_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_Lupo23", optional = true, text = "IGUI_SFQuest_Questyno_Lupo23_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_Lupo23_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_Lupo23_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_Lupo23_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_Lupo23", text = "IGUI_SFQuest_Questyno_Lupo23_Complete"})


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
            *** Angelica Stella ***
            Elenco:
                intro. Parla con Angelica per sbloccare le daily.
                1. Recupare Base.Shoes_Fancy parlando con tile in 10609,10331,0 (25rep + Base.Shovel2)
                2. Recuperare Base.Dress_SmallBlackStrapless parlando con 10629,9903,0 (15rep + Base.DuctTape)
                3. Recuperare Base.Glasses_Sun a 10634,9904,0 (20rep + 40$)
                4. Recuperare Base.Lipstick a 10857,9940,0 (25rep + 40$)
                5. Recuperare Base.Skirt_Short a 8147,11115,1 (20rep + 40$)
                6. Recuperare Base.Dress_Short a 7207,111247,0 (30rep)
                7. Recuperare Base.Skirt_Short a 11884,6909 (40rep + 50$)
                8. Recuperare Base.Skirt_Mini a 11204,8801,1 (50rep + 50$)
                9. Recuperare Base.Dress_Long a 10210,8216,0 (100rep)
                10. Recuperare Base.TightFishnets a 9725,10333,0 (40rep)
                11. Recuperare Base.HairDyeBrown a 9288,10064,0 (40rep)
                12. Recuperare Base.HairDyeBrown a 8144,9687,0 (50rep)
                13. Recuperare Base.Dress_Knees a 8757,6545,0 (70rep + 50$)
                14. Recuperare Base.Dress_Knees a 9719,10537,0 (30rep + 50$)
                15. Recuperare Base.Dress_Knees a 8395,7581,0 (35rep + 80$)
                16. Recuperare Base.Gloves_LongWomenGloves a 9030,11491,0 (50rep)
                17. Recupero Base.Dress_Normal a 7266,8474,1 (30rep, 50$)
                18. Recupero Base.MakeupFoundation a 7016,8535,0 (30rep)
                19. Recupero Base.Tshirt_WhiteTINT;3 a 5143,9463,0 (40rep + 70$)
                20. Recupero Base.Mov_MannequinFemale a 7338,9683,1 (35rep + 50$)
                21. Recupero Base.Necklace_GoldDiamond (40rep + 25$)
]]

-- intro. parla con Angelica per sbloccare le daily
table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_AngelicaStella_Intro_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_AngelicaStella_Intro", text = "IGUI_SFQuest_Questyno_AngelicaStella_Intro_Complete_Text"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_AngelicaStella1_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_AngelicaStella1", optional = true, text = "IGUI_SFQuest_Questyno_AngelicaStella1_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_AngelicaStella1_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_AngelicaStella1_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_AngelicaStella1_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_AngelicaStella1_A", text = "IGUI_SFQuest_Questyno_AngelicaStella1_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_AngelicaStella2_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_AngelicaStella2", optional = true, text = "IGUI_SFQuest_Questyno_AngelicaStella2_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_AngelicaStella2_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_AngelicaStella2_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_AngelicaStella2_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_AngelicaStella2_A", text = "IGUI_SFQuest_Questyno_AngelicaStella2_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_AngelicaStella3_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_AngelicaStella3", optional = true, text = "IGUI_SFQuest_Questyno_AngelicaStella3_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_AngelicaStella3_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_AngelicaStella3_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_AngelicaStella3_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_AngelicaStella3_A", text = "IGUI_SFQuest_Questyno_AngelicaStella3_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_AngelicaStella4_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_AngelicaStella4", optional = true, text = "IGUI_SFQuest_Questyno_AngelicaStella4_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_AngelicaStella4_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_AngelicaStella4_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_AngelicaStella4_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_AngelicaStella4_A", text = "IGUI_SFQuest_Questyno_AngelicaStella4_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_AngelicaStella5_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_AngelicaStella5", optional = true, text = "IGUI_SFQuest_Questyno_AngelicaStella5_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_AngelicaStella5_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_AngelicaStella5_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_AngelicaStella5_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_AngelicaStella5_A", text = "IGUI_SFQuest_Questyno_AngelicaStella5_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_AngelicaStella6_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_AngelicaStella6", optional = true, text = "IGUI_SFQuest_Questyno_AngelicaStella6_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_AngelicaStella6_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_AngelicaStella6_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_AngelicaStella6_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_AngelicaStella6_A", text = "IGUI_SFQuest_Questyno_AngelicaStella6_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_AngelicaStella7_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_AngelicaStella7", optional = true, text = "IGUI_SFQuest_Questyno_AngelicaStella7_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_AngelicaStella7_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_AngelicaStella7_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_AngelicaStella7_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_AngelicaStella7_A", text = "IGUI_SFQuest_Questyno_AngelicaStella7_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_AngelicaStella8_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_AngelicaStella8", optional = true, text = "IGUI_SFQuest_Questyno_AngelicaStella8_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_AngelicaStella8_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_AngelicaStella8_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_AngelicaStella8_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_AngelicaStella8_A", text = "IGUI_SFQuest_Questyno_AngelicaStella8_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_AngelicaStella9_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_AngelicaStella9", optional = true, text = "IGUI_SFQuest_Questyno_AngelicaStella9_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_AngelicaStella9_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_AngelicaStella9_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_AngelicaStella9_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_AngelicaStella9_A", text = "IGUI_SFQuest_Questyno_AngelicaStella9_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_AngelicaStella10_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_AngelicaStella10", optional = true, text = "IGUI_SFQuest_Questyno_AngelicaStella10_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_AngelicaStella10_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_AngelicaStella10_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_AngelicaStella10_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_AngelicaStella10_A", text = "IGUI_SFQuest_Questyno_AngelicaStella10_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_AngelicaStella11_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_AngelicaStella11", optional = true, text = "IGUI_SFQuest_Questyno_AngelicaStella11_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_AngelicaStella11_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_AngelicaStella11_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_AngelicaStella11_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_AngelicaStella11_A", text = "IGUI_SFQuest_Questyno_AngelicaStella11_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_AngelicaStella12_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_AngelicaStella12", optional = true, text = "IGUI_SFQuest_Questyno_AngelicaStella12_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_AngelicaStella12_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_AngelicaStella12_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_AngelicaStella12_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_AngelicaStella12_A", text = "IGUI_SFQuest_Questyno_AngelicaStella12_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_AngelicaStella13_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_AngelicaStella13", optional = true, text = "IGUI_SFQuest_Questyno_AngelicaStella13_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_AngelicaStella13_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_AngelicaStella13_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_AngelicaStella13_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_AngelicaStella13_A", text = "IGUI_SFQuest_Questyno_AngelicaStella13_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_AngelicaStella14_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_AngelicaStella14", optional = true, text = "IGUI_SFQuest_Questyno_AngelicaStella14_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_AngelicaStella14_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_AngelicaStella14_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_AngelicaStella14_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_AngelicaStella14_A", text = "IGUI_SFQuest_Questyno_AngelicaStella14_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_AngelicaStella15_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_AngelicaStella15", optional = true, text = "IGUI_SFQuest_Questyno_AngelicaStella15_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_AngelicaStella15_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_AngelicaStella15_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_AngelicaStella15_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_AngelicaStella15_A", text = "IGUI_SFQuest_Questyno_AngelicaStella15_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_AngelicaStella16_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_AngelicaStella16", optional = true, text = "IGUI_SFQuest_Questyno_AngelicaStella16_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_AngelicaStella16_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_AngelicaStella16_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_AngelicaStella16_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_AngelicaStella16_A", text = "IGUI_SFQuest_Questyno_AngelicaStella16_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_AngelicaStella17_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_AngelicaStella17", optional = true, text = "IGUI_SFQuest_Questyno_AngelicaStella17_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_AngelicaStella17_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_AngelicaStella17_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_AngelicaStella17_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_AngelicaStella17_A", text = "IGUI_SFQuest_Questyno_AngelicaStella17_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_AngelicaStella18_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_AngelicaStella18", optional = true, text = "IGUI_SFQuest_Questyno_AngelicaStella18_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_AngelicaStella18_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_AngelicaStella18_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_AngelicaStella18_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_AngelicaStella18_A", text = "IGUI_SFQuest_Questyno_AngelicaStella18_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_AngelicaStella19_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_AngelicaStella19", optional = true, text = "IGUI_SFQuest_Questyno_AngelicaStella19_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_AngelicaStella19_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_AngelicaStella19_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_AngelicaStella19_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_AngelicaStella19_A", text = "IGUI_SFQuest_Questyno_AngelicaStella19_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_AngelicaStella20_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_AngelicaStella20", optional = true, text = "IGUI_SFQuest_Questyno_AngelicaStella20_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_AngelicaStella20_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_AngelicaStella20_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_AngelicaStella20_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_AngelicaStella20_A", text = "IGUI_SFQuest_Questyno_AngelicaStella20_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_AngelicaStella21_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_AngelicaStella21", optional = true, text = "IGUI_SFQuest_Questyno_AngelicaStella21_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_AngelicaStella21_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_AngelicaStella21_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_AngelicaStella21_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_AngelicaStella21", text = "IGUI_SFQuest_Questyno_AngelicaStella21_Complete"})


--[[
            *** Heather Thomas ***
            Elenco:
                intro. Parla con Heather per sbloccare le daily.
				1. Recuperare Base.DeadRabbit;2 (200rep)
                2. Recuperare Base.DeadRabbit (100rep)
                3. Recuperare TrapCrate;20 (100rep + Spago)
                4. Recuperare Base.TrapBox;10 (150rep + 30$)
				5. Recuperare Base.DeadSquirrel (50rep)
				6. Recuperare Base.Bird;4 (140rep)
                7. Recuperare Base.DeadRabbit (50rep + DehydratedMeatStick;6)
				8. Recuperare Moveables.camping_01_17 (40rep + 50$)
				9. Recuperare Base.Bird;2 (70rep + DehydratedMeatStick;2)
                10. Recuperare Base.DeadSquirrel (100rep + Base.BeefJerky;2)
                11. Recuperare Base.TrapBox;3 (35rep + 20$)
				12. Recuperare Base.TrapCrate;4 (40rep + 20$)
				13. Recuperare Base.Worm;5,Base.Carrots,arming.Potato;2 (150rep)
				14. Recuperare Base.Grasshopper;5,Base.Worm;10 (80rep)
				15. Recuperare Base.DeadRabbit;3 (120rep)
				16. Recuperare Base.DeadSquirrel;10 parlando con (8509,10359,0) (150rep + Base.DeadSquirrel)
				17. Recuperare Base.DeadRabbit;10 parlando con (10936,8488,0) (150rep + Coniglio) 
				18. Recuperare Base.DeadRabbit,Base.Money;5 (40rep + Base.BeefJerky;2) 
				19. Recuperare Base.LeatherStrips;10 (50rep + Scrap Club) 
				20. Recuperare Base.LeatherStrips;5 (30rep) 
				21. Recuperare Base.TrapMouse (100rep) 
				22. Recuperare Base.DeadRabbit;3 (200rep + 50$) 
				23. Parlare con tile (11064,10640,0) (20rep + Base.Salt) 
				
]]

-- intro. parla con Heather per sbloccare le daily
table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_HeatherThomas_Intro_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_HeatherThomas_Intro", text = "IGUI_SFQuest_Questyno_HeatherThomas_Intro_Complete_Text"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_HeatherThomas1_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_HeatherThomas1", optional = true, text = "IGUI_SFQuest_Questyno_HeatherThomas1_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_HeatherThomas1_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_HeatherThomas1_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_HeatherThomas1_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_HeatherThomas1", text = "IGUI_SFQuest_Questyno_HeatherThomas1_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_HeatherThomas2_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_HeatherThomas2", optional = true, text = "IGUI_SFQuest_Questyno_HeatherThomas2_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_HeatherThomas2_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_HeatherThomas2_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_HeatherThomas2_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_HeatherThomas2", text = "IGUI_SFQuest_Questyno_HeatherThomas2_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_HeatherThomas3_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_HeatherThomas3", optional = true, text = "IGUI_SFQuest_Questyno_HeatherThomas3_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_HeatherThomas3_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_HeatherThomas3_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_HeatherThomas3_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_HeatherThomas3", text = "IGUI_SFQuest_Questyno_HeatherThomas3_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_HeatherThomas4_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_HeatherThomas4", optional = true, text = "IGUI_SFQuest_Questyno_HeatherThomas4_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_HeatherThomas4_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_HeatherThomas4_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_HeatherThomas4_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_HeatherThomas4", text = "IGUI_SFQuest_Questyno_HeatherThomas4_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_HeatherThomas5_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_HeatherThomas5", optional = true, text = "IGUI_SFQuest_Questyno_HeatherThomas5_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_HeatherThomas5_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_HeatherThomas5_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_HeatherThomas5_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_HeatherThomas5", text = "IGUI_SFQuest_Questyno_HeatherThomas5_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_HeatherThomas6_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_HeatherThomas6", optional = true, text = "IGUI_SFQuest_Questyno_HeatherThomas6_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_HeatherThomas6_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_HeatherThomas6_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_HeatherThomas6_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_HeatherThomas6", text = "IGUI_SFQuest_Questyno_HeatherThomas6_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_HeatherThomas7_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_HeatherThomas7", optional = true, text = "IGUI_SFQuest_Questyno_HeatherThomas7_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_HeatherThomas7_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_HeatherThomas7_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_HeatherThomas7_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_HeatherThomas7", text = "IGUI_SFQuest_Questyno_HeatherThomas7_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_HeatherThomas8_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_HeatherThomas8", optional = true, text = "IGUI_SFQuest_Questyno_HeatherThomas8_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_HeatherThomas8_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_HeatherThomas8_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_HeatherThomas8_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_HeatherThomas8_A", text = "IGUI_SFQuest_Questyno_HeatherThomas8_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_HeatherThomas9_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_HeatherThomas9", optional = true, text = "IGUI_SFQuest_Questyno_HeatherThomas9_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_HeatherThomas9_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_HeatherThomas9_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_HeatherThomas9_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_HeatherThomas9", text = "IGUI_SFQuest_Questyno_HeatherThomas9_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_HeatherThomas10_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_HeatherThomas10", optional = true, text = "IGUI_SFQuest_Questyno_HeatherThomas10_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_HeatherThomas10_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_HeatherThomas10_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_HeatherThomas10_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_HeatherThomas10", text = "IGUI_SFQuest_Questyno_HeatherThomas10_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_HeatherThomas11_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_HeatherThomas11", optional = true, text = "IGUI_SFQuest_Questyno_HeatherThomas11_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_HeatherThomas11_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_HeatherThomas11_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_HeatherThomas11_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_HeatherThomas11", text = "IGUI_SFQuest_Questyno_HeatherThomas11_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_HeatherThomas12_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_HeatherThomas12", optional = true, text = "IGUI_SFQuest_Questyno_HeatherThomas12_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_HeatherThomas12_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_HeatherThomas12_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_HeatherThomas12_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_HeatherThomas12", text = "IGUI_SFQuest_Questyno_HeatherThomas12_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_HeatherThomas13_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_HeatherThomas13", optional = true, text = "IGUI_SFQuest_Questyno_HeatherThomas13_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_HeatherThomas13_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_HeatherThomas13_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_HeatherThomas13_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_HeatherThomas13_A", text = "IGUI_SFQuest_Questyno_HeatherThomas13_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_HeatherThomas14_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_HeatherThomas14", optional = true, text = "IGUI_SFQuest_Questyno_HeatherThomas14_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_HeatherThomas14_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_HeatherThomas14_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_HeatherThomas14_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_HeatherThomas14_A", text = "IGUI_SFQuest_Questyno_HeatherThomas14_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_HeatherThomas15_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_HeatherThomas15", optional = true, text = "IGUI_SFQuest_Questyno_HeatherThomas15_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_HeatherThomas15_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_HeatherThomas15_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_HeatherThomas15_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_HeatherThomas15", text = "IGUI_SFQuest_Questyno_HeatherThomas15_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_HeatherThomas16_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_HeatherThomas16", optional = true, text = "IGUI_SFQuest_Questyno_HeatherThomas16_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_HeatherThomas16_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_HeatherThomas16_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_HeatherThomas16_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_HeatherThomas16_A", text = "IGUI_SFQuest_Questyno_HeatherThomas16_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_HeatherThomas17_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_HeatherThomas17", optional = true, text = "IGUI_SFQuest_Questyno_HeatherThomas17_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_HeatherThomas17_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_HeatherThomas17_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_HeatherThomas17_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_HeatherThomas17_A", text = "IGUI_SFQuest_Questyno_HeatherThomas17_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_HeatherThomas18_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_HeatherThomas18", optional = true, text = "IGUI_SFQuest_Questyno_HeatherThomas18_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_HeatherThomas18_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_HeatherThomas18_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_HeatherThomas18_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_HeatherThomas18_A", text = "IGUI_SFQuest_Questyno_HeatherThomas18_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_HeatherThomas19_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_HeatherThomas19", optional = true, text = "IGUI_SFQuest_Questyno_HeatherThomas19_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_HeatherThomas19_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_HeatherThomas19_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_HeatherThomas19_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_HeatherThomas19", text = "IGUI_SFQuest_Questyno_HeatherThomas19_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_HeatherThomas20_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_HeatherThomas20", optional = true, text = "IGUI_SFQuest_Questyno_HeatherThomas20_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_HeatherThomas20_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_HeatherThomas20_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_HeatherThomas20_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_HeatherThomas20", text = "IGUI_SFQuest_Questyno_HeatherThomas20_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_HeatherThomas21_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_HeatherThomas21", optional = true, text = "IGUI_SFQuest_Questyno_HeatherThomas21_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_HeatherThomas21_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_HeatherThomas21_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_HeatherThomas21_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_HeatherThomas21", text = "IGUI_SFQuest_Questyno_HeatherThomas21_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_HeatherThomas22_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_HeatherThomas22", optional = true, text = "IGUI_SFQuest_Questyno_HeatherThomas22_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_HeatherThomas22_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_HeatherThomas22_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_HeatherThomas22_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_HeatherThomas22", text = "IGUI_SFQuest_Questyno_HeatherThomas22_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_HeatherThomas23_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_HeatherThomas23", optional = true, text = "IGUI_SFQuest_Questyno_HeatherThomas23_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_HeatherThomas23_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_HeatherThomas23_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_HeatherThomas23_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_HeatherThomas23", text = "IGUI_SFQuest_Questyno_HeatherThomas23_Complete"})

--[[
            *** Elia Rima ***
            Elenco:
                intro. Parla con Elia per sbloccare le daily.
				1. Recuperare Base.BookCarpentry1,Base.BookCooking1,Base.BookElectrician2 (150rep + 10$)
				2. Recuperare Base.BookCarpentry2,Base.BookCooking3,Base.BookForaging1 (120rep + 10$)
				3. Recuperare Base.BookMechanic2,Base.BookMetalWelding1 (100rep + 10$)
				4. Recuperare Base.BookMechanic3,Base.BookFirstAid1,Base.BookFishing1 (120rep)
				5. Recuperare Base.BookFarming2,Base.BookFirstAid3,Base.BookFishing2 (100rep + 10$)
				6. Recuperare Base.BookFarming4,Base.BookTrapping4,Base.BookForaging4 (150rep)
				7. Recuperare Base.ElectronicsMag4,Base.FarmingMag1,Base.FishingMag2 parlando con (10611,10363,0) (50rep + 15$)
				8. Recuperare Base.BookCarpentry5,Base.BookFarming5,Base.BookFirstAid5,Base.BookMechanic5,Base.BookMetalWelding5 parlando con (10611,10366,0) (40rep + 15$)
				9. Recuperare Base.BookCarpentry3,Base.BookFarming2,Base.BookFirstAid1,Base.BookMechanic4,Base.BookMetalWelding5,Base.BookFishing4,Base.TVMagazine,Base.Book;5,Base.ElectronicsMag4 parlando con (6932,8127,0) (40rep + Give Item Base.ElectronicsMag4,Book;2)
				10. Recuperare Base.BookFarming1,Base.BookFarming2,Base.BookFarming3,Base.BookFarming4,Base.BookFarming5 (200rep + 20$)
				11. Recuperare Base.BookElectrician1, Base.BookElectrician2,Base.BookElectrician3, Base.BookElectrician4,Base.BookElectrician5 (180rep + 20$)
				12. Parlare con (11354,6769,0) (40rep + Base.HerbalistMag)
				13. Recuperare Base.BookFishing3,Base.BookMetalWelding2,Base.BookCarpentry4,Base.BookTrapping2 (100rep)
				14. Recuperare Base.BookFishing4,Base.BookMetalWelding1,Base.BookCarpentry2,Base.BookTrapping5 (120rep)
				15. Recuperare Base.BookForaging4,Base.BookMechanic1,Base.BookCarpentry2,BaseBookFarming5 (100rep)
				16. Recuperare Base.HuntingMag1,Base.HuntingMag2 parlando con (TODO) (50rep)
				17. Recuperare Base.FishingMag1,Base.FishingMag2 parlando con (8086,11513,0) (50rep)
				18. Recuperare Base.ElectronicsMag1,Base.ElectronicsMag2,Base.ElectronicsMag3 parlando con (10611,9983,0) (50rep + 30$)
				19. Recuperare Base.SheetPaper2, Base.Crayons (70rep)
				20. Recuperare Recupero Base.Journal;2 (60rep)
				21. Recuperare Base.Journal parlando con (11192,6713,0) (100rep + 40$)
				22. Recuperare Base.BookCarpentry1 (30rep)
				23. Recuperare Base.BookTrapping1 (35rep)
]]

-- intro. parla con Elia per sbloccare le daily
table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_EliaRima_Intro_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_EliaRima_Intro", text = "IGUI_SFQuest_Questyno_EliaRima_Intro_Complete_Text"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_EliaRima1_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_EliaRima1", optional = true, text = "IGUI_SFQuest_Questyno_EliaRima1_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_EliaRima1_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_EliaRima1_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_EliaRima1_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_EliaRima1_A", text = "IGUI_SFQuest_Questyno_EliaRima1_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_EliaRima2_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_EliaRima2", optional = true, text = "IGUI_SFQuest_Questyno_EliaRima2_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_EliaRima2_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_EliaRima2_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_EliaRima2_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_EliaRima2_A", text = "IGUI_SFQuest_Questyno_EliaRima2_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_EliaRima3_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_EliaRima3", optional = true, text = "IGUI_SFQuest_Questyno_EliaRima3_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_EliaRima3_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_EliaRima3_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_EliaRima3_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_EliaRima3_A", text = "IGUI_SFQuest_Questyno_EliaRima3_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_EliaRima4_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_EliaRima4", optional = true, text = "IGUI_SFQuest_Questyno_EliaRima4_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_EliaRima4_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_EliaRima4_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_EliaRima4_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_EliaRima4_A", text = "IGUI_SFQuest_Questyno_EliaRima4_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_EliaRima5_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_EliaRima5", optional = true, text = "IGUI_SFQuest_Questyno_EliaRima5_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_EliaRima5_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_EliaRima5_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_EliaRima5_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_EliaRima5_A", text = "IGUI_SFQuest_Questyno_EliaRima5_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_EliaRima6_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_EliaRima6", optional = true, text = "IGUI_SFQuest_Questyno_EliaRima6_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_EliaRima6_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_EliaRima6_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_EliaRima6_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_EliaRima6_A", text = "IGUI_SFQuest_Questyno_EliaRima6_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_EliaRima7_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_EliaRima7", optional = true, text = "IGUI_SFQuest_Questyno_EliaRima7_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_EliaRima7_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_EliaRima7_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_EliaRima7_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_EliaRima7_B", text = "IGUI_SFQuest_Questyno_EliaRima7_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_EliaRima8_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_EliaRima8", optional = true, text = "IGUI_SFQuest_Questyno_EliaRima8_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_EliaRima8_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_EliaRima8_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_EliaRima8_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_EliaRima8_B", text = "IGUI_SFQuest_Questyno_EliaRima8_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_EliaRima9_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_EliaRima9", optional = true, text = "IGUI_SFQuest_Questyno_EliaRima9_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_EliaRima9_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_EliaRima9_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_EliaRima9_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_EliaRima9_B", text = "IGUI_SFQuest_Questyno_EliaRima9_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_EliaRima10_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_EliaRima10", optional = true, text = "IGUI_SFQuest_Questyno_EliaRima10_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_EliaRima10_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_EliaRima10_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_EliaRima10_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_EliaRima10_A", text = "IGUI_SFQuest_Questyno_EliaRima10_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_EliaRima11_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_EliaRima11", optional = true, text = "IGUI_SFQuest_Questyno_EliaRima11_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_EliaRima11_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_EliaRima11_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_EliaRima11_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_EliaRima11_A", text = "IGUI_SFQuest_Questyno_EliaRima11_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_EliaRima12_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_EliaRima12", optional = true, text = "IGUI_SFQuest_Questyno_EliaRima12_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_EliaRima12_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_EliaRima12_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_EliaRima12_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_EliaRima12_A", text = "IGUI_SFQuest_Questyno_EliaRima12_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_EliaRima13_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_EliaRima13", optional = true, text = "IGUI_SFQuest_Questyno_EliaRima13_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_EliaRima13_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_EliaRima13_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_EliaRima13_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_EliaRima13_A", text = "IGUI_SFQuest_Questyno_EliaRima13_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_EliaRima14_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_EliaRima14", optional = true, text = "IGUI_SFQuest_Questyno_EliaRima14_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_EliaRima14_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_EliaRima14_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_EliaRima14_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_EliaRima14_A", text = "IGUI_SFQuest_Questyno_EliaRima14_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_EliaRima15_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_EliaRima15", optional = true, text = "IGUI_SFQuest_Questyno_EliaRima15_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_EliaRima15_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_EliaRima15_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_EliaRima15_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_EliaRima15_A", text = "IGUI_SFQuest_Questyno_EliaRima15_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_EliaRima16_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_EliaRima16", optional = true, text = "IGUI_SFQuest_Questyno_EliaRima16_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_EliaRima16_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_EliaRima16_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_EliaRima16_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_EliaRima16_B", text = "IGUI_SFQuest_Questyno_EliaRima16_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_EliaRima17_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_EliaRima17", optional = true, text = "IGUI_SFQuest_Questyno_EliaRima17_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_EliaRima17_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_EliaRima17_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_EliaRima17_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_EliaRima17_B", text = "IGUI_SFQuest_Questyno_EliaRima17_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_EliaRima18_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_EliaRima18", optional = true, text = "IGUI_SFQuest_Questyno_EliaRima18_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_EliaRima18_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_EliaRima18_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_EliaRima18_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_EliaRima18_B", text = "IGUI_SFQuest_Questyno_EliaRima18_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_EliaRima19_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_EliaRima19", optional = true, text = "IGUI_SFQuest_Questyno_EliaRima19_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_EliaRima19_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_EliaRima19_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_EliaRima19_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_EliaRima19_A", text = "IGUI_SFQuest_Questyno_EliaRima19_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_EliaRima20_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_EliaRima20", optional = true, text = "IGUI_SFQuest_Questyno_EliaRima20_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_EliaRima20_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_EliaRima20_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_EliaRima20_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_EliaRima20", text = "IGUI_SFQuest_Questyno_EliaRima20_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_EliaRima21_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_EliaRima21", optional = true, text = "IGUI_SFQuest_Questyno_EliaRima21_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_EliaRima21_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_EliaRima21_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_EliaRima21_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_EliaRima21_A", text = "IGUI_SFQuest_Questyno_EliaRima21_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_EliaRima22_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_EliaRima22", optional = true, text = "IGUI_SFQuest_Questyno_EliaRima22_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_EliaRima22_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_EliaRima22_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_EliaRima22_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_EliaRima22", text = "IGUI_SFQuest_Questyno_EliaRima22_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_EliaRima23_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_EliaRima23", optional = true, text = "IGUI_SFQuest_Questyno_EliaRima23_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_EliaRima23_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_EliaRima23_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_EliaRima23_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_EliaRima23", text = "IGUI_SFQuest_Questyno_EliaRima23_Complete"})

--[[
            *** Bob Repair ***
            Elenco:
                intro. Parla con Bob per sbloccare le daily.
				1. Recuperare Base.SmallSheetMetal;2 (40rep)
				2. Recuperare Base.SheetMetal;2 (120rep + Base.ScrapVest)
				3. Recuperare Sweapons.GearMace parlando con (11599,9788,0) (100rep + 20$)
				4. Recuperare Base.ElectronicsScrap;15,Base.ElectricWire;2,Base.SheetMetal (140rep)
				5. Recuperare Base.ElectronicsScrap;20 (120rep)
				6. Recuperare Base.ElectronicsScrap;10,Base.Battery;2,Radio.RadioTransmitter;2 (150rep + SWeapons.TireIronAxe)
				7. Recuperare Base.Generator parlando con (7183,9601,0) (50rep + 30$)
				8. Recuperare Base.ElectricWire;5 (40rep + Base.Ham)
				9. Recuperare Base.ScrapMetal;4,Base.ElectronicsScrap;16 (60rep)
				10. Recuperare Base.EngineParts;2 (150rep)
				11. Recuperare Base.MetalPipe (100rep)
				12. Recuperare Base.UnusableMetal;4 (30rep + Base.ScrapKilt)
				13. Recuperare Base.ElectronicsMag1 parlando con (9767,11179,0) (100rep)
				14. Recuperare WaterBottleFull (30rep)
				15. Recuperare Base.SheetMetal;10,Base.EngineParts;10,Base.ElectronicsScrap;10,Base.UnusableMetal;10 parlando con (8261,7507,0) (50rep + Base.SheetMetal;2,Base.EngineParts;2)
				16. Recuperare Base.ElectronicsScrap;20 (50rep)
				17. Recuperare Base.Wrench parlando con (8308,11182,0) (50rep)
				18. Recuperare Base.SheetPaper2 parlando con (7136,9624,0) (50rep + 25$)
				19. Recuperare Base.MetalPipe (35rep)
				20. Recuperare Base.ScrapMetal;15 (70rep)
				21. Recuperare Base.ScrapMetal;20 (100rep)
				22. Recuperare Base.PipeWrench parlando con (8305,11180,0) (50rep + Base.PipeWrench)
				23. Recuperare Base.ScrapMetal;6 (70rep)
]]

-- intro. parla con Bob per sbloccare le daily
table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_BobRepair_Intro_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_BobRepair_Intro", text = "IGUI_SFQuest_Questyno_BobRepair_Intro_Complete_Text"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_BobRepair1_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_BobRepair1", optional = true, text = "IGUI_SFQuest_Questyno_BobRepair1_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_BobRepair1_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_BobRepair1_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_BobRepair1_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_BobRepair1", text = "IGUI_SFQuest_Questyno_BobRepair1_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_BobRepair2_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_BobRepair2", optional = true, text = "IGUI_SFQuest_Questyno_BobRepair2_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_BobRepair2_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_BobRepair2_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_BobRepair2_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_BobRepair2", text = "IGUI_SFQuest_Questyno_BobRepair2_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_BobRepair3_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_BobRepair3", optional = true, text = "IGUI_SFQuest_Questyno_BobRepair3_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_BobRepair3_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_BobRepair3_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_BobRepair3_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_BobRepair3_A", text = "IGUI_SFQuest_Questyno_BobRepair3_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_BobRepair4_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_BobRepair4", optional = true, text = "IGUI_SFQuest_Questyno_BobRepair4_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_BobRepair4_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_BobRepair4_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_BobRepair4_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_BobRepair4_A", text = "IGUI_SFQuest_Questyno_BobRepair4_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_BobRepair5_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_BobRepair5", optional = true, text = "IGUI_SFQuest_Questyno_BobRepair5_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_BobRepair5_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_BobRepair5_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_BobRepair5_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_BobRepair5", text = "IGUI_SFQuest_Questyno_BobRepair5_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_BobRepair6_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_BobRepair6", optional = true, text = "IGUI_SFQuest_Questyno_BobRepair6_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_BobRepair6_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_BobRepair6_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_BobRepair6_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_BobRepair6_A", text = "IGUI_SFQuest_Questyno_BobRepair6_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_BobRepair7_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_BobRepair7", optional = true, text = "IGUI_SFQuest_Questyno_BobRepair7_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_BobRepair7_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_BobRepair7_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_BobRepair7_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_BobRepair7_A", text = "IGUI_SFQuest_Questyno_BobRepair7_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_BobRepair8_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_BobRepair8", optional = true, text = "IGUI_SFQuest_Questyno_BobRepair8_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_BobRepair8_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_BobRepair8_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_BobRepair8_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_BobRepair8", text = "IGUI_SFQuest_Questyno_BobRepair8_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_BobRepair9_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_BobRepair9", optional = true, text = "IGUI_SFQuest_Questyno_BobRepair9_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_BobRepair9_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_BobRepair9_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_BobRepair9_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_BobRepair9_A", text = "IGUI_SFQuest_Questyno_BobRepair9_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_BobRepair10_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_BobRepair10", optional = true, text = "IGUI_SFQuest_Questyno_BobRepair10_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_BobRepair10_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_BobRepair10_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_BobRepair10_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_BobRepair10", text = "IGUI_SFQuest_Questyno_BobRepair10_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_BobRepair11_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_BobRepair11", optional = true, text = "IGUI_SFQuest_Questyno_BobRepair11_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_BobRepair11_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_BobRepair11_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_BobRepair11_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_BobRepair11", text = "IGUI_SFQuest_Questyno_BobRepair11_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_BobRepair12_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_BobRepair12", optional = true, text = "IGUI_SFQuest_Questyno_BobRepair12_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_BobRepair12_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_BobRepair12_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_BobRepair12_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_BobRepair12", text = "IGUI_SFQuest_Questyno_BobRepair12_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_BobRepair13_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_BobRepair13", optional = true, text = "IGUI_SFQuest_Questyno_BobRepair13_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_BobRepair13_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_BobRepair13_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_BobRepair13_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_BobRepair13_A", text = "IGUI_SFQuest_Questyno_BobRepair13_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_BobRepair14_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_BobRepair14", optional = true, text = "IGUI_SFQuest_Questyno_BobRepair14_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_BobRepair14_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_BobRepair14_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_BobRepair14_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_BobRepair14", text = "IGUI_SFQuest_Questyno_BobRepair14_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_BobRepair15_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_BobRepair15", optional = true, text = "IGUI_SFQuest_Questyno_BobRepair15_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_BobRepair15_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_BobRepair15_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_BobRepair15_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_BobRepair15_B", text = "IGUI_SFQuest_Questyno_BobRepair15_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_BobRepair16_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_BobRepair16", optional = true, text = "IGUI_SFQuest_Questyno_BobRepair16_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_BobRepair16_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_BobRepair16_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_BobRepair16_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_BobRepair16", text = "IGUI_SFQuest_Questyno_BobRepair16_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_BobRepair17_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_BobRepair17", optional = true, text = "IGUI_SFQuest_Questyno_BobRepair17_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_BobRepair17_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_BobRepair17_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_BobRepair17_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_BobRepair17_A", text = "IGUI_SFQuest_Questyno_BobRepair17_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_BobRepair18_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_BobRepair18", optional = true, text = "IGUI_SFQuest_Questyno_BobRepair18_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_BobRepair18_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_BobRepair18_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_BobRepair18_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_BobRepair18_A", text = "IGUI_SFQuest_Questyno_BobRepair18_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_BobRepair19_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_BobRepair19", optional = true, text = "IGUI_SFQuest_Questyno_BobRepair19_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_BobRepair19_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_BobRepair19_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_BobRepair19_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_BobRepair19", text = "IGUI_SFQuest_Questyno_BobRepair19_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_BobRepair20_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_BobRepair20", optional = true, text = "IGUI_SFQuest_Questyno_BobRepair20_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_BobRepair20_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_BobRepair20_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_BobRepair20_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_BobRepair20", text = "IGUI_SFQuest_Questyno_BobRepair20_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_BobRepair21_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_BobRepair21", optional = true, text = "IGUI_SFQuest_Questyno_BobRepair21_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_BobRepair21_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_BobRepair21_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_BobRepair21_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_BobRepair21", text = "IGUI_SFQuest_Questyno_BobRepair21_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_BobRepair22_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_BobRepair22", optional = true, text = "IGUI_SFQuest_Questyno_BobRepair22_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_BobRepair22_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_BobRepair22_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_BobRepair22_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_BobRepair22_A", text = "IGUI_SFQuest_Questyno_BobRepair22_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_BobRepair23_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_BobRepair23", optional = true, text = "IGUI_SFQuest_Questyno_BobRepair23_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_BobRepair23_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_BobRepair23_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_BobRepair23_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_BobRepair23", text = "IGUI_SFQuest_Questyno_BobRepair23_Complete"})  

--[[
            *** Mike Pozzo ***
            Elenco:
                intro. Parla con Mike Pozzo per sbloccare le daily.
				1. Recuperare Base.PotOfSoupRecipe (25rep + 10$ + Base.Pot)
				2. Recuperare Base.PanFriedVegetables (30rep + 15$ + Base.Pan)
				3. Recuperare farming.Cabbage (100rep + 20$)
				4. Recuperare Base.Salad (80rep + Base.Bowl)
				5. Recuperare Base.Butter parlando con (8145,11482,0) (35rep + 50$)
				6. Recuperare Base.Hotsauce,Base.Pepper,Base.FishRoe parlando con (9685,10570,0) (50rep + Base.SushiEgg)
				7. Recuperare Base.Rabbitmeat (anche 25%) (50rep + Base.Burger)
				8. Recuperare Base.Salt,Base.Flour,Base.Yeast parlando con (8403,7621,0) (40rep + Base.Baguette)
				9. Recuperare Base.GridlePan (60rep)
				10. Recuperare Base.Saucepan (50rep)
				11. Recuperare Base.KitchenKnife,Base.BreadKnife,Base.ButterKnife (100rep)
				12. Recuperare Base.Cereal;2 parlando con (7373,9734,0) (30rep + Base.Sugar)
				13. Recuperare Base.BeerCan (150rep)
				14. Recuperare Base.WaterBottleFull (30rep)
				15. Recuperare Base.CannedCornedBeef;2,Base.TVDinner;3,Base.CannedChili;3,Base.CandyPackage parlando con (8192,7516,0) (50rep + Base.TVDinner)
				16. Recuperare Base.Lard parlando con (7244,8179,0) (35rep + Base.Cheese,Base.DriedChickpeas)
				17. Recuperare 35$ (50rep + Base.Butter)
				18. Recuperare Uova;4 parlando con (6130,8757,0) (25rep + Base.PieBlueberry)
				19. Recuperare Base.Spoon;3 (50rep + 20$)
				20. Recuperare Base.PanFriedVegetables (100rep + Base.Pan)
				21. Recuperare Base.PotOfSoupRecipe (25rep + Base.Pot)
				22. Recuperare Base.CleaningLiquid2 (100rep + 20$)
				23. Recuperare Base.RoastingPan (70rep + Base.Smallanimalmeat)
				24. Recuperare Base.Fork;3 (100rep + 20$)
]]

-- intro. parla con Mike Pozzo per sbloccare le daily
table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_MikePozzo_Intro_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_MikePozzo_Intro", text = "IGUI_SFQuest_Questyno_MikePozzo_Intro_Complete_Text"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_MikePozzo1_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_MikePozzo1", optional = true, text = "IGUI_SFQuest_Questyno_MikePozzo1_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_MikePozzo1_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_MikePozzo1_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_MikePozzo1_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_MikePozzo1", text = "IGUI_SFQuest_Questyno_MikePozzo1_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_MikePozzo2_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_MikePozzo2", optional = true, text = "IGUI_SFQuest_Questyno_MikePozzo2_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_MikePozzo2_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_MikePozzo2_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_MikePozzo2_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_MikePozzo2", text = "IGUI_SFQuest_Questyno_MikePozzo2_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_MikePozzo3_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_MikePozzo3", optional = true, text = "IGUI_SFQuest_Questyno_MikePozzo3_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_MikePozzo3_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_MikePozzo3_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_MikePozzo3_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_MikePozzo3", text = "IGUI_SFQuest_Questyno_MikePozzo3_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_MikePozzo4_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_MikePozzo4", optional = true, text = "IGUI_SFQuest_Questyno_MikePozzo4_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_MikePozzo4_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_MikePozzo4_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_MikePozzo4_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_MikePozzo4", text = "IGUI_SFQuest_Questyno_MikePozzo4_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_MikePozzo5_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_MikePozzo5", optional = true, text = "IGUI_SFQuest_Questyno_MikePozzo5_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_MikePozzo5_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_MikePozzo5_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_MikePozzo5_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_MikePozzo5_A", text = "IGUI_SFQuest_Questyno_MikePozzo5_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_MikePozzo6_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_MikePozzo6", optional = true, text = "IGUI_SFQuest_Questyno_MikePozzo6_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_MikePozzo6_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_MikePozzo6_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_MikePozzo6_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_MikePozzo6_B", text = "IGUI_SFQuest_Questyno_MikePozzo6_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_MikePozzo7_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_MikePozzo7", optional = true, text = "IGUI_SFQuest_Questyno_MikePozzo7_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_MikePozzo7_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_MikePozzo7_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_MikePozzo7_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_MikePozzo7", text = "IGUI_SFQuest_Questyno_MikePozzo7_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_MikePozzo8_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_MikePozzo8", optional = true, text = "IGUI_SFQuest_Questyno_MikePozzo8_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_MikePozzo8_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_MikePozzo8_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_MikePozzo8_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_MikePozzo8_B", text = "IGUI_SFQuest_Questyno_MikePozzo8_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_MikePozzo9_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_MikePozzo9", optional = true, text = "IGUI_SFQuest_Questyno_MikePozzo9_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_MikePozzo9_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_MikePozzo9_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_MikePozzo9_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_MikePozzo9", text = "IGUI_SFQuest_Questyno_MikePozzo9_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_MikePozzo10_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_MikePozzo10", optional = true, text = "IGUI_SFQuest_Questyno_MikePozzo10_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_MikePozzo10_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_MikePozzo10_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_MikePozzo10_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_MikePozzo10", text = "IGUI_SFQuest_Questyno_MikePozzo10_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_MikePozzo11_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_MikePozzo11", optional = true, text = "IGUI_SFQuest_Questyno_MikePozzo11_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_MikePozzo11_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_MikePozzo11_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_MikePozzo11_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_MikePozzo11_A", text = "IGUI_SFQuest_Questyno_MikePozzo11_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_MikePozzo12_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_MikePozzo12", optional = true, text = "IGUI_SFQuest_Questyno_MikePozzo12_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_MikePozzo12_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_MikePozzo12_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_MikePozzo12_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_MikePozzo12_A", text = "IGUI_SFQuest_Questyno_MikePozzo12_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_MikePozzo13_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_MikePozzo13", optional = true, text = "IGUI_SFQuest_Questyno_MikePozzo13_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_MikePozzo13_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_MikePozzo13_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_MikePozzo13_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_MikePozzo13", text = "IGUI_SFQuest_Questyno_MikePozzo13_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_MikePozzo14_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_MikePozzo14", optional = true, text = "IGUI_SFQuest_Questyno_MikePozzo14_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_MikePozzo14_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_MikePozzo14_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_MikePozzo14_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_MikePozzo14", text = "IGUI_SFQuest_Questyno_MikePozzo14_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_MikePozzo15_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_MikePozzo15", optional = true, text = "IGUI_SFQuest_Questyno_MikePozzo15_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_MikePozzo15_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_MikePozzo15_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_MikePozzo15_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_MikePozzo15_B", text = "IGUI_SFQuest_Questyno_MikePozzo15_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_MikePozzo16_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_MikePozzo16", optional = true, text = "IGUI_SFQuest_Questyno_MikePozzo16_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_MikePozzo16_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_MikePozzo16_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_MikePozzo16_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_MikePozzo16_A", text = "IGUI_SFQuest_Questyno_MikePozzo16_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_MikePozzo17_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_MikePozzo17", optional = true, text = "IGUI_SFQuest_Questyno_MikePozzo17_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_MikePozzo17_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_MikePozzo17_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_MikePozzo17_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_MikePozzo17", text = "IGUI_SFQuest_Questyno_MikePozzo17_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_MikePozzo18_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_MikePozzo18", optional = true, text = "IGUI_SFQuest_Questyno_MikePozzo18_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_MikePozzo18_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_MikePozzo18_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_MikePozzo18_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_MikePozzo18_A", text = "IGUI_SFQuest_Questyno_MikePozzo18_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_MikePozzo19_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_MikePozzo19", optional = true, text = "IGUI_SFQuest_Questyno_MikePozzo19_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_MikePozzo19_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_MikePozzo19_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_MikePozzo19_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_MikePozzo19", text = "IGUI_SFQuest_Questyno_MikePozzo19_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_MikePozzo20_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_MikePozzo20", optional = true, text = "IGUI_SFQuest_Questyno_MikePozzo20_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_MikePozzo20_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_MikePozzo20_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_MikePozzo20_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_MikePozzo20", text = "IGUI_SFQuest_Questyno_MikePozzo20_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_MikePozzo21_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_MikePozzo21", optional = true, text = "IGUI_SFQuest_Questyno_MikePozzo21_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_MikePozzo21_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_MikePozzo21_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_MikePozzo21_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_MikePozzo21", text = "IGUI_SFQuest_Questyno_MikePozzo21_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_MikePozzo22_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_MikePozzo22", optional = true, text = "IGUI_SFQuest_Questyno_MikePozzo22_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_MikePozzo22_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_MikePozzo22_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_MikePozzo22_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_MikePozzo22", text = "IGUI_SFQuest_Questyno_MikePozzo22_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_MikePozzo23_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_MikePozzo23", optional = true, text = "IGUI_SFQuest_Questyno_MikePozzo23_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_MikePozzo23_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_MikePozzo23_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_MikePozzo23_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_MikePozzo23", text = "IGUI_SFQuest_Questyno_MikePozzo23_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_MikePozzo24_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_MikePozzo24", optional = true, text = "IGUI_SFQuest_Questyno_MikePozzo24_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_MikePozzo24_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_MikePozzo24_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_MikePozzo24_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_MikePozzo24", text = "IGUI_SFQuest_Questyno_MikePozzo24_Complete"})

--[[
            *** Rosa China ***
            Elenco:
                intro. Parla con Rosa China per sbloccare le daily.
				1. Recuperare Base.Stone;5 (30rep)
				2. Recuperare Base.Stone;10 (50rep)
				3. Recuperare Base.SharpedStone;5 (60rep)
				4. Recuperare Base.SharpedStone;10 (80rep + Base.WildEggs;2)
				5. Recuperare Base.SpearCrafted;10 (35rep)
				6. Recuperare Base.SpearCrafted;5 (25rep)
				7. Recuperare Base.TreeBranch;20 (70rep)
				8. Recuperare Base.Grasshopper;5,Base.Pillbug;5,Base.Cockroach (60rep)
				9. Recuperare Base.LemonGrass;3,Base.BlackSage;2 (60rep + Base.PlantainCataplasm)
				10. Recuperare Base.LogStacks3;2 (50rep + Base.GardenFork)
				11. Recuperare Base.NailsBox (60rep + Base.Pumpkin)
				12. Recuperare Base.Plank;10 (30rep)
				13. Recuperare Base.Twigs;30 (40rep)
				14. Recuperare Base.Twigs;20 (30rep)
				15. Recuperare Base.HammerStone;4,Base.AxeStone;2 (60rep)
				16. Recuperare Base.AxeStone;2,SpearCrafted;2,FlintKnife;2 (50rep)
				17. Recuperare Base.ThreeBrench;2 (30rep + Base.WoodenLance)
				18. Recuperare Base.ThreeBrench,Base.SharpedStone (25rep + Base.WoodenLance)
				19. Recuperare MushroomGeneric3 (250rep)
				20. Recuperare Pentola di Base.PotOfSoupRecipe (35rep + 20$ + Pentola)
				21. Recuperare Moveables.vegetation_farm_01_16 parlando con (8314,8902,0) (35rep)
				22. Recuperare Base.SharpedStone (20rep + Base.Pestle)
				23. Recuperare Base.ComfreyCataplas (50rep)
				24. Recuperare Base.WildGarlicCataplasm (50rep)
]]

-- intro. parla con Rosa China per sbloccare le daily
table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_RosaChina_Intro_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_RosaChina_Intro", text = "IGUI_SFQuest_Questyno_RosaChina_Intro_Complete_Text"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_RosaChina1_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_RosaChina1", optional = true, text = "IGUI_SFQuest_Questyno_RosaChina1_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_RosaChina1_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_RosaChina1_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_RosaChina1_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_RosaChina1", text = "IGUI_SFQuest_Questyno_RosaChina1_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_RosaChina2_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_RosaChina2", optional = true, text = "IGUI_SFQuest_Questyno_RosaChina2_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_RosaChina2_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_RosaChina2_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_RosaChina2_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_RosaChina2", text = "IGUI_SFQuest_Questyno_RosaChina2_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_RosaChina3_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_RosaChina3", optional = true, text = "IGUI_SFQuest_Questyno_RosaChina3_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_RosaChina3_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_RosaChina3_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_RosaChina3_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_RosaChina3", text = "IGUI_SFQuest_Questyno_RosaChina3_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_RosaChina4_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_RosaChina4", optional = true, text = "IGUI_SFQuest_Questyno_RosaChina4_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_RosaChina4_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_RosaChina4_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_RosaChina4_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_RosaChina4", text = "IGUI_SFQuest_Questyno_RosaChina4_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_RosaChina5_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_RosaChina5", optional = true, text = "IGUI_SFQuest_Questyno_RosaChina5_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_RosaChina5_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_RosaChina5_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_RosaChina5_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_RosaChina5", text = "IGUI_SFQuest_Questyno_RosaChina5_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_RosaChina6_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_RosaChina6", optional = true, text = "IGUI_SFQuest_Questyno_RosaChina6_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_RosaChina6_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_RosaChina6_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_RosaChina6_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_RosaChina6", text = "IGUI_SFQuest_Questyno_RosaChina6_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_RosaChina7_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_RosaChina7", optional = true, text = "IGUI_SFQuest_Questyno_RosaChina7_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_RosaChina7_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_RosaChina7_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_RosaChina7_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_RosaChina7", text = "IGUI_SFQuest_Questyno_RosaChina7_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_RosaChina8_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_RosaChina8", optional = true, text = "IGUI_SFQuest_Questyno_RosaChina8_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_RosaChina8_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_RosaChina8_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_RosaChina8_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_RosaChina8_A", text = "IGUI_SFQuest_Questyno_RosaChina8_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_RosaChina9_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_RosaChina9", optional = true, text = "IGUI_SFQuest_Questyno_RosaChina9_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_RosaChina9_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_RosaChina9_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_RosaChina9_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_RosaChina9_A", text = "IGUI_SFQuest_Questyno_RosaChina9_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_RosaChina10_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_RosaChina10", optional = true, text = "IGUI_SFQuest_Questyno_RosaChina10_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_RosaChina10_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_RosaChina10_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_RosaChina10_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_RosaChina10", text = "IGUI_SFQuest_Questyno_RosaChina10_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_RosaChina11_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_RosaChina11", optional = true, text = "IGUI_SFQuest_Questyno_RosaChina11_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_RosaChina11_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_RosaChina11_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_RosaChina11_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_RosaChina11", text = "IGUI_SFQuest_Questyno_RosaChina11_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_RosaChina12_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_RosaChina12", optional = true, text = "IGUI_SFQuest_Questyno_RosaChina12_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_RosaChina12_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_RosaChina12_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_RosaChina12_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_RosaChina12", text = "IGUI_SFQuest_Questyno_RosaChina12_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_RosaChina13_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_RosaChina13", optional = true, text = "IGUI_SFQuest_Questyno_RosaChina13_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_RosaChina13_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_RosaChina13_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_RosaChina13_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_RosaChina13", text = "IGUI_SFQuest_Questyno_RosaChina13_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_RosaChina14_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_RosaChina14", optional = true, text = "IGUI_SFQuest_Questyno_RosaChina14_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_RosaChina14_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_RosaChina14_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_RosaChina14_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_RosaChina14", text = "IGUI_SFQuest_Questyno_RosaChina14_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_RosaChina15_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_RosaChina15", optional = true, text = "IGUI_SFQuest_Questyno_RosaChina15_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_RosaChina15_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_RosaChina15_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_RosaChina15_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_RosaChina15_A", text = "IGUI_SFQuest_Questyno_RosaChina15_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_RosaChina16_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_RosaChina16", optional = true, text = "IGUI_SFQuest_Questyno_RosaChina16_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_RosaChina16_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_RosaChina16_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_RosaChina16_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_RosaChina16_A", text = "IGUI_SFQuest_Questyno_RosaChina16_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_RosaChina17_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_RosaChina17", optional = true, text = "IGUI_SFQuest_Questyno_RosaChina17_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_RosaChina17_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_RosaChina17_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_RosaChina17_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_RosaChina17", text = "IGUI_SFQuest_Questyno_RosaChina17_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_RosaChina18_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_RosaChina18", optional = true, text = "IGUI_SFQuest_Questyno_RosaChina18_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_RosaChina18_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_RosaChina18_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_RosaChina18_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_RosaChina18_A", text = "IGUI_SFQuest_Questyno_RosaChina18_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_RosaChina19_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_RosaChina19", optional = true, text = "IGUI_SFQuest_Questyno_RosaChina19_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_RosaChina19_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_RosaChina19_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_RosaChina19_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_RosaChina19", text = "IGUI_SFQuest_Questyno_RosaChina19_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_RosaChina20_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_RosaChina20", optional = true, text = "IGUI_SFQuest_Questyno_RosaChina20_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_RosaChina20_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_RosaChina20_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_RosaChina20_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_RosaChina20", text = "IGUI_SFQuest_Questyno_RosaChina20_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_RosaChina21_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_RosaChina21", optional = true, text = "IGUI_SFQuest_Questyno_RosaChina21_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_RosaChina21_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_RosaChina21_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_RosaChina21_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_RosaChina21_A", text = "IGUI_SFQuest_Questyno_RosaChina21_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_RosaChina22_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_RosaChina22", optional = true, text = "IGUI_SFQuest_Questyno_RosaChina22_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_RosaChina22_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_RosaChina22_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_RosaChina22_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_RosaChina22", text = "IGUI_SFQuest_Questyno_RosaChina22_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_RosaChina23_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_RosaChina23", optional = true, text = "IGUI_SFQuest_Questyno_RosaChina23_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_RosaChina23_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_RosaChina23_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_RosaChina23_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_RosaChina23", text = "IGUI_SFQuest_Questyno_RosaChina23_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_RosaChina24_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_RosaChina24", optional = true, text = "IGUI_SFQuest_Questyno_RosaChina24_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_RosaChina24_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_RosaChina24_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_RosaChina24_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_RosaChina24", text = "IGUI_SFQuest_Questyno_RosaChina24_Complete"})
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
				7. Recuperare Base.ThreeBrench;10 (35rep)
				8. Recuperare Base.Grasshopper;5 (40rep)
				9. Recuperare Base.LemonGrass;5 (50rep + Base.PlantainCataplasm)
				10. Recuperare Base.BlackSage;5 (50rep)
				11. Recuperare Base.NailsBox (60rep + Base.Smallanimalmeat;2)
				12. Recuperare Base.LogStacks2;4 (30rep)
				13. Recuperare Base.LogStacks2;3 (20rep + Base.CommonMallow;5)
				14. Recuperare Base.PercedWood,Base.ThreeBrench (25rep)
				15. Recuperare MushroomGeneric6,MushroomGeneric7 (250rep + Base.OilOlive)
				16. Recuperare Base.AxeStone;2,Base.SpearCrafted;2,FlintKnife;2 (50rep)
				17. Recuperare Base.ScrapMetal;2,Base.Plank (30rep + Base.GardenFork)
				18. Recuperare RippedSheets;50 (40rep)
				19. Recuperare Bambola parlando con (7901,8180,0) (35rep + Base.BerryBlack;5)
				20. Recuperare Base.PotOfSoupRecipe (35rep + 20$ + Base.Pot)
				21. Recuperare Base.Mattress;2 parlando con (10934,8492,0) (35rep)
				22. Recuperare Base.AxeStone;4 (40rep + 10$)
				23. Recuperare Base.HammerStone;4 (30rep + 10$)
				24. Recuperare Base.Stone;10 (35rep)
]]

-- intro. parla con Emily Terry per sbloccare le daily
table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_EmilyTerry_Intro_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_EmilyTerry_Intro", text = "IGUI_SFQuest_Questyno_EmilyTerry_Intro_Complete_Text"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_EmilyTerry1_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_EmilyTerry1", optional = true, text = "IGUI_SFQuest_Questyno_EmilyTerry1_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_EmilyTerry1_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_EmilyTerry1_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_EmilyTerry1_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_EmilyTerry1", text = "IGUI_SFQuest_Questyno_EmilyTerry1_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_EmilyTerry2_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_EmilyTerry2", optional = true, text = "IGUI_SFQuest_Questyno_EmilyTerry2_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_EmilyTerry2_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_EmilyTerry2_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_EmilyTerry2_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_EmilyTerry2", text = "IGUI_SFQuest_Questyno_EmilyTerry2_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_EmilyTerry3_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_EmilyTerry3", optional = true, text = "IGUI_SFQuest_Questyno_EmilyTerry3_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_EmilyTerry3_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_EmilyTerry3_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_EmilyTerry3_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_EmilyTerry3", text = "IGUI_SFQuest_Questyno_EmilyTerry3_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_EmilyTerry4_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_EmilyTerry4", optional = true, text = "IGUI_SFQuest_Questyno_EmilyTerry4_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_EmilyTerry4_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_EmilyTerry4_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_EmilyTerry4_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_EmilyTerry4", text = "IGUI_SFQuest_Questyno_EmilyTerry4_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_EmilyTerry5_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_EmilyTerry5", optional = true, text = "IGUI_SFQuest_Questyno_EmilyTerry5_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_EmilyTerry5_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_EmilyTerry5_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_EmilyTerry5_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_EmilyTerry5", text = "IGUI_SFQuest_Questyno_EmilyTerry5_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_EmilyTerry6_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_EmilyTerry6", optional = true, text = "IGUI_SFQuest_Questyno_EmilyTerry6_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_EmilyTerry6_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_EmilyTerry6_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_EmilyTerry6_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_EmilyTerry6", text = "IGUI_SFQuest_Questyno_EmilyTerry6_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_EmilyTerry7_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_EmilyTerry7", optional = true, text = "IGUI_SFQuest_Questyno_EmilyTerry7_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_EmilyTerry7_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_EmilyTerry7_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_EmilyTerry7_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_EmilyTerry7", text = "IGUI_SFQuest_Questyno_EmilyTerry7_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_EmilyTerry8_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_EmilyTerry8", optional = true, text = "IGUI_SFQuest_Questyno_EmilyTerry8_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_EmilyTerry8_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_EmilyTerry8_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_EmilyTerry8_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_EmilyTerry8", text = "IGUI_SFQuest_Questyno_EmilyTerry8_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_EmilyTerry9_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_EmilyTerry9", optional = true, text = "IGUI_SFQuest_Questyno_EmilyTerry9_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_EmilyTerry9_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_EmilyTerry9_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_EmilyTerry9_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_EmilyTerry9", text = "IGUI_SFQuest_Questyno_EmilyTerry9_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_EmilyTerry10_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_EmilyTerry10", optional = true, text = "IGUI_SFQuest_Questyno_EmilyTerry10_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_EmilyTerry10_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_EmilyTerry10_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_EmilyTerry10_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_EmilyTerry10", text = "IGUI_SFQuest_Questyno_EmilyTerry10_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_EmilyTerry11_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_EmilyTerry11", optional = true, text = "IGUI_SFQuest_Questyno_EmilyTerry11_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_EmilyTerry11_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_EmilyTerry11_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_EmilyTerry11_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_EmilyTerry11", text = "IGUI_SFQuest_Questyno_EmilyTerry11_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_EmilyTerry12_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_EmilyTerry12", optional = true, text = "IGUI_SFQuest_Questyno_EmilyTerry12_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_EmilyTerry12_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_EmilyTerry12_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_EmilyTerry12_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_EmilyTerry12", text = "IGUI_SFQuest_Questyno_EmilyTerry12_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_EmilyTerry13_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_EmilyTerry13", optional = true, text = "IGUI_SFQuest_Questyno_EmilyTerry13_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_EmilyTerry13_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_EmilyTerry13_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_EmilyTerry13_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_EmilyTerry13", text = "IGUI_SFQuest_Questyno_EmilyTerry13_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_EmilyTerry14_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_EmilyTerry14", optional = true, text = "IGUI_SFQuest_Questyno_EmilyTerry14_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_EmilyTerry14_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_EmilyTerry14_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_EmilyTerry14_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_EmilyTerry14_A", text = "IGUI_SFQuest_Questyno_EmilyTerry14_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_EmilyTerry15_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_EmilyTerry15", optional = true, text = "IGUI_SFQuest_Questyno_EmilyTerry15_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_EmilyTerry15_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_EmilyTerry15_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_EmilyTerry15_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_EmilyTerry15", text = "IGUI_SFQuest_Questyno_EmilyTerry15_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_EmilyTerry16_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_EmilyTerry16", optional = true, text = "IGUI_SFQuest_Questyno_EmilyTerry16_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_EmilyTerry16_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_EmilyTerry16_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_EmilyTerry16_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_EmilyTerry16_A", text = "IGUI_SFQuest_Questyno_EmilyTerry16_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_EmilyTerry17_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_EmilyTerry17", optional = true, text = "IGUI_SFQuest_Questyno_EmilyTerry17_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_EmilyTerry17_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_EmilyTerry17_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_EmilyTerry17_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_EmilyTerry17_A", text = "IGUI_SFQuest_Questyno_EmilyTerry17_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_EmilyTerry18_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_EmilyTerry18", optional = true, text = "IGUI_SFQuest_Questyno_EmilyTerry18_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_EmilyTerry18_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_EmilyTerry18_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_EmilyTerry18_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_EmilyTerry18", text = "IGUI_SFQuest_Questyno_EmilyTerry18_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_EmilyTerry19_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_EmilyTerry19", optional = true, text = "IGUI_SFQuest_Questyno_EmilyTerry19_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_EmilyTerry19_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_EmilyTerry19_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_EmilyTerry19_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_EmilyTerry19_A", text = "IGUI_SFQuest_Questyno_EmilyTerry19_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_EmilyTerry20_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_EmilyTerry20", optional = true, text = "IGUI_SFQuest_Questyno_EmilyTerry20_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_EmilyTerry20_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_EmilyTerry20_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_EmilyTerry20_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_EmilyTerry20", text = "IGUI_SFQuest_Questyno_EmilyTerry20_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_EmilyTerry21_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_EmilyTerry21", optional = true, text = "IGUI_SFQuest_Questyno_EmilyTerry21_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_EmilyTerry21_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_EmilyTerry21_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_EmilyTerry21_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_EmilyTerry21_A", text = "IGUI_SFQuest_Questyno_EmilyTerry21_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_EmilyTerry22_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_EmilyTerry22", optional = true, text = "IGUI_SFQuest_Questyno_EmilyTerry22_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_EmilyTerry22_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_EmilyTerry22_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_EmilyTerry22_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_EmilyTerry22", text = "IGUI_SFQuest_Questyno_EmilyTerry22_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_EmilyTerry23_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_EmilyTerry23", optional = true, text = "IGUI_SFQuest_Questyno_EmilyTerry23_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_EmilyTerry23_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_EmilyTerry23_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_EmilyTerry23_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_EmilyTerry23", text = "IGUI_SFQuest_Questyno_EmilyTerry23_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_EmilyTerry24_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_EmilyTerry24", optional = true, text = "IGUI_SFQuest_Questyno_EmilyTerry24_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_EmilyTerry24_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_EmilyTerry24_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_EmilyTerry24_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_EmilyTerry24", text = "IGUI_SFQuest_Questyno_EmilyTerry24_Complete"})

--[[
                                                    *** QUEST WEEKLY MULDRAUGH ***
]]


--[[
            *** Victoria Secret ***
            Elenco:
                intro. Parla con Victoria Secret per sbloccare le daily.
				1. Recuperare Base.Shoes_Fancy parlando con (17334,6563,0) (80rep + Base.BaseballBat)
				2. Recuperare Base.DressKnees_Straps parlando con (12242,11879,0) (80rep + Colla per Legno)
				3. Recuperare Base.Glasses_Sun parlando con (6525,10599,0) (30rep + 50$)
				4. Recuperare Base.Lipstick parlando con (4908,10172,0) (70rep)
				5. Recuperare Base.Skirt_short parlando con (4003,9110,0) (40rep + 50$)
				6. Recuperare Base.Dress_SmallBlackStrapless parlando con (8535,6438,0) (60rep)
				7. Recuperare Base.Dress_SmallBlackStrapless parlando con (11874,6908,0) (50rep + 50$)
				8. Recuperare Base.Hat_Beret parlando con (11207,8794,0) (30rep + 60$)
				9. Recuperare Base.Dress_SmallBlackStrap parlando con (6399,5266,0) (150rep)
				10. Recuperare Base.TightsFishnets parlando con (16874,7265,0) (100rep)
				11. Recuperare Base.HairDyeBlack parlando con (10606,10333,0) (15rep)
				12. Recuperare Base.HairDyeBlack parlando con (11862,6884,0) (50rep)
				13. Recuperare Base.Dress_Knees parlando con (4692,6731,0) (100rep + 50$)
				14. Recuperare Base.Dress_Knees parlando con (9722,10332,0) (30rep + 50$)
				15. Recuperare Base.Dress_Knees parlando con (7701,11530,0) (50rep + 80$)
				16. Recuperare Base.Dress_Knees parlando con (11488,6982,0) (15rep)
				17. Recuperare Base Glasses_sun parlando con (4463,6385,0) (100rep + 70$)
				18. Recuperare MakeupEyeshadow parlando con (7346,11326,0) (60rep)
				19. Recuperare Base.Tshirt_WhiteTINT parlando con (4810,10118,0) (50rep + 20$)
				20. Recuperare Base.Mov_MannequinFemale parlando con (10612,10314,0) (15rep + 20$)
				21. Recuperare Base.NecklaceLong_GoldDiamond (40rep + 25$)
]]

-- intro. parla con Victoria Secret per sbloccare le daily
table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_VictoriaSecret_Intro_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_VictoriaSecret_Intro", text = "IGUI_SFQuest_Questyno_VictoriaSecret_Intro_Complete_Text"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_VictoriaSecret1_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_VictoriaSecret1", optional = true, text = "IGUI_SFQuest_Questyno_VictoriaSecret1_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_VictoriaSecret1_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_VictoriaSecret1_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_VictoriaSecret1_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_VictoriaSecret1_A", text = "IGUI_SFQuest_Questyno_VictoriaSecret1_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_VictoriaSecret2_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_VictoriaSecret2", optional = true, text = "IGUI_SFQuest_Questyno_VictoriaSecret2_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_VictoriaSecret2_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_VictoriaSecret2_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_VictoriaSecret2_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_VictoriaSecret2_A", text = "IGUI_SFQuest_Questyno_VictoriaSecret2_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_VictoriaSecret3_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_VictoriaSecret3", optional = true, text = "IGUI_SFQuest_Questyno_VictoriaSecret3_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_VictoriaSecret3_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_VictoriaSecret3_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_VictoriaSecret3_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_VictoriaSecret3_A", text = "IGUI_SFQuest_Questyno_VictoriaSecret3_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_VictoriaSecret4_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_VictoriaSecret4", optional = true, text = "IGUI_SFQuest_Questyno_VictoriaSecret4_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_VictoriaSecret4_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_VictoriaSecret4_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_VictoriaSecret4_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_VictoriaSecret4_A", text = "IGUI_SFQuest_Questyno_VictoriaSecret4_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_VictoriaSecret5_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_VictoriaSecret5", optional = true, text = "IGUI_SFQuest_Questyno_VictoriaSecret5_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_VictoriaSecret5_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_VictoriaSecret5_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_VictoriaSecret5_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_VictoriaSecret5_A", text = "IGUI_SFQuest_Questyno_VictoriaSecret5_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_VictoriaSecret6_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_VictoriaSecret6", optional = true, text = "IGUI_SFQuest_Questyno_VictoriaSecret6_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_VictoriaSecret6_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_VictoriaSecret6_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_VictoriaSecret6_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_VictoriaSecret6_A", text = "IGUI_SFQuest_Questyno_VictoriaSecret6_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_VictoriaSecret7_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_VictoriaSecret7", optional = true, text = "IGUI_SFQuest_Questyno_VictoriaSecret7_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_VictoriaSecret7_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_VictoriaSecret7_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_VictoriaSecret7_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_VictoriaSecret7_A", text = "IGUI_SFQuest_Questyno_VictoriaSecret7_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_VictoriaSecret8_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_VictoriaSecret8", optional = true, text = "IGUI_SFQuest_Questyno_VictoriaSecret8_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_VictoriaSecret8_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_VictoriaSecret8_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_VictoriaSecret8_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_VictoriaSecret8_A", text = "IGUI_SFQuest_Questyno_VictoriaSecret8_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_VictoriaSecret9_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_VictoriaSecret9", optional = true, text = "IGUI_SFQuest_Questyno_VictoriaSecret9_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_VictoriaSecret9_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_VictoriaSecret9_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_VictoriaSecret9_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_VictoriaSecret9_A", text = "IGUI_SFQuest_Questyno_VictoriaSecret9_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_VictoriaSecret10_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_VictoriaSecret10", optional = true, text = "IGUI_SFQuest_Questyno_VictoriaSecret10_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_VictoriaSecret10_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_VictoriaSecret10_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_VictoriaSecret10_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_VictoriaSecret10_A", text = "IGUI_SFQuest_Questyno_VictoriaSecret10_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_VictoriaSecret11_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_VictoriaSecret11", optional = true, text = "IGUI_SFQuest_Questyno_VictoriaSecret11_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_VictoriaSecret11_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_VictoriaSecret11_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_VictoriaSecret11_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_VictoriaSecret11_A", text = "IGUI_SFQuest_Questyno_VictoriaSecret11_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_VictoriaSecret12_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_VictoriaSecret12", optional = true, text = "IGUI_SFQuest_Questyno_VictoriaSecret12_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_VictoriaSecret12_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_VictoriaSecret12_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_VictoriaSecret12_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_VictoriaSecret12_A", text = "IGUI_SFQuest_Questyno_VictoriaSecret12_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_VictoriaSecret13_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_VictoriaSecret13", optional = true, text = "IGUI_SFQuest_Questyno_VictoriaSecret13_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_VictoriaSecret13_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_VictoriaSecret13_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_VictoriaSecret13_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_VictoriaSecret13_A", text = "IGUI_SFQuest_Questyno_VictoriaSecret13_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_VictoriaSecret14_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_VictoriaSecret14", optional = true, text = "IGUI_SFQuest_Questyno_VictoriaSecret14_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_VictoriaSecret14_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_VictoriaSecret14_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_VictoriaSecret14_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_VictoriaSecret14_A", text = "IGUI_SFQuest_Questyno_VictoriaSecret14_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_VictoriaSecret15_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_VictoriaSecret15", optional = true, text = "IGUI_SFQuest_Questyno_VictoriaSecret15_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_VictoriaSecret15_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_VictoriaSecret15_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_VictoriaSecret15_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_VictoriaSecret15_A", text = "IGUI_SFQuest_Questyno_VictoriaSecret15_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_VictoriaSecret16_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_VictoriaSecret16", optional = true, text = "IGUI_SFQuest_Questyno_VictoriaSecret16_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_VictoriaSecret16_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_VictoriaSecret16_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_VictoriaSecret16_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_VictoriaSecret16_A", text = "IGUI_SFQuest_Questyno_VictoriaSecret16_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_VictoriaSecret17_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_VictoriaSecret17", optional = true, text = "IGUI_SFQuest_Questyno_VictoriaSecret17_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_VictoriaSecret17_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_VictoriaSecret17_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_VictoriaSecret17_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_VictoriaSecret17_A", text = "IGUI_SFQuest_Questyno_VictoriaSecret17_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_VictoriaSecret18_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_VictoriaSecret18", optional = true, text = "IGUI_SFQuest_Questyno_VictoriaSecret18_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_VictoriaSecret18_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_VictoriaSecret18_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_VictoriaSecret18_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_VictoriaSecret18_A", text = "IGUI_SFQuest_Questyno_VictoriaSecret18_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_VictoriaSecret19_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_VictoriaSecret19", optional = true, text = "IGUI_SFQuest_Questyno_VictoriaSecret19_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_VictoriaSecret19_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_VictoriaSecret19_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_VictoriaSecret19_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_VictoriaSecret19_A", text = "IGUI_SFQuest_Questyno_VictoriaSecret19_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_VictoriaSecret20_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_VictoriaSecret20", optional = true, text = "IGUI_SFQuest_Questyno_VictoriaSecret20_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_VictoriaSecret20_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_VictoriaSecret20_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_VictoriaSecret20_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_VictoriaSecret20_A", text = "IGUI_SFQuest_Questyno_VictoriaSecret20_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_VictoriaSecret21_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_VictoriaSecret21", optional = true, text = "IGUI_SFQuest_Questyno_VictoriaSecret21_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_VictoriaSecret21_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_VictoriaSecret21_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_VictoriaSecret21_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_VictoriaSecret21", text = "IGUI_SFQuest_Questyno_VictoriaSecret21_Complete"})

--[[
            *** Susan Lee ***
            Elenco:
                intro. Parla con Susan per sbloccare le daily.
				1. Recuperare Base.antibiotics;2 parlando con (10875,10028,0) (80rep + Base.Disinfectant)
				2. Recuperare LabItems.LabSyringePack;4 parlando con (7683,11515,0) (50rep + Base.SutureNeedle)
				3. Recuperare LabItems.LabSyringePack;4 parlando con (9463,11239,0) (40rep + 20$)
				4. Recuperare Base.PillsSleepingTablets;4 parlando con (8087,11524,0) (100rep + 20$ + Pacco di Sonnifero)
				5. Recuperare Base.PillsVitamins;2 parlando con (11939,6795,0) (70rep + 20$ + Base.Bandage;2)
				6. Recuperare Base.Splint (40rep)
				7. Recuperare Base.Antibiotics (150rep)
				8. Recuperare Base.AlcoholRippedSheets;50 (40rep)
				9. Recuperare LabItems.LabSyringe (80rep)
				10. Recuperare Moveable.location_community_medical_01_24 parlando con (7250,8369,0) (50rep + 40$)
				11. Recuperare Moveable.location_community_medical_01_24 parlando con (5033,10038,0) (45rep + 50$)
				12. Recuperare Moveable.location_community_medical_01_28 parlando con (10287,11351,0) (30rep + 30$)
				13. Recuperare Base.SutureNeedle;3 parlando con (7713,11429,0) (50rep + 25$)
				14. Recuperare Base.SutureNeedleHolder;3 parlando con (7681,11518,0) (70rep + 25$)
				15. Recuperare Corsetto medico parlando con (7298,9618,0) (50rep + 20$)
				16. Recuperare Base.PillsAntieDep;10 parlando con (10673,9819,0) (40rep + Antidepressivo)
				17. Recuperare Base.PillsAntieDep;10 parlando con (8211,10887) (100rep + 25$)
				18. Recuperare Base.PillsVitamins;2,Base.PillsSleepingTablets;2,Base.SutureNeedle,Base.Pills parlando con (7244,8373,0) (35rep)
				19. Recuperare Base.PillsBeta;2,Base.AlcoholWipes;2 parlando con (7244,8357,0) (80rep + Base.AlcoholRippedSheets;5,Base.AlcoholWipe)
				20. Recuperare 2 Beta Bloccanti + Bottiglia di Disinfettante parlando con (7246,8363,0) (50rep + Base.PillsBeta;2,Base.Disinfectant)
				21. Recuperare Base.PlantainCataplasm (50rep + 25$)
				22. Recuperare Base.LemonGrass;3 (40rep + 15$)
				23. Recuperare Moveable.location_community_medical_01_16;Moveable.location_community_medical_01_17 parlando con (6318,5267,0) (200rep)
]]

-- intro. parla con Susan Lee per sbloccare le daily
table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SusanLee_Intro_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SusanLee_Intro", text = "IGUI_SFQuest_Questyno_SusanLee_Intro_Complete_Text"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SusanLee1_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SusanLee1", optional = true, text = "IGUI_SFQuest_Questyno_SusanLee1_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SusanLee1_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SusanLee1_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SusanLee1_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SusanLee1_A", text = "IGUI_SFQuest_Questyno_SusanLee1_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SusanLee2_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SusanLee2", optional = true, text = "IGUI_SFQuest_Questyno_SusanLee2_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SusanLee2_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SusanLee2_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SusanLee2_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SusanLee2_A", text = "IGUI_SFQuest_Questyno_SusanLee2_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SusanLee3_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SusanLee3", optional = true, text = "IGUI_SFQuest_Questyno_SusanLee3_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SusanLee3_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SusanLee3_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SusanLee3_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SusanLee3_A", text = "IGUI_SFQuest_Questyno_SusanLee3_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SusanLee4_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SusanLee4", optional = true, text = "IGUI_SFQuest_Questyno_SusanLee4_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SusanLee4_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SusanLee4_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SusanLee4_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SusanLee4_A", text = "IGUI_SFQuest_Questyno_SusanLee4_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SusanLee5_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SusanLee5", optional = true, text = "IGUI_SFQuest_Questyno_SusanLee5_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SusanLee5_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SusanLee5_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SusanLee5_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SusanLee5_A", text = "IGUI_SFQuest_Questyno_SusanLee5_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SusanLee6_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SusanLee6", optional = true, text = "IGUI_SFQuest_Questyno_SusanLee6_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SusanLee6_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SusanLee6_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SusanLee6_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SusanLee6", text = "IGUI_SFQuest_Questyno_SusanLee6_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SusanLee7_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SusanLee7", optional = true, text = "IGUI_SFQuest_Questyno_SusanLee7_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SusanLee7_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SusanLee7_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SusanLee7_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SusanLee7", text = "IGUI_SFQuest_Questyno_SusanLee7_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SusanLee8_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SusanLee8", optional = true, text = "IGUI_SFQuest_Questyno_SusanLee8_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SusanLee8_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SusanLee8_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SusanLee8_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SusanLee8", text = "IGUI_SFQuest_Questyno_SusanLee8_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SusanLee9_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SusanLee9", optional = true, text = "IGUI_SFQuest_Questyno_SusanLee9_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SusanLee9_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SusanLee9_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SusanLee9_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SusanLee9", text = "IGUI_SFQuest_Questyno_SusanLee9_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SusanLee10_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SusanLee10", optional = true, text = "IGUI_SFQuest_Questyno_SusanLee10_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SusanLee10_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SusanLee10_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SusanLee10_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SusanLee10_A", text = "IGUI_SFQuest_Questyno_SusanLee10_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SusanLee11_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SusanLee11", optional = true, text = "IGUI_SFQuest_Questyno_SusanLee11_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SusanLee11_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SusanLee11_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SusanLee11_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SusanLee11_A", text = "IGUI_SFQuest_Questyno_SusanLee11_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SusanLee12_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SusanLee12", optional = true, text = "IGUI_SFQuest_Questyno_SusanLee12_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SusanLee12_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SusanLee12_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SusanLee12_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SusanLee12_A", text = "IGUI_SFQuest_Questyno_SusanLee12_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SusanLee13_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SusanLee13", optional = true, text = "IGUI_SFQuest_Questyno_SusanLee13_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SusanLee13_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SusanLee13_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SusanLee13_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SusanLee13_A", text = "IGUI_SFQuest_Questyno_SusanLee13_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SusanLee14_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SusanLee14", optional = true, text = "IGUI_SFQuest_Questyno_SusanLee14_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SusanLee14_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SusanLee14_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SusanLee14_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SusanLee14_A", text = "IGUI_SFQuest_Questyno_SusanLee14_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SusanLee15_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SusanLee15", optional = true, text = "IGUI_SFQuest_Questyno_SusanLee15_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SusanLee15_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SusanLee15_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SusanLee15_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SusanLee15_A", text = "IGUI_SFQuest_Questyno_SusanLee15_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SusanLee16_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SusanLee16", optional = true, text = "IGUI_SFQuest_Questyno_SusanLee16_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SusanLee16_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SusanLee16_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SusanLee16_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SusanLee16_A", text = "IGUI_SFQuest_Questyno_SusanLee16_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SusanLee17_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SusanLee17", optional = true, text = "IGUI_SFQuest_Questyno_SusanLee17_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SusanLee17_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SusanLee17_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SusanLee17_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SusanLee17_A", text = "IGUI_SFQuest_Questyno_SusanLee17_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SusanLee18_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SusanLee18", optional = true, text = "IGUI_SFQuest_Questyno_SusanLee18_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SusanLee18_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SusanLee18_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SusanLee18_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SusanLee18_B", text = "IGUI_SFQuest_Questyno_SusanLee18_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SusanLee19_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SusanLee19", optional = true, text = "IGUI_SFQuest_Questyno_SusanLee19_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SusanLee19_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SusanLee19_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SusanLee19_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SusanLee19_B", text = "IGUI_SFQuest_Questyno_SusanLee19_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SusanLee20_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SusanLee20", optional = true, text = "IGUI_SFQuest_Questyno_SusanLee20_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SusanLee20_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SusanLee20_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SusanLee20_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SusanLee20_B", text = "IGUI_SFQuest_Questyno_SusanLee20_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SusanLee21_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SusanLee21", optional = true, text = "IGUI_SFQuest_Questyno_SusanLee21_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SusanLee21_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SusanLee21_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SusanLee21_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SusanLee21", text = "IGUI_SFQuest_Questyno_SusanLee21_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SusanLee22_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SusanLee22", optional = true, text = "IGUI_SFQuest_Questyno_SusanLee22_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SusanLee22_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SusanLee22_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SusanLee22_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SusanLee22", text = "IGUI_SFQuest_Questyno_SusanLee22_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SusanLee23_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SusanLee23", optional = true, text = "IGUI_SFQuest_Questyno_SusanLee23_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SusanLee23_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SusanLee23_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SusanLee23_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SusanLee23_A", text = "IGUI_SFQuest_Questyno_SusanLee23_Complete"})

--[[
            *** George Scott ***
            Elenco:
                intro. Parla con George Scott per sbloccare le daily.
				1. Recuperare Base.Wine2 (140rep + 25$)
				2. Recuperare Base.Jacket_Chef (80rep)
				3. Recuperare Base.Hat_HockeyMask parlando con (?) (35rep)
				4. Recuperare Base.Earbuds parlando con (?) (80rep)
				5. Recuperare Base.Dart parlando con (?) (50rep)
				6. Recuperare Base.ToiletPaper;4 (75rep + 30$)
				7. Recuperare Base.Cube parlando con (?) (150rep + 50$)
				8. Recuperare Base.CardDeck (30rep)
				9. Recuperare Base.VideoGame;Base.VideoGame parlando con (10339,8175,0);(10203,8313,0) (100rep)
				10. Recuperare Tromba;Bacchette;Chitarra Classica parlando con (8506,7685,0);(8385,7674,1);(8195,7506,0) (140rep + 50$)
				11. Recuperare Base.Basketball parlando con (12566,9951,0) (80rep)
				12. Recuperare Base.ChessWhite;Base.ChessBlack;Base.CheckerBoard parlando con (12338,9647,1) (50rep)
				13. Recuperare Base.Toothpaste (50rep + 20$)
				14. Recuperare Base.Hat_Cowboy_freddy parlando con (8159,9611,0) (50rep + 100$)
				15. Recuperare Base.Shoes_RedTrainers;Base.Trousers_JeanBaggy;Base.Skirt_Long (40rep + 50$)
				16. Recuperare Moveables.DylansElectronics01_46 parlando con (9747,10589,0) (100rep + SWeapons.SalvagedMachete)
				17. Recuperare Base.Disc_Retail (45rep)
				18. Recuperare Base.CDplayer;Base.Battery;2 (50rep)
				19. Recuperare Base.Hat_Bandana parlando con (7431,9700,0) (60rep)
				20. Recuperare Base.TrousersMesh_DenimLight;Base.JacketLong_Random (100rep + 40$)
				21. Recuperare Base.AmmoStrap_Shells (50rep)
				22. Recuperare Base.WristWatch_Right_ClassicGold (50rep)
				23. Recuperare Base.HolsterDouble (150rep + 25$)
]]

-- intro. parla con George Scott per sbloccare le daily
table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_GeorgeScott_Intro_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_GeorgeScott_Intro", text = "IGUI_SFQuest_Questyno_GeorgeScott_Intro_Complete_Text"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_GeorgeScott1_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_GeorgeScott1", optional = true, text = "IGUI_SFQuest_Questyno_GeorgeScott1_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_GeorgeScott1_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_GeorgeScott1_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_GeorgeScott1_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_GeorgeScott1", text = "IGUI_SFQuest_Questyno_GeorgeScott1_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_GeorgeScott2_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_GeorgeScott2", optional = true, text = "IGUI_SFQuest_Questyno_GeorgeScott2_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_GeorgeScott2_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_GeorgeScott2_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_GeorgeScott2_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_GeorgeScott2", text = "IGUI_SFQuest_Questyno_GeorgeScott2_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_GeorgeScott3_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_GeorgeScott3", optional = true, text = "IGUI_SFQuest_Questyno_GeorgeScott3_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_GeorgeScott3_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_GeorgeScott3_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_GeorgeScott3_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_GeorgeScott3_A", text = "IGUI_SFQuest_Questyno_GeorgeScott3_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_GeorgeScott4_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_GeorgeScott4", optional = true, text = "IGUI_SFQuest_Questyno_GeorgeScott4_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_GeorgeScott4_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_GeorgeScott4_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_GeorgeScott4_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_GeorgeScott4_A", text = "IGUI_SFQuest_Questyno_GeorgeScott4_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_GeorgeScott5_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_GeorgeScott5", optional = true, text = "IGUI_SFQuest_Questyno_GeorgeScott5_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_GeorgeScott5_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_GeorgeScott5_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_GeorgeScott5_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_GeorgeScott5_A", text = "IGUI_SFQuest_Questyno_GeorgeScott5_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_GeorgeScott6_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_GeorgeScott6", optional = true, text = "IGUI_SFQuest_Questyno_GeorgeScott6_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_GeorgeScott6_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_GeorgeScott6_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_GeorgeScott6_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_GeorgeScott6", text = "IGUI_SFQuest_Questyno_GeorgeScott6_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_GeorgeScott7_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_GeorgeScott7", optional = true, text = "IGUI_SFQuest_Questyno_GeorgeScott7_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_GeorgeScott7_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_GeorgeScott7_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_GeorgeScott7_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_GeorgeScott7_A", text = "IGUI_SFQuest_Questyno_GeorgeScott7_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_GeorgeScott8_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_GeorgeScott8", optional = true, text = "IGUI_SFQuest_Questyno_GeorgeScott8_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_GeorgeScott8_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_GeorgeScott8_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_GeorgeScott8_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_GeorgeScott8", text = "IGUI_SFQuest_Questyno_GeorgeScott8_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_GeorgeScott9_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_GeorgeScott9", optional = true, text = "IGUI_SFQuest_Questyno_GeorgeScott9_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_GeorgeScott9_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_GeorgeScott9_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_GeorgeScott9_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_GeorgeScott9_A", text = "IGUI_SFQuest_Questyno_GeorgeScott9_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_GeorgeScott10_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_GeorgeScott10", optional = true, text = "IGUI_SFQuest_Questyno_GeorgeScott10_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_GeorgeScott10_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_GeorgeScott10_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_GeorgeScott10_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_GeorgeScott10_B", text = "IGUI_SFQuest_Questyno_GeorgeScott10_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_GeorgeScott11_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_GeorgeScott11", optional = true, text = "IGUI_SFQuest_Questyno_GeorgeScott11_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_GeorgeScott11_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_GeorgeScott11_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_GeorgeScott11_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_GeorgeScott11_A", text = "IGUI_SFQuest_Questyno_GeorgeScott11_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_GeorgeScott12_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_GeorgeScott12", optional = true, text = "IGUI_SFQuest_Questyno_GeorgeScott12_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_GeorgeScott12_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_GeorgeScott12_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_GeorgeScott12_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_GeorgeScott12_B", text = "IGUI_SFQuest_Questyno_GeorgeScott12_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_GeorgeScott13_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_GeorgeScott13", optional = true, text = "IGUI_SFQuest_Questyno_GeorgeScott13_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_GeorgeScott13_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_GeorgeScott13_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_GeorgeScott13_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_GeorgeScott13", text = "IGUI_SFQuest_Questyno_GeorgeScott13_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_GeorgeScott14_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_GeorgeScott14", optional = true, text = "IGUI_SFQuest_Questyno_GeorgeScott14_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_GeorgeScott14_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_GeorgeScott14_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_GeorgeScott14_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_GeorgeScott14_A", text = "IGUI_SFQuest_Questyno_GeorgeScott14_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_GeorgeScott15_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_GeorgeScott15", optional = true, text = "IGUI_SFQuest_Questyno_GeorgeScott15_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_GeorgeScott15_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_GeorgeScott15_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_GeorgeScott15_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_GeorgeScott15_A", text = "IGUI_SFQuest_Questyno_GeorgeScott15_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_GeorgeScott16_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_GeorgeScott16", optional = true, text = "IGUI_SFQuest_Questyno_GeorgeScott16_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_GeorgeScott16_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_GeorgeScott16_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_GeorgeScott16_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_GeorgeScott16", text = "IGUI_SFQuest_Questyno_GeorgeScott16_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_GeorgeScott17_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_GeorgeScott17", optional = true, text = "IGUI_SFQuest_Questyno_GeorgeScott17_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_GeorgeScott17_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_GeorgeScott17_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_GeorgeScott17_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_GeorgeScott17", text = "IGUI_SFQuest_Questyno_GeorgeScott17_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_GeorgeScott18_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_GeorgeScott18", optional = true, text = "IGUI_SFQuest_Questyno_GeorgeScott18_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_GeorgeScott18_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_GeorgeScott18_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_GeorgeScott18_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_GeorgeScott18_A", text = "IGUI_SFQuest_Questyno_GeorgeScott18_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_GeorgeScott19_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_GeorgeScott19", optional = true, text = "IGUI_SFQuest_Questyno_GeorgeScott19_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_GeorgeScott19_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_GeorgeScott19_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_GeorgeScott19_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_GeorgeScott19_A", text = "IGUI_SFQuest_Questyno_GeorgeScott19_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_GeorgeScott20_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_GeorgeScott20", optional = true, text = "IGUI_SFQuest_Questyno_GeorgeScott20_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_GeorgeScott20_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_GeorgeScott20_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_GeorgeScott20_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_GeorgeScott20_A", text = "IGUI_SFQuest_Questyno_GeorgeScott20_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_GeorgeScott21_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_GeorgeScott21", optional = true, text = "IGUI_SFQuest_Questyno_GeorgeScott21_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_GeorgeScott21_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_GeorgeScott21_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_GeorgeScott21_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_GeorgeScott21", text = "IGUI_SFQuest_Questyno_GeorgeScott21_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_GeorgeScott22_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_GeorgeScott22", optional = true, text = "IGUI_SFQuest_Questyno_GeorgeScott22_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_GeorgeScott22_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_GeorgeScott22_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_GeorgeScott22_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_GeorgeScott22", text = "IGUI_SFQuest_Questyno_GeorgeScott22_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_GeorgeScott23_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_GeorgeScott23", optional = true, text = "IGUI_SFQuest_Questyno_GeorgeScott23_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_GeorgeScott23_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_GeorgeScott23_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_GeorgeScott23_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_GeorgeScott23", text = "IGUI_SFQuest_Questyno_GeorgeScott23_Complete"})



--[[
            *** Samuel Young ***
            Elenco:
                intro. Parla con Samuel Young per sbloccare le daily.
				1. Recuperare Base.DeadRabbit;4 (275rep)
				2. Recuperare Base.DeadRabbit;2 (150rep)
				3. Recuperare TrapCrate:30 (100rep + Spago)
				4. Recuperare Base.TrapBox;15 (200rep + 30$)
				5. Recuperare Base.DeadSquirrel;2 (80rep)
				6. Recuperare Base.Bird;4 (200rep)
				7. Recuperare Base.DeadRabbit;2 (80rep + DehydratedMeatStick;8)
				8. Recuperare Moveables.camping_01_17 parlando con (11217,8963,0) (40rep + 50$)
				9. Recuperare Base.Bird;2 (90rep + Base.BeefJerky)
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

-- intro. parla con Samuel Young per sbloccare le daily
table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SamuelYoung_Intro_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SamuelYoung_Intro", text = "IGUI_SFQuest_Questyno_SamuelYoung_Intro_Complete_Text"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SamuelYoung1_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SamuelYoung1", optional = true, text = "IGUI_SFQuest_Questyno_SamuelYoung1_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SamuelYoung1_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SamuelYoung1_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SamuelYoung1_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SamuelYoung1", text = "IGUI_SFQuest_Questyno_SamuelYoung1_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SamuelYoung2_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SamuelYoung2", optional = true, text = "IGUI_SFQuest_Questyno_SamuelYoung2_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SamuelYoung2_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SamuelYoung2_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SamuelYoung2_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SamuelYoung2", text = "IGUI_SFQuest_Questyno_SamuelYoung2_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SamuelYoung3_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SamuelYoung3", optional = true, text = "IGUI_SFQuest_Questyno_SamuelYoung3_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SamuelYoung3_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SamuelYoung3_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SamuelYoung3_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SamuelYoung3", text = "IGUI_SFQuest_Questyno_SamuelYoung3_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SamuelYoung4_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SamuelYoung4", optional = true, text = "IGUI_SFQuest_Questyno_SamuelYoung4_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SamuelYoung4_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SamuelYoung4_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SamuelYoung4_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SamuelYoung4", text = "IGUI_SFQuest_Questyno_SamuelYoung4_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SamuelYoung5_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SamuelYoung5", optional = true, text = "IGUI_SFQuest_Questyno_SamuelYoung5_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SamuelYoung5_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SamuelYoung5_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SamuelYoung5_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SamuelYoung5", text = "IGUI_SFQuest_Questyno_SamuelYoung5_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SamuelYoung6_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SamuelYoung6", optional = true, text = "IGUI_SFQuest_Questyno_SamuelYoung6_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SamuelYoung6_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SamuelYoung6_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SamuelYoung6_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SamuelYoung6", text = "IGUI_SFQuest_Questyno_SamuelYoung6_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SamuelYoung7_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SamuelYoung7", optional = true, text = "IGUI_SFQuest_Questyno_SamuelYoung7_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SamuelYoung7_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SamuelYoung7_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SamuelYoung7_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SamuelYoung7", text = "IGUI_SFQuest_Questyno_SamuelYoung7_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SamuelYoung8_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SamuelYoung8", optional = true, text = "IGUI_SFQuest_Questyno_SamuelYoung8_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SamuelYoung8_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SamuelYoung8_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SamuelYoung8_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SamuelYoung8_A", text = "IGUI_SFQuest_Questyno_SamuelYoung8_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SamuelYoung9_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SamuelYoung9", optional = true, text = "IGUI_SFQuest_Questyno_SamuelYoung9_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SamuelYoung9_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SamuelYoung9_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SamuelYoung9_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SamuelYoung9", text = "IGUI_SFQuest_Questyno_SamuelYoung9_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SamuelYoung10_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SamuelYoung10", optional = true, text = "IGUI_SFQuest_Questyno_SamuelYoung10_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SamuelYoung10_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SamuelYoung10_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SamuelYoung10_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SamuelYoung10", text = "IGUI_SFQuest_Questyno_SamuelYoung10_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SamuelYoung11_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SamuelYoung11", optional = true, text = "IGUI_SFQuest_Questyno_SamuelYoung11_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SamuelYoung11_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SamuelYoung11_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SamuelYoung11_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SamuelYoung11", text = "IGUI_SFQuest_Questyno_SamuelYoung11_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SamuelYoung12_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SamuelYoung12", optional = true, text = "IGUI_SFQuest_Questyno_SamuelYoung12_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SamuelYoung12_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SamuelYoung12_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SamuelYoung12_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SamuelYoung12", text = "IGUI_SFQuest_Questyno_SamuelYoung12_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SamuelYoung13_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SamuelYoung13", optional = true, text = "IGUI_SFQuest_Questyno_SamuelYoung13_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SamuelYoung13_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SamuelYoung13_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SamuelYoung13_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SamuelYoung13_A", text = "IGUI_SFQuest_Questyno_SamuelYoung13_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SamuelYoung14_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SamuelYoung14", optional = true, text = "IGUI_SFQuest_Questyno_SamuelYoung14_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SamuelYoung14_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SamuelYoung14_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SamuelYoung14_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SamuelYoung14_A", text = "IGUI_SFQuest_Questyno_SamuelYoung14_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SamuelYoung15_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SamuelYoung15", optional = true, text = "IGUI_SFQuest_Questyno_SamuelYoung15_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SamuelYoung15_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SamuelYoung15_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SamuelYoung15_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SamuelYoung15", text = "IGUI_SFQuest_Questyno_SamuelYoung15_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SamuelYoung16_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SamuelYoung16", optional = true, text = "IGUI_SFQuest_Questyno_SamuelYoung16_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SamuelYoung16_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SamuelYoung16_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SamuelYoung16_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SamuelYoung16_A", text = "IGUI_SFQuest_Questyno_SamuelYoung16_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SamuelYoung17_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SamuelYoung17", optional = true, text = "IGUI_SFQuest_Questyno_SamuelYoung17_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SamuelYoung17_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SamuelYoung17_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SamuelYoung17_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SamuelYoung17_A", text = "IGUI_SFQuest_Questyno_SamuelYoung17_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SamuelYoung18_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SamuelYoung18", optional = true, text = "IGUI_SFQuest_Questyno_SamuelYoung18_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SamuelYoung18_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SamuelYoung18_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SamuelYoung18_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SamuelYoung18", text = "IGUI_SFQuest_Questyno_SamuelYoung18_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SamuelYoung19_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SamuelYoung19", optional = true, text = "IGUI_SFQuest_Questyno_SamuelYoung19_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SamuelYoung19_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SamuelYoung19_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SamuelYoung19_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SamuelYoung19", text = "IGUI_SFQuest_Questyno_SamuelYoung19_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SamuelYoung20_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SamuelYoung20", optional = true, text = "IGUI_SFQuest_Questyno_SamuelYoung20_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SamuelYoung20_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SamuelYoung20_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SamuelYoung20_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SamuelYoung20", text = "IGUI_SFQuest_Questyno_SamuelYoung20_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SamuelYoung21_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SamuelYoung21", optional = true, text = "IGUI_SFQuest_Questyno_SamuelYoung21_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SamuelYoung21_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SamuelYoung21_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SamuelYoung21_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SamuelYoung21", text = "IGUI_SFQuest_Questyno_SamuelYoung21_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SamuelYoung22_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SamuelYoung22", optional = true, text = "IGUI_SFQuest_Questyno_SamuelYoung22_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SamuelYoung22_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SamuelYoung22_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SamuelYoung22_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SamuelYoung22", text = "IGUI_SFQuest_Questyno_SamuelYoung22_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SamuelYoung23_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SamuelYoung23", optional = true, text = "IGUI_SFQuest_Questyno_SamuelYoung23_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SamuelYoung23_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SamuelYoung23_Begin_Text_Declined"})

--[[
            *** Xu Mishura ***
            Elenco:
                intro. Parla con Tony per sbloccare le daily.
				1. Recuperare Base.Dress_Long (100rep)
				2. Recuperare Base.Shoes_ArmyBootsDesert (80rep)
				3. Recuperare Base.Briefs_SmallTrunks_Red (50rep)
				4. Recuperare Base.Briefs_AnimalPrints (60rep)
				5. Recuperare Base.Shoes_RedTrainers (100rep)
				6. Recuperare Base.Trousers_Scrubs (150rep)
				7. Recuperare Base.Skirt_Mini (50rep)
				8. Recuperare Base.Jumper_DiamondPatternTINT (40rep)
				9. Recuperare Base.Shirt_Lumberjack (40rep)
				10. Recuperare Base.Apron_Spiffos (200rep)
				11. Recuperare Base.Vest_Hunting_Camo (180rep)
				12. Recuperare Base.Jacket_Black (100rep)
				13. Recuperare Base.Jacket_Shellsuit_Teal (100rep)
				14. Recuperare Base.Shellsuit_Black (120rep)
				15. Recuperare Base.Jacket_Varsity (100rep)
				16. Recuperare Base.Jacket_WhiteTINT (50rep)
				17. Recuperare Base.HoodieDown_ThiteTINT (60rep)
				18. Recuperare Base.Jumper_PoloNeck (50rep)
				19. Recuperare Spongie.Jumper_military (70rep)
				20. Recuperare Base.Vest_DefaultTEXTURE (80rep)
				21. Recuperare Base.Shirt_HawaiianRed (200rep)
				22. Recuperare Base.Shirt_Denim (50rep)
				23. Recuperare Base.Shirt_PrisonGuard (80rep)
				24. Recuperare Base.Shirt_PoliceBlue (100rep)
				25. Recuperare Base.LongCoat_Bathrobe (100rep)
]]

-- intro. parla con Xu Mishura per sbloccare le daily
table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_XuMishura_Intro_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_XuMishura_Intro", text = "IGUI_SFQuest_Questyno_XuMishura_Intro_Complete_Text"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_XuMishura1_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_XuMishura1", optional = true, text = "IGUI_SFQuest_Questyno_XuMishura1_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_XuMishura1_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_XuMishura1_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_XuMishura1_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_XuMishura1", text = "IGUI_SFQuest_Questyno_XuMishura1_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_XuMishura2_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_XuMishura2", optional = true, text = "IGUI_SFQuest_Questyno_XuMishura2_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_XuMishura2_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_XuMishura2_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_XuMishura2_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_XuMishura2", text = "IGUI_SFQuest_Questyno_XuMishura2_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_XuMishura3_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_XuMishura3", optional = true, text = "IGUI_SFQuest_Questyno_XuMishura3_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_XuMishura3_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_XuMishura3_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_XuMishura3_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_XuMishura3", text = "IGUI_SFQuest_Questyno_XuMishura3_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_XuMishura4_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_XuMishura4", optional = true, text = "IGUI_SFQuest_Questyno_XuMishura4_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_XuMishura4_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_XuMishura4_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_XuMishura4_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_XuMishura4", text = "IGUI_SFQuest_Questyno_XuMishura4_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_XuMishura5_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_XuMishura5", optional = true, text = "IGUI_SFQuest_Questyno_XuMishura5_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_XuMishura5_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_XuMishura5_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_XuMishura5_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_XuMishura5", text = "IGUI_SFQuest_Questyno_XuMishura5_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_XuMishura6_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_XuMishura6", optional = true, text = "IGUI_SFQuest_Questyno_XuMishura6_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_XuMishura6_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_XuMishura6_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_XuMishura6_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_XuMishura6", text = "IGUI_SFQuest_Questyno_XuMishura6_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_XuMishura7_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_XuMishura7", optional = true, text = "IGUI_SFQuest_Questyno_XuMishura7_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_XuMishura7_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_XuMishura7_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_XuMishura7_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_XuMishura7", text = "IGUI_SFQuest_Questyno_XuMishura7_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_XuMishura8_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_XuMishura8", optional = true, text = "IGUI_SFQuest_Questyno_XuMishura8_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_XuMishura8_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_XuMishura8_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_XuMishura8_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_XuMishura8", text = "IGUI_SFQuest_Questyno_XuMishura8_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_XuMishura9_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_XuMishura9", optional = true, text = "IGUI_SFQuest_Questyno_XuMishura9_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_XuMishura9_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_XuMishura9_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_XuMishura9_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_XuMishura9", text = "IGUI_SFQuest_Questyno_XuMishura9_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_XuMishura10_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_XuMishura10", optional = true, text = "IGUI_SFQuest_Questyno_XuMishura10_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_XuMishura10_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_XuMishura10_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_XuMishura10_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_XuMishura10", text = "IGUI_SFQuest_Questyno_XuMishura10_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_XuMishura11_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_XuMishura11", optional = true, text = "IGUI_SFQuest_Questyno_XuMishura11_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_XuMishura11_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_XuMishura11_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_XuMishura11_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_XuMishura11", text = "IGUI_SFQuest_Questyno_XuMishura11_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_XuMishura12_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_XuMishura12", optional = true, text = "IGUI_SFQuest_Questyno_XuMishura12_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_XuMishura12_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_XuMishura12_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_XuMishura12_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_XuMishura12", text = "IGUI_SFQuest_Questyno_XuMishura12_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_XuMishura13_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_XuMishura13", optional = true, text = "IGUI_SFQuest_Questyno_XuMishura13_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_XuMishura13_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_XuMishura13_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_XuMishura13_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_XuMishura13", text = "IGUI_SFQuest_Questyno_XuMishura13_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_XuMishura14_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_XuMishura14", optional = true, text = "IGUI_SFQuest_Questyno_XuMishura14_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_XuMishura14_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_XuMishura14_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_XuMishura14_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_XuMishura14", text = "IGUI_SFQuest_Questyno_XuMishura14_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_XuMishura15_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_XuMishura15", optional = true, text = "IGUI_SFQuest_Questyno_XuMishura15_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_XuMishura15_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_XuMishura15_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_XuMishura15_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_XuMishura15", text = "IGUI_SFQuest_Questyno_XuMishura15_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_XuMishura16_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_XuMishura16", optional = true, text = "IGUI_SFQuest_Questyno_XuMishura16_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_XuMishura16_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_XuMishura16_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_XuMishura16_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_XuMishura16", text = "IGUI_SFQuest_Questyno_XuMishura16_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_XuMishura17_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_XuMishura17", optional = true, text = "IGUI_SFQuest_Questyno_XuMishura17_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_XuMishura17_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_XuMishura17_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_XuMishura17_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_XuMishura17", text = "IGUI_SFQuest_Questyno_XuMishura17_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_XuMishura18_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_XuMishura18", optional = true, text = "IGUI_SFQuest_Questyno_XuMishura18_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_XuMishura18_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_XuMishura18_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_XuMishura18_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_XuMishura18", text = "IGUI_SFQuest_Questyno_XuMishura18_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_XuMishura19_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_XuMishura19", optional = true, text = "IGUI_SFQuest_Questyno_XuMishura19_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_XuMishura19_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_XuMishura19_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_XuMishura19_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_XuMishura19", text = "IGUI_SFQuest_Questyno_XuMishura19_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_XuMishura20_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_XuMishura20", optional = true, text = "IGUI_SFQuest_Questyno_XuMishura20_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_XuMishura20_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_XuMishura20_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_XuMishura20_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_XuMishura20", text = "IGUI_SFQuest_Questyno_XuMishura20_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_XuMishura21_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_XuMishura21", optional = true, text = "IGUI_SFQuest_Questyno_XuMishura21_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_XuMishura21_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_XuMishura21_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_XuMishura21_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_XuMishura21", text = "IGUI_SFQuest_Questyno_XuMishura21_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_XuMishura22_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_XuMishura22", optional = true, text = "IGUI_SFQuest_Questyno_XuMishura22_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_XuMishura22_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_XuMishura22_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_XuMishura22_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_XuMishura22", text = "IGUI_SFQuest_Questyno_XuMishura22_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_XuMishura23_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_XuMishura23", optional = true, text = "IGUI_SFQuest_Questyno_XuMishura23_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_XuMishura23_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_XuMishura23_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_XuMishura23_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_XuMishura23", text = "IGUI_SFQuest_Questyno_XuMishura23_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_XuMishura24_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_XuMishura24", optional = true, text = "IGUI_SFQuest_Questyno_XuMishura24_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_XuMishura24_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_XuMishura24_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_XuMishura24_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_XuMishura24", text = "IGUI_SFQuest_Questyno_XuMishura24_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_XuMishura25_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_XuMishura25", optional = true, text = "IGUI_SFQuest_Questyno_XuMishura25_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_XuMishura25_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_XuMishura25_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_XuMishura25_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_XuMishura25", text = "IGUI_SFQuest_Questyno_XuMishura25_Complete"})

--[[
            *** David Turner ***
            Elenco:
                intro. Parla con David Turner per sbloccare le daily.
				1. Recuperare Base.SmallSheetMetal;4 (70rep)
				2. Recuperare Base.SheetMetal;4 (200rep + Base.ScrapVestStudded)
				3. Recuperare Sweapons.ScrapSpear parlando con (4750,10181,0) (100rep + 20$ + Base.PropaneTank)
				4. Recuperare Base.ElectronicsScrap;30,Base.ElectricWire;4,Base.SheetMetal;2 (250rep)
				5. Recuperare Base.ElectronicsScrap;40 (200rep)
				6. Recuperare Base.ElectronicsScrap;20,Base.Battery;4,Radio.RadioTransmitter;4 (250rep + SWeapons.HugeScrapPickaxe)
				7. Recuperare Base.Generator parlando con (9503,6174,0) (80rep + 50$)
				8. Recuperare Base.ElectricWire;10 (70rep + Base.Steak)
				9. Recuperare Base.ScrapMetal;8;Base.ElectronicsScrap;32 (100rep)
				10. Recuperare Base.EngineParts;4 (225rep)
				11. Recuperare Base.MetalPipe;4 (180rep)
				12. Recuperare Base.UnusableMetal;8 (50rep + Base.ScrapKiltStudded)
				13. Recuperare Base.ElectronicsMag1 parlando con (7289,8262,0) (130rep)
				14. Recuperare WaterBottleFull (35rep)
				15. Recuperare Base.SheetMetal;20,Base.EngineParts;20,Base.ElectronicsScrap;20,Base.UnusableMetal;2 parlando con (8224,7501,0) (80rep + Base.SheetMetal;2,Base.EngineParts;6)
				16. Recuperare Base.ElectronicsScrap;40 (100rep)
				17. Recuperare Base.Wrench parlando con (10452,8267,0) (60rep)
				18. Recuperare Base.SheetPaper2 parlando con (16514,6503,0) (65rep + 25$) - password?: swR48x3j
				19. Recuperare Base.MetalPipe;2 (65rep)
				20. Recuperare Base.ScrapMetal;15 (120rep)
				21. Recuperare Base.ScrapMetal;40 (200rep)
				22. Recuperare Base.PipeWrench parlando con (8235,10993,0) (50rep + Base.PipeWrench)
				23. Recuperare Base.ScrapMetal;12 (130rep)
]]

-- intro. parla con David Turner per sbloccare le daily
table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_DavidTurner_Intro_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_DavidTurner_Intro", text = "IGUI_SFQuest_Questyno_DavidTurner_Intro_Complete_Text"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_DavidTurner1_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_DavidTurner1", optional = true, text = "IGUI_SFQuest_Questyno_DavidTurner1_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_DavidTurner1_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_DavidTurner1_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_DavidTurner1_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_DavidTurner1", text = "IGUI_SFQuest_Questyno_DavidTurner1_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_DavidTurner2_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_DavidTurner2", optional = true, text = "IGUI_SFQuest_Questyno_DavidTurner2_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_DavidTurner2_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_DavidTurner2_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_DavidTurner2_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_DavidTurner2", text = "IGUI_SFQuest_Questyno_DavidTurner2_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_DavidTurner3_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_DavidTurner3", optional = true, text = "IGUI_SFQuest_Questyno_DavidTurner3_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_DavidTurner3_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_DavidTurner3_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_DavidTurner3_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_DavidTurner3_A", text = "IGUI_SFQuest_Questyno_DavidTurner3_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_DavidTurner4_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_DavidTurner4", optional = true, text = "IGUI_SFQuest_Questyno_DavidTurner4_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_DavidTurner4_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_DavidTurner4_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_DavidTurner4_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_DavidTurner4_A", text = "IGUI_SFQuest_Questyno_DavidTurner4_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_DavidTurner5_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_DavidTurner5", optional = true, text = "IGUI_SFQuest_Questyno_DavidTurner5_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_DavidTurner5_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_DavidTurner5_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_DavidTurner5_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_DavidTurner5", text = "IGUI_SFQuest_Questyno_DavidTurner5_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_DavidTurner6_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_DavidTurner6", optional = true, text = "IGUI_SFQuest_Questyno_DavidTurner6_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_DavidTurner6_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_DavidTurner6_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_DavidTurner6_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_DavidTurner6_A", text = "IGUI_SFQuest_Questyno_DavidTurner6_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_DavidTurner7_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_DavidTurner7", optional = true, text = "IGUI_SFQuest_Questyno_DavidTurner7_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_DavidTurner7_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_DavidTurner7_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_DavidTurner7_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_DavidTurner7_A", text = "IGUI_SFQuest_Questyno_DavidTurner7_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_DavidTurner8_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_DavidTurner8", optional = true, text = "IGUI_SFQuest_Questyno_DavidTurner8_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_DavidTurner8_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_DavidTurner8_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_DavidTurner8_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_DavidTurner8", text = "IGUI_SFQuest_Questyno_DavidTurner8_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_DavidTurner9_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_DavidTurner9", optional = true, text = "IGUI_SFQuest_Questyno_DavidTurner9_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_DavidTurner9_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_DavidTurner9_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_DavidTurner9_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_DavidTurner9_A", text = "IGUI_SFQuest_Questyno_DavidTurner9_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_DavidTurner10_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_DavidTurner10", optional = true, text = "IGUI_SFQuest_Questyno_DavidTurner10_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_DavidTurner10_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_DavidTurner10_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_DavidTurner10_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_DavidTurner10", text = "IGUI_SFQuest_Questyno_DavidTurner10_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_DavidTurner11_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_DavidTurner11", optional = true, text = "IGUI_SFQuest_Questyno_DavidTurner11_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_DavidTurner11_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_DavidTurner11_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_DavidTurner11_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_DavidTurner11", text = "IGUI_SFQuest_Questyno_DavidTurner11_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_DavidTurner12_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_DavidTurner12", optional = true, text = "IGUI_SFQuest_Questyno_DavidTurner12_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_DavidTurner12_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_DavidTurner12_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_DavidTurner12_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_DavidTurner12", text = "IGUI_SFQuest_Questyno_DavidTurner12_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_DavidTurner13_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_DavidTurner13", optional = true, text = "IGUI_SFQuest_Questyno_DavidTurner13_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_DavidTurner13_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_DavidTurner13_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_DavidTurner13_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_DavidTurner13_A", text = "IGUI_SFQuest_Questyno_DavidTurner13_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_DavidTurner14_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_DavidTurner14", optional = true, text = "IGUI_SFQuest_Questyno_DavidTurner14_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_DavidTurner14_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_DavidTurner14_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_DavidTurner14_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_DavidTurner14", text = "IGUI_SFQuest_Questyno_DavidTurner14_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_DavidTurner15_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_DavidTurner15", optional = true, text = "IGUI_SFQuest_Questyno_DavidTurner15_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_DavidTurner15_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_DavidTurner15_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_DavidTurner15_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_DavidTurner15_B", text = "IGUI_SFQuest_Questyno_DavidTurner15_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_DavidTurner16_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_DavidTurner16", optional = true, text = "IGUI_SFQuest_Questyno_DavidTurner16_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_DavidTurner16_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_DavidTurner16_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_DavidTurner16_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_DavidTurner16", text = "IGUI_SFQuest_Questyno_DavidTurner16_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_DavidTurner17_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_DavidTurner17", optional = true, text = "IGUI_SFQuest_Questyno_DavidTurner17_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_DavidTurner17_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_DavidTurner17_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_DavidTurner17_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_DavidTurner17_A", text = "IGUI_SFQuest_Questyno_DavidTurner17_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_DavidTurner18_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_DavidTurner18", optional = true, text = "IGUI_SFQuest_Questyno_DavidTurner18_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_DavidTurner18_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_DavidTurner18_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_DavidTurner18_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_DavidTurner18_A", text = "IGUI_SFQuest_Questyno_DavidTurner18_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_DavidTurner19_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_DavidTurner19", optional = true, text = "IGUI_SFQuest_Questyno_DavidTurner19_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_DavidTurner19_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_DavidTurner19_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_DavidTurner19_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_DavidTurner19", text = "IGUI_SFQuest_Questyno_DavidTurner19_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_DavidTurner20_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_DavidTurner20", optional = true, text = "IGUI_SFQuest_Questyno_DavidTurner20_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_DavidTurner20_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_DavidTurner20_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_DavidTurner20_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_DavidTurner20", text = "IGUI_SFQuest_Questyno_DavidTurner20_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_DavidTurner21_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_DavidTurner21", optional = true, text = "IGUI_SFQuest_Questyno_DavidTurner21_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_DavidTurner21_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_DavidTurner21_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_DavidTurner21_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_DavidTurner21", text = "IGUI_SFQuest_Questyno_DavidTurner21_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_DavidTurner22_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_DavidTurner22", optional = true, text = "IGUI_SFQuest_Questyno_DavidTurner22_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_DavidTurner22_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_DavidTurner22_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_DavidTurner22_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_DavidTurner22_A", text = "IGUI_SFQuest_Questyno_DavidTurner22_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_DavidTurner23_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_DavidTurner23", optional = true, text = "IGUI_SFQuest_Questyno_DavidTurner23_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_DavidTurner23_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_DavidTurner23_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_DavidTurner23_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_DavidTurner23", text = "IGUI_SFQuest_Questyno_DavidTurner23_Complete"})


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

-- intro. parla con Rafael per sbloccare le daily
table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_RafaelPrezioso_Intro_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_RafaelPrezioso_Intro", text = "IGUI_SFQuest_Questyno_RafaelPrezioso_Intro_Complete_Text"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_RafaelPrezioso1_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_RafaelPrezioso1", optional = true, text = "IGUI_SFQuest_Questyno_RafaelPrezioso1_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_RafaelPrezioso1_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_RafaelPrezioso1_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_RafaelPrezioso1_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_RafaelPrezioso1", text = "IGUI_SFQuest_Questyno_RafaelPrezioso1_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_RafaelPrezioso2_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_RafaelPrezioso2", optional = true, text = "IGUI_SFQuest_Questyno_RafaelPrezioso2_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_RafaelPrezioso2_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_RafaelPrezioso2_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_RafaelPrezioso2_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_RafaelPrezioso2", text = "IGUI_SFQuest_Questyno_RafaelPrezioso2_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_RafaelPrezioso3_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_RafaelPrezioso3", optional = true, text = "IGUI_SFQuest_Questyno_RafaelPrezioso3_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_RafaelPrezioso3_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_RafaelPrezioso3_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_RafaelPrezioso3_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_RafaelPrezioso3_A", text = "IGUI_SFQuest_Questyno_RafaelPrezioso3_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_RafaelPrezioso4_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_RafaelPrezioso4", optional = true, text = "IGUI_SFQuest_Questyno_RafaelPrezioso4_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_RafaelPrezioso4_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_RafaelPrezioso4_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_RafaelPrezioso4_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_RafaelPrezioso4_A", text = "IGUI_SFQuest_Questyno_RafaelPrezioso4_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_RafaelPrezioso5_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_RafaelPrezioso5", optional = true, text = "IGUI_SFQuest_Questyno_RafaelPrezioso5_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_RafaelPrezioso5_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_RafaelPrezioso5_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_RafaelPrezioso5_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_RafaelPrezioso5_A", text = "IGUI_SFQuest_Questyno_RafaelPrezioso5_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_RafaelPrezioso6_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_RafaelPrezioso6", optional = true, text = "IGUI_SFQuest_Questyno_RafaelPrezioso6_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_RafaelPrezioso6_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_RafaelPrezioso6_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_RafaelPrezioso6_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_RafaelPrezioso6", text = "IGUI_SFQuest_Questyno_RafaelPrezioso6_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_RafaelPrezioso7_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_RafaelPrezioso7", optional = true, text = "IGUI_SFQuest_Questyno_RafaelPrezioso7_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_RafaelPrezioso7_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_RafaelPrezioso7_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_RafaelPrezioso7_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_RafaelPrezioso7_A", text = "IGUI_SFQuest_Questyno_RafaelPrezioso7_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_RafaelPrezioso8_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_RafaelPrezioso8", optional = true, text = "IGUI_SFQuest_Questyno_RafaelPrezioso8_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_RafaelPrezioso8_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_RafaelPrezioso8_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_RafaelPrezioso8_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_RafaelPrezioso8", text = "IGUI_SFQuest_Questyno_RafaelPrezioso8_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_RafaelPrezioso9_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_RafaelPrezioso9", optional = true, text = "IGUI_SFQuest_Questyno_RafaelPrezioso9_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_RafaelPrezioso9_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_RafaelPrezioso9_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_RafaelPrezioso9_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_RafaelPrezioso9_A", text = "IGUI_SFQuest_Questyno_RafaelPrezioso9_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_RafaelPrezioso10_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_RafaelPrezioso10", optional = true, text = "IGUI_SFQuest_Questyno_RafaelPrezioso10_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_RafaelPrezioso10_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_RafaelPrezioso10_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_RafaelPrezioso10_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_RafaelPrezioso10_B", text = "IGUI_SFQuest_Questyno_RafaelPrezioso10_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_RafaelPrezioso11_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_RafaelPrezioso11", optional = true, text = "IGUI_SFQuest_Questyno_RafaelPrezioso11_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_RafaelPrezioso11_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_RafaelPrezioso11_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_RafaelPrezioso11_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_RafaelPrezioso11_B", text = "IGUI_SFQuest_Questyno_RafaelPrezioso11_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_RafaelPrezioso12_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_RafaelPrezioso12", optional = true, text = "IGUI_SFQuest_Questyno_RafaelPrezioso12_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_RafaelPrezioso12_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_RafaelPrezioso12_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_RafaelPrezioso12_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_RafaelPrezioso12_B", text = "IGUI_SFQuest_Questyno_RafaelPrezioso12_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_RafaelPrezioso13_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_RafaelPrezioso13", optional = true, text = "IGUI_SFQuest_Questyno_RafaelPrezioso13_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_RafaelPrezioso13_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_RafaelPrezioso13_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_RafaelPrezioso13_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_RafaelPrezioso13", text = "IGUI_SFQuest_Questyno_RafaelPrezioso13_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_RafaelPrezioso14_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_RafaelPrezioso14", optional = true, text = "IGUI_SFQuest_Questyno_RafaelPrezioso14_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_RafaelPrezioso14_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_RafaelPrezioso14_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_RafaelPrezioso14_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_RafaelPrezioso14_A", text = "IGUI_SFQuest_Questyno_RafaelPrezioso14_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_RafaelPrezioso15_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_RafaelPrezioso15", optional = true, text = "IGUI_SFQuest_Questyno_RafaelPrezioso15_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_RafaelPrezioso15_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_RafaelPrezioso15_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_RafaelPrezioso15_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_RafaelPrezioso15_A", text = "IGUI_SFQuest_Questyno_RafaelPrezioso15_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_RafaelPrezioso16_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_RafaelPrezioso16", optional = true, text = "IGUI_SFQuest_Questyno_RafaelPrezioso16_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_RafaelPrezioso16_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_RafaelPrezioso16_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_RafaelPrezioso16_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_RafaelPrezioso16_A", text = "IGUI_SFQuest_Questyno_RafaelPrezioso16_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_RafaelPrezioso17_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_RafaelPrezioso17", optional = true, text = "IGUI_SFQuest_Questyno_RafaelPrezioso17_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_RafaelPrezioso17_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_RafaelPrezioso17_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_RafaelPrezioso17_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_RafaelPrezioso17_A", text = "IGUI_SFQuest_Questyno_RafaelPrezioso17_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_RafaelPrezioso18_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_RafaelPrezioso18", optional = true, text = "IGUI_SFQuest_Questyno_RafaelPrezioso18_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_RafaelPrezioso18_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_RafaelPrezioso18_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_RafaelPrezioso18_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_RafaelPrezioso18_B", text = "IGUI_SFQuest_Questyno_RafaelPrezioso18_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_RafaelPrezioso19_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_RafaelPrezioso19", optional = true, text = "IGUI_SFQuest_Questyno_RafaelPrezioso19_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_RafaelPrezioso19_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_RafaelPrezioso19_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_RafaelPrezioso19_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_RafaelPrezioso19", text = "IGUI_SFQuest_Questyno_RafaelPrezioso19_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_RafaelPrezioso20_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_RafaelPrezioso20", optional = true, text = "IGUI_SFQuest_Questyno_RafaelPrezioso20_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_RafaelPrezioso20_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_RafaelPrezioso20_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_RafaelPrezioso20_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_RafaelPrezioso20_A", text = "IGUI_SFQuest_Questyno_RafaelPrezioso20_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_RafaelPrezioso21_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_RafaelPrezioso21", optional = true, text = "IGUI_SFQuest_Questyno_RafaelPrezioso21_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_RafaelPrezioso21_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_RafaelPrezioso21_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_RafaelPrezioso21_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_RafaelPrezioso21", text = "IGUI_SFQuest_Questyno_RafaelPrezioso21_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_RafaelPrezioso22_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_RafaelPrezioso22", optional = true, text = "IGUI_SFQuest_Questyno_RafaelPrezioso22_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_RafaelPrezioso22_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_RafaelPrezioso22_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_RafaelPrezioso22_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_RafaelPrezioso22", text = "IGUI_SFQuest_Questyno_RafaelPrezioso22_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_RafaelPrezioso23_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_RafaelPrezioso23", optional = true, text = "IGUI_SFQuest_Questyno_RafaelPrezioso23_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_RafaelPrezioso23_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_RafaelPrezioso23_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_RafaelPrezioso23_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_RafaelPrezioso23", text = "IGUI_SFQuest_Questyno_RafaelPrezioso23_Complete"})

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
				7. Recupero Base.ElectronicsMag3,Base.FarmingMag1,Base.FishingMag2,Base.ElectronicsMag2 a (MANCANO COORDINATE) (100rep + 25$)
				8. Recupero  Base.BookMechanic1,Base.BookCarpentry5,Base.BookFarming5,Base.BookFirstAid5,Base.BookMechanic5,Base.BookMetalWelding5 a (MANCANO COORDINATE) (70rep + 30$) 
				9. Recuperare Base.TVMagazine;5 (60rep)
				10. Recuperare Base.BookFarming1,Base.BookFarming2,Base.BookFarming3,Base.BookFarming4,Base.BookFarming5 (250rep)
				11. Recuperare Base.BookElectrician1,Base.BookElectrician2,Base.BookElectrician3,Base.BookElectrician4,Base.BookElectrician5 (220rep)
				12. Recuperare Base.TVMagazine;10 (200rep)
				13. Recuperare Base.BookFishing3,Base.BookMetalWelding2,Base.BookMetalWelding3,Base.BookCarpentry4,Base.BookTrapping2 (140rep)
				14. Recuperare Base.BookFishing4,Base.BookMetalWelding1,Base.BookMetalWelding2,Base.BookCarpentry2,Base.BookTrapping5 (150rep)
				15. Recuperare Base.BookForaging4,Base.BookForaging3,Base.BookMechanic1,Base.BookCarpentry2,BaseBookFarming5 (130rep)
				16. Recupero Base.HuntingMag1,Base.HuntingMag2 a (MANCANO COORDINATE) (80rep) 
				17. Recuperare Base.FishingMag1,Base.FishingMag2 parlando con (8090,11511,0) (75rep)
				18. Recuperare Base.ElectronicsMag1,Base.ElectronicsMag2,Base.ElectronicsMag3 parlando con (10627,9973,0) (70rep + 30$)
				19. Recuperare Base.SheetPaper2;4,Base.Crayons;2 (100rep + 20$)
				20. Recuperare Base.Magazine;5 (120rep)
				21. Recuperare Base.MagazineWordsearch1,Base.MagazineWordsearch2,Base.MagazineWordsearch3,MagazineCrossword1,MagazineCrossword2,MagazineCrossword3 (200rep)
				22. Recuperare Base.BookCarpentry5 (40rep)
				23. Recuperare Base.BookTrapping3 (50rep)
]]

-- intro. parla con Jeffrey Lewis per sbloccare le daily
table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_JeffreyLewis_Intro_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_JeffreyLewis_Intro", text = "IGUI_SFQuest_Questyno_JeffreyLewis_Intro_Complete_Text"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_JeffreyLewis1_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_JeffreyLewis1", optional = true, text = "IGUI_SFQuest_Questyno_JeffreyLewis1_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_JeffreyLewis1_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_JeffreyLewis1_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_JeffreyLewis1_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_JeffreyLewis1_A", text = "IGUI_SFQuest_Questyno_JeffreyLewis1_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_JeffreyLewis2_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_JeffreyLewis2", optional = true, text = "IGUI_SFQuest_Questyno_JeffreyLewis2_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_JeffreyLewis2_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_JeffreyLewis2_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_JeffreyLewis2_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_JeffreyLewis2_A", text = "IGUI_SFQuest_Questyno_JeffreyLewis2_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_JeffreyLewis3_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_JeffreyLewis3", optional = true, text = "IGUI_SFQuest_Questyno_JeffreyLewis3_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_JeffreyLewis3_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_JeffreyLewis3_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_JeffreyLewis3_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_JeffreyLewis3_A", text = "IGUI_SFQuest_Questyno_JeffreyLewis3_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_JeffreyLewis4_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_JeffreyLewis4", optional = true, text = "IGUI_SFQuest_Questyno_JeffreyLewis4_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_JeffreyLewis4_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_JeffreyLewis4_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_JeffreyLewis4_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_JeffreyLewis4_A", text = "IGUI_SFQuest_Questyno_JeffreyLewis4_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_JeffreyLewis5_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_JeffreyLewis5", optional = true, text = "IGUI_SFQuest_Questyno_JeffreyLewis5_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_JeffreyLewis5_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_JeffreyLewis5_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_JeffreyLewis5_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_JeffreyLewis5_A", text = "IGUI_SFQuest_Questyno_JeffreyLewis5_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_JeffreyLewis6_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_JeffreyLewis6", optional = true, text = "IGUI_SFQuest_Questyno_JeffreyLewis6_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_JeffreyLewis6_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_JeffreyLewis6_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_JeffreyLewis6_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_JeffreyLewis6_A", text = "IGUI_SFQuest_Questyno_JeffreyLewis6_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_JeffreyLewis7_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_JeffreyLewis7", optional = true, text = "IGUI_SFQuest_Questyno_JeffreyLewis7_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_JeffreyLewis7_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_JeffreyLewis7_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_JeffreyLewis7_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_JeffreyLewis7_B", text = "IGUI_SFQuest_Questyno_JeffreyLewis7_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_JeffreyLewis8_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_JeffreyLewis8", optional = true, text = "IGUI_SFQuest_Questyno_JeffreyLewis8_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_JeffreyLewis8_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_JeffreyLewis8_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_JeffreyLewis8_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_JeffreyLewis8_B", text = "IGUI_SFQuest_Questyno_JeffreyLewis8_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_JeffreyLewis9_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_JeffreyLewis9", optional = true, text = "IGUI_SFQuest_Questyno_JeffreyLewis9_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_JeffreyLewis9_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_JeffreyLewis9_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_JeffreyLewis9_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_JeffreyLewis9", text = "IGUI_SFQuest_Questyno_JeffreyLewis9_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_JeffreyLewis10_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_JeffreyLewis10", optional = true, text = "IGUI_SFQuest_Questyno_JeffreyLewis10_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_JeffreyLewis10_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_JeffreyLewis10_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_JeffreyLewis10_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_JeffreyLewis10_A", text = "IGUI_SFQuest_Questyno_JeffreyLewis10_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_JeffreyLewis11_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_JeffreyLewis11", optional = true, text = "IGUI_SFQuest_Questyno_JeffreyLewis11_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_JeffreyLewis11_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_JeffreyLewis11_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_JeffreyLewis11_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_JeffreyLewis11_A", text = "IGUI_SFQuest_Questyno_JeffreyLewis11_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_JeffreyLewis12_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_JeffreyLewis12", optional = true, text = "IGUI_SFQuest_Questyno_JeffreyLewis12_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_JeffreyLewis12_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_JeffreyLewis12_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_JeffreyLewis12_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_JeffreyLewis12", text = "IGUI_SFQuest_Questyno_JeffreyLewis12_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_JeffreyLewis13_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_JeffreyLewis13", optional = true, text = "IGUI_SFQuest_Questyno_JeffreyLewis13_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_JeffreyLewis13_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_JeffreyLewis13_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_JeffreyLewis13_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_JeffreyLewis13_A", text = "IGUI_SFQuest_Questyno_JeffreyLewis13_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_JeffreyLewis14_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_JeffreyLewis14", optional = true, text = "IGUI_SFQuest_Questyno_JeffreyLewis14_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_JeffreyLewis14_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_JeffreyLewis14_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_JeffreyLewis14_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_JeffreyLewis14_A", text = "IGUI_SFQuest_Questyno_JeffreyLewis14_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_JeffreyLewis15_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_JeffreyLewis15", optional = true, text = "IGUI_SFQuest_Questyno_JeffreyLewis15_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_JeffreyLewis15_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_JeffreyLewis15_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_JeffreyLewis15_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_JeffreyLewis15_A", text = "IGUI_SFQuest_Questyno_JeffreyLewis15_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_JeffreyLewis16_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_JeffreyLewis16", optional = true, text = "IGUI_SFQuest_Questyno_JeffreyLewis16_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_JeffreyLewis16_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_JeffreyLewis16_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_JeffreyLewis16_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_JeffreyLewis16_B", text = "IGUI_SFQuest_Questyno_JeffreyLewis16_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_JeffreyLewis17_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_JeffreyLewis17", optional = true, text = "IGUI_SFQuest_Questyno_JeffreyLewis17_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_JeffreyLewis17_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_JeffreyLewis17_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_JeffreyLewis17_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_JeffreyLewis17_B", text = "IGUI_SFQuest_Questyno_JeffreyLewis17_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_JeffreyLewis18_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_JeffreyLewis18", optional = true, text = "IGUI_SFQuest_Questyno_JeffreyLewis18_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_JeffreyLewis18_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_JeffreyLewis18_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_JeffreyLewis18_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_JeffreyLewis18_B", text = "IGUI_SFQuest_Questyno_JeffreyLewis18_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_JeffreyLewis19_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_JeffreyLewis19", optional = true, text = "IGUI_SFQuest_Questyno_JeffreyLewis19_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_JeffreyLewis19_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_JeffreyLewis19_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_JeffreyLewis19_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_JeffreyLewis19_A", text = "IGUI_SFQuest_Questyno_JeffreyLewis19_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_JeffreyLewis20_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_JeffreyLewis20", optional = true, text = "IGUI_SFQuest_Questyno_JeffreyLewis20_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_JeffreyLewis20_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_JeffreyLewis20_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_JeffreyLewis20_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_JeffreyLewis20", text = "IGUI_SFQuest_Questyno_JeffreyLewis20_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_JeffreyLewis21_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_JeffreyLewis21", optional = true, text = "IGUI_SFQuest_Questyno_JeffreyLewis21_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_JeffreyLewis21_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_JeffreyLewis21_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_JeffreyLewis21_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_JeffreyLewis21_A", text = "IGUI_SFQuest_Questyno_JeffreyLewis21_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_JeffreyLewis22_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_JeffreyLewis22", optional = true, text = "IGUI_SFQuest_Questyno_JeffreyLewis22_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_JeffreyLewis22_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_JeffreyLewis22_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_JeffreyLewis22_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_JeffreyLewis22", text = "IGUI_SFQuest_Questyno_JeffreyLewis22_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_JeffreyLewis23_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_JeffreyLewis23", optional = true, text = "IGUI_SFQuest_Questyno_JeffreyLewis23_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_JeffreyLewis23_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_JeffreyLewis23_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_JeffreyLewis23_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_JeffreyLewis23", text = "IGUI_SFQuest_Questyno_JeffreyLewis23_Complete"})

--[[
            *** Christopher Davis ***
            Elenco:
                intro. Parla con Christopher Davis per sbloccare le daily.
				1. Recuperare Base.PotOfSoupRecipe;2 (50rep + 10$ + Base.Pot;2)
				2. Recuperare Base.PanRecipe;2 (50rep + 15$ + Base.Pan;2)
				3. Recuperare farming.Cabbage;3 (200rep + 30$)
				4. Recuperare BaseSalad;2 (150rep + Base.Bowl;2)
				5. Recuperare Base.Butter;2 parlando con (MANCANO COORDINATE)5 (60rep + 70$)
				6. Recuperare Base.Hotsauce,Base.Pepper,Base.FishRoe parlando con (MANCANO COORDINATE)6 (100rep + Base.SushiEgg)
				7. Recuperare Base.Rabbitmeat (ANCHE 25%) (65rep + Base.Burger)
				8. Recuperare Base.Apron_Black (150rep + 50$)
				9. Recuperare Base.GridlePan;2 (100rep)
				10. Recuperare Base.Saucepan;2 (100rep)
				11. Recuperare Base.KitchenKnife;4 (200rep)
				12. Recuperare Base.Cereal;2 parlando con (MANCANO COORDINATE)12 (50rep)
				13. Recuperare Base.BeerCan (150rep)
				14. Recuperare Base.WaterBottleFull (40rep)
				15. Recuperare Base.CannedCornedBeef;3,Base.Cereal;2,Base.CannedChili;2,Base.Lobster;3 parlando con (MANCANO COORDINATE)15 (60rep + Base.Lobster)
				16. Recuperare Base.Lard parlando con (MANCANO COORDINATE)16 (25rep + Base.Milk)
				17. Recuperare 35$ (50rep + Base.Butter)
				18. Recuperare Base.Egg;4 parlando con (MANCANO COORDINATE)18 (40rep + FETTA DI Base.PineApple)
				19. Recuperare Base.Spoon;6 (100rep + 20$)
				20. Recuperare Base.PanRecipe (100rep + Base.Pan)
				21. Recuperare Base.PotSoupRecipe;2 (50rep + Base.Pot;2)
				22. Recuperare Base.CleaningLiquid2;2 (200rep + 30$)
				23. Recuperare Base.RoastingPan (70rep + Smallanimalmeat)
				24. Recuperare Base.Fork;6 (200rep + 30$)
]]

-- intro. parla con Christopher Davis per sbloccare le daily
table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_ChristopherDavis_Intro_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_ChristopherDavis_Intro", text = "IGUI_SFQuest_Questyno_ChristopherDavis_Intro_Complete_Text"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_ChristopherDavis1_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_ChristopherDavis1", optional = true, text = "IGUI_SFQuest_Questyno_ChristopherDavis1_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_ChristopherDavis1_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_ChristopherDavis1_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_ChristopherDavis1_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_ChristopherDavis1", text = "IGUI_SFQuest_Questyno_ChristopherDavis1_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_ChristopherDavis2_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_ChristopherDavis2", optional = true, text = "IGUI_SFQuest_Questyno_ChristopherDavis2_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_ChristopherDavis2_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_ChristopherDavis2_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_ChristopherDavis2_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_ChristopherDavis2", text = "IGUI_SFQuest_Questyno_ChristopherDavis2_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_ChristopherDavis3_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_ChristopherDavis3", optional = true, text = "IGUI_SFQuest_Questyno_ChristopherDavis3_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_ChristopherDavis3_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_ChristopherDavis3_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_ChristopherDavis3_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_ChristopherDavis3", text = "IGUI_SFQuest_Questyno_ChristopherDavis3_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_ChristopherDavis4_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_ChristopherDavis4", optional = true, text = "IGUI_SFQuest_Questyno_ChristopherDavis4_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_ChristopherDavis4_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_ChristopherDavis4_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_ChristopherDavis4_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_ChristopherDavis4", text = "IGUI_SFQuest_Questyno_ChristopherDavis4_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_ChristopherDavis5_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_ChristopherDavis5", optional = true, text = "IGUI_SFQuest_Questyno_ChristopherDavis5_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_ChristopherDavis5_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_ChristopherDavis5_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_ChristopherDavis5_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_ChristopherDavis5_A", text = "IGUI_SFQuest_Questyno_ChristopherDavis5_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_ChristopherDavis6_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_ChristopherDavis6", optional = true, text = "IGUI_SFQuest_Questyno_ChristopherDavis6_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_ChristopherDavis6_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_ChristopherDavis6_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_ChristopherDavis6_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_ChristopherDavis6_B", text = "IGUI_SFQuest_Questyno_ChristopherDavis6_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_ChristopherDavis7_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_ChristopherDavis7", optional = true, text = "IGUI_SFQuest_Questyno_ChristopherDavis7_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_ChristopherDavis7_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_ChristopherDavis7_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_ChristopherDavis7_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_ChristopherDavis7", text = "IGUI_SFQuest_Questyno_ChristopherDavis7_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_ChristopherDavis8_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_ChristopherDavis8", optional = true, text = "IGUI_SFQuest_Questyno_ChristopherDavis8_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_ChristopherDavis8_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_ChristopherDavis8_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_ChristopherDavis8_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_ChristopherDavis8", text = "IGUI_SFQuest_Questyno_ChristopherDavis8_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_ChristopherDavis9_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_ChristopherDavis9", optional = true, text = "IGUI_SFQuest_Questyno_ChristopherDavis9_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_ChristopherDavis9_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_ChristopherDavis9_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_ChristopherDavis9_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_ChristopherDavis9", text = "IGUI_SFQuest_Questyno_ChristopherDavis9_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_ChristopherDavis10_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_ChristopherDavis10", optional = true, text = "IGUI_SFQuest_Questyno_ChristopherDavis10_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_ChristopherDavis10_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_ChristopherDavis10_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_ChristopherDavis10_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_ChristopherDavis10", text = "IGUI_SFQuest_Questyno_ChristopherDavis10_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_ChristopherDavis11_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_ChristopherDavis11", optional = true, text = "IGUI_SFQuest_Questyno_ChristopherDavis11_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_ChristopherDavis11_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_ChristopherDavis11_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_ChristopherDavis11_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_ChristopherDavis11", text = "IGUI_SFQuest_Questyno_ChristopherDavis11_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_ChristopherDavis12_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_ChristopherDavis12", optional = true, text = "IGUI_SFQuest_Questyno_ChristopherDavis12_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_ChristopherDavis12_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_ChristopherDavis12_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_ChristopherDavis12_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_ChristopherDavis12_A", text = "IGUI_SFQuest_Questyno_ChristopherDavis12_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_ChristopherDavis13_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_ChristopherDavis13", optional = true, text = "IGUI_SFQuest_Questyno_ChristopherDavis13_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_ChristopherDavis13_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_ChristopherDavis13_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_ChristopherDavis13_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_ChristopherDavis13", text = "IGUI_SFQuest_Questyno_ChristopherDavis13_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_ChristopherDavis14_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_ChristopherDavis14", optional = true, text = "IGUI_SFQuest_Questyno_ChristopherDavis14_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_ChristopherDavis14_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_ChristopherDavis14_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_ChristopherDavis14_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_ChristopherDavis14", text = "IGUI_SFQuest_Questyno_ChristopherDavis14_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_ChristopherDavis15_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_ChristopherDavis15", optional = true, text = "IGUI_SFQuest_Questyno_ChristopherDavis15_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_ChristopherDavis15_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_ChristopherDavis15_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_ChristopherDavis15_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_ChristopherDavis15_B", text = "IGUI_SFQuest_Questyno_ChristopherDavis15_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_ChristopherDavis16_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_ChristopherDavis16", optional = true, text = "IGUI_SFQuest_Questyno_ChristopherDavis16_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_ChristopherDavis16_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_ChristopherDavis16_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_ChristopherDavis16_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_ChristopherDavis16_A", text = "IGUI_SFQuest_Questyno_ChristopherDavis16_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_ChristopherDavis17_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_ChristopherDavis17", optional = true, text = "IGUI_SFQuest_Questyno_ChristopherDavis17_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_ChristopherDavis17_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_ChristopherDavis17_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_ChristopherDavis17_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_ChristopherDavis17", text = "IGUI_SFQuest_Questyno_ChristopherDavis17_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_ChristopherDavis18_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_ChristopherDavis18", optional = true, text = "IGUI_SFQuest_Questyno_ChristopherDavis18_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_ChristopherDavis18_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_ChristopherDavis18_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_ChristopherDavis18_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_ChristopherDavis18_A", text = "IGUI_SFQuest_Questyno_ChristopherDavis18_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_ChristopherDavis19_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_ChristopherDavis19", optional = true, text = "IGUI_SFQuest_Questyno_ChristopherDavis19_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_ChristopherDavis19_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_ChristopherDavis19_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_ChristopherDavis19_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_ChristopherDavis19", text = "IGUI_SFQuest_Questyno_ChristopherDavis19_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_ChristopherDavis20_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_ChristopherDavis20", optional = true, text = "IGUI_SFQuest_Questyno_ChristopherDavis20_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_ChristopherDavis20_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_ChristopherDavis20_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_ChristopherDavis20_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_ChristopherDavis20", text = "IGUI_SFQuest_Questyno_ChristopherDavis20_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_ChristopherDavis21_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_ChristopherDavis21", optional = true, text = "IGUI_SFQuest_Questyno_ChristopherDavis21_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_ChristopherDavis21_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_ChristopherDavis21_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_ChristopherDavis21_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_ChristopherDavis21", text = "IGUI_SFQuest_Questyno_ChristopherDavis21_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_ChristopherDavis22_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_ChristopherDavis22", optional = true, text = "IGUI_SFQuest_Questyno_ChristopherDavis22_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_ChristopherDavis22_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_ChristopherDavis22_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_ChristopherDavis22_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_ChristopherDavis22", text = "IGUI_SFQuest_Questyno_ChristopherDavis22_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_ChristopherDavis23_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_ChristopherDavis23", optional = true, text = "IGUI_SFQuest_Questyno_ChristopherDavis23_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_ChristopherDavis23_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_ChristopherDavis23_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_ChristopherDavis23_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_ChristopherDavis23", text = "IGUI_SFQuest_Questyno_ChristopherDavis23_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_ChristopherDavis24_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_ChristopherDavis24", optional = true, text = "IGUI_SFQuest_Questyno_ChristopherDavis24_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_ChristopherDavis24_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_ChristopherDavis24_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_ChristopherDavis24_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_ChristopherDavis24", text = "IGUI_SFQuest_Questyno_ChristopherDavis24_Complete"})


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

-- intro. parla con Pamela Perez per sbloccare le daily
table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_PamelaPerez_Intro_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_PamelaPerez_Intro", text = "IGUI_SFQuest_Questyno_PamelaPerez_Intro_Complete_Text"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_PamelaPerez1_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_PamelaPerez1", optional = true, text = "IGUI_SFQuest_Questyno_PamelaPerez1_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_PamelaPerez1_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_PamelaPerez1_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_PamelaPerez1_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_PamelaPerez1", text = "IGUI_SFQuest_Questyno_PamelaPerez1_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_PamelaPerez2_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_PamelaPerez2", optional = true, text = "IGUI_SFQuest_Questyno_PamelaPerez2_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_PamelaPerez2_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_PamelaPerez2_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_PamelaPerez2_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_PamelaPerez2", text = "IGUI_SFQuest_Questyno_PamelaPerez2_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_PamelaPerez3_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_PamelaPerez3", optional = true, text = "IGUI_SFQuest_Questyno_PamelaPerez3_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_PamelaPerez3_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_PamelaPerez3_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_PamelaPerez3_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_PamelaPerez3", text = "IGUI_SFQuest_Questyno_PamelaPerez3_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_PamelaPerez4_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_PamelaPerez4", optional = true, text = "IGUI_SFQuest_Questyno_PamelaPerez4_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_PamelaPerez4_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_PamelaPerez4_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_PamelaPerez4_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_PamelaPerez4", text = "IGUI_SFQuest_Questyno_PamelaPerez4_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_PamelaPerez5_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_PamelaPerez5", optional = true, text = "IGUI_SFQuest_Questyno_PamelaPerez5_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_PamelaPerez5_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_PamelaPerez5_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_PamelaPerez5_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_PamelaPerez5", text = "IGUI_SFQuest_Questyno_PamelaPerez5_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_PamelaPerez6_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_PamelaPerez6", optional = true, text = "IGUI_SFQuest_Questyno_PamelaPerez6_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_PamelaPerez6_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_PamelaPerez6_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_PamelaPerez6_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_PamelaPerez6", text = "IGUI_SFQuest_Questyno_PamelaPerez6_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_PamelaPerez7_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_PamelaPerez7", optional = true, text = "IGUI_SFQuest_Questyno_PamelaPerez7_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_PamelaPerez7_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_PamelaPerez7_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_PamelaPerez7_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_PamelaPerez7", text = "IGUI_SFQuest_Questyno_PamelaPerez7_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_PamelaPerez8_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_PamelaPerez8", optional = true, text = "IGUI_SFQuest_Questyno_PamelaPerez8_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_PamelaPerez8_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_PamelaPerez8_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_PamelaPerez8_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_PamelaPerez8", text = "IGUI_SFQuest_Questyno_PamelaPerez8_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_PamelaPerez9_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_PamelaPerez9", optional = true, text = "IGUI_SFQuest_Questyno_PamelaPerez9_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_PamelaPerez9_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_PamelaPerez9_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_PamelaPerez9_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_PamelaPerez9", text = "IGUI_SFQuest_Questyno_PamelaPerez9_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_PamelaPerez10_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_PamelaPerez10", optional = true, text = "IGUI_SFQuest_Questyno_PamelaPerez10_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_PamelaPerez10_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_PamelaPerez10_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_PamelaPerez10_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_PamelaPerez10", text = "IGUI_SFQuest_Questyno_PamelaPerez10_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_PamelaPerez11_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_PamelaPerez11", optional = true, text = "IGUI_SFQuest_Questyno_PamelaPerez11_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_PamelaPerez11_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_PamelaPerez11_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_PamelaPerez11_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_PamelaPerez11", text = "IGUI_SFQuest_Questyno_PamelaPerez11_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_PamelaPerez12_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_PamelaPerez12", optional = true, text = "IGUI_SFQuest_Questyno_PamelaPerez12_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_PamelaPerez12_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_PamelaPerez12_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_PamelaPerez12_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_PamelaPerez12", text = "IGUI_SFQuest_Questyno_PamelaPerez12_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_PamelaPerez13_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_PamelaPerez13", optional = true, text = "IGUI_SFQuest_Questyno_PamelaPerez13_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_PamelaPerez13_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_PamelaPerez13_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_PamelaPerez13_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_PamelaPerez13", text = "IGUI_SFQuest_Questyno_PamelaPerez13_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_PamelaPerez14_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_PamelaPerez14", optional = true, text = "IGUI_SFQuest_Questyno_PamelaPerez14_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_PamelaPerez14_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_PamelaPerez14_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_PamelaPerez14_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_PamelaPerez14", text = "IGUI_SFQuest_Questyno_PamelaPerez14_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_PamelaPerez15_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_PamelaPerez15", optional = true, text = "IGUI_SFQuest_Questyno_PamelaPerez15_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_PamelaPerez15_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_PamelaPerez15_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_PamelaPerez15_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_PamelaPerez15", text = "IGUI_SFQuest_Questyno_PamelaPerez15_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_PamelaPerez16_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_PamelaPerez16", optional = true, text = "IGUI_SFQuest_Questyno_PamelaPerez16_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_PamelaPerez16_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_PamelaPerez16_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_PamelaPerez16_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_PamelaPerez16_A", text = "IGUI_SFQuest_Questyno_PamelaPerez16_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_PamelaPerez17_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_PamelaPerez17", optional = true, text = "IGUI_SFQuest_Questyno_PamelaPerez17_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_PamelaPerez17_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_PamelaPerez17_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_PamelaPerez17_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_PamelaPerez17_A", text = "IGUI_SFQuest_Questyno_PamelaPerez17_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_PamelaPerez18_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_PamelaPerez18", optional = true, text = "IGUI_SFQuest_Questyno_PamelaPerez18_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_PamelaPerez18_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_PamelaPerez18_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_PamelaPerez18_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_PamelaPerez18", text = "IGUI_SFQuest_Questyno_PamelaPerez18_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_PamelaPerez19_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_PamelaPerez19", optional = true, text = "IGUI_SFQuest_Questyno_PamelaPerez19_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_PamelaPerez19_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_PamelaPerez19_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_PamelaPerez19_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_PamelaPerez19_A", text = "IGUI_SFQuest_Questyno_PamelaPerez19_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_PamelaPerez20_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_PamelaPerez20", optional = true, text = "IGUI_SFQuest_Questyno_PamelaPerez20_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_PamelaPerez20_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_PamelaPerez20_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_PamelaPerez20_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_PamelaPerez20", text = "IGUI_SFQuest_Questyno_PamelaPerez20_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_PamelaPerez21_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_PamelaPerez21", optional = true, text = "IGUI_SFQuest_Questyno_PamelaPerez21_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_PamelaPerez21_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_PamelaPerez21_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_PamelaPerez21_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_PamelaPerez21_A", text = "IGUI_SFQuest_Questyno_PamelaPerez21_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_PamelaPerez22_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_PamelaPerez22", optional = true, text = "IGUI_SFQuest_Questyno_PamelaPerez22_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_PamelaPerez22_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_PamelaPerez22_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_PamelaPerez22_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_PamelaPerez22", text = "IGUI_SFQuest_Questyno_PamelaPerez22_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_PamelaPerez23_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_PamelaPerez23", optional = true, text = "IGUI_SFQuest_Questyno_PamelaPerez23_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_PamelaPerez23_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_PamelaPerez23_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_PamelaPerez23_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_PamelaPerez23", text = "IGUI_SFQuest_Questyno_PamelaPerez23_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_PamelaPerez24_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_PamelaPerez24", optional = true, text = "IGUI_SFQuest_Questyno_PamelaPerez24_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_PamelaPerez24_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_PamelaPerez24_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_PamelaPerez24_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_PamelaPerez24", text = "IGUI_SFQuest_Questyno_PamelaPerez24_Complete"})


--[[
            *** Sam Fisher ***
            Elenco:
                intro. Parla con Sam Fisher per sbloccare le daily.
				1. Recuperare Base.Worm;10 (100rep + Base.Panfish)
				2. Recuperare Base.FishingLine (1/5) (50rep + 30$)
				3. Recuperare Base.WoodenStick,Base.Paperclip (50rep + Base.FishingMag1)
				4. Recuperare Base.Panfish (20-25 cm) (40rep + Base.FishingTackle)
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

-- intro. parla con Sam Fisher per sbloccare le daily
table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SamFisher_Intro_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SamFisher_Intro", text = "IGUI_SFQuest_Questyno_SamFisher_Intro_Complete_Text"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SamFisher1_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SamFisher1", optional = true, text = "IGUI_SFQuest_Questyno_SamFisher1_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SamFisher1_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SamFisher1_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SamFisher1_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SamFisher1", text = "IGUI_SFQuest_Questyno_SamFisher1_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SamFisher2_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SamFisher2", optional = true, text = "IGUI_SFQuest_Questyno_SamFisher2_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SamFisher2_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SamFisher2_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SamFisher2_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SamFisher2", text = "IGUI_SFQuest_Questyno_SamFisher2_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SamFisher3_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SamFisher3", optional = true, text = "IGUI_SFQuest_Questyno_SamFisher3_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SamFisher3_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SamFisher3_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SamFisher3_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SamFisher3_A", text = "IGUI_SFQuest_Questyno_SamFisher3_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SamFisher4_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SamFisher4", optional = true, text = "IGUI_SFQuest_Questyno_SamFisher4_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SamFisher4_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SamFisher4_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SamFisher4_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SamFisher4", text = "IGUI_SFQuest_Questyno_SamFisher4_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SamFisher5_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SamFisher5", optional = true, text = "IGUI_SFQuest_Questyno_SamFisher5_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SamFisher5_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SamFisher5_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SamFisher5_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SamFisher5", text = "IGUI_SFQuest_Questyno_SamFisher5_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SamFisher6_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SamFisher6", optional = true, text = "IGUI_SFQuest_Questyno_SamFisher6_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SamFisher6_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SamFisher6_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SamFisher6_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SamFisher6", text = "IGUI_SFQuest_Questyno_SamFisher6_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SamFisher7_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SamFisher7", optional = true, text = "IGUI_SFQuest_Questyno_SamFisher7_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SamFisher7_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SamFisher7_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SamFisher7_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SamFisher7", text = "IGUI_SFQuest_Questyno_SamFisher7_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SamFisher8_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SamFisher8", optional = true, text = "IGUI_SFQuest_Questyno_SamFisher8_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SamFisher8_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SamFisher8_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SamFisher8_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SamFisher8_B", text = "IGUI_SFQuest_Questyno_SamFisher8_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SamFisher9_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SamFisher9", optional = true, text = "IGUI_SFQuest_Questyno_SamFisher9_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SamFisher9_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SamFisher9_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SamFisher9_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SamFisher9", text = "IGUI_SFQuest_Questyno_SamFisher9_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SamFisher10_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SamFisher10", optional = true, text = "IGUI_SFQuest_Questyno_SamFisher10_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SamFisher10_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SamFisher10_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SamFisher10_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SamFisher10_A", text = "IGUI_SFQuest_Questyno_SamFisher10_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SamFisher11_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SamFisher11", optional = true, text = "IGUI_SFQuest_Questyno_SamFisher11_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SamFisher11_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SamFisher11_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SamFisher11_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SamFisher11_A", text = "IGUI_SFQuest_Questyno_SamFisher11_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SamFisher12_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SamFisher12", optional = true, text = "IGUI_SFQuest_Questyno_SamFisher12_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SamFisher12_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SamFisher12_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SamFisher12_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SamFisher12", text = "IGUI_SFQuest_Questyno_SamFisher12_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SamFisher13_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SamFisher13", optional = true, text = "IGUI_SFQuest_Questyno_SamFisher13_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SamFisher13_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SamFisher13_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SamFisher13_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SamFisher13", text = "IGUI_SFQuest_Questyno_SamFisher13_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SamFisher14_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SamFisher14", optional = true, text = "IGUI_SFQuest_Questyno_SamFisher14_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SamFisher14_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SamFisher14_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SamFisher14_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SamFisher14", text = "IGUI_SFQuest_Questyno_SamFisher14_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SamFisher15_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SamFisher15", optional = true, text = "IGUI_SFQuest_Questyno_SamFisher15_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SamFisher15_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SamFisher15_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SamFisher15_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SamFisher15_A", text = "IGUI_SFQuest_Questyno_SamFisher15_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SamFisher16_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SamFisher16", optional = true, text = "IGUI_SFQuest_Questyno_SamFisher16_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SamFisher16_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SamFisher16_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SamFisher16_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SamFisher16", text = "IGUI_SFQuest_Questyno_SamFisher16_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SamFisher17_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SamFisher17", optional = true, text = "IGUI_SFQuest_Questyno_SamFisher17_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SamFisher17_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SamFisher17_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SamFisher17_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SamFisher17", text = "IGUI_SFQuest_Questyno_SamFisher17_Complete"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SamFisher17_A_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SamFisher17_A", text = "IGUI_SFQuest_Questyno_SamFisher17_A_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SamFisher18_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SamFisher18", optional = true, text = "IGUI_SFQuest_Questyno_SamFisher18_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SamFisher18_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SamFisher18_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SamFisher18_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SamFisher18", text = "IGUI_SFQuest_Questyno_SamFisher18_Complete"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SamFisher18_A_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SamFisher18_A", text = "IGUI_SFQuest_Questyno_SamFisher18_A_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SamFisher19_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SamFisher19", optional = true, text = "IGUI_SFQuest_Questyno_SamFisher19_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SamFisher19_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SamFisher19_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SamFisher19_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SamFisher19", text = "IGUI_SFQuest_Questyno_SamFisher19_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SamFisher20_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SamFisher20", optional = true, text = "IGUI_SFQuest_Questyno_SamFisher20_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SamFisher20_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SamFisher20_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SamFisher20_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SamFisher20_A", text = "IGUI_SFQuest_Questyno_SamFisher20_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SamFisher21_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SamFisher21", optional = true, text = "IGUI_SFQuest_Questyno_SamFisher21_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SamFisher21_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SamFisher21_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SamFisher21_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SamFisher21", text = "IGUI_SFQuest_Questyno_SamFisher21_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SamFisher22_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SamFisher22", optional = true, text = "IGUI_SFQuest_Questyno_SamFisher22_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SamFisher22_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SamFisher22_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SamFisher22_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SamFisher22", text = "IGUI_SFQuest_Questyno_SamFisher22_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SamFisher23_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SamFisher23", optional = true, text = "IGUI_SFQuest_Questyno_SamFisher23_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SamFisher23_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SamFisher23_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SamFisher23_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SamFisher23", text = "IGUI_SFQuest_Questyno_SamFisher23_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SamFisher24_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_SamFisher24", optional = true, text = "IGUI_SFQuest_Questyno_SamFisher24_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_SamFisher24_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SamFisher24_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_SamFisher24_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_SamFisher24", text = "IGUI_SFQuest_Questyno_SamFisher24_Complete"})

--[[
            *** TaylorBlaze ***
            Elenco:
                intro. Parla con Taylor Blaze per sbloccare le sue quest mensili.
				1. Recuperare Base.Bullets9mmBox;10 (620rep + SWeapons.SalvagedPipeWrench)
				2. Recuperare Base.Bullets45Box;10 (550rep + SWeapons.SalvagedPipeWrench)
				3. Recuperare Base.223Box;15 (900rep)
				4. Recuperare Base.308Box;12 (780rep)
				5. Recuperare Base.Bullets44Box;12 (1000rep)
				6. Recuperare Base.ShotgunShellsBox;10 (1200rep)
				7. Recuperare Base.22Box;5 (1200rep + Base.PipeBomb)
				8. Uccidere 250 Zombie, Recuperare Base.x8Scope,Base.CleaningKit,Base.762Clip,Base.556Clip,Base.Laser,Base.FiberglassStock a  (6144,7069,0) (2200rep + 150$ + Base.PipeBomb)
]]

-- intro. parla con Taylor Blaze per sbloccare le sue quest mensili
table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_TaylorBlaze_Intro_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_TaylorBlaze_Intro", text = "IGUI_SFQuest_Questyno_TaylorBlaze_Intro_Complete_Text"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_TaylorBlaze1_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_TaylorBlaze1", optional = true, text = "IGUI_SFQuest_Questyno_TaylorBlaze1_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_TaylorBlaze1_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_TaylorBlaze1_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_TaylorBlaze1_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_TaylorBlaze1", text = "IGUI_SFQuest_Questyno_TaylorBlaze1_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_TaylorBlaze2_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_TaylorBlaze2", optional = true, text = "IGUI_SFQuest_Questyno_TaylorBlaze2_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_TaylorBlaze2_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_TaylorBlaze2_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_TaylorBlaze2_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_TaylorBlaze2", text = "IGUI_SFQuest_Questyno_TaylorBlaze2_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_TaylorBlaze3_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_TaylorBlaze3", optional = true, text = "IGUI_SFQuest_Questyno_TaylorBlaze3_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_TaylorBlaze3_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_TaylorBlaze3_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_TaylorBlaze3_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_TaylorBlaze3", text = "IGUI_SFQuest_Questyno_TaylorBlaze3_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_TaylorBlaze4_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_TaylorBlaze4", optional = true, text = "IGUI_SFQuest_Questyno_TaylorBlaze4_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_TaylorBlaze4_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_TaylorBlaze4_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_TaylorBlaze4_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_TaylorBlaze4", text = "IGUI_SFQuest_Questyno_TaylorBlaze4_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_TaylorBlaze5_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_TaylorBlaze5", optional = true, text = "IGUI_SFQuest_Questyno_TaylorBlaze5_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_TaylorBlaze5_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_TaylorBlaze5_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_TaylorBlaze5_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_TaylorBlaze5", text = "IGUI_SFQuest_Questyno_TaylorBlaze5_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_TaylorBlaze6_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_TaylorBlaze6", optional = true, text = "IGUI_SFQuest_Questyno_TaylorBlaze6_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_TaylorBlaze6_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_TaylorBlaze6_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_TaylorBlaze6_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_TaylorBlaze6", text = "IGUI_SFQuest_Questyno_TaylorBlaze6_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_TaylorBlaze7_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_TaylorBlaze7", optional = true, text = "IGUI_SFQuest_Questyno_TaylorBlaze7_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_TaylorBlaze7_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_TaylorBlaze7_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_TaylorBlaze7_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_TaylorBlaze7", text = "IGUI_SFQuest_Questyno_TaylorBlaze7_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_TaylorBlaze8_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_TaylorBlaze8", optional = true, text = "IGUI_SFQuest_Questyno_TaylorBlaze8_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_TaylorBlaze8_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_TaylorBlaze8_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_TaylorBlaze8_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_TaylorBlaze8_B", text = "IGUI_SFQuest_Questyno_TaylorBlaze8_Complete"})

--[[
            *** Marcus Kane ***
            Elenco:
                intro. Parla con Marcus Kane per sbloccare le quest mensili.
				1. Recuperare Base.CreditCard;5, Uccidere 50 Zombie (130rep + 25$)
				2. Recuperare Base.CreditCard;10, Uccidere 100 Zombie (200rep + 50$)
				3. Recuperare Base.CreditCard;12, Uccidere 120 Zombie (220rep + 60$)
				4. Recuperare Base.CreditCard;20, Uccidere 200 Zombie (420rep + 80$)
]]

-- intro. parla con Marcus Kane per sbloccare le sue quest mensili
table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_MarcusKane_Intro_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_MarcusKane_Intro", text = "IGUI_SFQuest_Questyno_MarcusKane_Intro_Complete_Text"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_MarcusKane1_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_MarcusKane1", optional = true, text = "IGUI_SFQuest_Questyno_MarcusKane1_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_MarcusKane1_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_MarcusKane1_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_MarcusKane1_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_MarcusKane1_A", text = "IGUI_SFQuest_Questyno_MarcusKane1_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_MarcusKane2_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_MarcusKane2", optional = true, text = "IGUI_SFQuest_Questyno_MarcusKane2_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_MarcusKane2_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_MarcusKane2_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_MarcusKane2_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_MarcusKane2_A", text = "IGUI_SFQuest_Questyno_MarcusKane2_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_MarcusKane3_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_MarcusKane3", optional = true, text = "IGUI_SFQuest_Questyno_MarcusKane3_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_MarcusKane3_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_MarcusKane3_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_MarcusKane3_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_MarcusKane3_A", text = "IGUI_SFQuest_Questyno_MarcusKane3_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_MarcusKane4_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_MarcusKane4", optional = true, text = "IGUI_SFQuest_Questyno_MarcusKane4_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_MarcusKane4_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_MarcusKane4_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_MarcusKane4_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_MarcusKane4_A", text = "IGUI_SFQuest_Questyno_MarcusKane4_Complete"})

--[[
            *** Alex Mercer ***
            Elenco:
                intro. Incontra Alex Mercer.
				1. Uccidere 1500 Zombie (1800rep)
				2. Uccidere 2000 Zombie (2000rep)
				3. Uccidere 2500 Zombie (3000rep)
]]

-- intro. parla con Alex Mercer per sbloccare le sue quest mensili
table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_AlexMercer_Intro_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_AlexMercer_Intro", text = "IGUI_SFQuest_Questyno_AlexMercer_Intro_Complete_Text"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_AlexMercer1_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_AlexMercer1", optional = true, text = "IGUI_SFQuest_Questyno_AlexMercer1_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_AlexMercer1_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_AlexMercer1_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_AlexMercer1_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_AlexMercer1", text = "IGUI_SFQuest_Questyno_AlexMercer1_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_AlexMercer2_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_AlexMercer2", optional = true, text = "IGUI_SFQuest_Questyno_AlexMercer2_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_AlexMercer2_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_AlexMercer2_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_AlexMercer2_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_AlexMercer2", text = "IGUI_SFQuest_Questyno_AlexMercer2_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_AlexMercer3_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_AlexMercer3", optional = true, text = "IGUI_SFQuest_Questyno_AlexMercer3_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_AlexMercer3_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_AlexMercer3_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_AlexMercer3_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_AlexMercer3", text = "IGUI_SFQuest_Questyno_AlexMercer3_Complete"})


--[[
            ***Olivia Chambers***
            Elenco:
                intro. Parla con Olivia Chambers per sbloccare le sue quest mensili.
                1. Recuperare LabItems.ChSodiumHydroxideBag;2 e uccidere 200 (1200rep + LabItems.JournalOfResearch,LabBooks.BkLaboratoryEquipment2)
                2. Recuperare LabItems.ChSulfuricAcidCan;2 @ 7182,7027,0 e Uccidi 120 Zombie (1200rep + LabBooks.BkChemistryCourse)
                3. Recuperare LabItems.ChSodiumHydroxideBag;2 @ 7003,7246,0 e Uccidi 200 Zombie (800rep + LabBooks.BkLaboratoryEquipment1)
                4. Recuperare LabItems.ChHydrochloricAcidCan;2 e Uccidi 100 Zombie (700rep + LabBooks.BkLaboratoryEquipment3)
                5. Recuperare LabItems.ChSulfuricAcidCan;2 @  (13851,10871,0) e Uccidi 100 Zombie (1200rep + LabBooks.BkVirologyCourses1)
                6. Recuperare LabItems.ChHydrochloricAcidCan;2 @ (3733,11443,0) e Uccidi 100 Zombie (800rep + LabBooks.BkVirologyCourses2)
]]

-- intro. parla con Olivia Chambers per sbloccare le sue quest mensili
table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_OliviaChambers_Intro_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_OliviaChambers_Intro", text = "IGUI_SFQuest_Questyno_OliviaChambers_Intro_Complete_Text"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_OliviaChambers1_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_OliviaChambers1", optional = true, text = "IGUI_SFQuest_Questyno_OliviaChambers1_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_OliviaChambers1_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_OliviaChambers1_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_OliviaChambers1_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_OliviaChambers1_A", text = "IGUI_SFQuest_Questyno_OliviaChambers1_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_OliviaChambers2_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_OliviaChambers2", optional = true, text = "IGUI_SFQuest_Questyno_OliviaChambers2_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_OliviaChambers2_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_OliviaChambers2_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_OliviaChambers2_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_OliviaChambers2_A", text = "IGUI_SFQuest_Questyno_OliviaChambers2_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_OliviaChambers3_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_OliviaChambers3", optional = true, text = "IGUI_SFQuest_Questyno_OliviaChambers3_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_OliviaChambers3_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_OliviaChambers3_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_OliviaChambers3_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_OliviaChambers3_A", text = "IGUI_SFQuest_Questyno_OliviaChambers3_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_OliviaChambers4_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_OliviaChambers4", optional = true, text = "IGUI_SFQuest_Questyno_OliviaChambers4_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_OliviaChambers4_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_OliviaChambers4_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_OliviaChambers4_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_OliviaChambers4_A", text = "IGUI_SFQuest_Questyno_OliviaChambers4_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_OliviaChambers5_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_OliviaChambers5", optional = true, text = "IGUI_SFQuest_Questyno_OliviaChambers5_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_OliviaChambers5_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_OliviaChambers5_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_OliviaChambers5_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_OliviaChambers5_A", text = "IGUI_SFQuest_Questyno_OliviaChambers5_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_OliviaChambers6_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_OliviaChambers6", optional = true, text = "IGUI_SFQuest_Questyno_OliviaChambers6_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_OliviaChambers6_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_OliviaChambers6_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_OliviaChambers6_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_OliviaChambers6_A", text = "IGUI_SFQuest_Questyno_OliviaChambers6_Complete"})

--[[ *** Harper Wells Raven Creek (4866,11186,0) ***
            Elenco:
                intro. Incontra Harper Wells.
                1. Recupero FOGLIO SPECIALE CON LORE LR.Lore1 @ (3949,11303,0) e Uccidi 200 Zombie (2500rep + 120$ + LabItems.CmpSyringeWithCure)
                2. Recupero FOGLIO SPECIALE CON LR.Lore2 @ (4114,12446,0) e Uccidi 200 Zombie (2500rep + 120$ + LabItems.CmpSyringeWithCure)
                3. Recupero FOGLIO SPECIALE CON LR.Lore3 @ 3607,11924,2 e Uccidi 200 Zombie (3000rep + 120$ + LabItems.CmpSyringeWithCure)
                4. Recupero FOGLIO SPECIALE CON LR.Lore4 @ (3603,11382,3) e Uccidi 200 Zombie (3500rep + 120$ + LabItems.CmpSyringeWithCure)
]]

-- intro. parla con Harper Wells per sbloccare le sue quest mensili
table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_HarperWells_Intro_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_HarperWells_Intro", text = "IGUI_SFQuest_Questyno_HarperWells_Intro_Complete_Text"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_HarperWells1_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_HarperWells1", optional = true, text = "IGUI_SFQuest_Questyno_HarperWells1_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_HarperWells1_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_HarperWells1_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_HarperWells1_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_HarperWells1_A", text = "IGUI_SFQuest_Questyno_HarperWells1_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_HarperWells2_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_HarperWells2", optional = true, text = "IGUI_SFQuest_Questyno_HarperWells2_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_HarperWells2_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_HarperWells2_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_HarperWells2_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_HarperWells2_A", text = "IGUI_SFQuest_Questyno_HarperWells2_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_HarperWells3_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_HarperWells3", optional = true, text = "IGUI_SFQuest_Questyno_HarperWells3_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_HarperWells3_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_HarperWells3_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_HarperWells3_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_HarperWells3_A", text = "IGUI_SFQuest_Questyno_HarperWells3_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_HarperWells4_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_HarperWells4", optional = true, text = "IGUI_SFQuest_Questyno_HarperWells4_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_HarperWells4_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_HarperWells4_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_HarperWells4_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_HarperWells4_A", text = "IGUI_SFQuest_Questyno_HarperWells4_Complete"})


--[[
            *** Grace Chambers da Louisville (13555,4142,0)  ***
            Elenco:
                intro. Incontra Grace Chambers.
                1. Recupero LabItems.CmpSyringeWithAdvancedVaccine;4 @ (12930,2008,0) (2400rep + LabItems.CmpSyringeWithAdvancedVaccine)
                2. Recupero LabItems.CmpSyringeWithAdvancedVaccine;4 @ (13839,10064,0) e Recupero FOGLIO SPECIALE CON LR.Lore5 @ 13910,9939,0 (2500rep + LabItems.CmpSyringeWithAdvancedVaccine;2)
                3. LabItems.CmpSyringeWithAdvancedVaccine @  12422,1755,0 e Uccidi 100 Zombie (3000rep + LabItems.CmpSyringeWithAdvancedVaccine)
                4. Recupero FOGLIO SPECIALE CON LR.Lore6 @ 13602,1563,0 e LabItems.CmpFlaskWithLeukocytes @ 13402,1893,0 (800rep + 1000$)
]]

-- intro. parla con Grace Chambers per sbloccare le sue quest mensili
table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_GraceChambers_Intro_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_GraceChambers_Intro", text = "IGUI_SFQuest_Questyno_GraceChambers_Intro_Complete_Text"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_GraceChambers1_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_GraceChambers1", optional = true, text = "IGUI_SFQuest_Questyno_GraceChambers1_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_GraceChambers1_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_GraceChambers1_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_GraceChambers1_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_GraceChambers1_A", text = "IGUI_SFQuest_Questyno_GraceChambers1_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_GraceChambers2_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_GraceChambers2", optional = true, text = "IGUI_SFQuest_Questyno_GraceChambers2_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_GraceChambers2_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_GraceChambers2_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_GraceChambers2_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_GraceChambers2_B", text = "IGUI_SFQuest_Questyno_GraceChambers2_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_GraceChambers3_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_GraceChambers3", optional = true, text = "IGUI_SFQuest_Questyno_GraceChambers3_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_GraceChambers3_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_GraceChambers3_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_GraceChambers3_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_GraceChambers3_A", text = "IGUI_SFQuest_Questyno_GraceChambers3_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_GraceChambers4_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_GraceChambers4", optional = true, text = "IGUI_SFQuest_Questyno_GraceChambers4_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_GraceChambers4_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_GraceChambers4_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_GraceChambers4_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_GraceChambers4_B", text = "IGUI_SFQuest_Questyno_GraceChambers4_Complete"})

--[[
            *** Lucas Miller ***
            Elenco:
                intro. Incontra Lucas Miller.
				1. Recuperare 2kg di oro, Recuperare MoneyToXP.Rotolo;3 parlando con (10420,12758,0) (100rep)
				2. Recuperare 2.5kg di oro, Recuperare MoneyToXP.Rotolo;4 parlando con (10223,12769,0) (110rep)
				3. Recuperare 3kg di oro, Recuperare MoneyToXP.Rotolo;5 parlando con (9976,12745,0) (120rep)
				4. Recuperare 3.2kg di oro, Recuperare MoneyToXP.Rotolo;6 parlando con (9916,12880,0) (130rep)
				5. Recuperare 4kg di oro, Recuperare MoneyToXP.Mazzetta parlando con (9942,13020,0) (150rep)
				6. Recuperare 1.5kg di oro, Recuperare MoneyToXP.Rotolo parlando con (9929,12681,0) (50rep)
]]

-- intro. parla con Lucas Miller per sbloccare le sue quest mensili
table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_LucasMiller_Intro_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_LucasMiller_Intro", text = "IGUI_SFQuest_Questyno_LucasMiller_Intro_Complete_Text"})	

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_LucasMiller1_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_LucasMiller1", optional = true, text = "IGUI_SFQuest_Questyno_LucasMiller1_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_LucasMiller1_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_LucasMiller1_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_LucasMiller1_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_LucasMiller1", text = "IGUI_SFQuest_Questyno_LucasMiller1_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_LucasMiller2_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_LucasMiller2", optional = true, text = "IGUI_SFQuest_Questyno_LucasMiller2_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_LucasMiller2_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_LucasMiller2_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_LucasMiller2_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_LucasMiller2", text = "IGUI_SFQuest_Questyno_LucasMiller2_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_LucasMiller3_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_LucasMiller3", optional = true, text = "IGUI_SFQuest_Questyno_LucasMiller3_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_LucasMiller3_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_LucasMiller3_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_LucasMiller3_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_LucasMiller3", text = "IGUI_SFQuest_Questyno_LucasMiller3_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_LucasMiller4_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_LucasMiller4", optional = true, text = "IGUI_SFQuest_Questyno_LucasMiller4_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_LucasMiller4_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_LucasMiller4_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_LucasMiller4_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_LucasMiller4", text = "IGUI_SFQuest_Questyno_LucasMiller4_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_LucasMiller5_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_LucasMiller5", optional = true, text = "IGUI_SFQuest_Questyno_LucasMiller5_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_LucasMiller5_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_LucasMiller5_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_LucasMiller5_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_LucasMiller5", text = "IGUI_SFQuest_Questyno_LucasMiller5_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_LucasMiller6_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_LucasMiller6", optional = true, text = "IGUI_SFQuest_Questyno_LucasMiller6_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_LucasMiller6_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_LucasMiller6_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_LucasMiller6_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_LucasMiller6", text = "IGUI_SFQuest_Questyno_LucasMiller6_Complete"})


--[[
            *** Maya Blackwell ***
            Elenco:
                intro. Incontra Maya Blackwell.
				1. Recuperare Base.ScrapMetal;50 parlando con (4045,6247,0), Uccidere 100 Zombie (125rep + TW.WorkshopMag3)
				2. Recuperare Base.ScrapMetal;70 parlando con (5832,4206,1), Uccidere 110 Zombie (125rep + TW.WorkshopMag4)
				3. Recuperare Base.ScrapMetal;70 parlando con (4758,10173,0), Uccidere 200 Zombie (150rep + Tw.WorkshopMag1,Tw.WorkshopMag2;Tw.WorkshopMag3)
				4. Recuperare Base.ScrapMetal;70 parlando con (7005,5590,0), Uccidere 200 Zombie (100rep + SWeapons.WeaponMag1)
				5. Recuperare Base.ScrapMetal;40 parlando con (4633,6674,0), Uccidere 200 Zombie (150rep + SWeapons.WeaponMag2,SWeapons.WeaponsMag4)
				6. Recuperare Base.ScrapMetal;50 parlando con (6619,10438,0), Uccidere 200 Zombie (150rep + SWeapons.WeaponMag3)
				7. Recuperare Base.ScrapMetal;65 parlando con (7633,11463,0), Uccidere 200 Zombie (160rep + SArmor.ArmorMag1)
				8. Recuperare Base.ScrapMetal;65 parlando con (7840,10719,0), Uccidere 200 Zombie (200rep + SArmor.ArmorMag3)
				9. Recuperare Base.ScrapMetal;60 parlando con (7162,7487,0), Uccidere 200 Zombie (300rep + SWeapons.WeaponsMag5)
				10. Recuperare Base.ScrapMetal;60 parlando con (3983,9166,0), Uccidere 125 Zombie (200rep + SArmor.ArmorMag4)
				11. Recuperare Base.ScrapMetal;50 parlando con (7289,7573,0), Uccidere 125 Zombie (200rep + SWeapons.WeaponsMag6)
				12. Recuperare Base.ScrapMetal;50 parlando con (4625,6732,0), Uccidere 140 Zombie (200rep + SArmor.ArmorMag5)
				13. Recuperare Base.ScrapMetal;50 parlando con (8228,10989,0), Uccidere 150 Zombie (200rep + SArmor.ArmorMag2)
]]

-- intro. parla con Maya Blackwell per sbloccare le sue quest mensili
table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_MayaBlackwell_Intro_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_MayaBlackwell_Intro", text = "IGUI_SFQuest_Questyno_MayaBlackwell_Intro_Complete_Text"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_MayaBlackwell1_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_MayaBlackwell1", optional = true, text = "IGUI_SFQuest_Questyno_MayaBlackwell1_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_MayaBlackwell1_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_MayaBlackwell1_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_MayaBlackwell1_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_MayaBlackwell1_A", text = "IGUI_SFQuest_Questyno_MayaBlackwell1_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_MayaBlackwell2_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_MayaBlackwell2", optional = true, text = "IGUI_SFQuest_Questyno_MayaBlackwell2_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_MayaBlackwell2_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_MayaBlackwell2_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_MayaBlackwell2_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_MayaBlackwell2_A", text = "IGUI_SFQuest_Questyno_MayaBlackwell2_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_MayaBlackwell3_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_MayaBlackwell3", optional = true, text = "IGUI_SFQuest_Questyno_MayaBlackwell3_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_MayaBlackwell3_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_MayaBlackwell3_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_MayaBlackwell3_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_MayaBlackwell3_A", text = "IGUI_SFQuest_Questyno_MayaBlackwell3_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_MayaBlackwell4_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_MayaBlackwell4", optional = true, text = "IGUI_SFQuest_Questyno_MayaBlackwell4_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_MayaBlackwell4_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_MayaBlackwell4_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_MayaBlackwell4_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_MayaBlackwell4_A", text = "IGUI_SFQuest_Questyno_MayaBlackwell4_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_MayaBlackwell5_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_MayaBlackwell5", optional = true, text = "IGUI_SFQuest_Questyno_MayaBlackwell5_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_MayaBlackwell5_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_MayaBlackwell5_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_MayaBlackwell5_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_MayaBlackwell5_A", text = "IGUI_SFQuest_Questyno_MayaBlackwell5_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_MayaBlackwell6_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_MayaBlackwell6", optional = true, text = "IGUI_SFQuest_Questyno_MayaBlackwell6_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_MayaBlackwell6_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_MayaBlackwell6_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_MayaBlackwell6_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_MayaBlackwell6_A", text = "IGUI_SFQuest_Questyno_MayaBlackwell6_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_MayaBlackwell7_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_MayaBlackwell7", optional = true, text = "IGUI_SFQuest_Questyno_MayaBlackwell7_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_MayaBlackwell7_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_MayaBlackwell7_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_MayaBlackwell7_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_MayaBlackwell7_A", text = "IGUI_SFQuest_Questyno_MayaBlackwell7_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_MayaBlackwell8_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_MayaBlackwell8", optional = true, text = "IGUI_SFQuest_Questyno_MayaBlackwell8_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_MayaBlackwell8_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_MayaBlackwell8_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_MayaBlackwell8_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_MayaBlackwell8_A", text = "IGUI_SFQuest_Questyno_MayaBlackwell8_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_MayaBlackwell9_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_MayaBlackwell9", optional = true, text = "IGUI_SFQuest_Questyno_MayaBlackwell9_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_MayaBlackwell9_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_MayaBlackwell9_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_MayaBlackwell9_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_MayaBlackwell9_A", text = "IGUI_SFQuest_Questyno_MayaBlackwell9_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_MayaBlackwell10_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_MayaBlackwell10", optional = true, text = "IGUI_SFQuest_Questyno_MayaBlackwell10_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_MayaBlackwell10_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_MayaBlackwell10_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_MayaBlackwell10_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_MayaBlackwell10_A", text = "IGUI_SFQuest_Questyno_MayaBlackwell10_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_MayaBlackwell11_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_MayaBlackwell11", optional = true, text = "IGUI_SFQuest_Questyno_MayaBlackwell11_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_MayaBlackwell11_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_MayaBlackwell11_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_MayaBlackwell11_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_MayaBlackwell11_A", text = "IGUI_SFQuest_Questyno_MayaBlackwell11_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_MayaBlackwell12_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_MayaBlackwell12", optional = true, text = "IGUI_SFQuest_Questyno_MayaBlackwell12_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_MayaBlackwell12_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_MayaBlackwell12_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_MayaBlackwell12_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_MayaBlackwell12_A", text = "IGUI_SFQuest_Questyno_MayaBlackwell12_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_MayaBlackwell13_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_MayaBlackwell13", optional = true, text = "IGUI_SFQuest_Questyno_MayaBlackwell13_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_MayaBlackwell13_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_MayaBlackwell13_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_MayaBlackwell13_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_MayaBlackwell13_A", text = "IGUI_SFQuest_Questyno_MayaBlackwell13_Complete"})


--[[
            *** Gabriel Walker ***
            Elenco:
                intro. Incontra Gabriel Walker.
				1. Recuperare 10$ -> Recuperare MoneyToXp.Droga1 parlando con (8553,7690,0) (25rep)
				2. Recuperare 15$ -> Recuperare MoneyToXp.Droga1 parlando con (10230,8317,0) (25rep)
				3. Recuperare 10$ -> Recuperare MoneyToXp.Droga1 parlando con (7686,11593,0) (25rep)
				4. Recuperare 10$ -> Recuperare MoneyToXp.Droga1 parlando con (7019,8211,0) (25rep)
				5. Recuperare 20$ -> Recuperare MoneyToXp.Droga1 parlando con (9196,9997,0) (25rep)
				6. Recuperare 25$ -> Recuperare MoneyToXp.Droga2 parlando con (7930,10645,2) (25rep)
				7. Recuperare 20$ -> Recuperare MoneyToXp.Droga2 parlando con (4720,6776,2) (25rep)
				8. Recuperare 25$ -> Recuperare MoneyToXp.Droga2 parlando con (12184,12066,0) (25rep)
				9. Recuperare 30$ -> Recuperare MoneyToXp.Droga3 parlando con (7340,7239,0) (25rep)
]]

-- intro. parla con Gabriel Walker per sbloccare le sue quest mensili
table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_GabrielWalker_Intro_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_GabrielWalker_Intro", text = "IGUI_SFQuest_Questyno_GabrielWalker_Intro_Complete_Text"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_GabrielWalker1_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_GabrielWalker1", optional = true, text = "IGUI_SFQuest_Questyno_GabrielWalker1_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_GabrielWalker1_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_GabrielWalker1_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_GabrielWalker1_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_GabrielWalker1", text = "IGUI_SFQuest_Questyno_GabrielWalker1_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_GabrielWalker2_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_GabrielWalker2", optional = true, text = "IGUI_SFQuest_Questyno_GabrielWalker2_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_GabrielWalker2_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_GabrielWalker2_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_GabrielWalker2_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_GabrielWalker2", text = "IGUI_SFQuest_Questyno_GabrielWalker2_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_GabrielWalker3_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_GabrielWalker3", optional = true, text = "IGUI_SFQuest_Questyno_GabrielWalker3_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_GabrielWalker3_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_GabrielWalker3_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_GabrielWalker3_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_GabrielWalker3", text = "IGUI_SFQuest_Questyno_GabrielWalker3_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_GabrielWalker4_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_GabrielWalker4", optional = true, text = "IGUI_SFQuest_Questyno_GabrielWalker4_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_GabrielWalker4_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_GabrielWalker4_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_GabrielWalker4_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_GabrielWalker4", text = "IGUI_SFQuest_Questyno_GabrielWalker4_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_GabrielWalker5_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_GabrielWalker5", optional = true, text = "IGUI_SFQuest_Questyno_GabrielWalker5_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_GabrielWalker5_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_GabrielWalker5_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_GabrielWalker5_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_GabrielWalker5", text = "IGUI_SFQuest_Questyno_GabrielWalker5_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_GabrielWalker6_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_GabrielWalker6", optional = true, text = "IGUI_SFQuest_Questyno_GabrielWalker6_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_GabrielWalker6_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_GabrielWalker6_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_GabrielWalker6_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_GabrielWalker6", text = "IGUI_SFQuest_Questyno_GabrielWalker6_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_GabrielWalker7_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_GabrielWalker7", optional = true, text = "IGUI_SFQuest_Questyno_GabrielWalker7_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_GabrielWalker7_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_GabrielWalker7_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_GabrielWalker7_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_GabrielWalker7", text = "IGUI_SFQuest_Questyno_GabrielWalker7_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_GabrielWalker8_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_GabrielWalker8", optional = true, text = "IGUI_SFQuest_Questyno_GabrielWalker8_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_GabrielWalker8_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_GabrielWalker8_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_GabrielWalker8_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_GabrielWalker8", text = "IGUI_SFQuest_Questyno_GabrielWalker8_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_GabrielWalker9_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_GabrielWalker9", optional = true, text = "IGUI_SFQuest_Questyno_GabrielWalker9_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_GabrielWalker9_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_GabrielWalker9_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_GabrielWalker9_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_GabrielWalker9", text = "IGUI_SFQuest_Questyno_GabrielWalker9_Complete"})

--[[
            *** Lincoln Reed ***
            Elenco:
                intro. Incontra Lincoln Reed.
				1. Recuperare 50$ (250rep)
]]

-- intro. parla con Lincoln Reed per sbloccare le sue quest mensili
table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_LincolnReed_Intro_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_LincolnReed_Intro", text = "IGUI_SFQuest_Questyno_LincolnReed_Intro_Complete_Text"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_LincolnReed1_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_LincolnReed1", optional = true, text = "IGUI_SFQuest_Questyno_LincolnReed1_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_LincolnReed1_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_LincolnReed1_Begin_Text_Declined"})

  
--[[
            *** Dylan Harris ***
            Elenco:
                intro. Incontra Dylan Harris.
				1. Recuperare 30$ -> Recuperare MoneyToXp.Droga3 parlando con (13953,10622,0) (350rep)
				2. Recuperare 30$ -> Recuperare MoneyToXp.Droga3 parlando con (13901,11005,0) (550rep)
				3. Recuperare 30$ -> Recuperare MoneyToXp.Droga3 parlando con (13123,10933,0) (550rep)
				4. Recuperare 50$ -> Recuperare MoneyToXp.Droga4 parlando con (13989,11246,1) (550rep)
				5. Recuperare 50$ -> Recuperare MoneyToXp.Droga4 parlando con (13851,11298,0) (750rep)
				6. Recuperare 50$ -> Recuperare MoneyToXp.Droga4 parlando con (13778,11053,0) (750rep)
				7. Recuperare 100$ -> Recuperare MoneyToXp.Droga5 parlando con (14031,10945,0) (1550rep)
]]

-- intro. parla con Dylan Harris per sbloccare le sue quest mensili
table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_DylanHarris_Intro_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_DylanHarris_Intro", text = "IGUI_SFQuest_Questyno_DylanHarris_Intro_Complete_Text"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_DylanHarris1_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_DylanHarris1", optional = true, text = "IGUI_SFQuest_Questyno_DylanHarris1_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_DylanHarris1_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_DylanHarris1_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_DylanHarris1_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_DylanHarris1", text = "IGUI_SFQuest_Questyno_DylanHarris1_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_DylanHarris2_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_DylanHarris2", optional = true, text = "IGUI_SFQuest_Questyno_DylanHarris2_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_DylanHarris2_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_DylanHarris2_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_DylanHarris2_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_DylanHarris2", text = "IGUI_SFQuest_Questyno_DylanHarris2_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_DylanHarris3_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_DylanHarris3", optional = true, text = "IGUI_SFQuest_Questyno_DylanHarris3_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_DylanHarris3_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_DylanHarris3_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_DylanHarris3_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_DylanHarris3", text = "IGUI_SFQuest_Questyno_DylanHarris3_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_DylanHarris4_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_DylanHarris4", optional = true, text = "IGUI_SFQuest_Questyno_DylanHarris4_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_DylanHarris4_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_DylanHarris4_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_DylanHarris4_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_DylanHarris4", text = "IGUI_SFQuest_Questyno_DylanHarris4_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_DylanHarris5_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_DylanHarris5", optional = true, text = "IGUI_SFQuest_Questyno_DylanHarris5_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_DylanHarris5_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_DylanHarris5_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_DylanHarris5_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_DylanHarris5", text = "IGUI_SFQuest_Questyno_DylanHarris5_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_DylanHarris6_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_DylanHarris6", optional = true, text = "IGUI_SFQuest_Questyno_DylanHarris6_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_DylanHarris6_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_DylanHarris6_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_DylanHarris6_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_DylanHarris6", text = "IGUI_SFQuest_Questyno_DylanHarris6_Complete"})

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_DylanHarris7_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_DylanHarris7", optional = true, text = "IGUI_SFQuest_Questyno_DylanHarris7_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_DylanHarris7_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_DylanHarris7_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_DylanHarris7_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_DylanHarris7", text = "IGUI_SFQuest_Questyno_DylanHarris7_Complete"})


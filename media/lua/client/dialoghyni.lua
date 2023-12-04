require 'SFQuest_Database'
--[[                            ***    DIALOGHI   ***
]]
-- dialogo accetta quest
table.insert(SFQuest_Database.DialoguePool, {
    dialoguecode = "SFQuest_Questyno_Test1_Dialogo1", -- ID univoco del dialogo
    context = "ContextMenu_WorldEvent_TalkTo", -- Stringa da mostrare nel rightclick
    command = "unlockquest;Questyno_Test1", -- Comando da eseguire al click (compeletequest/unlockquest/updateobjectivestatus) -> "updateobjectivestatus;YourQuestGuid;1;Completed"
    optional = true, -- Se TRUE, il dialogo può essere rifiutato e rifatto successivamente
    text = "IGUI_SFQuest_Questyno_Test1_Dialogo1_Text", -- Testo del dialogo
    textaccepted = "IGUI_SFQuest_Questyno_Test1_Dialogo1_Text_Accepted", -- Testo del dialogo se accettato (solo se unlockquest)
    textdeclined = "IGUI_SFQuest_Questyno_Test1_Dialogo1_Text_Declined", -- Testo del dialogo se rifiutato (solo se unlockquest)
}) 

-- dialogo aggiornamento quest (arrivato dal secondo npc)
table.insert(SFQuest_Database.DialoguePool, {
    dialoguecode = "SFQuest_Questyno_Test1_Dialogo2",
    context = "ContextMenu_WorldEvent_TalkTo",
    command = "updateobjectivestatus:Questyno_Test1:2:Completed",
    optinal = true,
    text = "IGUI_SFQuest_Questyno_Test1_Dialogo2_Text",
    textaccepted = "IGUI_SFQuest_Questyno_Test1_Dialogo2_Text_Accepted",
    textdeclined = "IGUI_SFQuest_Questyno_Test1_Dialogo2_Text_Declined",
})

-- dialogo fine quest (tornato dal primo npc)
table.insert(SFQuest_Database.DialoguePool, {
    dialoguecode = "SFQuest_Questyno_Test1_Dialogo3",
    context = "ContextMenu_WorldEvent_TalkTo",
    command = "completequest;Questyno_Test1",
    optinal = true,
    text = "IGUI_SFQuest_Questyno_Test1_Dialogo3_Text",
    textaccepted = "IGUI_SFQuest_Questyno_Test1_Dialogo3_Text_Accepted",
    textdeclined = "IGUI_SFQuest_Questyno_Test1_Dialogo3_Text_Declined",
})


--[[                        *** SEZIONE 1: QUEST PER SOLDI ***
            Elenco:
                intro. parla con ioshi per sbloccare la prima quest
                1.  10 soldi per una pizza
                2.  100 soldi per un generatore
                3.  25 soldi per un piede di porco
                4.  50 soldi per un'ascia
                5.  100 soldi per foglio esperienza
                6.  25 soldi per ticket safehouse
                7.  50 soldi per 2 pipe bomb
                8.  30 soldi per 3 scatole di chiodi
                9.  500 soldi per pharmacy book
                10. 100 soldi per 1 arma da fuoco random (in verità questa sono tre quest con stesso dialogo e titolo, però danno tre reward diversi)
                    10a. 100 soldi per pistola
                    10b. 100 soldi per fucile a pompa
                    10c. 100 soldi per revolver

        Ogni quest ha due dialoghi, uno di inizio e uno di completamento.
]]
-- intro. parla con ioshi per sbloccare la prima quest
table.insert(SFQuest_Database.DialoguePool, {
    dialoguecode = "SFQuest_Questyno_Money_Intro_Complete",
    context = "ContextMenu_WorldEvent_TalkTo",
    command = "completequest;Questyno_Money_Intro",
    text = "IGUI_SFQuest_Questyno_Money_Intro_Complete_Text",
})

-- 1. 10 soldi per una pizza
table.insert(SFQuest_Database.DialoguePool, {
    dialoguecode = "SFQuest_Questyno_Money1_Begin",
    context = "ContextMenu_WorldEvent_TalkTo",
    command = "unlockquest;Questyno_Money1",
    optional = true,
    text = "IGUI_SFQuest_Questyno_Money1_Begin_Text",
    textaccepted = "IGUI_SFQuest_Questyno_Money1_Begin_Text_Accepted",
    textdeclined = "IGUI_SFQuest_Questyno_Money1_Begin_Text_Declined",
})

table.insert(SFQuest_Database.DialoguePool, {
    dialoguecode = "SFQuest_Questyno_Money1_Complete",
    context = "ContextMenu_WorldEvent_TalkTo",
    command = "completequest;Questyno_Money1",
    text = "IGUI_SFQuest_Questyno_Money1_Complete"
})

-- 2. 100 soldi per un generatore
table.insert(SFQuest_Database.DialoguePool, {
    dialoguecode = "SFQuest_Questyno_Money2_Begin",
    context = "ContextMenu_WorldEvent_TalkTo",
    command = "unlockquest;Questyno_Money2",
    optional = true,
    text = "IGUI_SFQuest_Questyno_Money2_Begin_Text",
    textaccepted = "IGUI_SFQuest_Questyno_Money2_Begin_Text_Accepted",
    textdeclined = "IGUI_SFQuest_Questyno_Money2_Begin_Text_Declined",
})

table.insert(SFQuest_Database.DialoguePool, {
    dialoguecode = "SFQuest_Questyno_Money2_Complete",
    context = "ContextMenu_WorldEvent_TalkTo",
    command = "completequest;Questyno_Money2",
    text = "IGUI_SFQuest_Questyno_Money2_Complete"
})

-- 3. 25 soldi per un piede di porco
table.insert(SFQuest_Database.DialoguePool, {
    dialoguecode = "SFQuest_Questyno_Money3_Begin",
    context = "ContextMenu_WorldEvent_TalkTo",
    command = "unlockquest;Questyno_Money3",
    optional = true,
    text = "IGUI_SFQuest_Questyno_Money3_Begin_Text",
    textaccepted = "IGUI_SFQuest_Questyno_Money3_Begin_Text_Accepted",
    textdeclined = "IGUI_SFQuest_Questyno_Money3_Begin_Text_Declined",
})

table.insert(SFQuest_Database.DialoguePool, {
    dialoguecode = "SFQuest_Questyno_Money3_Complete",
    context = "ContextMenu_WorldEvent_TalkTo",
    command = "completequest;Questyno_Money3",
    text = "IGUI_SFQuest_Questyno_Money3_Complete"
})

-- 4. 50 soldi per un'ascia
table.insert(SFQuest_Database.DialoguePool, {
    dialoguecode = "SFQuest_Questyno_Money4_Begin",
    context = "ContextMenu_WorldEvent_TalkTo",
    command = "unlockquest;Questyno_Money4",
    optional = true,
    text = "IGUI_SFQuest_Questyno_Money4_Begin_Text",
    textaccepted = "IGUI_SFQuest_Questyno_Money4_Begin_Text_Accepted",
    textdeclined = "IGUI_SFQuest_Questyno_Money4_Begin_Text_Declined",
})

table.insert(SFQuest_Database.DialoguePool, {
    dialoguecode = "SFQuest_Questyno_Money4_Complete",
    context = "ContextMenu_WorldEvent_TalkTo",
    command = "completequest;Questyno_Money4",
    text = "IGUI_SFQuest_Questyno_Money4_Complete"
})

-- 5. 100 soldi per foglio esperienza
table.insert(SFQuest_Database.DialoguePool, {
    dialoguecode = "SFQuest_Questyno_Money5_Begin",
    context = "ContextMenu_WorldEvent_TalkTo",
    command = "unlockquest;Questyno_Money5",
    optional = true,
    text = "IGUI_SFQuest_Questyno_Money5_Begin_Text",
    textaccepted = "IGUI_SFQuest_Questyno_Money5_Begin_Text_Accepted",
    textdeclined = "IGUI_SFQuest_Questyno_Money5_Begin_Text_Declined",
})

table.insert(SFQuest_Database.DialoguePool, {
    dialoguecode = "SFQuest_Questyno_Money5_Complete",
    context = "ContextMenu_WorldEvent_TalkTo",
    command = "completequest;Questyno_Money5",
    text = "IGUI_SFQuest_Questyno_Money5_Complete"
})

-- 6. 25 soldi per ticket safehouse
table.insert(SFQuest_Database.DialoguePool, {
    dialoguecode = "SFQuest_Questyno_Money6_Begin",
    context = "ContextMenu_WorldEvent_TalkTo",
    command = "unlockquest;Questyno_Money6",
    optional = true,
    text = "IGUI_SFQuest_Questyno_Money6_Begin_Text",
    textaccepted = "IGUI_SFQuest_Questyno_Money6_Begin_Text_Accepted",
    textdeclined = "IGUI_SFQuest_Questyno_Money6_Begin_Text_Declined",
})

table.insert(SFQuest_Database.DialoguePool, {
    dialoguecode = "SFQuest_Questyno_Money6_Complete",
    context = "ContextMenu_WorldEvent_TalkTo",
    command = "completequest;Questyno_Money6",
    text = "IGUI_SFQuest_Questyno_Money6_Complete"
})

-- 7. 50 soldi per 2 pipe bomb
table.insert(SFQuest_Database.DialoguePool, {
    dialoguecode = "SFQuest_Questyno_Money7_Begin",
    context = "ContextMenu_WorldEvent_TalkTo",
    command = "unlockquest;Questyno_Money7",
    optional = true,
    text = "IGUI_SFQuest_Questyno_Money7_Begin_Text",
    textaccepted = "IGUI_SFQuest_Questyno_Money7_Begin_Text_Accepted",
    textdeclined = "IGUI_SFQuest_Questyno_Money7_Begin_Text_Declined",
})

table.insert(SFQuest_Database.DialoguePool, {
    dialoguecode = "SFQuest_Questyno_Money7_Complete",
    context = "ContextMenu_WorldEvent_TalkTo",
    command = "completequest;Questyno_Money7",
    text = "IGUI_SFQuest_Questyno_Money7_Complete"
})

-- 8. 30 soldi per 3 scatole di chiodi
table.insert(SFQuest_Database.DialoguePool, {
    dialoguecode = "SFQuest_Questyno_Money8_Begin",
    context = "ContextMenu_WorldEvent_TalkTo",
    command = "unlockquest;Questyno_Money8",
    optional = true,
    text = "IGUI_SFQuest_Questyno_Money8_Begin_Text",
    textaccepted = "IGUI_SFQuest_Questyno_Money8_Begin_Text_Accepted",
    textdeclined = "IGUI_SFQuest_Questyno_Money8_Begin_Text_Declined",
})

table.insert(SFQuest_Database.DialoguePool, {
    dialoguecode = "SFQuest_Questyno_Money8_Complete",
    context = "ContextMenu_WorldEvent_TalkTo",
    command = "completequest;Questyno_Money8",
    text = "IGUI_SFQuest_Questyno_Money8_Complete"
})

-- 9. 500 soldi per pharmacy book
table.insert(SFQuest_Database.DialoguePool, {
    dialoguecode = "SFQuest_Questyno_Money9_Begin",
    context = "ContextMenu_WorldEvent_TalkTo",
    command = "unlockquest;Questyno_Money9",
    optional = true,
    text = "IGUI_SFQuest_Questyno_Money9_Begin_Text",
    textaccepted = "IGUI_SFQuest_Questyno_Money9_Begin_Text_Accepted",
    textdeclined = "IGUI_SFQuest_Questyno_Money9_Begin_Text_Declined",
})

table.insert(SFQuest_Database.DialoguePool, {
    dialoguecode = "SFQuest_Questyno_Money9_Complete",
    context = "ContextMenu_WorldEvent_TalkTo",
    command = "completequest;Questyno_Money9",
    text = "IGUI_SFQuest_Questyno_Money9_Complete"
})

-- 10. 100 soldi per 1 arma da fuoco random (in verità questa sono tre quest con stesso dialogo e titolo, però danno tre reward diversi)
-- 10a. 100 soldi per pistola
table.insert(SFQuest_Database.DialoguePool, {
    dialoguecode = "SFQuest_Questyno_Money10_random1_Begin",
    context = "ContextMenu_WorldEvent_TalkTo",
    command = "unlockquest;Questyno_Money10_random1",
    optional = true,
    text = "IGUI_SFQuest_Questyno_Money10_Begin_Text",
    textaccepted = "IGUI_SFQuest_Questyno_Money10_Begin_Text_Accepted",
    textdeclined = "IGUI_SFQuest_Questyno_Money10_Begin_Text_Declined",
})

table.insert(SFQuest_Database.DialoguePool, {
    dialoguecode = "SFQuest_Questyno_Money10_random1_Complete",
    context = "ContextMenu_WorldEvent_TalkTo",
    command = "completequest;Questyno_Money10_random1",
    text = "IGUI_SFQuest_Questyno_Money10_Complete"
})

-- 10b. 100 soldi per fucile a pompa
table.insert(SFQuest_Database.DialoguePool, {
    dialoguecode = "SFQuest_Questyno_Money10_random2_Begin",
    context = "ContextMenu_WorldEvent_TalkTo",
    command = "unlockquest;Questyno_Money10_random2",
    optional = true,
    text = "IGUI_SFQuest_Questyno_Money10_Begin_Text",
    textaccepted = "IGUI_SFQuest_Questyno_Money10_Begin_Text_Accepted",
    textdeclined = "IGUI_SFQuest_Questyno_Money10_Begin_Text_Declined",
})

table.insert(SFQuest_Database.DialoguePool, {
    dialoguecode = "SFQuest_Questyno_Money10_random2_Complete",
    context = "ContextMenu_WorldEvent_TalkTo",
    command = "completequest;Questyno_Money10_random2",
    text = "IGUI_SFQuest_Questyno_Money10_Complete"
})

-- 10c. 100 soldi per revolver
table.insert(SFQuest_Database.DialoguePool, {
    dialoguecode = "SFQuest_Questyno_Money10_random3_Begin",
    context = "ContextMenu_WorldEvent_TalkTo",
    command = "unlockquest;Questyno_Money10_random3",
    optional = true,
    text = "IGUI_SFQuest_Questyno_Money10_Begin_Text",
    textaccepted = "IGUI_SFQuest_Questyno_Money10_Begin_Text_Accepted",
    textdeclined = "IGUI_SFQuest_Questyno_Money10_Begin_Text_Declined",
})

table.insert(SFQuest_Database.DialoguePool, {
    dialoguecode = "SFQuest_Questyno_Money10_random3_Complete",
    context = "ContextMenu_WorldEvent_TalkTo",
    command = "completequest;Questyno_Money10_random3",
    text = "IGUI_SFQuest_Questyno_Money10_Complete"
})
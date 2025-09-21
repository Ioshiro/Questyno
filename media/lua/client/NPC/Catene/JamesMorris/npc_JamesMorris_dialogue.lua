require 'SFQuest_Database'

-- Dialoghi per JamesMorris
table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_JamesMorris_Intro_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_JamesMorris_Intro", text = "IGUI_SFQuest_Questyno_JamesMorris_Intro_Complete_Text"})


table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_JamesMorris1_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_JamesMorris1", optional = true, text = "IGUI_SFQuest_Questyno_JamesMorris1_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_JamesMorris1_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_JamesMorris1_Begin_Text_Declined"})


table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_JamesMorris1_Complete", context = "ContextMenu_PrendiFloppy", command = "completequest;Questyno_JamesMorris1", text = "IGUI_SFQuest_Questyno_JamesMorris1_Complete"})


table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_JamesMorris1_A_Complete", context = "ContextMenu_InserisciFloppy", command = "completequest;Questyno_JamesMorris1_A", text = "IGUI_SFQuest_Questyno_JamesMorris1_A_Complete"})


table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_JamesMorris1_B_Complete", context = "ContextMenu_StampaDocumenti", command = "completequest;Questyno_JamesMorris1_B", text = "IGUI_SFQuest_Questyno_JamesMorris1_B_Complete"})



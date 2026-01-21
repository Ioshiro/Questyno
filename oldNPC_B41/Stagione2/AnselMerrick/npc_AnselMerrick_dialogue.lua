require 'SFQuest_Database'

-- Dialoghi per AnselMerrick
table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_AnselMerrick_Intro_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_AnselMerrick_Intro", text = "IGUI_SFQuest_Questyno_AnselMerrick_Intro_Complete_Text"})


table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_AnselMerrick1_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_AnselMerrick1", optional = true, text = "IGUI_SFQuest_Questyno_AnselMerrick1_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_AnselMerrick1_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_AnselMerrick1_Begin_Text_Declined"})


table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_AnselMerrick1_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_AnselMerrick1", text = "IGUI_SFQuest_Questyno_AnselMerrick1_Complete"})


table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_AnselMerrick2_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_AnselMerrick2", optional = true, text = "IGUI_SFQuest_Questyno_AnselMerrick2_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_AnselMerrick2_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_AnselMerrick2_Begin_Text_Declined"})


table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_AnselMerrick2_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_AnselMerrick2", text = "IGUI_SFQuest_Questyno_AnselMerrick2_Complete"})


table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_AnselMerrick3_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_AnselMerrick3", optional = true, text = "IGUI_SFQuest_Questyno_AnselMerrick3_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_AnselMerrick3_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_AnselMerrick3_Begin_Text_Declined"})


table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_AnselMerrick3_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_AnselMerrick3", text = "IGUI_SFQuest_Questyno_AnselMerrick3_Complete"})



require 'SFQuest_Database'

-- Dialoghi per PaigeTurner
table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_PaigeTurner_Intro_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_PaigeTurner_Intro", text = "IGUI_SFQuest_Questyno_PaigeTurner_Intro_Complete_Text"})


table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_PaigeTurner1_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_PaigeTurner1", optional = true, text = "IGUI_SFQuest_Questyno_PaigeTurner1_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_PaigeTurner1_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_PaigeTurner1_Begin_Text_Declined"})


table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_PaigeTurner1_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_PaigeTurner1", text = "IGUI_SFQuest_Questyno_PaigeTurner1_Complete"})


table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_PaigeTurner2_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_PaigeTurner2", optional = true, text = "IGUI_SFQuest_Questyno_PaigeTurner2_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_PaigeTurner2_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_PaigeTurner2_Begin_Text_Declined"})


table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_PaigeTurner2_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_PaigeTurner2", text = "IGUI_SFQuest_Questyno_PaigeTurner2_Complete"})


table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_PaigeTurner3_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_PaigeTurner3", optional = true, text = "IGUI_SFQuest_Questyno_PaigeTurner3_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_PaigeTurner3_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_PaigeTurner3_Begin_Text_Declined"})


table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_PaigeTurner3_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_PaigeTurner3", text = "IGUI_SFQuest_Questyno_PaigeTurner3_Complete"})



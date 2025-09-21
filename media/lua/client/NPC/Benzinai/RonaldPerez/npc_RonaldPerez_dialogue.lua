require 'SFQuest_Database'

-- Dialoghi per RonaldPerez
table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_RonaldPerez_Begin", context = "ContextMenu_WorldEvent_TalkTo",command = "unlockquest;Questyno_RonaldPerez", optional = true, text = "IGUI_SFQuest_Questyno_RonaldPerez_Begin", textaccepted = "IGUI_SFQuest_Questyno_RonaldPerez_Accepted",textdeclined = "IGUI_SFQuest_Questyno_RonaldPerez_Declined"})


table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_RonaldPerez_Complete", context = "ContextMenu_WorldEvent_TalkTo",command = "completequest;Questyno_RonaldPerez_A", text = "IGUI_SFQuest_Questyno_RonaldPerez_Complete"})



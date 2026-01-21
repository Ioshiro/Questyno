require 'SFQuest_Database'

-- Dialoghi per KarenTaylor
table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_KarenTaylor_Begin", context = "ContextMenu_WorldEvent_TalkTo",command = "unlockquest;Questyno_KarenTaylor", optional = true, text = "IGUI_SFQuest_Questyno_KarenTaylor_Begin", textaccepted = "IGUI_SFQuest_Questyno_KarenTaylor_Accepted",textdeclined = "IGUI_SFQuest_Questyno_KarenTaylor_Declined"})


table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_KarenTaylor_Complete", context = "ContextMenu_WorldEvent_TalkTo",command = "completequest;Questyno_KarenTaylor_A", text = "IGUI_SFQuest_Questyno_KarenTaylor_Complete"})



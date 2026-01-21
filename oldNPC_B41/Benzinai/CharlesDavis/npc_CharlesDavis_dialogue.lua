require 'SFQuest_Database'

-- Dialoghi per CharlesDavis
table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_CharlesDavis_Begin", context = "ContextMenu_WorldEvent_TalkTo",command = "unlockquest;Questyno_CharlesDavis", optional = true, text = "IGUI_SFQuest_Questyno_CharlesDavis_Begin", textaccepted = "IGUI_SFQuest_Questyno_CharlesDavis_Accepted",textdeclined = "IGUI_SFQuest_Questyno_CharlesDavis_Declined"})


table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_CharlesDavis_Complete", context = "ContextMenu_WorldEvent_TalkTo",command = "completequest;Questyno_CharlesDavis_A", text = "IGUI_SFQuest_Questyno_CharlesDavis_Complete"})



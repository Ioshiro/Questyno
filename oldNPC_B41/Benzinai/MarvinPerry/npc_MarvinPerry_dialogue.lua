require 'SFQuest_Database'

-- Dialoghi per MarvinPerry
table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_MarvinPerry_Begin", context = "ContextMenu_WorldEvent_TalkTo",command = "unlockquest;Questyno_MarvinPerry", optional = true, text = "IGUI_SFQuest_Questyno_MarvinPerry_Begin", textaccepted = "IGUI_SFQuest_Questyno_MarvinPerry_Accepted",textdeclined = "IGUI_SFQuest_Questyno_MarvinPerry_Declined"})


table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_MarvinPerry_Complete", context = "ContextMenu_WorldEvent_TalkTo",command = "completequest;Questyno_MarvinPerry_A", text = "IGUI_SFQuest_Questyno_MarvinPerry_Complete"})



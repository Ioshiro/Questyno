require 'SFQuest_Database'

-- Dialoghi per GarrettKing
table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_GarrettKing_Begin", context = "ContextMenu_WorldEvent_TalkTo",command = "unlockquest;Questyno_GarrettKing", optional = true, text = "IGUI_SFQuest_Questyno_GarrettKing_Begin", textaccepted = "IGUI_SFQuest_Questyno_GarrettKing_Accepted",textdeclined = "IGUI_SFQuest_Questyno_GarrettKing_Declined"})


table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_GarrettKing_Complete", context = "ContextMenu_WorldEvent_TalkTo",command = "completequest;Questyno_GarrettKing_A", text = "IGUI_SFQuest_Questyno_GarrettKing_Complete"})



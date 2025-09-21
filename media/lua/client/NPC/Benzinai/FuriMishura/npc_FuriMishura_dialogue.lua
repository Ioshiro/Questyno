require 'SFQuest_Database'

-- Dialoghi per FuriMishura
table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_FuriMishura_Begin", context = "ContextMenu_WorldEvent_TalkTo",command = "unlockquest;Questyno_FuriMishura", optional = true, text = "IGUI_SFQuest_Questyno_FuriMishura_Begin", textaccepted = "IGUI_SFQuest_Questyno_FuriMishura_Accepted",textdeclined = "IGUI_SFQuest_Questyno_FuriMishura_Declined"})


table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_FuriMishura_Complete", context = "ContextMenu_WorldEvent_TalkTo",command = "completequest;Questyno_FuriMishura_A", text = "IGUI_SFQuest_Questyno_FuriMishura_Complete"})



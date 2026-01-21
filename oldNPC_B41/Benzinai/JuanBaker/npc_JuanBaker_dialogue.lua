require 'SFQuest_Database'

-- Dialoghi per JuanBaker
table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_JuanBaker_Begin", context = "ContextMenu_WorldEvent_TalkTo",command = "unlockquest;Questyno_JuanBaker", optional = true, text = "IGUI_SFQuest_Questyno_JuanBaker_Begin", textaccepted = "IGUI_SFQuest_Questyno_JuanBaker_Accepted",textdeclined = "IGUI_SFQuest_Questyno_JuanBaker_Declined"})


table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_JuanBaker_Complete", context = "ContextMenu_WorldEvent_TalkTo",command = "completequest;Questyno_JuanBaker_A", text = "IGUI_SFQuest_Questyno_JuanBaker_Complete"})



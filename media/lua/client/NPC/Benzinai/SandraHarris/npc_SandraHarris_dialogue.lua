require 'SFQuest_Database'

-- Dialoghi per SandraHarris
table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SandraHarris_Begin", context = "ContextMenu_WorldEvent_TalkTo",command = "unlockquest;Questyno_SandraHarris", optional = true, text = "IGUI_SFQuest_Questyno_SandraHarris_Begin", textaccepted = "IGUI_SFQuest_Questyno_SandraHarris_Accepted",textdeclined = "IGUI_SFQuest_Questyno_SandraHarris_Declined"})


table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_SandraHarris_Complete", context = "ContextMenu_WorldEvent_TalkTo",command = "completequest;Questyno_SandraHarris_A", text = "IGUI_SFQuest_Questyno_SandraHarris_Complete"})



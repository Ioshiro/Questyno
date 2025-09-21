require 'SFQuest_Database'

-- Dialoghi per EricAdams
table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_EricAdams_Begin", context = "ContextMenu_WorldEvent_TalkTo",command = "unlockquest;Questyno_EricAdams", optional = true, text = "IGUI_SFQuest_Questyno_EricAdams_Begin", textaccepted = "IGUI_SFQuest_Questyno_EricAdams_Accepted",textdeclined = "IGUI_SFQuest_Questyno_EricAdams_Declined"})


table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_EricAdams_Complete", context = "ContextMenu_WorldEvent_TalkTo",command = "completequest;Questyno_EricAdams_A", text = "IGUI_SFQuest_Questyno_EricAdams_Complete"})



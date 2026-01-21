require 'SFQuest_Database'

-- Dialoghi per LincolnReed
table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_LincolnReed_Intro_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_LincolnReed_Intro;", text = "IGUI_SFQuest_Questyno_LincolnReed_Intro_Complete_Text",})


table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_LincolnReed1_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_LincolnReed1", optional = true, text = "IGUI_SFQuest_Questyno_LincolnReed1_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_LincolnReed1_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_LincolnReed1_Begin_Text_Declined"})


table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_LincolnReed1_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_LincolnReed1", text = "IGUI_SFQuest_Questyno_LincolnReed1_Complete"})



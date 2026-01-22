require 'SFQuest_Database'

-- Dialoghi per HeatherThomas
table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_HeatherThomas_Intro_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;HeatherThomas_Intro", text = "IGUI_SFQuest_HeatherThomas_Intro_Complete_Text"})


table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_HeatherThomas1_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;HeatherThomas1", optional = true, text = "IGUI_SFQuest_HeatherThomas1_Begin_Text", textaccepted = "IGUI_SFQuest_HeatherThomas1_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_HeatherThomas1_Begin_Text_Declined"})


table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_HeatherThomas1_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;HeatherThomas1", text = "IGUI_SFQuest_HeatherThomas1_Complete"})



require 'SFQuest_Database'

-- Dialoghi per EzekielFlynn
-- table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_EzekielFlynn_Intro_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;EzekielFlynn_Intro", text = "IGUI_SFQuest_EzekielFlynn_Intro_Complete_Text", sound = {begin = "dialogues/Questyno_Ezekiel_Intro"}}) -- keep this for audio reference


-- table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_EzekielFlynn1_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;EzekielFlynn1", optional = true, text = "IGUI_SFQuest_EzekielFlynn1_Begin_Text", textaccepted = "IGUI_SFQuest_EzekielFlynn1_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_EzekielFlynn1_Begin_Text_Declined", sound = {begin = "dialogues/Questyno_Ezekiel_1", accept = "dialogues/Questyno_Ezekiel_Accepted", decline = "dialogues/Questyno_Ezekiel_Declined"}})  -- keep this for audio reference


table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_EzekielFlynn_Intro_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;EzekielFlynn_Intro", text = "IGUI_SFQuest_EzekielFlynn_Intro_Complete_Text", })


table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_EzekielFlynn1_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;EzekielFlynn1", optional = true, text = "IGUI_SFQuest_EzekielFlynn1_Begin_Text", textaccepted = "IGUI_SFQuest_EzekielFlynn1_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_EzekielFlynn1_Begin_Text_Declined"})


table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_EzekielFlynn1_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;EzekielFlynn1_A", text = "IGUI_SFQuest_EzekielFlynn1_Complete", })


table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_EzekielFlynn2_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;EzekielFlynn2", optional = true, text = "IGUI_SFQuest_EzekielFlynn2_Begin_Text", textaccepted = "IGUI_SFQuest_EzekielFlynn2_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_EzekielFlynn2_Begin_Text_Declined", })


table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_EzekielFlynn2_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;EzekielFlynn2_A", text = "IGUI_SFQuest_EzekielFlynn2_Complete", })


table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_EzekielFlynn3_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;EzekielFlynn3", optional = true, text = "IGUI_SFQuest_EzekielFlynn3_Begin_Text", textaccepted = "IGUI_SFQuest_EzekielFlynn3_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_EzekielFlynn3_Begin_Text_Declined", })


table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_EzekielFlynn3_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;EzekielFlynn3", text = "IGUI_SFQuest_EzekielFlynn3_Complete", })


table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_EzekielFlynn4_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;EzekielFlynn4", optional = true, text = "IGUI_SFQuest_EzekielFlynn4_Begin_Text", textaccepted = "IGUI_SFQuest_EzekielFlynn4_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_EzekielFlynn4_Begin_Text_Declined", })


table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_EzekielFlynn4_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;EzekielFlynn4", text = "IGUI_SFQuest_EzekielFlynn4_Complete",})


table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_EzekielFlynn5_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;EzekielFlynn5", optional = true, text = "IGUI_SFQuest_EzekielFlynn5_Begin_Text", textaccepted = "IGUI_SFQuest_EzekielFlynn5_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_EzekielFlynn5_Begin_Text_Declined",})


table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_EzekielFlynn5_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;EzekielFlynn5_A", text = "IGUI_SFQuest_EzekielFlynn5_Complete", })



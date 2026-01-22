require 'SFQuest_Database'

-- Quest per Pyno
table.insert(SFQuest_Database.QuestPool, {
    guid = "Pyno1",

    awardstask = "Pyno2", -- DIALOGUE REWARD
    awardsrep = "LaResistenza;1", -- REP REWARD
    awardsitem = "Base.Money;1", -- ITEM REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Pyno1_Lore" },
    text = "IGUI_SFQuest_Pyno1_Text",
    texture = "media/textures/Item_Pyno.png",
    title = "IGUI_SFQuest_Pyno1_Title",
    unique = true,
    unlocks = "unlockworldevent;Pyno;SFQuest_Pyno1_Complete",
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Pyno2",

    awardstask = "Pyno3", -- DIALOGUE REWARD
    awardsrep = "LaResistenza;1", -- REP REWARD
    awardsitem = "Base.Money;1", -- ITEM REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Pyno2_Lore" },
    text = "IGUI_SFQuest_Pyno2_Text",
    texture = "media/textures/Item_Pyno.png",
    title = "IGUI_SFQuest_Pyno2_Title",
    unique = true,
    unlocks = "unlockworldevent;Pyno;SFQuest_Pyno2_Complete",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Pyno3",

    awardstask = "Pyno4", -- DIALOGUE REWARD
    awardsrep = "LaResistenza;1", -- REP REWARD
    awardsitem = "Base.Money;1", -- ITEM REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Pyno3_Lore" },
    text = "IGUI_SFQuest_Pyno3_Text",
    texture = "media/textures/Item_Pyno.png",
    title = "IGUI_SFQuest_Pyno3_Title",
    unique = true,
    unlocks = "unlockworldevent;Pyno;SFQuest_Pyno3_Complete",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Pyno4",

    awardstask = "Pyno5", -- DIALOGUE REWARD
    awardsrep = "LaResistenza;1", -- REP REWARD
    awardsitem = "Base.Wallet;1;Base.CreditCard;1", -- ITEM REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Pyno4_Lore" },
    text = "IGUI_SFQuest_Pyno4_Text",
    texture = "media/textures/Item_Pyno.png",
    title = "IGUI_SFQuest_Pyno4_Title",
    unique = true,
    unlocks = "unlockworldevent;Pyno;SFQuest_Pyno4_Complete",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Pyno5",

    awardsrep = "LaResistenza;1", -- REP REWARD
    awardsitem = "Base.Pen;1;Base.Homepie;1", -- ITEM REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Pyno5_Lore" },
    text = "IGUI_SFQuest_Pyno5_Text",
    texture = "media/textures/Item_Pyno.png",
    title = "IGUI_SFQuest_Pyno5_Title",
    unique = true,
    unlocks = "unlockworldevent;Pyno;SFQuest_Pyno5_Complete",
});



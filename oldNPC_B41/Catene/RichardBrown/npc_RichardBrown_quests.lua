require 'SFQuest_Database'

-- Quest per RichardBrown
table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RichardBrown_Intro",

    awardsrep = "RichardBrown;1", -- REP REWARD
    awardsworld = "Questyno_RichardBrown;SFQuest_Questyno_RichardBrown1_Begin;Questyno_RichardBrown1", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_RichardBrown_Intro_Lore" },
    text = "IGUI_SFQuest_Questyno_RichardBrown_Intro_Text",
    texture = "media/textures/Item_RichardBrown.png",
    unique = true,
    unlocks = "unlockworldevent;Questyno_RichardBrown;SFQuest_Questyno_RichardBrown_Intro_Complete",
    title = "IGUI_SFQuest_Questyno_RichardBrown_Intro_Title",
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RichardBrown1",

    awardsrep = "LaResistenza;100;RichardBrown;20", -- REP REWARD
    awardsitem = "MoneyToXP.Droga1;1", -- ITEM REWARD
    awardsworld = "Questyno_RichardBrown;SFQuest_Questyno_RichardBrown2_Begin;Questyno_RichardBrown2", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_RichardBrown1_Lore" },
    text = "IGUI_SFQuest_Questyno_RichardBrown1_Text",
    texture = "media/textures/Item_RichardBrown.png",
    title = "IGUI_SFQuest_Questyno_RichardBrown1_Title",
    unique = true,
    unlocks = "actionevent;killzombies:50;unlockworldevent:Questyno_RichardBrown:SFQuest_Questyno_RichardBrown1_Complete:placeholder:updatequeststatus:Questyno_RichardBrown1:Obtained", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RichardBrown2",

    awardsrep = "LaResistenza;200;RichardBrown;20", -- REP REWARD
    awardsitem = "MoneyToXP.Droga2;1;Base.Apple;1", -- ITEM REWARD
    awardsworld = "Questyno_RichardBrown;SFQuest_Questyno_RichardBrown3_Begin;Questyno_RichardBrown3", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_RichardBrown2_Lore" },
    text = "IGUI_SFQuest_Questyno_RichardBrown2_Text",
    texture = "media/textures/Item_RichardBrown.png",
    title = "IGUI_SFQuest_Questyno_RichardBrown2_Title",
    unique = true,
    unlocks = "actionevent;killzombies:100;unlockworldevent:Questyno_RichardBrown:SFQuest_Questyno_RichardBrown2_Complete:placeholder:updatequeststatus:Questyno_RichardBrown2:Obtained", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RichardBrown3",

    awardsrep = "LaResistenza;250;RichardBrown;20", -- REP REWARD
    awardsitem = "MoneyToXP.Droga3;1;Base.Apple;1", -- ITEM REWARD
    awardsworld = "Questyno_RichardBrown;SFQuest_Questyno_RichardBrown4_Begin;Questyno_RichardBrown4", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_RichardBrown3_Lore" },
    text = "IGUI_SFQuest_Questyno_RichardBrown3_Text",
    texture = "media/textures/Item_RichardBrown.png",
    title = "IGUI_SFQuest_Questyno_RichardBrown3_Title",
    unique = true,
    unlocks = "actionevent;killzombies:300;unlockworldevent:Questyno_RichardBrown:SFQuest_Questyno_RichardBrown3_Complete:placeholder:updatequeststatus:Questyno_RichardBrown3:Obtained", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RichardBrown4",

    awardsrep = "LaResistenza;350;RichardBrown;20", -- REP REWARD
    awardsitem = "MoneyToXP.Droga4;1;Base.Apple;1", -- ITEM REWARD
    awardsworld = "Questyno_RichardBrown;SFQuest_Questyno_RichardBrown5_Begin;Questyno_RichardBrown5", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_RichardBrown4_Lore" },
    text = "IGUI_SFQuest_Questyno_RichardBrown4_Text",
    texture = "media/textures/Item_RichardBrown.png",
    title = "IGUI_SFQuest_Questyno_RichardBrown4_Title",
    unique = true,
    unlocks = "actionevent;killzombies:400;unlockworldevent:Questyno_RichardBrown:SFQuest_Questyno_RichardBrown4_Complete:placeholder:updatequeststatus:Questyno_RichardBrown4:Obtained", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool, {
    guid = "Questyno_RichardBrown5",

    awardsrep = "LaResistenza;600;RichardBrown;10", -- REP REWARD
    awardsitem = "Base.Money;50;MoneyToXP.SafehouseTicket;1", -- ITEM REWARD
    awardsworld = "Questyno_RichardBrown;SFQuest_Questyno_RichardBrown6_Begin;Questyno_RichardBrown6", -- DIALOGUE REWARD
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_RichardBrown5_Lore" },
    text = "IGUI_SFQuest_Questyno_RichardBrown5_Text",
    texture = "media/textures/Item_RichardBrown.png",
    title = "IGUI_SFQuest_Questyno_RichardBrown5_Title",
    unique = true,
    unlocks = "actionevent;killzombies:50;unlockworldevent:Questyno_RichardBrown:SFQuest_Questyno_RichardBrown5_Complete:placeholder:updatequeststatus:Questyno_RichardBrown5:Obtained", -- ZOMBIE REQUEST
    unlockedsound = "QuestUnlocked"
});


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_RichardBrown6_A",
    awardstask = "Questyno_RichardBrown6_B",
    lore = { "IGUI_SFQuest_Questyno_RichardBrown6_Lore" },
    objectives = { {
        guid = "Questyno_RichardBrown6_C",
        text = "IGUI_SFQuest_Questyno_RichardBrown6_C",
        hidden = false,
        needsitem = "Base.AVCSClaimOrb;1",
        onobtained = "updateobjective;Questyno_RichardBrown6_A;1;Completed;removeitem;Base.AVCSClaimOrb;1"
    }, {
        guid = "Questyno_RichardBrown6_D",
        text = "IGUI_SFQuest_Questyno_RichardBrown6_D",
        hidden = false,
        needsitem = "HottieZ;1",
        onobtained = "updateobjective;Questyno_RichardBrown6_A;2;Completed;removeitem;HottieZ;1"
    } },
    text = "IGUI_SFQuest_Questyno_RichardBrown6_A_Text",
    texture = "media/textures/Item_RichardBrown.png",
    title = "IGUI_SFQuest_Questyno_RichardBrown6_Title",
    unique = true,
})


table.insert(SFQuest_Database.QuestPool,{
    guid = "Questyno_RichardBrown6_B",
    awardsrep = "LaResistenza;500;RichardBrown;109",
    awardsitem = "Money;50;Base.AVCSClaimOrb;1",
    completesound = "levelup",
    lore = { "IGUI_SFQuest_Questyno_RichardBrown6_Lore" },
    unlocks = "unlockworldevent;Questyno_RichardBrown;SFQuest_Questyno_RichardBrown6_Complete",
    text = "IGUI_SFQuest_Questyno_RichardBrown6_B_Text",
    texture = "media/textures/Item_RichardBrown.png",
    title = "IGUI_SFQuest_Questyno_RichardBrown6_Title",
    unique = true,
});



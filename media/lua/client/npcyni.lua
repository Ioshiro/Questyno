require 'SFQuest_Database'
--[[                            ***       NPC     ***
]]
-- npc che da la quest
--[[ table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_Pynocchio",                  -- ID univoco del npc
    square = "12427x1341x0",                          -- Posizione del npc
    name = "IGUI_SFQuest_Questyno_Pynocchio_Name",    -- Nome del npc
    faction = "LaResistenza",                         -- Fazione del npc
    picture = "media/textures/Picture_Pynocchio.png", -- Texture (icona) da mostrare nella lista quest (140x140 max)
})

-- npc che da l'item per completare la quest
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_Brioshi",
    square = "12430x1341x0",
    name = "IGUI_SFQuest_Questyno_Brioshi_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_Brioshi.png",
}) ]]

-- manichino che rappresenta il primo npc
--[[ SFQuest_Database.MannequinPool["12427x1341x0"] = {
    sprite = "location_shop_mall_01_73", -- stringa con un nome di sprite -> location_shop_mall_01_65 to 70 and from 73 to 78
    direction = "E",                     -- direzione del manichino (N, S, E, W)
    beard = "",                          -- stringa con id della beard model, se non definita è random, se "" rimane vuota
    --beardcolor = "0.0,0.0,0.0", -- colore della barba (R,G,B), se non definito è random
    --hair = "", -- stringa con id della hair model, se non definita è random, se "" rimane vuota
    --haircolor = "0.0,0.0,0.0", -- colore dei capelli (R,G,B), se non definito è random
    outfit =
    "Farmer" -- outfit da clothing.xml, diviso da male/female, però oltre ai definiti dal sistema (escono random) quelli vanilla escono bianchi
}

-- manichino che rappresenta il secondo npc
SFQuest_Database.MannequinPool["12430x1341x0"] = {
    sprite = "location_shop_mall_01_74",
    direction = "S",
    beard = "",
    --beardcolor = "0.0,0.0,0.0",
    --hair = "",
    --haircolor = "0.0,0.0,0.0",
    outfit = "Farmer"
} ]]


--[[                            ***       NPC DAILY QUEST     ***
                    Elenco:
                        x. Tony "Lupo" (Spawn Point: 12427x1340x0)
                        Spawn Point:
                        1. Sergente Grif (Spawn Point: 12427x1339x0)
]]

-- Tony "Lupo"
--[[ table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_TonyLupo",
    square = "12427x1340x0",
    name = "IGUI_SFQuest_Questyno_TonyLupo_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_TonyLupo.png",
})

SFQuest_Database.MannequinPool["12427x1340x0"] = {
    sprite = "location_shop_mall_01_69",
    direction = "E",
    beard = "",
    outfit = "Farmer"
} ]]

--[[
                                                            *** NPC DAILY SPAWN POINT ***
                    Elenco:
                        1. Sergente Grif (9331x8640x0)
                        2. Angelica Stella (9344x8618x0)
                        3. Heather Thomas (9315x8624x0)
                        4. Elia Rima (9330x8631x0)
                        5. Bob Repair (9340x8578x0)
                        6. Mike Pozzo (9315x8638x0)
                        7. Rosa China (9270x8491x0)
                        8. Emily Terry (9277x8491x0)
]]

-- Sergente Grif 9331x8640,0
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_Grif",
    square = "9331x8640x0",
    name = "IGUI_SFQuest_Questyno_Grif_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_Grif.png",
})

SFQuest_Database.MannequinPool["9331x8640x0"] = {
    sprite = "location_shop_mall_01_76",
    direction = "W",
    beard = "",
    outfit = "Farmer"
}
-- Angelica Stella  9344x8618,0
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_AngelicaStella",
    square = "9344x8618x0",
    name = "IGUI_SFQuest_Questyno_AngelicaStella_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_AngelicaStella.png",
})

SFQuest_Database.MannequinPool["9344x8618x0"] = {
    sprite = "location_shop_mall_01_73",
    direction = "S",
    beard = "",
    outfit = "TraderFarmer"
}

-- Heather Thomas  9315x8624,0
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_HeatherThomas",
    square = "9315x8624x0",
    name = "IGUI_SFQuest_Questyno_HeatherThomas_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_HeatherThomas.png",
})

SFQuest_Database.MannequinPool["9315x8624x0"] = {
    sprite = "location_shop_mall_01_76",
    direction = "E",
    beard = "",
    outfit = "Farmer"
}

-- Elia Rima  9330x8631,0
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_EliaRima",
    square = "9330x8631x0",
    name = "IGUI_SFQuest_Questyno_EliaRima_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_EliaRima.png",
})

SFQuest_Database.MannequinPool["9330x8631x0"] = {
    sprite = "location_shop_mall_01_70",
    direction = "E",
    beard = "",
    outfit = "Farmer"
}

-- Bob Repair 9340,8578,0
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_BobRepair",
    square = "9340x8578x0",
    name = "IGUI_SFQuest_Questyno_BobRepair_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_BobRepair.png",
})

SFQuest_Database.MannequinPool["9340x8578x0"] = {
    sprite = "location_shop_mall_01_69",
    direction = "E",
    beard = "",
    outfit = "Farmer"
}

-- Mike Pozzo 9315x8638x0
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_MikePozzo",
    square = "9315x8638x0",
    name = "IGUI_SFQuest_Questyno_MikePozzo_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_MikePozzo.png",
})

SFQuest_Database.MannequinPool["9315x8638x0"] = {
    sprite = "location_shop_mall_01_70",
    direction = "E",
    beard = "",
    outfit = "Farmer"
}

-- Rosa China 9270,8491,0
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_RosaChina",
    square = "9270x8491x0",
    name = "IGUI_SFQuest_Questyno_RosaChina_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_RosaChina.png",
})

SFQuest_Database.MannequinPool["9270x8491x0"] = {
    sprite = "location_shop_mall_01_70",
    direction = "E",
    beard = "",
    outfit = "Farmer"
}

-- Emily Terry 9277,8491,0
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_EmilyTerry",
    square = "9277x8491x0",
    name = "IGUI_SFQuest_Questyno_EmilyTerry_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_EmilyTerry.png",
})

SFQuest_Database.MannequinPool["9277x8491x0"] = {
    sprite = "location_shop_mall_01_70",
    direction = "E",
    beard = "",
    outfit = "Farmer"
}


--[[
                                                    *** NPC WEEKLY MULDRAUGH ***
                    Elenco:
                        1. Victoria Secret (10827x9074x0)
                        2. Dr. Susan Lee (10831x9073x0)
                        3. George Scott (10830x9078x0)
                        4. Samuel Young (10824x9065x0)
                        5. Xu Mishura (10844x9074x0)
                        6. David Turner (10839x9071x0)
]]

-- Victoria Secret 10827,9074,0
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_VictoriaSecret",
    square = "10827x9074x0",
    name = "IGUI_SFQuest_Questyno_VictoriaSecret_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_VictoriaSecret.png",
})

SFQuest_Database.MannequinPool["10827x9074x0"] = {
    sprite = "location_shop_mall_01_70",
    direction = "E",
    beard = "",
    outfit = "Police"
}

-- Dr. Susan Lee 10831,9073,0
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_SusanLee",
    square = "10831x9073x0",
    name = "IGUI_SFQuest_Questyno_SusanLee_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_SusanLee.png",
})

SFQuest_Database.MannequinPool["10831x9073x0"] = {
    sprite = "location_shop_mall_01_70",
    direction = "E",
    beard = "",
    outfit = "Police"
}

-- George Scott 10830,9078,0
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_GeorgeScott",
    square = "10830x9078x0",
    name = "IGUI_SFQuest_Questyno_GeorgeScott_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_GeorgeScott.png",
})

SFQuest_Database.MannequinPool["10830x9078x0"] = {
    sprite = "location_shop_mall_01_70",
    direction = "E",
    beard = "",
    outfit = "Police"
}

-- Samuel Young 10824,9065,0
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_SamuelYoung",
    square = "10824x9065x0",
    name = "IGUI_SFQuest_Questyno_SamuelYoung_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_SamuelYoung.png",
})

SFQuest_Database.MannequinPool["10824x9065x0"] = {
    sprite = "location_shop_mall_01_70",
    direction = "E",
    beard = "",
    outfit = "Police"
}

-- Xu Mishura 10844,9074,0
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_XuMishura",
    square = "10844x9074x0",
    name = "IGUI_SFQuest_Questyno_XuMishura_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_XuMishura.png",
})

SFQuest_Database.MannequinPool["10844x9074x0"] = {
    sprite = "location_shop_mall_01_70",
    direction = "E",
    beard = "",
    outfit = "Police"
}

-- David Turner 10839,9071,0
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_DavidTurner",
    square = "10839x9071x0",
    name = "IGUI_SFQuest_Questyno_DavidTurner_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_DavidTurner.png",
})

SFQuest_Database.MannequinPool["10839x9071x0"] = {
    sprite = "location_shop_mall_01_70",
    direction = "E",
    beard = "",
    outfit = "Police"
}

--[[
                                                    *** NPC CATENE SPAWN ***
                    Elenco:
                        1. Ezekiel Flynn (9345x8618x0)
                        2. Elowen Beckett (9330x8632x0)
]]

-- Ezekiel Flynn
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_EzekielFlynn",
    square = "9345x8618x0",
    name = "IGUI_SFQuest_Questyno_EzekielFlynn_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_EzekielFlynn.png",
})

SFQuest_Database.MannequinPool["9345x8618x0"] = {
    sprite = "location_shop_mall_01_70",
    direction = "E",
    beard = "",
    outfit = "PonchoGiallo"
}

-- Elowen Beckett
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_ElowenBeckett",
    square = "9330x8632x0",
    name = "IGUI_SFQuest_Questyno_ElowenBeckett_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_ElowenBeckett.png",
})

SFQuest_Database.MannequinPool["9330x8632x0"] = {
    sprite = "location_shop_mall_01_70",
    direction = "E",
    beard = "",
    outfit = "PonchoGiallo"
}

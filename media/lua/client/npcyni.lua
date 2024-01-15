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
    sprite = "location_shop_mall_01_68",
    direction = "W",
    beard = "",
    hair = "Bald",
    outfit = "TraderBandit"
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
    sprite = "location_shop_mall_01_65",
    direction = "S",
    beard = "",
    hair = "Bald",
    outfit = "TraderBandit"
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
    sprite = "location_shop_mall_01_68",
    direction = "E",
    beard = "",
    hair = "Bald",
    outfit = "TraderBandit"
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
    sprite = "location_shop_mall_01_68",
    direction = "E",
    beard = "",
    hair = "Bald",
    outfit = "TraderBandit"
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
    sprite = "location_shop_mall_01_68",
    direction = "E",
    beard = "",
    hair = "Bald",
    outfit = "TraderBandit"
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
    sprite = "location_shop_mall_01_68",
    direction = "E",
    beard = "",
    hair = "Bald",
    outfit = "TraderBandit"
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
    sprite = "location_shop_mall_01_65",
    direction = "E",
    beard = "",
    hair = "Bald",
    outfit = "TraderBandit"
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
    sprite = "location_shop_mall_01_65",
    direction = "E",
    beard = "",
    hair = "Bald",
    outfit = "TraderBandit"
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
    sprite = "location_shop_mall_01_65",
    direction = "E",
    beard = "",
    outfit = "TraderBandit"
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
    sprite = "location_shop_mall_01_65",
    direction = "E",
    beard = "",
    outfit = "TraderBandit"
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
    outfit = "TraderBandit"
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
    outfit = "TraderBandit"
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
    outfit = "TraderBandit"
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
    outfit = "TraderBandit"
}

--[[
                                                    *** NPC DAILY WESTPOINT ***
                    Elenco:
                        1. Tony Lupo (10157x6611x0)
                        2. Rafael Prezioso (10152,6622,1)
                        3. Jeffrey Lewis (10150,6620,0)
                        4. Cristopher Davis (10161,6627,0)
                        5. Pamela Perez 10115,6622,0
                        6. Sam Fisher (10153,6571,0)
]]

-- Tony "Lupo" 
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_TonyLupo",
    square = "10157x6611x0",
    name = "IGUI_SFQuest_Questyno_TonyLupo_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_TonyLupo.png",
})

SFQuest_Database.MannequinPool["10157x6611x0"] = {
    sprite = "location_shop_mall_01_69",
    direction = "E",
    beard = "",
    outfit = "TraderBandit"
}

-- Rafael Prezioso 10152,6622,1
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_RafaelPrezioso",
    square = "10156x6611x0",
    name = "IGUI_SFQuest_Questyno_RafaelPrezioso_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_RafaelPrezioso.png",
})

SFQuest_Database.MannequinPool["10156x6611x0"] = {
    sprite = "location_shop_mall_01_69",
    direction = "E",
    beard = "",
    outfit = "TraderBandit"
}

-- Jeffrey Lewis 10150,6620,0
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_JeffreyLewis",
    square = "10156x6612x0",
    name = "IGUI_SFQuest_Questyno_JeffreyLewis_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_JeffreyLewis.png",
})

SFQuest_Database.MannequinPool["10156x6612x0"] = {
    sprite = "location_shop_mall_01_69",
    direction = "E",
    beard = "",
    outfit = "TraderBandit"
}

-- Christopher Davis 10161,6627,0
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_ChristopherDavis",
    square = "10161x6627x0",
    name = "IGUI_SFQuest_Questyno_ChristopherDavis_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_ChristopherDavis.png",
})

SFQuest_Database.MannequinPool["10161x6627x0"] = {
    sprite = "location_shop_mall_01_69",
    direction = "E",
    beard = "",
    outfit = "TraderBandit"
}

-- Pamela Perez 10115,6622,0
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_PamelaPerez",
    square = "10115x6622x0",
    name = "IGUI_SFQuest_Questyno_PamelaPerez_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_PamelaPerez.png",
})

SFQuest_Database.MannequinPool["10115x6622x0"] = {
    sprite = "location_shop_mall_01_69",
    direction = "E",
    beard = "",
    outfit = "TraderBandit"
}

-- Sam Fisher 10153,6571,0
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_SamFisher",
    square = "10153x6571x0",
    name = "IGUI_SFQuest_Questyno_SamFisher_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_SamFisher.png",
})

SFQuest_Database.MannequinPool["10153x6571x0"] = {
    sprite = "location_shop_mall_01_69",
    direction = "E",
    beard = "",
    outfit = "TraderBandit"
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
    beard = "PointyChin",
    beardcolor = "0.8,0.8,0.8",
    hair = "Recede",
    haircolor = "0.8,0.8,0.8",
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
    hair = "Bald",
    outfit = "PonchoGiallo"
}

-- John Baker, Trelai 7744x7760x0
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_JohnBaker",
    square = "7744x7760x0",
    name = "IGUI_SFQuest_Questyno_JohnBaker_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_JohnBaker.png",
})

SFQuest_Database.MannequinPool["7744x7760x0"] = {
    sprite = "location_shop_mall_01_70",
    direction = "E",
    beard = "",
    outfit = "PonchoGiallo"
}

--  Ethan Steele  10310x8040x0

table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_EthanSteele",
    square = "10310x8040x0",
    name = "IGUI_SFQuest_Questyno_EthanSteele_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_EthanSteele.png",
})

SFQuest_Database.MannequinPool["10310x8040x0"] = {
    sprite = "location_shop_mall_01_70",
    direction = "E",
    beard = "",
    outfit = "PonchoGiallo"
}

-- Taylor Blaze 7752x7759x0

table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_TaylorBlaze",
    square = "7752x7759x0",
    name = "IGUI_SFQuest_Questyno_TaylorBlaze_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_TaylorBlaze.png",
})

SFQuest_Database.MannequinPool["7752x7759x0"] = {
    sprite = "location_shop_mall_01_70",
    direction = "E",
    beard = "",
    outfit = "PonchoGiallo"
}

-- Marcus Kane 8574x11026x0

table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_MarcusKane",
    square = "8574x11026x0",
    name = "IGUI_SFQuest_Questyno_MarcusKane_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_MarcusKane.png",
})


SFQuest_Database.MannequinPool["8574x11026x0"] = {
    sprite = "location_shop_mall_01_70",
    direction = "E",
    beard = "",
    outfit = "PonchoGiallo"
}

-- Brian White 10812x9077x0

table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_BrianWhite",
    square = "10812x9077x0",
    name = "IGUI_SFQuest_Questyno_BrianWhite_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_BrianWhite.png",
})

SFQuest_Database.MannequinPool["10812x9077x0"] = {
    sprite = "location_shop_mall_01_70",
    direction = "E",
    beard = "",
    outfit = "PonchoGiallo"
}

-- Richard Brown 7178x9739x0

table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_RichardBrown",
    square = "7178x9739x0",
    name = "IGUI_SFQuest_Questyno_RichardBrown_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_RichardBrown.png",
})

SFQuest_Database.MannequinPool["7178x9739x0"] = {
    sprite = "location_shop_mall_01_70",
    direction = "E",
    beard = "",
    outfit = "PonchoGiallo"
}

-- Robert Wilson 10182x6764x0

table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_RobertWilson",
    square = "10182x6764x0",
    name = "IGUI_SFQuest_Questyno_RobertWilson_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_RobertWilson.png",
})

SFQuest_Database.MannequinPool["10182x6764x0"] = {
    sprite = "location_shop_mall_01_70",
    direction = "E",
    beard = "",
    outfit = "PonchoGiallo",
}

-- Alex Mercer Redfordville (3642,7302,0)

table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_AlexMercer",
    square = "3642x7302x0",
    name = "IGUI_SFQuest_Questyno_AlexMercer_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_AlexMercer.png",
})

SFQuest_Database.MannequinPool["3642x7302x0"] = {
    sprite = "location_shop_mall_01_70",
    direction = "E",
    beard = "",
    outfit = "PonchoRosso",
}

-- Olivia Chambers Raven Creek (4862,11186,0)

table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_OliviaChambers",
    square = "4862x11186x0",
    name = "IGUI_SFQuest_Questyno_OliviaChambers_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_OliviaChambers.png",
})

SFQuest_Database.MannequinPool["4862x11186x0"] = {
    sprite = "location_shop_mall_01_70",
    direction = "E",
    beard = "",
    outfit = "PonchoRosso",
}

-- Harper Wells Raven Creek (4866,11186,0)

table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_HarperWells",
    square = "4866x11186x0",
    name = "IGUI_SFQuest_Questyno_HarperWells_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_HarperWells.png",
})

SFQuest_Database.MannequinPool["4866x11186x0"] = {
    sprite = "location_shop_mall_01_70",
    direction = "E",
    beard = "",
    outfit = "PonchoRosso",
}

-- Grace Chambers da Louisville (13555,4142,0)

table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_GraceChambers",
    square = "13555x4142x0",
    name = "IGUI_SFQuest_Questyno_GraceChambers_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_GraceChambers.png",
})

SFQuest_Database.MannequinPool["13555x4142x0"] = {
    sprite = "location_shop_mall_01_70",
    direction = "E",
    beard = "",
    outfit = "PonchoRosso",
}

-- Andrew Turner da Louisville 13557,4146,0

table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_AndrewTurner",
    square = "13557x4146x0",
    name = "IGUI_SFQuest_Questyno_AndrewTurner_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_AndrewTurner.png",
})

SFQuest_Database.MannequinPool["13557x4146x0"] = {
    sprite = "location_shop_mall_01_70",
    direction = "E",
    beard = "",
    outfit = "PonchoRosso",
}

-- Lucas Miller March Ridge 10353,12406,1

table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_LucasMiller",
    square = "10353x12406x1",
    name = "IGUI_SFQuest_Questyno_LucasMiller_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_LucasMiller.png",
})

SFQuest_Database.MannequinPool["10353x12406x1"] = {
    sprite = "location_shop_mall_01_70",
    direction = "E",
    beard = "",
    outfit = "PonchoRosso",
}
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
    beard = "PointyChin",
    hair = "Recede",
    haircolor = "0.8,0.8,0.8",
    outfit = "SergenteGrif"
}
-- Angelica Stella  9344x8618,0
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_AngelicaStella",
    square = "9344x8603x0",
    name = "IGUI_SFQuest_Questyno_AngelicaStella_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_AngelicaStella.png",
})

SFQuest_Database.MannequinPool["9344x8603x0"] = {
    sprite = "location_shop_mall_01_65",
    direction = "S",
    beard = "",
    hair = "Bun",
    outfit = "AngelicaStella"
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
    beard = "Scruffy",
    hair = "PonyTail",
    haircolor = "0.3.0.3,0.3",
    outfit = "HeatherThomas"
}

-- Elia Rima  9342x8613x0
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_EliaRima",
    square = "9344x8613x0",
    name = "IGUI_SFQuest_Questyno_EliaRima_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_EliaRima.png",
})

SFQuest_Database.MannequinPool["9344x8613x0"] = {
    sprite = "location_shop_mall_01_68",
    direction = "S",
    beard = "",
    hair = "Cornrows",
    haircolor = "0.4,0.2,0.0",
    outfit = "EliaRima"
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
    direction = "S",
    beard = "FullBeard",
    beardcolor = "0.7,0.3,0.0",
    hair = "BuzzCut",
    haircolor = "0.9,0.5,0.0",
    outfit = "BobRepair"
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
    beard = "FullBeard",
    beardcolor = "0.4,0.1,0.0",
    hair = "Balding",
    haircolor = "0.7,0.3,0.1",
    outfit = "MikePozzo"
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
    hair = "Bob",
    haircolor = "0.2,0.1,0.0",
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
    direction = "S",
    beard = "",
    hair = "Buffont",
    haircolor = "0.1,0.1,0.0",
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

-- Victoria Secret 10824x9070x1
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_VictoriaSecret",
    square = "10824x9070x1",
    name = "IGUI_SFQuest_Questyno_VictoriaSecret_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_VictoriaSecret.png",
})

SFQuest_Database.MannequinPool["10824x9070x1"] = {
    sprite = "location_shop_mall_01_65",
    direction = "E",
    hair = "PulledBack",
    haircolor = "0.1,0.05,0.05",
    beard = "",
    outfit = "VictoriaSecret"
}

-- Dr. Susan Lee 10822x9072x0
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_SusanLee",
    square = "10822x9072x0",
    name = "IGUI_SFQuest_Questyno_SusanLee_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_SusanLee.png",
})

SFQuest_Database.MannequinPool["10822x9072x0"] = {
    sprite = "location_shop_mall_01_65",
    direction = "E",
    hair = "LongBraids",
    haircolor = "0.8,0.6,0.0",
    beard = "",
    outfit = "SusanLee"
}

-- George Scott 10830x9068x0
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_GeorgeScott",
    square = "10830x9068x0",
    name = "IGUI_SFQuest_Questyno_GeorgeScott_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_GeorgeScott.png",
})

SFQuest_Database.MannequinPool["10830x9068x0"] = {
    sprite = "location_shop_mall_01_70",
    direction = "S",
    hair = "Donny",
    haircolor = "0.3,0.1,0.0",
    beard = "FullBeard",
    outfit = "GeorgeScott"
}

-- Samuel Young 10823x9066x0
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_SamuelYoung",
    square = "10823x9066x0",
    name = "IGUI_SFQuest_Questyno_SamuelYoung_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_SamuelYoung.png",
})

SFQuest_Database.MannequinPool["10823x9066x0"] = {
    sprite = "location_shop_mall_01_70",
    direction = "E",
    hair = "LeftParting",
    haircolor = "0.1,0.1,0.0",
    beard = "FullBeard",
    outfit = "SamuelYoung"
}

-- Xu Mishura 10829,9072,1
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_XuMishura",
    square = "10829x9072x1",
    name = "IGUI_SFQuest_Questyno_XuMishura_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_XuMishura.png",
})

SFQuest_Database.MannequinPool["10829x9072x1"] = {
    sprite = "location_shop_mall_01_70",
    direction = "N",
    hair = "Larry",
    haircolor = "0.05,0.05,0.05",
    beard = "",
    outfit = "XuMishura"
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
    hair = "Short",
    haircolor = "0.4,0.4,0.07",
    beard = "",
    outfit = "DavidTurner"
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

-- Tony "Lupo"  10161x6621x0
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_TonyLupo",
    square = "10161x6621x0",
    name = "IGUI_SFQuest_Questyno_TonyLupo_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_TonyLupo.png",
})

SFQuest_Database.MannequinPool["10161x6621x0"] = {
    sprite = "location_shop_mall_01_69",
    direction = "S",
    beard = "Goatee",
    hair = "ShortBuzzCut",
    haircolor = "0.0,0.0,0.0",
    outfit = "TonyLupo"
}

-- Rafael Prezioso 10161x6621x0
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_RafaelPrezioso",
    square = "10155x6623x0",
    name = "IGUI_SFQuest_Questyno_RafaelPrezioso_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_RafaelPrezioso.png",
})

SFQuest_Database.MannequinPool["10155x6623x0"] = {
    sprite = "location_shop_mall_01_69",
    direction = "S",
    beard = "",
    hair = "Bald",
    outfit = "RafaelPrezioso"
}

-- Jeffrey Lewis 10149,6622,0
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_JeffreyLewis",
    square = "10149x6622x0",
    name = "IGUI_SFQuest_Questyno_JeffreyLewis_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_JeffreyLewis.png",
})

SFQuest_Database.MannequinPool["10149x6622x0"] = {
    sprite = "location_shop_mall_01_69",
    direction = "E",
    beard = "FullBeard",
    beardcolor = "0.2,0.2,0.2",
    hair = "Short",
    haircolor = "0.0,0.0,0.0",
    outfit = "JeffreyLewis"
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
    beard = "FullBeard",
    beardcolor = "0.2,0.2,0.2",
    hair = "Cornrows",
    haircolor = "0.0,0.0,0.0",
    outfit = "ChristopherDavis"
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
    hair = "Buffont", 
    haircolor = "0.1,0.1,0.0",
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
    beard = "FullBeard",
    beardcolor = "1,1,1",
    hair = "Messy",
    haircolor = "1,1,1",
    outfit = "SamFisher"
}
--[[
                                                    *** NPC CATENE SPAWN ***
                    Elenco:
                        1. Ezekiel Flynn (9327x8596x0)
                        2. Elowen Beckett (9324,8598,0)
]]

-- Ezekiel Flynn 9327x8596x0 Sud
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_EzekielFlynn",
    square = "9328x8596x0",
    name = "IGUI_SFQuest_Questyno_EzekielFlynn_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_EzekielFlynn.png",
})

SFQuest_Database.MannequinPool["9328x8596x0"] = {
    sprite = "location_shop_mall_01_70",
    direction = "S",
    beard = "PointyChin",
    beardcolor = "0.8,0.8,0.8",
    --hair = "",
    haircolor = "0.8,0.8,0.8",
    outfit = "PonchoGiallo"
}

-- Elowen Beckett 9324x8598x0
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_ElowenBeckett",
    square = "9324x8598x0",
    name = "IGUI_SFQuest_Questyno_ElowenBeckett_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_ElowenBeckett.png",
})

SFQuest_Database.MannequinPool["9324x8598x0"] = {
    sprite = "location_shop_mall_01_70",
    direction = "E",
    beard = "Goatee",
    beardcolor = "0.2,0.05,0.0",
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

-- Grace Chambers da Louisville (13641,4057,0)

table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_GraceChambers",
    square = "13641x4057x0",
    name = "IGUI_SFQuest_Questyno_GraceChambers_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_GraceChambers.png",
})

SFQuest_Database.MannequinPool["13641x4057x0"] = {
    sprite = "location_shop_mall_01_70",
    direction = "E",
    beard = "",
    outfit = "PonchoRosso",
}

-- MayaBlackwell Redfordville (3637,7302,0) Est

table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_MayaBlackwell",
    square = "3637x7302x0",
    name = "IGUI_SFQuest_Questyno_MayaBlackwell_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_MayaBlackwell.png",
})

SFQuest_Database.MannequinPool["3637x7302x0"] = {
    sprite = "location_shop_mall_01_70",
    direction = "E",
    beard = "",
    outfit = "PonchoRosso",
}

-- Andrew Turner da Louisville 13570,4021,0

table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_AndrewTurner",
    square = "13570x4021x0",
    name = "IGUI_SFQuest_Questyno_AndrewTurner_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_AndrewTurner.png",
})

SFQuest_Database.MannequinPool["13570x4021x0"] = {
    sprite = "location_shop_mall_01_70",
    direction = "E",
    beard = "",
    outfit = "PonchoRosso",
}

-- Lucas Miller March Ridge  10345,12404,0

table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_LucasMiller",
    square = "10345x12404x0",
    name = "IGUI_SFQuest_Questyno_LucasMiller_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_LucasMiller.png",
})

SFQuest_Database.MannequinPool["10345x12404x0"] = {
    sprite = "location_shop_mall_01_70",
    direction = "E",
    beard = "",
    outfit = "PonchoRosso",
}

-- Gabriel Walker dalla Tana 9295,8580,0

table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_GabrielWalker",
    square = "9295x8580x0",
    name = "IGUI_SFQuest_Questyno_GabrielWalker_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_GabrielWalker.png",
})

SFQuest_Database.MannequinPool["9295x8580x0"] = {
    sprite = "location_shop_mall_01_70",
    direction = "E",
    beard = "",
    outfit = "PonchoRosso",
}

-- Dylan Harris Bedford Fall (13847,10355,0)

table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_DylanHarris",
    square = "13847x10355x0",
    name = "IGUI_SFQuest_Questyno_DylanHarris_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_DylanHarris.png",
})

SFQuest_Database.MannequinPool["13847x10355x0"] = {
    sprite = "location_shop_mall_01_70",
    direction = "E",
    beard = "",
    outfit = "PonchoRosso",
}

-- *** benzinai ***

--- Juan Baker 3837,7028,1 W

table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_JuanBaker",
    square = "3837x7028x1",
    name = "IGUI_SFQuest_Questyno_JuanBaker_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_JuanBaker.png",
})

SFQuest_Database.MannequinPool["3837x7028x1"] = {
    sprite = "location_shop_mall_01_70",
    direction = "W",
    beard = "",
    outfit = "PonchoRosso",
}

-- Furi Mishura 6688,7467,1 E

table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_FuriMishura",
    square = "6688x7467x1",
    name = "IGUI_SFQuest_Questyno_FuriMishura_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_FuriMishura.png",
})

SFQuest_Database.MannequinPool["6688x7467x1"] = {
    sprite = "location_shop_mall_01_70",
    direction = "E",
    beard = "",
    outfit = "PonchoRosso",
}

-- Sandra Harris 6684,6820,1 S

table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_SandraHarris",
    square = "6684x6820x1",
    name = "IGUI_SFQuest_Questyno_SandraHarris_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_SandraHarris.png",
})

SFQuest_Database.MannequinPool["6684x6820x1"] = {
    sprite = "location_shop_mall_01_70",
    direction = "S",
    beard = "",
    outfit = "PonchoRosso",
}

-- Eric Adams 7659,7316,1 E

table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_EricAdams",
    square = "7659x7316x1",
    name = "IGUI_SFQuest_Questyno_EricAdams_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_EricAdams.png",
})

SFQuest_Database.MannequinPool["7659x7316x1"] = {
    sprite = "location_shop_mall_01_70",
    direction = "E",
    beard = "",
    outfit = "PonchoRosso",
}

-- Ronald Perez 8353,8579,1 E

table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_RonaldPerez",
    square = "8353x8579x1",
    name = "IGUI_SFQuest_Questyno_RonaldPerez_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_RonaldPerez.png",
})

SFQuest_Database.MannequinPool["8353x8579x1"] = {
    sprite = "location_shop_mall_01_70",
    direction = "E",
    beard = "",
    outfit = "PonchoRosso",
}

-- Garrett King 10399,8316,1 E

table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_GarrettKing",
    square = "10399x8316x1",
    name = "IGUI_SFQuest_Questyno_GarrettKing_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_GarrettKing.png",
})

SFQuest_Database.MannequinPool["10399x8316x1"] = {
    sprite = "location_shop_mall_01_70",
    direction = "E",
    beard = "",
    outfit = "PonchoRosso",
}

-- Marvin Perry 8186,11296,1 E

table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_MarvinPerry",
    square = "8186x11296x1",
    name = "IGUI_SFQuest_Questyno_MarvinPerry_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_MarvinPerry.png",
})

SFQuest_Database.MannequinPool["8186x11296x1"] = {
    sprite = "location_shop_mall_01_70",
    direction = "E",
    beard = "",
    outfit = "PonchoRosso",
}

-- Karen Taylor 10144,12787,1 S

table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_KarenTaylor",
    square = "10144x12787x1",
    name = "IGUI_SFQuest_Questyno_KarenTaylor_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_KarenTaylor.png",
})

SFQuest_Database.MannequinPool["10144x12787x1"] = {
    sprite = "location_shop_mall_01_70",
    direction = "S",
    beard = "",
    outfit = "PonchoRosso",
}

-- Charles Davis 9285,8482 E

table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_CharlesDavis",
    square = "9285x8482x1",
    name = "IGUI_SFQuest_Questyno_CharlesDavis_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_CharlesDavis.png",
})

SFQuest_Database.MannequinPool["9285x8482x1"] = {
    sprite = "location_shop_mall_01_70",
    direction = "E",
    beard = "",
    outfit = "PonchoRosso",
}

-- Lincoln Reed March Ridge Spawn 9277,8480,0 Est

table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_LincolnReed",
    square = "9277x8480x0",
    name = "IGUI_SFQuest_Questyno_LincolnReed_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_LincolnReed.png",
})

SFQuest_Database.MannequinPool["9277x8480x0"] = {
    sprite = "location_shop_mall_01_70",
    direction = "E",
    beard = "",
    outfit = "PonchoRosso",
}

-- Pyno 9332,8605,0 EST

table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_Pyno",
    square = "9332x8605x0",
    name = "IGUI_SFQuest_Questyno_Pyno_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_Pyno.png",
})

SFQuest_Database.MannequinPool["9332x8605x0"] = {
    sprite = "location_shop_mall_01_70",
    direction = "E",
    beard = "",
    outfit = "PonchoRosso",
}


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
    hair = "Short",
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
    hair = "Short",
    haircolor = "0.2,0.05,0.0",
    outfit = "PonchoGiallo",
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
    sprite = "location_shop_mall_01_77",
    direction = "E",
    beard = "",
    hair = "Short",
    haircolor = "0.1,0.1,0.1",
    outfit = "JohnBaker",
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
    sprite = "location_shop_mall_01_77",
    direction = "E",
    beard = "",
    hair = "Short",
    haircolor = "0.5,0.4,0.3",
    outfit = "EthanSteele",
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
    sprite = "location_shop_mall_01_73",
    direction = "E",
    beard = "",
    hair = "Mullet",
    haircolor = "0.4,0.2,0.0",
    outfit = "TaylorBlaze",
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
    sprite = "location_shop_mall_01_77",
    direction = "E",
    beard = "Scruffy",
    beardcolor = "0.3,0.1,0.0",
    hair = "Bald",
    outfit = "MarcusKane"
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
    sprite = "location_shop_mall_01_76",
    direction = "E",
    beard = "Goatee",
    beardcolor = "0.0,0.0,0.0",
    hair = "Bald",
    outfit = "BrianWhite",
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
    beard = "FullBeard",
    beardcolor = "0.1,0.1,0.1",
    hair = "Spikes",
    haircolor = "1.0,0.5,0.0",
    outfit = "RichardBrown",
}

-- Robert Wilson 10106x6634x0

table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_RobertWilson",
    square = "10106x6634x0",
    name = "IGUI_SFQuest_Questyno_RobertWilson_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_RobertWilson.png",
})

SFQuest_Database.MannequinPool["10106x6634x0"] = {
    sprite = "location_shop_mall_01_77",
    direction = "E",
    beard = "",
    hair = "Short",
    haircolor = "0.0,0.0,0.0",
    outfit = "RobertWilson",
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
    sprite = "location_shop_mall_01_77",
    direction = "S",
    beard = "",
    hair = "Short",
    haircolor = "0.0,0.0,0.0",
    outfit = "AlexMercer",
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
    sprite = "location_shop_mall_01_73",
    direction = "E",
    beard = "",
    hair = "PonyTail",
    haircolor = "0.7,0.4,0.1",
    outfit = "OliviaChambers",
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
    sprite = "location_shop_mall_01_77",
    direction = "E",
    beard = "",
    hair = "Bald",
    outfit = "HarperWells",
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
    sprite = "location_shop_mall_01_73",
    direction = "S",
    beard = "",
    hair = "Bob",
    haircolor = "0.0,0.0,0.0",
    outfit = "GraceChambers",
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
    sprite = "location_shop_mall_01_65",
    direction = "E",
    beard = "",
    hair = "PonyTail",
    haircolor = "0.0,0.0,0.0",
    outfit = "MayaBlackwell",
}

-- Andrew Turner da Louisville 13631,4070,0 Est

table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_AndrewTurner",
    square = "13631x4070x0",
    name = "IGUI_SFQuest_Questyno_AndrewTurner_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_AndrewTurner.png",
})

SFQuest_Database.MannequinPool["13631x4070x0"] = {
    sprite = "location_shop_mall_01_77",
    direction = "E",
    beard = "",
    hair = "Short",
    haircolor = "0.5,0.3,0.0",
    outfit = "AndrewTurner",
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
    sprite = "location_shop_mall_01_77",
    direction = "E",
    beard = "",
    hair = "Bald",
    outfit = "LucasMiller",
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
    sprite = "location_shop_mall_01_77",
    direction = "E",
    beard = "FullBeard",
    beardcolor = "0.1,0.1,0.1",
    hair = "Spikes",
    haircolor = "0.9,0.0,0.0",
    outfit = "GabrielWalker",
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
    sprite = "location_shop_mall_01_77",
    direction = "E",
    beard = "",
    hair = "Bald",
    outfit = "DylanHarris",
}

-- *** benzinai ***

--- Juan Baker 3837,7028,1 W

table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_JuanBaker",
    square = "3837x7028x1",
    name = "IGUI_SFQuest_Questyno_JuanBaker_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_JuanBaker.png",
    occupation = "gas_station_attendant"
})

SFQuest_Database.MannequinPool["3837x7028x1"] = {
    sprite = "location_shop_mall_01_77",
    direction = "W",
    beard = "FullBeard",
    beardcolor = "0.8,0.8,0.8",
    hair = "Short",
    haircolor = "1.0,1.0,1.0",
    outfit = "JuanBaker",
}

-- Furi Mishura 6688,7467,1 E

table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_FuriMishura",
    square = "6688x7467x1",
    name = "IGUI_SFQuest_Questyno_FuriMishura_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_FuriMishura.png",
    occupation = "gas_station_attendant"
})

SFQuest_Database.MannequinPool["6688x7467x1"] = {
    sprite = "location_shop_mall_01_77",
    direction = "E",
    beard = "",
    hair = "Short",
    haircolor = "0.0,0.0,0.0",
    outfit = "FuriMishura",
}

-- Sandra Harris 6684,6820,1 S

table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_SandraHarris",
    square = "6684x6820x1",
    name = "IGUI_SFQuest_Questyno_SandraHarris_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_SandraHarris.png",
    occupation = "gas_station_attendant"
})

SFQuest_Database.MannequinPool["6684x6820x1"] = {
    sprite = "location_shop_mall_01_73",
    direction = "S",
    beard = "",
    hair = "Bob",
    haircolor = "0.0,0.0,0.0",
    outfit = "SandraHarris",
}

-- Eric Adams 7659,7316,1 E

table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_EricAdams",
    square = "7659x7316x1",
    name = "IGUI_SFQuest_Questyno_EricAdams_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_EricAdams.png",
    occupation = "gas_station_attendant"
})

SFQuest_Database.MannequinPool["7659x7316x1"] = {
    sprite = "location_shop_mall_01_77",
    direction = "E",
    beard = "",
    hair = "Short",
    haircolor = "0.2,0.2,0.2",
    outfit = "EricAdams",
}

-- Ronald Perez 8353,8579,1 E
--[[
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_RonaldPerez",
    square = "8353x8579x1",
    name = "IGUI_SFQuest_Questyno_RonaldPerez_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_RonaldPerez.png",
    occupation = "gas_station_attendant"
})

SFQuest_Database.MannequinPool["8353x8579x1"] = {
    sprite = "location_shop_mall_01_77",
    direction = "E",
    beard = "",
    hair = "Bald",
    outfit = "RonaldPerez",
}
]]--
-- Garrett King 10399,8316,1 E

table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_GarrettKing",
    square = "10399x8316x1",
    name = "IGUI_SFQuest_Questyno_GarrettKing_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_GarrettKing.png",
    occupation = "gas_station_attendant"
})

SFQuest_Database.MannequinPool["10399x8316x1"] = {
    sprite = "location_shop_mall_01_77",
    direction = "E",
    beard = "",
    hair = "Bald",
    outfit = "GarrettKing",
}

-- Marvin Perry 8186,11296,1 E

table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_MarvinPerry",
    square = "8186x11296x1",
    name = "IGUI_SFQuest_Questyno_MarvinPerry_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_MarvinPerry.png",
    occupation = "gas_station_attendant"
})

SFQuest_Database.MannequinPool["8186x11296x1"] = {
    sprite = "location_shop_mall_01_77",
    direction = "E",
    beard = "",
    hair = "Short",
    haircolor = "0.0,0.0,0.0",
    outfit = "MarvinPerry",
}

-- Karen Taylor 10144,12787,1 S

table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_KarenTaylor",
    square = "10144x12787x1",
    name = "IGUI_SFQuest_Questyno_KarenTaylor_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_KarenTaylor.png",
    occupation = "gas_station_attendant"
})

SFQuest_Database.MannequinPool["10144x12787x1"] = {
    sprite = "location_shop_mall_01_73",
    direction = "S",
    beard = "",
    hair = "Bob",
    haircolor = "0.0,0.0,0.0",
    outfit = "KarenTaylor",
}

-- Charles Davis 9285,8482 E

table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_CharlesDavis",
    square = "9285x8482x0",
    name = "IGUI_SFQuest_Questyno_CharlesDavis_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_CharlesDavis.png",
    occupation = "gas_station_attendant"
})

SFQuest_Database.MannequinPool["9285x8482x0"] = {
    sprite = "location_shop_mall_01_77",
    direction = "E",
    beard = "",
    hair = "Short",
    haircolor = "0.0,0.0,0.0",
    outfit = "CharlesDavis",
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
    sprite = "location_shop_mall_01_77",
    direction = "E",
    beard = "Scruffy",
    beardcolor = "0.7,0.7,0.7",
    hair = "Balding",
    haircolor = "0.7,0.7,0.7",
    outfit = "LincolnReed",
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
    sprite = "location_shop_mall_01_76",
    direction = "E",
    beard = "Goatee",
    beardcolor = "0,0,0",
    hair = "Bald",
    haircolor = "0,0,0",
    outfit = "Pyno",
}

-- James Morris da Louisville 13635,4064,0 S

table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_JamesMorris",
    square = "13635x4064x0",
    name = "IGUI_SFQuest_Questyno_JamesMorris_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_JamesMorris.png",
})

SFQuest_Database.MannequinPool["13635x4064x0"] = {
    sprite = "location_shop_mall_01_70",
    direction = "S",
    beard = "FullBeard",
    beardcolor = "0.3,0.3,0.3",
    hair = "Pony",
    haircolor = "0.3,0.3,0.3",
    outfit = "JamesMorris",
}

-- STAGIONE 2

-- Paige Turner Tana 9331x8640x0 Ovest

table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_PaigeTurner",
    square = "9331x8641x0",
    name = "IGUI_SFQuest_Questyno_PaigeTurner_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_PaigeTurner.png",
})

SFQuest_Database.MannequinPool["9331x8641x0"] = {
    sprite = "location_shop_mall_01_73",
    direction = "W",
    beard = "",
    hair = "PonyTail",
    haircolor = "0.0,0.0,0.0",
    outfit = "PaigeTurner",
}

-- Ansel Merrick West Point 10161x6628x0 Ovest

table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_AnselMerrick",
    square = "10161x6628x0",
    name = "IGUI_SFQuest_Questyno_AnselMerrick_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_AnselMerrick.png",
})

SFQuest_Database.MannequinPool["10161x6628x0"] = {
    sprite = "location_shop_mall_01_77",
    direction = "W",
    beard = "",
    hair = "Short",
    haircolor = "0.0,0.0,0.0",
    outfit = "AnselMerrick",
}

-- Tomas Joger Tana 9340x8578x0 Sud

table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_TomasJoger",
    square = "9340x8579x0",
    name = "IGUI_SFQuest_Questyno_TomasJoger_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_TomasJoger.png",
})

SFQuest_Database.MannequinPool["9340x8579x0"] = {
    sprite = "location_shop_mall_01_77",
    direction = "S",
    beard = "",
    hair = "Short",
    haircolor = "0.0,0.0,0.0",
    outfit = "TomasJoger",
}

-- Kyle Porter Louisville 13648x4046x0 SUD

table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_KylePorter",
    square = "13648x4046x0",
    name = "IGUI_SFQuest_Questyno_KylePorter_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_KylePorter.png",
})

SFQuest_Database.MannequinPool["13648x4046x0"] = {
    sprite = "location_shop_mall_01_77",
    direction = "S",
    beard = "",
    hair = "Short",
    haircolor = "0.0,0.0,0.0",
    outfit = "KylePorter",
}

-- Huxley Thorne Louisville 13635,4064,0 Sud

table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_HuxleyThorne",
    square = "13635x4065x0",
    name = "IGUI_SFQuest_Questyno_HuxleyThorne_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_HuxleyThorne.png",
})

SFQuest_Database.MannequinPool["13635x4065x0"] = {
    sprite = "location_shop_mall_01_77",
    direction = "S",
    beard = "",
    hair = "Short",
    haircolor = "0.0,0.0,0.0",
    outfit = "HuxleyThorne",
}

-- DorianPrescott Cittadella 7650x9016x0

table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_DorianPrescott",
    square = "7650x9016x0",
    name = "IGUI_SFQuest_Questyno_DorianPrescott_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_DorianPrescott.png",
})

SFQuest_Database.MannequinPool["7650x9016x0"] = {
    sprite = "location_shop_mall_01_77",
    direction = "E",
    beard = "FullBeard",
    beardcolor = "0.1,0.1,0.1",
    hair = "Spikes",
    haircolor = "0.9,0.0,0.0",
    outfit = "DorianPrescott",
}

-- TessaAnderson Trelai 7747x7756x0 Sud

table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_TessaAnderson",
    square = "7747x7756x0",
    name = "IGUI_SFQuest_Questyno_TessaAnderson_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_TessaAnderson.png",
})

SFQuest_Database.MannequinPool["7747x7756x0"] = {
    sprite = "location_shop_mall_01_73",
    direction = "S",
    beard = "",
    hair = "Bob",
    haircolor = "0.0,0.0,0.0",
    outfit = "TessaAnderson",
}

-- RyanParker Citadella 7650x9010x0

table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_RyanParker",
    square = "7650x9010x0",
    name = "IGUI_SFQuest_Questyno_RyanParker_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_RyanParker.png",
})

SFQuest_Database.MannequinPool["7650x9010x0"] = {
    sprite = "location_shop_mall_01_77",
    direction = "E",
    beard = "",
    hair = "Short",
    haircolor = "0.0,0.0,0.0",
    outfit = "RyanParker",
}

-- VivianParker Redfordville 3642x7302x0 Sud

table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_VivianParker",
    square = "3642x7303x0",
    name = "IGUI_SFQuest_Questyno_VivianParker_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_VivianParker.png",
})

SFQuest_Database.MannequinPool["3642x7303x0"] = {
    sprite = "location_shop_mall_01_73",
    direction = "S",
    beard = "",
    hair = "Bob",
    haircolor = "0.0,0.0,0.0",
    outfit = "VivianParker",
}

-- MalachiBlevins Cittadella 7650x9046x0

table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_MalachiBlevins",
    square = "7650x9046x0",
    name = "IGUI_SFQuest_Questyno_MalachiBlevins_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_MalachiBlevins.png",
})

SFQuest_Database.MannequinPool["7650x9046x0"] = {
    sprite = "location_shop_mall_01_77",
    direction = "E",
    beard = "FullBeard",
    beardcolor = "0.1,0.1,0.1",
    hair = "Short",
    haircolor = "0.0,0.0,0.0",
    outfit = "MalachiBlevins",
}

-- JacobTurner Tana 7650x9038x0

table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_JacobTurner",
    square = "7650x9038x0",
    name = "IGUI_SFQuest_Questyno_JacobTurner_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_JacobTurner.png",
})

SFQuest_Database.MannequinPool["7650x9038x0"] = {
    sprite = "location_shop_mall_01_77",
    direction = "E",
    beard = "",
    hair = "Short",
    haircolor = "0.0,0.0,0.0",
    outfit = "JacobTurner",
}
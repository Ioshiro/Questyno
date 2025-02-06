require 'SFQuest_Database'

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
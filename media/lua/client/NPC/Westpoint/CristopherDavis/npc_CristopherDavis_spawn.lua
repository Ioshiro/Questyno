require 'SFQuest_Database'

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
    direction = "W",
    beard = "FullBeard",
    beardcolor = "0.2,0.2,0.2",
    hair = "Cornrows",
    haircolor = "0.0,0.0,0.0",
    outfit = "ChristopherDavis"
}
require 'SFQuest_Database'

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
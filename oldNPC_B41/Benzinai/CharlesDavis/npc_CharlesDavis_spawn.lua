require 'SFQuest_Database'

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

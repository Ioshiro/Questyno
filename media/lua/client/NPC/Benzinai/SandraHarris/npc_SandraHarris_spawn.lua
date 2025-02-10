require 'SFQuest_Database'

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

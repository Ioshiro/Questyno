require 'SFQuest_Database'

-- Ronald Perez 8207,8791,1 E
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_RonaldPerez",
    square = "8207x8791x1",
    name = "IGUI_SFQuest_Questyno_RonaldPerez_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_RonaldPerez.png",
    occupation = "gas_station_attendant"
})

SFQuest_Database.MannequinPool["8207x8791x1"] = {
    sprite = "location_shop_mall_01_77",
    direction = "E",
    beard = "",
    hair = "Bald",
    outfit = "RonaldPerez",
}

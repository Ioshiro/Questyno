require 'SFQuest_Database'

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
require 'SFQuest_Database'

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
require 'SFQuest_Database'

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
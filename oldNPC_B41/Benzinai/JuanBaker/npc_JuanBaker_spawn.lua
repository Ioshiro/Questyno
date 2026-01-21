require 'SFQuest_Database'

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
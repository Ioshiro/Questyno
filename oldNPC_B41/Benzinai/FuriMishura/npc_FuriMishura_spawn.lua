require 'SFQuest_Database'

-- Sandra Harris 6684,6820,1 S
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_SandraHarris",
    square = "6684x6820x1",
    name = "IGUI_SFQuest_Questyno_SandraHarris_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_SandraHarris.png",
    occupation = "gas_station_attendant"
})

SFQuest_Database.MannequinPool["6684x6820x1"] = {
    sprite = "location_shop_mall_01_73",
    direction = "S",
    beard = "",
    hair = "Bob",
    haircolor = "0.0,0.0,0.0",
    outfit = "SandraHarris",
}
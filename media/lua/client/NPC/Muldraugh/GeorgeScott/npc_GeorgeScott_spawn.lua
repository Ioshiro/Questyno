require 'SFQuest_Database'

-- George Scott 10830x9068x0
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_GeorgeScott",
    square = "10830x9068x0",
    name = "IGUI_SFQuest_Questyno_GeorgeScott_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_GeorgeScott.png",
})

SFQuest_Database.MannequinPool["10830x9068x0"] = {
    sprite = "location_shop_mall_01_70",
    direction = "S",
    hair = "Donny",
    haircolor = "0.3,0.1,0.0",
    beard = "FullBeard",
    beardcolor = "0.3,0.1,0.0",
    outfit = "GeorgeScott"
}
require 'SFQuest_Database'

-- Heather Thomas  9315x8624,0
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_HeatherThomas",
    square = "9315x8624x0",
    name = "IGUI_SFQuest_Questyno_HeatherThomas_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_HeatherThomas.png",
})

SFQuest_Database.MannequinPool["9315x8624x0"] = {
    sprite = "location_shop_mall_01_68",
    direction = "E",
    beard = "Scruffy",
    beardcolor = "0.3,0.3,0.3",
    hair = "PonyTail",
    haircolor = "0.3,0.3,0.3",
    outfit = "HeatherThomas"
}
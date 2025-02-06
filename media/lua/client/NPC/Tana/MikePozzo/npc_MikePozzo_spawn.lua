require 'SFQuest_Database'

-- Mike Pozzo 9315x8638x0
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_MikePozzo",
    square = "9315x8638x0",
    name = "IGUI_SFQuest_Questyno_MikePozzo_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_MikePozzo.png",
})

SFQuest_Database.MannequinPool["9315x8638x0"] = {
    sprite = "location_shop_mall_01_68",
    direction = "E",
    beard = "FullBeard",
    beardcolor = "0.4,0.1,0.0",
    hair = "Balding",
    haircolor = "0.7,0.3,0.1",
    outfit = "MikePozzo"
}
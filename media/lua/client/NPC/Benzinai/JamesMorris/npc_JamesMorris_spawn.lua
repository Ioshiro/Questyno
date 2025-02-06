require 'SFQuest_Database'

-- James Morris da Louisville 13635,4064,0 S
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_JamesMorris",
    square = "13635x4064x0",
    name = "IGUI_SFQuest_Questyno_JamesMorris_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_JamesMorris.png",
})

SFQuest_Database.MannequinPool["13635x4064x0"] = {
    sprite = "location_shop_mall_01_70",
    direction = "S",
    beard = "FullBeard",
    beardcolor = "0.3,0.3,0.3",
    hair = "Pony",
    haircolor = "0.3,0.3,0.3",
    outfit = "JamesMorris",
}
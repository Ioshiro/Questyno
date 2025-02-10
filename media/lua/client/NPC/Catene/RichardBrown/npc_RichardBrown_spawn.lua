require 'SFQuest_Database'

-- Richard Brown 7178x9739x0
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_RichardBrown",
    square = "7178x9739x0",
    name = "IGUI_SFQuest_Questyno_RichardBrown_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_RichardBrown.png",
})

SFQuest_Database.MannequinPool["7178x9739x0"] = {
    sprite = "location_shop_mall_01_70",
    direction = "E",
    beard = "FullBeard",
    beardcolor = "0.1,0.1,0.1",
    hair = "Spikes",
    haircolor = "1.0,0.5,0.0",
    outfit = "RichardBrown",
}
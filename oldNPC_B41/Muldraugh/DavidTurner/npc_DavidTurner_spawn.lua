require 'SFQuest_Database'

-- David Turner 10839,9071,0
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_DavidTurner",
    square = "10839x9071x0",
    name = "IGUI_SFQuest_Questyno_DavidTurner_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_DavidTurner.png",
})

SFQuest_Database.MannequinPool["10839x9071x0"] = {
    sprite = "location_shop_mall_01_70",
    direction = "E",
    hair = "Short",
    haircolor = "0.4,0.4,0.07",
    beard = "",
    outfit = "DavidTurner"
}
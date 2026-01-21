require 'SFQuest_Database'

-- Rosa China 9270,8491,0
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_RosaChina",
    square = "9270x8491x0",
    name = "IGUI_SFQuest_Questyno_RosaChina_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_RosaChina.png",
})

SFQuest_Database.MannequinPool["9270x8491x0"] = {
    sprite = "location_shop_mall_01_65",
    direction = "E",
    beard = "",
    hair = "Bob",
    haircolor = "0.2,0.1,0.0",
    outfit = "RosaChina"
}
require 'SFQuest_Database'

-- Elia Rima  9342x8613x0
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_EliaRima",
    square = "9344x8613x0",
    name = "IGUI_SFQuest_Questyno_EliaRima_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_EliaRima.png",
})

SFQuest_Database.MannequinPool["9344x8613x0"] = {
    sprite = "location_shop_mall_01_76",
    direction = "S",
    beard = "",
    hair = "Cornrows",
    haircolor = "0.4,0.2,0.0",
    outfit = "EliaRima"
}
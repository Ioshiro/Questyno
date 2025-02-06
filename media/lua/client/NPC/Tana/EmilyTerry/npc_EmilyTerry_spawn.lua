require 'SFQuest_Database'

-- Emily Terry 9277,8491,0
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_EmilyTerry",
    square = "9277x8491x0",
    name = "IGUI_SFQuest_Questyno_EmilyTerry_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_EmilyTerry.png",
})

SFQuest_Database.MannequinPool["9277x8491x0"] = {
    sprite = "location_shop_mall_01_65",
    direction = "S",
    beard = "",
    hair = "Buffont",
    haircolor = "0.1,0.1,0.0",
    outfit = "EmilyTerry"
}
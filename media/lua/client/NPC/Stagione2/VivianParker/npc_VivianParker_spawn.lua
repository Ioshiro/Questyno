require 'SFQuest_Database'

-- VivianParker Redfordville 3642x7302x0 Sud
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_VivianParker",
    square = "3642x7303x0",
    name = "IGUI_SFQuest_Questyno_VivianParker_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_VivianParker.png",
})

SFQuest_Database.MannequinPool["3642x7303x0"] = {
    sprite = "location_shop_mall_01_73",
    direction = "S",
    beard = "",
    hair = "Bob",
    haircolor = "0.0,0.0,0.0",
    outfit = "VivianParker",
}
require 'SFQuest_Database'

-- RyanParker Citadella 7650x9010x0
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_RyanParker",
    square = "7650x9010x0",
    name = "IGUI_SFQuest_Questyno_RyanParker_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_RyanParker.png",
})

SFQuest_Database.MannequinPool["7650x9010x0"] = {
    sprite = "location_shop_mall_01_77",
    direction = "E",
    beard = "",
    hair = "Short",
    haircolor = "0.0,0.0,0.0",
    outfit = "RyanParker",
}
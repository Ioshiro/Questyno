require 'SFQuest_Database'

-- JacobTurner Tana 6377x8563x0
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_JacobTurner",
    square = "6377x8563x0",
    name = "IGUI_SFQuest_Questyno_JacobTurner_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_JacobTurner.png",
})

SFQuest_Database.MannequinPool["6377x8563x0"] = {
    sprite = "location_shop_mall_01_77",
    direction = "S",
    beard = "",
    hair = "Short",
    haircolor = "0.0,0.0,0.0",
    outfit = "FiremanFullSuit",
}
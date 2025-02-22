require 'SFQuest_Database'

-- Angelica Stella  9343x8642x0
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_AngelicaStella",
    square = "9343x8642x0",
    name = "IGUI_SFQuest_Questyno_AngelicaStella_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_AngelicaStella.png",
})

SFQuest_Database.MannequinPool["9343x8642x0"] = {
    sprite = "location_shop_mall_01_65",
    direction = "N",
    beard = "",
    hair = "Bun",
    haircolor = "0.5,0.2,0.0",
    outfit = "AngelicaStella"
}
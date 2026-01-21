require 'SFQuest_Database'

-- Elowen Beckett 9324x8598x0
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_ElowenBeckett",
    square = "9324x8598x0",
    name = "IGUI_SFQuest_Questyno_ElowenBeckett_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_ElowenBeckett.png",
})

SFQuest_Database.MannequinPool["9324x8598x0"] = {
    sprite = "location_shop_mall_01_70",
    direction = "E",
    beard = "Goatee",
    beardcolor = "0.2,0.05,0.0",
    hair = "Short",
    haircolor = "0.2,0.05,0.0",
    outfit = "PonchoGiallo",
}

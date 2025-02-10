require 'SFQuest_Database'

-- Kyle Porter Louisville 13831x4040x0 SUD
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_KylePorter",
    square = "13831x4040x0",
    name = "IGUI_SFQuest_Questyno_KylePorter_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_KylePorter.png",
})

SFQuest_Database.MannequinPool["13831x4040x0"] = {
    sprite = "location_shop_mall_01_77",
    direction = "S",
    beard = "",
    hair = "Short",
    haircolor = "0.0,0.0,0.0",
    outfit = "Brita_ARMY",
}
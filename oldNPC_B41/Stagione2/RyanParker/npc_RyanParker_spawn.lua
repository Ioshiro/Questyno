require 'SFQuest_Database'

-- RyanParker Citadella 6341x8589x0
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_RyanParker",
    square = "6341x8589x0",
    name = "IGUI_SFQuest_Questyno_RyanParker_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_RyanParker.png",
})

SFQuest_Database.MannequinPool["6341x8589x0"] = {
    sprite = "location_shop_mall_01_77",
    direction = "S",
    beard = "",
    hair = "Short",
    haircolor = "0.0,0.0,0.0",
    outfit = "Brita_SPECOPS",
}
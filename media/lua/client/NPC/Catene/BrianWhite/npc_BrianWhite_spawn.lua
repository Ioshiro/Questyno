require 'SFQuest_Database'

-- Brian White 10812x9077x0

table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_BrianWhite",
    square = "10812x9077x0",
    name = "IGUI_SFQuest_Questyno_BrianWhite_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_BrianWhite.png",
})

SFQuest_Database.MannequinPool["10812x9077x0"] = {
    sprite = "location_shop_mall_01_76",
    direction = "E",
    beard = "Goatee",
    beardcolor = "0.0,0.0,0.0",
    hair = "Bald",
    outfit = "BrianWhite",
}
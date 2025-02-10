require 'SFQuest_Database'

-- Ansel Merrick West Point 10161x6628x0 Ovest
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_AnselMerrick",
    square = "10161x6628x0",
    name = "IGUI_SFQuest_Questyno_AnselMerrick_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_AnselMerrick.png",
})

SFQuest_Database.MannequinPool["10161x6628x0"] = {
    sprite = "location_shop_mall_01_77",
    direction = "W",
    beard = "",
    hair = "Short",
    haircolor = "0.0,0.0,0.0",
    outfit = "Brita_Killa_2",
}
require 'SFQuest_Database'

-- Alex Mercer Redfordville (3187x6105x0)
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_AlexMercer",
    square = "3187x6105x0",
    name = "IGUI_SFQuest_Questyno_AlexMercer_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_AlexMercer.png",
})

SFQuest_Database.MannequinPool["3187x6105x0"] = {
    sprite = "location_shop_mall_01_77",
    direction = "N",
    beard = "",
    hair = "Short",
    haircolor = "0.0,0.0,0.0",
    outfit = "AlexMercer",
}
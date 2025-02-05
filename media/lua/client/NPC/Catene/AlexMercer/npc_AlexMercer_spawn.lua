require 'SFQuest_Database'

-- Alex Mercer Redfordville (3642,7302,0)
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_AlexMercer",
    square = "3642x7302x0",
    name = "IGUI_SFQuest_Questyno_AlexMercer_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_AlexMercer.png",
})

SFQuest_Database.MannequinPool["3642x7302x0"] = {
    sprite = "location_shop_mall_01_77",
    direction = "S",
    beard = "",
    hair = "Short",
    haircolor = "0.0,0.0,0.0",
    outfit = "AlexMercer",
}
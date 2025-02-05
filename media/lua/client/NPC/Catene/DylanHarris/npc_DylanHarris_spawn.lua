require 'SFQuest_Database'

-- Dylan Harris Bedford Fall (13847,10355,0)
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_DylanHarris",
    square = "13847x10355x0",
    name = "IGUI_SFQuest_Questyno_DylanHarris_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_DylanHarris.png",
})

SFQuest_Database.MannequinPool["13847x10355x0"] = {
    sprite = "location_shop_mall_01_77",
    direction = "E",
    beard = "",
    hair = "Bald",
    outfit = "DylanHarris",
}

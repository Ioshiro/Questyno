require 'SFQuest_Database'

-- John Baker, Trelai 7744x7760x0
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_JohnBaker",
    square = "7744x7760x0",
    name = "IGUI_SFQuest_Questyno_JohnBaker_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_JohnBaker.png",
})

SFQuest_Database.MannequinPool["7744x7760x0"] = {
    sprite = "location_shop_mall_01_77",
    direction = "E",
    beard = "",
    hair = "Short",
    haircolor = "0.1,0.1,0.1",
    outfit = "JohnBaker",
}
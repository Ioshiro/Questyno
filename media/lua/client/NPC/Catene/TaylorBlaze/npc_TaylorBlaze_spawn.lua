require 'SFQuest_Database'

-- Taylor Blaze 7752x7759x0
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_TaylorBlaze",
    square = "7752x7759x0",
    name = "IGUI_SFQuest_Questyno_TaylorBlaze_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_TaylorBlaze.png",
})

SFQuest_Database.MannequinPool["7752x7759x0"] = {
    sprite = "location_shop_mall_01_73",
    direction = "E",
    beard = "",
    hair = "Mullet",
    haircolor = "0.4,0.2,0.0",
    outfit = "TaylorBlaze",
}
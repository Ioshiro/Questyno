require 'SFQuest_Database'

-- MayaBlackwell Redfordville (3637,7302,0) Est
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_MayaBlackwell",
    square = "3637x7302x0",
    name = "IGUI_SFQuest_Questyno_MayaBlackwell_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_MayaBlackwell.png",
})

SFQuest_Database.MannequinPool["3637x7302x0"] = {
    sprite = "location_shop_mall_01_65",
    direction = "E",
    beard = "",
    hair = "PonyTail",
    haircolor = "0.0,0.0,0.0",
    outfit = "MayaBlackwell",
}

require 'SFQuest_Database'

-- MayaBlackwell Redfordville (3173x6098x0) Est
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_MayaBlackwell",
    square = "3173x6098x0",
    name = "IGUI_SFQuest_Questyno_MayaBlackwell_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_MayaBlackwell.png",
})

SFQuest_Database.MannequinPool["3173x6098x0"] = {
    sprite = "location_shop_mall_01_65",
    direction = "E",
    beard = "",
    hair = "PonyTail",
    haircolor = "0.0,0.0,0.0",
    outfit = "MayaBlackwell",
}

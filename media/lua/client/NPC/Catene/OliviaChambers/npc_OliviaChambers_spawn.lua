require 'SFQuest_Database'

-- Olivia Chambers Raven Creek (4862,11186,0)
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_OliviaChambers",
    square = "4862x11186x0",
    name = "IGUI_SFQuest_Questyno_OliviaChambers_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_OliviaChambers.png",
})

SFQuest_Database.MannequinPool["4862x11186x0"] = {
    sprite = "location_shop_mall_01_73",
    direction = "E",
    beard = "",
    hair = "PonyTail",
    haircolor = "0.7,0.4,0.1",
    outfit = "OliviaChambers",
}

require 'SFQuest_Database'

-- Paige Turner Tana 9331x8640x0 Ovest
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_PaigeTurner",
    square = "9331x8641x0",
    name = "IGUI_SFQuest_Questyno_PaigeTurner_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_PaigeTurner.png",
})

SFQuest_Database.MannequinPool["9331x8641x0"] = {
    sprite = "location_shop_mall_01_73",
    direction = "W",
    beard = "",
    hair = "PonyTail",
    haircolor = "0.0,0.0,0.0",
    outfit = "PaigeTurner",
}
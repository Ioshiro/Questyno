require 'SFQuest_Database'
-- Sergente Grif 9331x8640,0
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_Grif",
    square = "9331x8640x0",
    name = "IGUI_SFQuest_Questyno_Grif_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_Grif.png",
})

SFQuest_Database.MannequinPool["9331x8640x0"] = {
    sprite = "location_shop_mall_01_68",
    direction = "W",
    beard = "PointyChin",
    beardcolor = "0.8,0.8,0.8",
    hair = "Recede",
    haircolor = "0.8,0.8,0.8",
    outfit = "SergenteGrif"
}
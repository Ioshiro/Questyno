require 'SFQuest_Database'
-- Sergente Grif 6376x8559x1,0
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_Grif",
    square = "6376x8559x1",
    name = "IGUI_SFQuest_Questyno_Grif_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_Grif.png",
})

SFQuest_Database.MannequinPool["6376x8559x1"] = {
    sprite = "location_shop_mall_01_68",
    direction = "S",
    beard = "PointyChin",
    beardcolor = "0.8,0.8,0.8",
    hair = "Recede",
    haircolor = "0.8,0.8,0.8",
    outfit = "SergenteGrif"
}
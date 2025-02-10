require 'SFQuest_Database'

-- Ezekiel Flynn 9327x8596x0 Sud
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_EzekielFlynn",
    square = "9328x8596x0",
    name = "IGUI_SFQuest_Questyno_EzekielFlynn_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_EzekielFlynn.png",
})

SFQuest_Database.MannequinPool["9328x8596x0"] = {
    sprite = "location_shop_mall_01_70",
    direction = "S",
    beard = "PointyChin",
    beardcolor = "0.8,0.8,0.8",
    hair = "Short",
    haircolor = "0.8,0.8,0.8",
    outfit = "PonchoGiallo"
}
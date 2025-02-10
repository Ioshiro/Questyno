require 'SFQuest_Database'

-- Sam Fisher 10153,6571,0
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_SamFisher",
    square = "10153x6571x0",
    name = "IGUI_SFQuest_Questyno_SamFisher_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_SamFisher.png",
})

SFQuest_Database.MannequinPool["10153x6571x0"] = {
    sprite = "location_shop_mall_01_69",
    direction = "S",
    beard = "FullBeard",
    beardcolor = "1.0,1.0,1.0",
    hair = "Messy",
    haircolor = "1.0,1.0,1.0",
    outfit = "Fisherman"
}
require 'SFQuest_Database'

-- Bob Repair 6329x8572x0
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_BobRepair",
    square = "6329x8572x0",
    name = "IGUI_SFQuest_Questyno_BobRepair_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_BobRepair.png",
})

SFQuest_Database.MannequinPool["6329x8572x0"] = {
    sprite = "location_shop_mall_01_68",
    direction = "E",
    beard = "FullBeard",
    beardcolor = "0.7,0.3,0.0",
    hair = "BuzzCut",
    haircolor = "0.9,0.5,0.0",
    outfit = "BobRepair"
}
require 'SFQuest_Database'

-- Samuel Young 10823x9066x0
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_SamuelYoung",
    square = "10823x9066x0",
    name = "IGUI_SFQuest_Questyno_SamuelYoung_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_SamuelYoung.png",
})

SFQuest_Database.MannequinPool["10823x9066x0"] = {
    sprite = "location_shop_mall_01_70",
    direction = "E",
    hair = "LeftParting",
    haircolor = "0.1,0.1,0.0",
    beard = "FullBeard",
    beardcolor = "0.1,0.1,0.0",
    outfit = "SamuelYoung"
}
require 'SFQuest_Database'

-- Jeffrey Lewis 10149,6622,0
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_JeffreyLewis",
    square = "10149x6622x0",
    name = "IGUI_SFQuest_Questyno_JeffreyLewis_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_JeffreyLewis.png",
})

SFQuest_Database.MannequinPool["10149x6622x0"] = {
    sprite = "location_shop_mall_01_69",
    direction = "E",
    beard = "FullBeard",
    beardcolor = "0.2,0.2,0.2",
    hair = "Short",
    haircolor = "0.0,0.0,0.0",
    outfit = "JeffreyLewis",
}
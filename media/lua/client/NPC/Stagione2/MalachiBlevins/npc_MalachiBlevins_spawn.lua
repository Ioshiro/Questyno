require 'SFQuest_Database'

-- MalachiBlevins Cittadella 7650x9046x0
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_MalachiBlevins",
    square = "7650x9046x0",
    name = "IGUI_SFQuest_Questyno_MalachiBlevins_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_MalachiBlevins.png",
})

SFQuest_Database.MannequinPool["7650x9046x0"] = {
    sprite = "location_shop_mall_01_77",
    direction = "E",
    beard = "FullBeard",
    beardcolor = "0.1,0.1,0.1",
    hair = "Short",
    haircolor = "0.0,0.0,0.0",
    outfit = "MalachiBlevins",
}
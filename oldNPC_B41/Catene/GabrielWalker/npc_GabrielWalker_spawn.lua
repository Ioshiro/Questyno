require 'SFQuest_Database'

-- Gabriel Walker dalla Tana 9295,8580,0
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_GabrielWalker",
    square = "9295x8580x0",
    name = "IGUI_SFQuest_Questyno_GabrielWalker_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_GabrielWalker.png",
})

SFQuest_Database.MannequinPool["9295x8580x0"] = {
    sprite = "location_shop_mall_01_77",
    direction = "E",
    beard = "FullBeard",
    beardcolor = "0.1,0.1,0.1",
    hair = "Spikes",
    haircolor = "0.9,0.0,0.0",
    outfit = "GabrielWalker",
}
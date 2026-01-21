require 'SFQuest_Database'

-- Andrew Turner da Louisville 13840x4020x0 Est
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_AndrewTurner",
    square = "13840x4020x0",
    name = "IGUI_SFQuest_Questyno_AndrewTurner_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_AndrewTurner.png",
})

SFQuest_Database.MannequinPool["13840x4020x0"] = {
    sprite = "location_shop_mall_01_77",
    direction = "S",
    beard = "",
    hair = "Short",
    haircolor = "0.5,0.3,0.0",
    outfit = "AndrewTurner",
}
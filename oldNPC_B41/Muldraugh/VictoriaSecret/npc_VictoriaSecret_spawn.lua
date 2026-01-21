require 'SFQuest_Database'

-- Victoria Secret 10824x9070x1
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_VictoriaSecret",
    square = "10824x9070x1",
    name = "IGUI_SFQuest_Questyno_VictoriaSecret_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_VictoriaSecret.png",
})

SFQuest_Database.MannequinPool["10824x9070x1"] = {
    sprite = "location_shop_mall_01_65",
    direction = "E",
    hair = "PulledBack",
    haircolor = "0.1,0.05,0.05",
    beard = "",
    outfit = "VictoriaSecret"
}
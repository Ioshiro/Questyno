require 'SFQuest_Database'

-- Xu Mishura 10829,9072,1
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_XuMishura",
    square = "10829x9072x1",
    name = "IGUI_SFQuest_Questyno_XuMishura_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_XuMishura.png",
})

SFQuest_Database.MannequinPool["10829x9072x1"] = {
    sprite = "location_shop_mall_01_70",
    direction = "N",
    hair = "Larry",
    haircolor = "0.05,0.05,0.05",
    beard = "",
    outfit = "XuMishura"
}
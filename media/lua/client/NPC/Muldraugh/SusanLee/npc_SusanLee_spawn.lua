require 'SFQuest_Database'

-- Dr. Susan Lee 9334x8638x0
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_SusanLee",
    square = "9334x8638x0",
    name = "IGUI_SFQuest_Questyno_SusanLee_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_SusanLee.png",
})

SFQuest_Database.MannequinPool["9334x8638x0"] = {
    sprite = "location_shop_mall_01_65",
    direction = "S",
    hair = "LongBraids",
    haircolor = "0.8,0.6,0.0",
    beard = "",
    outfit = "SusanLee"
}
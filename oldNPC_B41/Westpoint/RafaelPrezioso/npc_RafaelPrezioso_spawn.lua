require 'SFQuest_Database'

-- Rafael Prezioso 10161x6621x0
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_RafaelPrezioso",
    square = "10155x6623x0",
    name = "IGUI_SFQuest_Questyno_RafaelPrezioso_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_RafaelPrezioso.png",
})

SFQuest_Database.MannequinPool["10155x6623x0"] = {
    sprite = "location_shop_mall_01_69",
    direction = "S",
    beard = "",
    hair = "Bald",
    outfit = "RafaelPrezioso",
}
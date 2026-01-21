require 'SFQuest_Database'

-- Harper Wells Raven Creek (4866,11186,0)
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_HarperWells",
    square = "4866x11186x0",
    name = "IGUI_SFQuest_Questyno_HarperWells_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_HarperWells.png",
})

SFQuest_Database.MannequinPool["4866x11186x0"] = {
    sprite = "location_shop_mall_01_77",
    direction = "E",
    beard = "",
    hair = "Bald",
    outfit = "HarperWells",
}
require 'SFQuest_Database'

-- Grace Chambers da Louisville (13853x4054x0)
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_GraceChambers",
    square = "13853x4054x0",
    name = "IGUI_SFQuest_Questyno_GraceChambers_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_GraceChambers.png",
})

SFQuest_Database.MannequinPool["13853x4054x0"] = {
    sprite = "location_shop_mall_01_73",
    direction = "N",
    beard = "",
    hair = "Bob",
    haircolor = "0.0,0.0,0.0",
    outfit = "GraceChambers",
}
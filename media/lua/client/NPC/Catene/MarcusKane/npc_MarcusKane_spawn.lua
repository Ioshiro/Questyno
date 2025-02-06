require 'SFQuest_Database'

-- Marcus Kane 8574x11026x0
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_MarcusKane",
    square = "8574x11026x0",
    name = "IGUI_SFQuest_Questyno_MarcusKane_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_MarcusKane.png",
})


SFQuest_Database.MannequinPool["8574x11026x0"] = {
    sprite = "location_shop_mall_01_77",
    direction = "E",
    beard = "Scruffy",
    beardcolor = "0.3,0.1,0.0",
    hair = "Bald",
    outfit = "MarcusKane"
}

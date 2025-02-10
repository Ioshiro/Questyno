require 'SFQuest_Database'

-- Huxley Thorne Louisville 6376x8571x0 Sud
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_HuxleyThorne",
    square = "6376x8571x0",
    name = "IGUI_SFQuest_Questyno_HuxleyThorne_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_HuxleyThorne.png",
})

SFQuest_Database.MannequinPool["6376x8571x0"] = {
    sprite = "location_shop_mall_01_77",
    direction = "S",
    beard = "",
    hair = "Short",
    haircolor = "0.0,0.0,0.0",
    outfit = "Brita_Crewman_2",
}

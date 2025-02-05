require 'SFQuest_Database'

-- TessaAnderson Trelai 7747x7756x0 Sud
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_TessaAnderson",
    square = "7747x7756x0",
    name = "IGUI_SFQuest_Questyno_TessaAnderson_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_TessaAnderson.png",
})

SFQuest_Database.MannequinPool["7747x7756x0"] = {
    sprite = "location_shop_mall_01_73",
    direction = "S",
    beard = "",
    hair = "Bob",
    haircolor = "0.0,0.0,0.0",
    outfit = "TessaAnderson",
}
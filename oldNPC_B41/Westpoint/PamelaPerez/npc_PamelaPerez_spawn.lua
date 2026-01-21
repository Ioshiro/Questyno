require 'SFQuest_Database'

-- Pamela Perez 10115,6622,0
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_PamelaPerez",
    square = "10115x6622x0",
    name = "IGUI_SFQuest_Questyno_PamelaPerez_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_PamelaPerez.png",
})

SFQuest_Database.MannequinPool["10115x6622x0"] = {
    sprite = "location_shop_mall_01_73",
    direction = "E",
    beard = "",
    hair = "Buffont", 
    haircolor = "0.1,0.1,0.0",
    outfit = "PamelaPerez"
}
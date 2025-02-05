require 'SFQuest_Database'

-- Tomas Joger Tana 9340x8578x0 Sud
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_TomasJoger",
    square = "9340x8579x0",
    name = "IGUI_SFQuest_Questyno_TomasJoger_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_TomasJoger.png",
})

SFQuest_Database.MannequinPool["9340x8579x0"] = {
    sprite = "location_shop_mall_01_77",
    direction = "S",
    beard = "",
    hair = "Short",
    haircolor = "0.0,0.0,0.0",
    outfit = "TomasJoger",
}
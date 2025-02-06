require 'SFQuest_Database'

-- Robert Wilson 10106x6634x0
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_RobertWilson",
    square = "10106x6634x0",
    name = "IGUI_SFQuest_Questyno_RobertWilson_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_RobertWilson.png",
})

SFQuest_Database.MannequinPool["10106x6634x0"] = {
    sprite = "location_shop_mall_01_77",
    direction = "E",
    beard = "",
    hair = "Short",
    haircolor = "0.0,0.0,0.0",
    outfit = "RobertWilson",
}
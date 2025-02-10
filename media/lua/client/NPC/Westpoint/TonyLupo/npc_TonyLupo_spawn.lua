require 'SFQuest_Database'

-- Tony "Lupo"  10161x6621x0
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_TonyLupo",
    square = "10161x6621x0",
    name = "IGUI_SFQuest_Questyno_TonyLupo_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_TonyLupo.png",
})

SFQuest_Database.MannequinPool["10161x6621x0"] = {
    sprite = "location_shop_mall_01_76",
    direction = "S",
    beard = "Goatee",
    beardcolor = "0.0,0.0,0.0",
    hair = "ShortBuzzCut",
    haircolor = "0.0,0.0,0.0",
    outfit = "TonyLupo",
}
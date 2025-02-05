require 'SFQuest_Database'

--  Ethan Steele  10310x8040x0
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_EthanSteele",
    square = "10310x8040x0",
    name = "IGUI_SFQuest_Questyno_EthanSteele_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_EthanSteele.png",
})

SFQuest_Database.MannequinPool["10310x8040x0"] = {
    sprite = "location_shop_mall_01_77",
    direction = "E",
    beard = "",
    hair = "Short",
    haircolor = "0.5,0.4,0.3",
    outfit = "EthanSteele",
}
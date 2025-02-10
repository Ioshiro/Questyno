require 'SFQuest_Database'

-- John Baker, Trelai 7457x7951x0
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_JohnBaker",
    square = "7457x7951x0",
    name = "IGUI_SFQuest_Questyno_JohnBaker_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_JohnBaker.png",
})

SFQuest_Database.MannequinPool["7457x7951x0"] = {
    sprite = "location_shop_mall_01_76",
    direction = "S",
    beard = "",
    hair = "Short",
    haircolor = "0.1,0.1,0.1",
    outfit = "JohnBaker",
}
require 'SFQuest_Database'

-- Pyno 9332,8605,0 EST
table.insert(SFQuest_Database.WorldPool, {
    identity = "Pyno",
    square = "9332x8605x0",
    name = "IGUI_SFQuest_Pyno_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_Pyno.png",
})

SFQuest_Database.MannequinPool["9332x8605x0"] = {
    identity = "Pyno",  -- Collegamento esplicito al WorldPool
    sprite = "location_shop_mall_01_76",
    direction = "E",
    beard = "Goatee",
    beardcolor = "0,0,0",
    hair = "Bald",
    haircolor = "0,0,0",
    outfit = "Pyno",
}

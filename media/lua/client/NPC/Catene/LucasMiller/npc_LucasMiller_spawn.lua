require 'SFQuest_Database'

-- Lucas Miller March Ridge  10345,12404,0
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_LucasMiller",
    square = "10345x12404x0",
    name = "IGUI_SFQuest_Questyno_LucasMiller_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_LucasMiller.png",
})

SFQuest_Database.MannequinPool["10345x12404x0"] = {
    sprite = "location_shop_mall_01_77",
    direction = "E",
    beard = "",
    hair = "Bald",
    outfit = "LucasMiller",
}

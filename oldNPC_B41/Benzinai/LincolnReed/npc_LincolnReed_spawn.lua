require 'SFQuest_Database'

-- Lincoln Reed March Ridge Spawn 9277,8480,0 Est
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_LincolnReed",
    square = "9277x8480x0",
    name = "IGUI_SFQuest_Questyno_LincolnReed_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_LincolnReed.png",
})

SFQuest_Database.MannequinPool["9277x8480x0"] = {
    sprite = "location_shop_mall_01_77",
    direction = "E",
    beard = "Scruffy",
    beardcolor = "0.7,0.7,0.7",
    hair = "Balding",
    haircolor = "0.7,0.7,0.7",
    outfit = "LincolnReed",
}
require 'SFQuest_Database'

-- WorldPool (serves quest system)
table.insert(SFQuest_Database.WorldPool, {
    identity = "EzekielFlynn",
    square = "9328x8596x0",
    name = "IGUI_SFQuest_EzekielFlynn_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_EzekielFlynn.png",
})

-- NpcPool (primary - used by IsoNPC/createBot)
if NpcPool then
    NpcPool["9328x8596x0"] = {
        identity = "EzekielFlynn",
        name = "Ezekiel",
        surname = "Flynn",
        female = false,
        skin = 0,
        hair = "Short",
        hairColor = {r=0.8, g=0.8, b=0.8},
        beard = "PointyChin",
        beardColor = {r=0.8, g=0.8, b=0.8},
        outfit = "PonchoGiallo",
        direction = "S",
        npcType = "quest",
        faction = "LaResistenza",
    }
end

-- MannequinPool (fallback - used if IsoNPC not present)
SFQuest_Database.MannequinPool["9328x8596x0"] = {
    identity = "EzekielFlynn",
    sprite = "location_shop_mall_01_70",
    direction = "S",
    beard = "PointyChin",
    beardcolor = "0.8,0.8,0.8",
    hair = "Short",
    haircolor = "0.8,0.8,0.8",
    outfit = "PonchoGiallo",
}

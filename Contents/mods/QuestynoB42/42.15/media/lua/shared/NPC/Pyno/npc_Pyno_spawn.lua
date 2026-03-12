require 'SFQuest_Database'

-- WorldPool (serves quest system)
table.insert(SFQuest_Database.WorldPool, {
    identity = "Pyno",
    square = "9332x8605x0",
    name = "IGUI_SFQuest_Pyno_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_Pyno.png",
})

-- NpcPool (primary - used by IsoNPC/createBot)
if NpcPool then
    NpcPool["9332x8605x0"] = {
        identity = "Pyno",
        name = "Pyno",
        female = false,
        skin = 2,
        hair = "Bald",
        hairColor = {r=0, g=0, b=0},
        beard = "Goatee",
        beardColor = {r=0, g=0, b=0},
        outfit = "Pyno",
        direction = "E",
        npcType = "quest",
        faction = "LaResistenza",
    }
end

-- MannequinPool (fallback - used if IsoNPC not present)
SFQuest_Database.MannequinPool["9332x8605x0"] = {
    identity = "Pyno",
    sprite = "location_shop_mall_01_76",
    direction = "E",
    beard = "Goatee",
    beardcolor = "0,0,0",
    hair = "Bald",
    haircolor = "0,0,0",
    outfit = "Pyno",
}

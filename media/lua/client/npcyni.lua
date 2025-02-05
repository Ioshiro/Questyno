-- require 'SFQuest_Database'
--[[                            ***       NPC     ***
]]
-- npc che da la quest
--[[ table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_Pynocchio",                  -- ID univoco del npc
    square = "12427x1341x0",                          -- Posizione del npc
    name = "IGUI_SFQuest_Questyno_Pynocchio_Name",    -- Nome del npc
    faction = "LaResistenza",                         -- Fazione del npc
    picture = "media/textures/Picture_Pynocchio.png", -- Texture (icona) da mostrare nella lista quest (140x140 max)
})

-- npc che da l'item per completare la quest
table.insert(SFQuest_Database.WorldPool, {
    identity = "Questyno_Brioshi",
    square = "12430x1341x0",
    name = "IGUI_SFQuest_Questyno_Brioshi_Name",
    faction = "LaResistenza",
    picture = "media/textures/Picture_Brioshi.png",
}) ]]

-- manichino che rappresenta il primo npc
--[[ SFQuest_Database.MannequinPool["12427x1341x0"] = {
    sprite = "location_shop_mall_01_73", -- stringa con un nome di sprite -> location_shop_mall_01_65 to 70 and from 73 to 78
    direction = "E",                     -- direzione del manichino (N, S, E, W)
    beard = "",                          -- stringa con id della beard model, se non definita è random, se "" rimane vuota
    --beardcolor = "0.0,0.0,0.0", -- colore della barba (R,G,B), se non definito è random
    --hair = "", -- stringa con id della hair model, se non definita è random, se "" rimane vuota
    --haircolor = "0.0,0.0,0.0", -- colore dei capelli (R,G,B), se non definito è random
    outfit =
    "Farmer" -- outfit da clothing.xml, diviso da male/female, però oltre ai definiti dal sistema (escono random) quelli vanilla escono bianchi
}

-- manichino che rappresenta il secondo npc
SFQuest_Database.MannequinPool["12430x1341x0"] = {
    sprite = "location_shop_mall_01_74",
    direction = "S",
    beard = "",
    --beardcolor = "0.0,0.0,0.0",
    --hair = "",
    --haircolor = "0.0,0.0,0.0",
    outfit = "Farmer"
} ]]
local manager = ScriptManager.instance

function Questyno_Tweaks()
    -- Mushrooms
    manager:getItem("Base.MushroomGeneric1"):DoParam("Tags".." = ".. "Mushroom");
    manager:getItem("Base.MushroomGeneric2"):DoParam("Tags".." = ".. "Mushroom");
    manager:getItem("Base.MushroomGeneric3"):DoParam("Tags".." = ".. "Mushroom");
    manager:getItem("Base.MushroomGeneric4"):DoParam("Tags".." = ".. "Mushroom");
    manager:getItem("Base.MushroomGeneric5"):DoParam("Tags".." = ".. "Mushroom");
    manager:getItem("Base.MushroomGeneric6"):DoParam("Tags".." = ".. "Mushroom");
    manager:getItem("Base.MushroomGeneric7"):DoParam("Tags".." = ".. "Mushroom");
    -- WatchLuxury
    manager:getItem("Base.WristWatch_Right_ClassicGold"):DoParam("Tags".." = ".. "WatchLuxury");
    manager:getItem("Base.WristWatch_Left_ClassicGold"):DoParam("Tags".." = ".. "WatchLuxury");
    -- GuitarElectricBass
    manager:getItem("Base.GuitarElectricBassRed"):DoParam("Tags".." = ".. "GuitarElectricBass");
    manager:getItem("Base.GuitarElectricBassBlack"):DoParam("Tags".." = ".. "GuitarElectricBass");
    manager:getItem("Base.GuitarElectricBassBlue"):DoParam("Tags".." = ".. "GuitarElectricBass");
    -- Bandana
    manager:getItem("Base.Hat_BandanaMask"):DoParam("Tags".." = ".. "Bandana");
    manager:getItem("Base.Hat_BandanaRed"):DoParam("Tags".." = ".. "Bandana");
    manager:getItem("Base.Hat_BandanaTINT"):DoParam("Tags".." = ".. "Bandana");
    manager:getItem("Base.Hat_Bandana"):DoParam("Tags".." = ".. "Bandana");
    manager:getItem("Base.Hat_BandanaTiedTINT"):DoParam("Tags".." = ".. "Bandana");
    manager:getItem("Base.Hat_BandanaTied"):DoParam("Tags".." = ".. "Bandana");
    manager:getItem("Base.Hat_BandanaMaskTINT"):DoParam("Tags".." = ".. "Bandana");
    manager:getItem("Base.Hat_BandanaMask"):DoParam("Tags".." = ".. "Bandana");
    manager:getItem("Base.Hat_BandanaMaskDesert"):DoParam("Tags".." = ".. "Bandana");
    manager:getItem("Base.Hat_BandanaDesert"):DoParam("Tags".." = ".. "Bandana");
    manager:getItem("Base.Hat_BandanaTiedRed"):DoParam("Tags".." = ".. "Bandana");
    manager:getItem("Base.Hat_BandanaMaskRed"):DoParam("Tags".." = ".. "Bandana");

    

end

Events.OnGameBoot.Add(Questyno_Tweaks)
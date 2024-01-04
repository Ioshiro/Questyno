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
    manager:getItem("Base.Hat_BandanaTINT"):DoParam("Tags".." = ".. "Bandana");
    manager:getItem("Base.Hat_Bandana"):DoParam("Tags".." = ".. "Bandana");
    manager:getItem("Base.Hat_BandanaTiedTINT"):DoParam("Tags".." = ".. "Bandana");
    manager:getItem("Base.Hat_BandanaTied"):DoParam("Tags".." = ".. "Bandana");
    manager:getItem("Base.Hat_BandanaMaskTINT"):DoParam("Tags".." = ".. "Bandana");
    manager:getItem("Base.Hat_BandanaMask"):DoParam("Tags".." = ".. "Bandana");
    -- LongDress (Base.Dress_Long,Base.Dress_LongStraps)
    manager:getItem("Base.Dress_Long"):DoParam("Tags".." = ".. "LongDress");
    manager:getItem("Base.Dress_long_Straps"):DoParam("Tags".." = ".. "LongDress");
    -- HoodieWhite(Base.HoodieDOWN_WhiteTINT,Base.HoodieUP_WhiteTINT)
    manager:getItem("Base.HoodieDOWN_WhiteTINT"):DoParam("Tags".." = ".. "HoodieWhite");
    manager:getItem("Base.HoodieUP_WhiteTINT"):DoParam("Tags".." = ".. "HoodieWhite");
    -- HawaiianShirt(Base.Shirt_HawaiianRed,Base.Shirt_HawaiianTINT)
    manager:getItem("Base.Shirt_HawaiianRed"):DoParam("Tags".." = ".. "HawaiianShirt");
    manager:getItem("Base.Shirt_HawaiianTINT"):DoParam("Tags".." = ".. "HawaiianShirt");
    -- FullWaterBottle(Base.BeerWaterFull,Base.WaterBottleFull,Base.WaterPopBottle,Base.WhiskeyWaterFull,Base.WineWaterFull)
    manager:getItem("Base.BeerWaterFull"):DoParam("Tags".." = ".. "FullWaterBottle");
    manager:getItem("Base.WaterBottleFull"):DoParam("Tags".." = ".. "FullWaterBottle");
    manager:getItem("Base.WaterPopBottle"):DoParam("Tags".." = ".. "FullWaterBottle");
    manager:getItem("Base.WhiskeyWaterFull"):DoParam("Tags".." = ".. "FullWaterBottle");
    manager:getItem("Base.WineWaterFull"):DoParam("Tags".." = ".. "FullWaterBottle");
    -- Catfish(Base.Catfish)
    manager:getItem("Base.Catfish"):DoParam("Tags".." = ".. "Catfish");
    -- Perch(Base.Perch)
    manager:getItem("Base.Perch"):DoParam("Tags".." = ".. "Perch");
    -- Trout(Base.Trout)
    manager:getItem("Base.Trout"):DoParam("Tags".." = ".. "Trout");
end

Events.OnGameBoot.Add(Questyno_Tweaks)
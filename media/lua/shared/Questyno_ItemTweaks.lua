local manager = ScriptManager.instance

function Questyno_Tweaks()
    manager:getItem("Base.MushroomGeneric1"):DoParam("Tags".." = ".. "Mushroom");
    manager:getItem("Base.MushroomGeneric2"):DoParam("Tags".." = ".. "Mushroom");
    manager:getItem("Base.MushroomGeneric3"):DoParam("Tags".." = ".. "Mushroom");
    manager:getItem("Base.MushroomGeneric4"):DoParam("Tags".." = ".. "Mushroom");
    manager:getItem("Base.MushroomGeneric5"):DoParam("Tags".." = ".. "Mushroom");
    manager:getItem("Base.MushroomGeneric6"):DoParam("Tags".." = ".. "Mushroom");
    manager:getItem("Base.MushroomGeneric7"):DoParam("Tags".." = ".. "Mushroom");
end

Events.OnGameBoot.Add(Questyno_Tweaks)
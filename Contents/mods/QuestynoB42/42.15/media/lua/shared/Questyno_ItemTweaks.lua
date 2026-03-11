-- Questyno_ItemTweaks.lua
-- Aggiunge tag custom agli item vanilla per il sistema di quest
--
-- NOTA: I tag sono registrati in media/registries.lua che viene caricato
-- automaticamente dal gioco PRIMA di questo file.

local manager = ScriptManager.instance

-- Helper function: aggiunge un tag ad un item preservando i tag esistenti
-- Usa l'API Java diretta: getTags():add(ItemTag)
local function addTag(itemName, tagName)
    local item = manager:getItem(itemName)
    if item then
        item:getTags():add(ItemTag.get(ResourceLocation.of(tagName)))
    else
        print("[Questyno] addTag: Item non trovato - " .. itemName)
    end
end

function Questyno_Tweaks()
    -- ArmyBoots
    addTag("Base.Shoes_ArmyBoots", "questyno:armyboots")
    addTag("Base.Shoes_ArmyBootsDesert", "questyno:armyboots")
    addTag("Base.Shoes_BlackBoots", "questyno:armyboots")
    addTag("Base.Shoes_Wellies", "questyno:armyboots")
    addTag("Base.Shoes_RidingBoots", "questyno:armyboots")

    -- Mushrooms
    addTag("Base.MushroomGeneric1", "questyno:mushroom")
    addTag("Base.MushroomGeneric2", "questyno:mushroom")
    addTag("Base.MushroomGeneric3", "questyno:mushroom")
    addTag("Base.MushroomGeneric4", "questyno:mushroom")
    addTag("Base.MushroomGeneric5", "questyno:mushroom")
    addTag("Base.MushroomGeneric6", "questyno:mushroom")
    addTag("Base.MushroomGeneric7", "questyno:mushroom")

    -- WatchLuxury
    addTag("Base.WristWatch_Right_ClassicGold", "questyno:watchluxury")
    addTag("Base.WristWatch_Left_ClassicGold", "questyno:watchluxury")

    -- GuitarElectricBass
    addTag("Base.GuitarElectricBassRed", "questyno:guitarelectricbass")
    addTag("Base.GuitarElectricBassBlack", "questyno:guitarelectricbass")
    addTag("Base.GuitarElectricBassBlue", "questyno:guitarelectricbass")

    -- Bandana
    addTag("Base.Hat_BandanaMask", "questyno:bandana")
    addTag("Base.Hat_BandanaTINT", "questyno:bandana")
    addTag("Base.Hat_Bandana", "questyno:bandana")
    addTag("Base.Hat_BandanaTiedTINT", "questyno:bandana")
    addTag("Base.Hat_BandanaTied", "questyno:bandana")
    addTag("Base.Hat_BandanaMaskTINT", "questyno:bandana")

    -- LongDress
    addTag("Base.Dress_Long", "questyno:longdress")
    addTag("Base.Dress_long_Straps", "questyno:longdress")

    -- HoodieWhite
    addTag("Base.HoodieDOWN_WhiteTINT", "questyno:hoodiewhite")
    addTag("Base.HoodieUP_WhiteTINT", "questyno:hoodiewhite")

    -- HawaiianShirt
    addTag("Base.Shirt_HawaiianRed", "questyno:hawaiianshirt")
    addTag("Base.Shirt_HawaiianTINT", "questyno:hawaiianshirt")

    -- FullWaterBottle
    addTag("Base.BeerWaterFull", "questyno:fullwaterbottle")
    addTag("Base.WaterBottleFull", "questyno:fullwaterbottle")
    addTag("Base.WaterPopBottle", "questyno:fullwaterbottle")
    addTag("Base.WhiskeyWaterFull", "questyno:fullwaterbottle")
    addTag("Base.WineWaterFull", "questyno:fullwaterbottle")

    -- Catfish
    addTag("Base.Catfish", "questyno:catfish")

    -- Perch
    addTag("Base.Perch", "questyno:perch")

    -- Trout
    addTag("Base.Trout", "questyno:trout")

    -- Golden (jewelry)
    addTag("Base.Necklace_Gold", "questyno:golden")
    addTag("Base.Necklace_GoldRuby", "questyno:golden")
    addTag("Base.Necklace_GoldDiamond", "questyno:golden")
    addTag("Base.NecklaceLong_Gold", "questyno:golden")
    addTag("Base.NecklaceLong_GoldDiamond", "questyno:golden")
    addTag("Base.Earring_LoopLrg_Gold", "questyno:golden")
    addTag("Base.Earring_LoopMed_Gold", "questyno:golden")
    addTag("Base.Earring_LoopSmall_Gold_Both", "questyno:golden")
    addTag("Base.Earring_LoopSmall_Gold_Top", "questyno:golden")
    addTag("Base.Earring_Stud_Gold", "questyno:golden")
    addTag("Base.Ring_Right_MiddleFinger_Gold", "questyno:golden")
    addTag("Base.Ring_Left_MiddleFinger_Gold", "questyno:golden")
    addTag("Base.Ring_Right_RingFinger_Gold", "questyno:golden")
    addTag("Base.Ring_Left_RingFinger_Gold", "questyno:golden")
    addTag("Base.Ring_Right_MiddleFinger_GoldRuby", "questyno:golden")
    addTag("Base.Ring_Left_MiddleFinger_GoldRuby", "questyno:golden")
    addTag("Base.Ring_Right_RingFinger_GoldRuby", "questyno:golden")
    addTag("Base.Ring_Left_RingFinger_GoldRuby", "questyno:golden")
    addTag("Base.Ring_Right_MiddleFinger_GoldDiamond", "questyno:golden")
    addTag("Base.Ring_Left_MiddleFinger_GoldDiamond", "questyno:golden")
    addTag("Base.Ring_Right_RingFinger_GoldDiamond", "questyno:golden")
    addTag("Base.Ring_Left_RingFinger_GoldDiamond", "questyno:golden")
    addTag("Base.WristWatch_Right_ClassicGold", "questyno:golden")
    addTag("Base.WristWatch_Left_ClassicGold", "questyno:golden")
    addTag("Base.Bracelet_BangleRightGold", "questyno:golden")
    addTag("Base.Bracelet_BangleLeftGold", "questyno:golden")
    addTag("Base.Bracelet_ChainRightGold", "questyno:golden")
    addTag("Base.Bracelet_ChainLeftGold", "questyno:golden")
    addTag("Base.BellyButton_DangleGold", "questyno:golden")
    addTag("Base.BellyButton_DangleGoldRuby", "questyno:golden")
    addTag("Base.BellyButton_RingGold", "questyno:golden")
    addTag("Base.BellyButton_RingGoldDiamond", "questyno:golden")
    addTag("Base.BellyButton_RingGoldRuby", "questyno:golden")
    addTag("Base.BellyButton_StudGold", "questyno:golden")
    addTag("Base.BellyButton_StudGoldDiamond", "questyno:golden")
    addTag("Base.NoseStud_Gold", "questyno:golden")
    addTag("Base.NoseRing_Gold", "questyno:golden")

    -- Penna
    addTag("Base.Pen", "questyno:penna")
    addTag("Base.BluePen", "questyno:penna")
    addTag("Base.RedPen", "questyno:penna")

    -- BottigliaVetro
    addTag("Base.WineEmpty", "questyno:bottigliavetro")
    addTag("Base.WineEmpty2", "questyno:bottigliavetro")
    addTag("Base.BeerEmpty", "questyno:bottigliavetro")
    addTag("Base.WhiskeyEmpty", "questyno:bottigliavetro")

    -- BottigliaPlastica
    addTag("Base.WaterBottleEmpty", "questyno:bottiglia_plastica")
    addTag("Base.PopBottleEmpty", "questyno:bottiglia_plastica")
    addTag("farming.MayonnaiseEmpty", "questyno:bottiglia_plastica")
    addTag("Base.BleachEmpty", "questyno:bottiglia_plastica")

    -- Calzamaglia (Long Johns)
    addTag("Base.LongJohns", "questyno:calzamaglia")
    -- addTag("AuthenticZLite.Thin01_LongJohns", "questyno:calzamaglia") -- mod item

    -- Asciugamano
    addTag("Base.DishCloth", "questyno:asciugamano")
    addTag("Base.BathTowel", "questyno:asciugamano")

    -- Mannequin
    addTag("Mov_MannequinFemale", "questyno:mannequin")
    addTag("Mov_MannequinMale", "questyno:mannequin")

    print("[Questyno] ItemTweaks applicati con successo")
end

-- Events.OnGameBoot.Add(Questyno_Tweaks)

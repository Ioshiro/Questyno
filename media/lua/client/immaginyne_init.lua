require "ExamineUI/Examine"
require "ExamineUI/ExamineEntries"

local mod_id = "questyno";

local function bind()

    ExamineEntries.addEntry("Lore1", "media/ui/Poster.png", "sesso gratiss");
    ExamineEntries.addEntry("Lore2", "media/ui/Poster.png", "sesso gratiss");
    ExamineEntries.addEntry("Lore3", "media/ui/Poster.png", "sesso gratiss");
    ExamineEntries.addEntry("Lore4", "media/ui/Poster.png", "sesso gratiss");
    ExamineEntries.addEntry("Lore5", "media/ui/Poster.png", "sesso gratiss");
    ExamineEntries.addEntry("Lore6", "media/ui/Poster.png", "pynokkio fynokkio");
    ExamineEntries.addEntry("Lore7", "media/ui/Poster.png", "pynokkio fynokkio");
    ExamineEntries.addEntry("Lore8", "media/ui/Poster.png", "pynokkio fynokkio");
    ExamineEntries.addEntry("Lore9", "media/ui/Poster.png", "pynokkio fynokkio");
    ExamineEntries.addEntry("Lore10", "media/ui/Poster.png", "pynokkio fynokkio");
    

    table.insert(SPageTable, "LR.Lore1");
    table.insert(SPageTable, "LR.Lore2");
    table.insert(SPageTable, "LR.Lore3");
    table.insert(SPageTable, "LR.Lore4");
    table.insert(SPageTable, "LR.Lore5");
    table.insert(SPageTable, "LR.Lore6");
    table.insert(SPageTable, "LR.Lore7");
    table.insert(SPageTable, "LR.Lore8");
    table.insert(SPageTable, "LR.Lore9");
    table.insert(SPageTable, "LR.Lore10");

end

Events.OnGameStart.Add(function ()
    if Examine then
        bind(); -- binds images to items
        Examine.initialize(mod_id); -- loads config file from your mod directory
    end
end);
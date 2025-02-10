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

    ExamineEntries.addEntry("Volantino1", "media/ui/Volantino.png", "Ancora questi volantini in inglese? Perchè continuano a passare ma non si fanno vedere?!" );
	ExamineEntries.addEntry("Volantino2", "media/ui/Volantino2.png", "Mmmmmm.... Potrebbe essere una buona occasione per migliorare con la manutenzione le armi!" );
	--rivista1
	local Rivista1_pagine = {
        "media/ui/Rivista1.png",
        "media/ui/Rivista1a.png",
        "media/ui/Rivista1b.png",
		"media/ui/Rivista1c.png",
		"media/ui/Rivista1d.png",
		"media/ui/Rivista1e.png",
		"media/ui/Rivista1f.png",
		"media/ui/Rivista1g.png",
    }
	local Rivista1_texts = {
        "...",
        "...",
        "Cavoli, che offerta...",
		"Roba completamente inutile",
		"Ma che cazz..?!",
		"...",
		"....",
		".....",
    }
	ExamineEntries.addEntry("Rivista1",Rivista1_pagine,Rivista1_texts);
	
	
	--rivista2
	ExamineEntries.addEntry("Rivista2", "media/ui/Rivista1.png", "Da dove diavolo arriva questo?!" );
	ExamineEntries.addEntry("Rivista3", "media/ui/Rivista1.png", "Da dove diavolo arriva questo?!" );
	ExamineEntries.addEntry("Rivista4", "media/ui/Rivista1.png", "Da dove diavolo arriva questo?!" );
	ExamineEntries.addEntry("Rivista5", "media/ui/Rivista1.png", "Da dove diavolo arriva questo?!" );
	ExamineEntries.addEntry("Rivista6", "media/ui/Rivista1.png", "Da dove diavolo arriva questo?!" );
	ExamineEntries.addEntry("Rivista7", "media/ui/Rivista1.png", "Da dove diavolo arriva questo?!" );
	ExamineEntries.addEntry("Rivista8", "media/ui/Rivista1.png", "Da dove diavolo arriva questo?!" );
	ExamineEntries.addEntry("Rivista9", "media/ui/Rivista1.png", "Da dove diavolo arriva questo?!" );
	ExamineEntries.addEntry("Rivista10", "media/ui/Rivista1.png", "Da dove diavolo arriva questo?!" );



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

    table.insert(SPageTable, "LR.Volantino1");
    table.insert(SPageTable, "LR.Volantino2");
	table.insert(MPageTable, "LR.Rivista1");
    table.insert(SPageTable, "LR.Rivista2");
	 table.insert(SPageTable, "LR.Rivista3");
	  table.insert(SPageTable, "LR.Rivista4");
	  table.insert(SPageTable, "LR.Rivista5");
	  table.insert(SPageTable, "LR.Rivista6");
	  table.insert(SPageTable, "LR.Rivista7");
	  table.insert(SPageTable, "LR.Rivista8");
	  table.insert(SPageTable, "LR.Rivista9");
	  table.insert(SPageTable, "LR.Rivista10");

end

Events.OnGameStart.Add(function ()
    if Examine then
        bind(); -- binds images to items
        Examine.initialize(mod_id); -- loads config file from your mod directory
    end
end);
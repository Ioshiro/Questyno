--[[                                        *** Pattern da seguire per la definizione delle quest ***

   -    Ogni quest deve essere definita in quattro punti:
            /media/lua/client 
        1)  questyni_NOME.lua   - Contiene la definizione della quest in sè
                                    NOME è una categoria distinguibile - non troppo generica - di quest
                                    (NB. il massimo delle variabili in un file lua è 200)
                                    es. questyni_catene_muld.lua, questyni_daily_spawn.lua, ecc.
        2)  dialoghyni_NOME.lua - Contiene i dialoghi per ogni quest
                                    NOME può essere più generico, 
                                    non si usano variabili in questo file
        3)  questyno_pools.lua  - Contiene le liste delle quest daily che vengono pescate casualmente,
                                    più le quest che vengono assegnate alla creazione del pg
                                    da compilare per ultimo, dopo aver definito tutte le quest di un NPC
            /media/lua/shared/Translate/EN
        4)  IG_UI_EN.txt        - Contiene le stringhe dei testi delle quest
                                    non è necessario compilarle del tutto, l'importante è la struttura
                                    in caso lasciare "todo" come valore delle variabili


                                    NB. OGNI FILE .lua DEVE INIZIARE CON:
                                    require 'SFQuest_Database'

    -   Lista completa quest:
    https://docs.google.com/spreadsheets/d/1Q7fcf4-uQmY4-rYCtd4-YeTpEkc1YS4M/edit?usp=sharing&ouid=104817968375836269197&rtpof=true&sd=true
]]

--                                          *** 1) questyni_NOME.lua ***

--[[ Decision Map
    Quest introduttiva o parla con NPC? ┬ SI ──> Pattern 1
                                        | 
                                        └ NO ──> Recupera X item dello stesso tipo? ┬ SI ──> Parlando con NPC/Tile? ┬ NO ──> Pattern 2
                                                                                    |                               | 
                                                                                    |                               ├ UNO ──> Pattern 4 
                                                                                    |                               |
                                                                                    |                               └ MULTIPLI ──> Pattern 5  
                                                                                    |
                                                                                    └ NO ──> Parlando con NPC/Tile? ┬ NO ──> Pattern 3
                                                                                                                    | 
                                                                                                                    ├ UNO ──> Pattern 6
                                                                                                                    |
                                                                                                                    └ MULTIPLI ──> Pattern 7

]]

--[[ Pattern 1:
    -   Caso Base: quest che viene completata con un solo step, cioè parlando con un npc
    es. Parla con Elia Rima per sbloccare le sue quest giornaliere
    [NomeCognome] = Nome e Cognome o Soprannome dell'NPC
    [NomeCognomeNumero] = Nome e Cognome + Numero della quest nell'elenco excel, se è un intro Numero = "_Intro", es. "EliaRima_Intro" o "EliaRima1"
    [NomeIcona] = Nome dell'icona che compare nel menu vicino alla quest. Si trova nella definizione degli oggetti sotto la proprietà icon
                in /media/scripts del codice sorgente. Spesso sono nomi strani e diversi dal type dell'oggetto, quindi nel dubbio mettere "Item_Money"
]]

local cognomeNumero = {
    guid = "Questyno_[NomeCognomeNumero]",                                                                              -- ID della quest

    awardsworld = "Questyno_[NomeCognome];SFQuest_Questyno_[NomeCognomeNumero+1]_Begin;Questyno_[NomeCognomeNumero+1]", -- Dialogo sbloccato al completamento della quest,
                                                                                                                        -- c'è solo se la quest fa parte di una catena,
                                                                                                                        -- altrimenti non c'è proprio la proprietà
                                                                                                                        -- in questo caso sblocca il dialogo per iniziare la quest successiva
    completesound = "levelup",                                                                                          -- Suono completamento quest, sempre uguale                                 
    lore = { "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_Lore" },                                                        -- Testo lore della quest, seguire il pattern                 
    ondone = "randomcodedworldfrompool;Questyno_[NomeCognome];Questyno;[NomeCognome]",                                  -- Codice che viene eseguito al completamento della quest
                                                                                                                        -- c'è solo se la quest fa partire una daily casuale,
                                                                                                                        -- cioè le intro alle daily
    text = "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_Text",                                                            -- Testo della quest, seguire il pattern                      
    texture = "Item_[NomeIcona]",                                                                                       -- Icona che compare nel menu vicino alla quest                     
    unique = true,                                                                                                      -- Unicità della quest, in questo caso sempre true
    unlocks = "unlockworldevent;Questyno_[NomeCognome];SFQuest_Questyno_[NomeCognomeNumero]_Complete",                  -- Codice che viene eseguito allo sblocco della quest
                                                                                                                        -- in questo caso sblocca sempre il dialogo per completare la quest
    title = "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_Title",                                                          -- Titolo della quest, seguire il pattern                 
}
table.insert(SFQuest_Database.QuestPool, cognomeNumero)                                                                 -- Inserisce la quest nel database delle quest

--[[ Pattern 2:
    -   Caso Recupera Item Base: Quest che richiede X item dello stesso tipo da recuperare,
        poi sblocca un dialogo per completare la quest
    es. Recupera 5 Base.Book per Elia Rima
    [NumeroReputazione] = Numero di reputazione che viene aggiunta al completamento della quest
    [NomeRicompensa] = Nome dell'oggetto che viene dato al completamento della quest (il modulo serve solo se diverso da Base)
    [NumeroRicompensa] = Quantità dell'oggetto che viene data al completamento della quest
    [NomeRichiesto] = Nome dell'oggetto che viene richiesto per completare la quest (il modulo serve solo se diverso da Base)
    [NumeroRichiesto] = Quantità dell'oggetto che viene richiesta per completare la quest
 ]]

local cognomeNumero = {
    guid = "Questyno_[NomeCognomeNumero]",                                                                              -- ID della quest                                         

    awardsrep = "LaResistenza;[NumeroReputazione]",                                                                     -- Reputazione che viene aggiunta al completamento della quest
                                                                                                                        -- c'è solo se la quest da reputazione
    awardsitem = "[NomeRicompensa];[NumeroRicompensa]",                                                                 -- Ricompensa che viene data al completamento della quest (vale anche per i soldi)
                                                                                                                        -- c'è solo se la quest da oggetti
                                                                                                                        -- in caso di ricompense multiple separare con ";", es. "Book;1;Money;10"
    awardsworld = "Questyno_[NomeCognome];SFQuest_Questyno_[NomeCognomeNumero+1]_Begin;Questyno_[NomeCognomeNumero+1]", -- Dialogo sbloccato al completamento della quest,
                                                                                                                        -- c'è solo se la quest fa parte di una catena,
    needsitem = "[NomeRichiesto];[NumeroRichiesto]",                                                                    -- Item che viene richiesto per completare la quest
    completesound = "levelup",                                                                                          -- Suono completamento quest, sempre uguale
    dailycode = "Questyno_[NomeCognome]",                                                                               -- Codice che raggruppa i pool di quest daily
                                                                                                                        -- c'è solo se la quest fa parte di un pool di daily
    lore = { "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_Lore" },                                                        -- Testo lore della quest, seguire il pattern                  
    text = "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_Text",                                                            -- Testo della quest, seguire il pattern                    
    texture = "Item_[NomeIcona]",                                                                                       -- Icona che compare nel menu vicino alla quest                
    onobtained = "unlockworldevent;Questyno_[NomeCognome];SFQuest_Questyno_[NomeCognomeNumero]_Complete",               -- Codice che viene eseguito all'ottenimento degli item richiesti
                                                                                                                        -- in questo caso c'è sempre il dialogo per completare la quest
    title = "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_Title",                                                          -- Titolo della quest, seguire il pattern
    unlockedsound = "QuestUnlocked"                                                                                     -- Suono sblocco quest, sempre uguale
}
table.insert(SFQuest_Database.QuestPool, cognomeNumero);                                                                -- Inserisce la quest nel database delle quest

--[[ Pattern 3:
    -   Caso Recupera Item Avanzato: Quest che richiede X item di Y tipi diversi da recuperare,
        ottenuti gli item sblocca una seconda quest che completa effetivamente la quest e da la ricompensa
    es. Recupera 5 Base.Book e 3 Base.Magazine per Elia Rima
 ]]

local cognomeNumero = {
    guid = "Questyno_[NomeCognomeNumero]",                                                                              -- ID della quest

    awardstask = "Questyno_[NomeCognomeNumero]_A",                                                                      -- Quest che viene sbloccata al completamento della quest attuale
    dailycode = "Questyno_[NomeCognome]",                                                                               -- Codice che raggruppa i pool di quest daily
                                                                                                                        -- c'è solo se la quest fa parte di un pool di daily
    lore = { "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_Lore" },                                                        -- Testo lore della quest, seguire il pattern
    objectives = { {                                                                                                            -- Lista degli obiettivi della quest
                                                                                                                                -- aggiungere un obiettivo per ogni tipo di item richiesto                                       
        guid = "Questyno_[NomeCognomeNumero]_A",                                                                                -- ID dell'obiettivo                            
        text = "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_A",                                                                   -- Testo dell'obiettivo, seguire il pattern       
        hidden = false,                                                                                                         -- Obiettivo nascosto, in questo caso sempre false                  
        needsitem = "[NomeRichiesto1];[NumeroRichiesto1]",                                                                      -- Item che viene richiesto per completare l'obiettivo
        onobtained = "updateobjective;Questyno_[NomeCognomeNumero]:2:Completed;removeitem;[NomeRichiesto1];[NumeroRichiesto1]"  -- Codice che viene eseguito all'ottenimento degli item richiesti
                                                                                                                                -- in questo caso aggiorna l'obiettivo e rimuove gli item richiesti
    }, {
        guid = "Questyno_[NomeCognomeNumero]_B",
        text = "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_B",
        hidden = false,
        needsitem = "[NomeRichiesto2];[NumeroRichiesto2]",
        onobtained = "updateobjective;Questyno_[NomeCognomeNumero]:3:Completed;removeitem;[NomeRichiesto2];[NumeroRichiesto2]"
    }, {
        guid = "Questyno_[NomeCognomeNumero]_C",
        text = "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_C",
        hidden = false,
        needsitem = "[NomeRichiesto3];[NumeroRichiesto3]",
        onobtained = "updateobjective;Questyno_[NomeCognomeNumero]:4:Completed;removeitem;[NomeRichiesto3];[NumeroRichiesto3]"
    } },
    text = "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_Text",                                                            -- Testo della quest, seguire il pattern
    texture = "Item_[NomeIcona]",                                                                                       -- Icona che compare nel menu vicino alla quest
    title = "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_Title",                                                          -- Titolo della quest, seguire il pattern
    unlockedsound = "QuestUnlocked"                                                                                     -- Suono sblocco quest, sempre uguale
}
table.insert(SFQuest_Database.QuestPool, cognomeNumero);                                                                -- Inserisce la quest nel database delle quest

local cognomeNumeroA = {
    guid = "Questyno_[NomeCognomeNumero]_A",                                                                            -- ID della quest

    awardsrep = "LaResistenza;[NumeroReputazione]",                                                                     -- Reputazione che viene aggiunta al completamento della quest
                                                                                                                        -- c'è solo se la quest da reputazione
    awardsitem = "[NomeRicompensa];[NumeroRicompensa]",                                                                 -- Ricompensa che viene data al completamento della quest (vale anche per i soldi)
                                                                                                                        -- c'è solo se la quest da oggetti
                                                                                                                        -- in caso di ricompense multiple separare con ";", es. "Book;1;Money;10"
    awardsworld = "Questyno_[NomeCognome];SFQuest_Questyno_[NomeCognomeNumero+1]_Begin;Questyno_[NomeCognomeNumero+1]", -- Dialogo sbloccato al completamento della quest,
                                                                                                                        -- c'è solo se la quest fa parte di una catena,
    completesound = "levelup",                                                                                          -- Suono completamento quest, sempre uguale
    dailycode = "Questyno_HeatherThomas",                                                                               -- Codice che raggruppa i pool di quest daily
                                                                                                                        -- c'è solo se la quest fa parte di un pool di daily 
    lore = { "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_Lore" },                                                        -- Testo lore della quest, seguire il pattern
    unlocks = "unlockworldevent;Questyno_[NomeCognome];SFQuest_Questyno_[NomeCognomeNumero]_Complete",                  -- Codice che viene eseguito allo sblocco della quest
                                                                                                                        -- in questo caso sblocca sempre il dialogo per completare la quest
    text = "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_A_Text",                                                          -- Testo della quest, seguire il pattern (ATTENZIONE AL "_A")
    texture = "Item_[NomeIcona]",                                                                                       -- Icona che compare nel menu vicino alla quest
    title = "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_Title",                                                          -- Titolo della quest, seguire il pattern                                                                                 -- Suono sblocco quest, sempre uguale
}
table.insert(SFQuest_Database.QuestPool, cognomeNumeroA);                                                               -- Inserisce la quest nel database delle quest

--[[ Pattern 4:
    -   Caso Recupero Item Base Parlando con NPC/Tile: Quest che richiede X item dello stesso tipo,
        da recuperare parlando con un npc o interagendo con un tile a coordinate specifiche, 
        poi sblocca un dialogo per completare la quest
    es. Recupera 1 Base.Journal per Elia Rima a 12420,1337,0
 ]]

local cognomeNumero = {
    guid = "Questyno_[NomeCognomeNumero]",                                                                              -- ID della quest

    awardstask = "Questyno_[NomeCognomeNumero]_A",                                                                      -- Quest che viene sbloccata al completamento della quest attuale
    dailycode = "Questyno_[NomeCognome]",                                                                               -- Codice che raggruppa i pool di quest daily
                                                                                                                        -- c'è solo se la quest fa parte di un pool di daily
    lore = { "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_Lore" },                                                        -- Testo lore della quest, seguire il pattern
    objectives = { {                                                                                                            -- Lista degli obiettivi della quest
                                                                                                                                -- aggiungere un obiettivo per le coordinate dell'interazione
        guid = "Questyno_[NomeCognomeNumero]_A",                                                                                -- ID dell'obiettivo
        text = "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_A",                                                                   -- Testo dell'obiettivo, seguire il pattern
        hidden = false,                                                                                                         -- Obiettivo nascosto, in questo caso sempre false
        oncompleted = "additem;[NomeRichiesto];[NumeroRichiesto];removeclickevent;Questyno_[NomeCognomeNumero]",                -- Codice che viene eseguito al completamento dell'obiettivo
                                                                                                                                -- in questo caso aggiunge l'item richiesto e rimuove l'interazione
    } },
    text = "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_Text",                                                            -- Testo della quest, seguire il pattern
    texture = "Item_[NomeIcona]",                                                                                       -- Icona che compare nel menu vicino alla quest
    title = "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_Title",                                                          -- Titolo della quest, seguire il pattern
    unlocks = "clickevent;[Coordinate]:Evento[NomeCognomeNumero];time:50:anim:loot;updateobjective:Questyno_[NomeCognomeNumero]:1:Completed",   
                                                                                                                        -- Codice che viene eseguito allo sblocco della quest
                                                                                                                        -- in questo caso aggiunge l'interazione e aggiorna l'obiettivo
                                                                                                                        -- ATTENZIONE ALLE ";" E ":", MANTENERE IL PATTERN
    unlockedsound = "QuestUnlocked"                                                                                     -- Suono sblocco quest, sempre uguale
}
table.insert(SFQuest_Database.QuestPool, cognomeNumero);                                                                -- Inserisce la quest nel database delle quest

local cognomeNumeroA = {
    guid = "Questyno_[NomeCognomeNumero]_A",                                                                            -- ID della quest

    awardsrep = "LaResistenza;[NumeroReputazione]",                                                                     -- Reputazione che viene aggiunta al completamento della quest
                                                                                                                        -- c'è solo se la quest da reputazione
    awardsitem = "[NomeRicompensa];[NumeroRicompensa]",                                                                 -- Ricompensa che viene data al completamento della quest (vale anche per i soldi)
                                                                                                                        -- c'è solo se la quest da oggetti
                                                                                                                        -- in caso di ricompense multiple separare con ";", es. "Book;1;Money;10"
    awardsworld = "Questyno_[NomeCognome];SFQuest_Questyno_[NomeCognomeNumero+1]_Begin;Questyno_[NomeCognomeNumero+1]", -- Dialogo sbloccato al completamento della quest,
                                                                                                                        -- c'è solo se la quest fa parte di una catena,
    completesound = "levelup",                                                                                          -- Suono completamento quest, sempre uguale
    dailycode = "Questyno_[NomeCognome]",                                                                               -- Codice che raggruppa i pool di quest daily
                                                                                                                        -- c'è solo se la quest fa parte di un pool di daily 
    lore = { "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_Lore" },                                                        -- Testo lore della quest, seguire il pattern
    needsitem = "[NomeRichiesto];[NumeroRichiesto]",                                                                    -- Item che viene richiesto per completare la quest
    onobtained = "unlockworldevent;Questyno_[NomeCognome];SFQuest_Questyno_[NomeCognomeNumero]_Complete",               -- Codice che viene eseguito all'ottenimento degli item richiesti
                                                                                                                        -- in questo caso sblocca sempre il dialogo per completare la quest
    text = "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_A_Text",                                                          -- Testo della quest, seguire il pattern (ATTENZIONE AL "_A")
    texture = "Item_[NomeIcona]",                                                                                       -- Icona che compare nel menu vicino alla quest
    title = "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_Title",                                                          -- Titolo della quest, seguire il pattern                                                                                 -- Su
}
table.insert(SFQuest_Database.QuestPool, cognomeNumeroA);                                                               -- Inserisce la quest nel database delle quest

--[[ Pattern 5:
    - Caso Recupero Item Base Parlando con Multipli NPC/Tile: Quest che richiede X item dello stesso tipo,
        da recuperare parlando con Z npc o interagendo con Z tile a coordinate specifiche, 
        poi sblocca un dialogo per completare la quest
    es. Recupera 1 Base.Journal a 12420,1337,0 e 1 Base.Book a 12069,1337,0 per Elia Rima  
]]

local cognomeNumero = {
    guid = "Questyno_[NomeCognomeNumero]",                                                                              -- ID della quest

    awardstask = "Questyno_[NomeCognomeNumero]_A",                                                                      -- Quest che viene sbloccata al completamento della quest attuale
    dailycode = "Questyno_[NomeCognome]",                                                                               -- Codice che raggruppa i pool di quest daily
                                                                                                                        -- c'è solo se la quest fa parte di un pool di daily
    lore = { "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_Lore" },                                                        -- Testo lore della quest, seguire il pattern
    objectives = { {                                                                                                            -- Lista degli obiettivi della quest
                                                                                                                                -- aggiungere un obiettivo per ogni coordinata richiesta                                       
        guid = "Questyno_[NomeCognomeNumero]_A",                                                                                -- ID dell'obiettivo                            
        text = "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_A",                                                                   -- Testo dell'obiettivo, seguire il pattern       
        hidden = false,                                                                                                         -- Obiettivo nascosto, il primo sempre false                  
        oncompleted = "removeclickevent;Evento[NomeCognomeNumero];additem;[NomeRichiesto];[NumeroRichiesto1];revealobjective;Questyno_[NomeCognomeNumero];2;clickevent;[Coordinate2]:Evento[NomeCognomeNumero]A;anim:loot:time:50;updateobjective:Questyno_[NomeCognomeNumero]:2:Completed",                
                                                                                                                                -- Codice che viene eseguito al completamento dell'obiettivo
                                                                                                                                -- in questo caso rimuove l'interazione, da l'item e aggiunge quella per il secondo obiettivo, rivelandolo
    }, {
        guid = "Questyno_[NomeCognomeNumero]_B",
        text = "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_B",
        hidden = true,                                                                                                         -- NB. dal secondo obiettivo in poi sono nascosti
        oncompleted = "removeclickevent;Evento[NomeCognomeNumero]A;additem;[NomeRichiesto];[NumeroRichiesto2];",               -- NB. l'ultimo obiettivo non ha bisogno di aggiungere un'interazione
    } },
    text = "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_Text",                                                            -- Testo della quest, seguire il pattern
    texture = "Item_[NomeIcona]",                                                                                       -- Icona che compare nel menu vicino alla quest
    title = "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_Title",                                                          -- Titolo della quest, seguire il pattern
    unlocks = "clickevent;[Coordinate1]:Evento[NomeCognomeNumero];time:50:anim:loot;updateobjective:Questyno_[NomeCognomeNumero]:1:Completed",   
                                                                                                                        -- Codice che viene eseguito allo sblocco della quest
                                                                                                                        -- in questo caso aggiunge l'interazione che aggiorna l'obiettivo
                                                                                                                        -- ATTENZIONE ALLE ";" E ":", MANTENERE IL PATTERN
    unlockedsound = "QuestUnlocked"                                                                                     -- Suono sblocco quest, sempre uguale
}
table.insert(SFQuest_Database.QuestPool, cognomeNumero);                                                                -- Inserisce la quest nel database delle quest

local cognomeNumeroA = {
    guid = "Questyno_[NomeCognomeNumero]_A",                                                                            -- ID della quest

    awardsrep = "LaResistenza;[NumeroReputazione]",                                                                     -- Reputazione che viene aggiunta al completamento della quest
                                                                                                                        -- c'è solo se la quest da reputazione
    awardsitem = "[NomeRicompensa];[NumeroRicompensa]",                                                                 -- Ricompensa che viene data al completamento della quest (vale anche per i soldi)
                                                                                                                        -- c'è solo se la quest da oggetti
                                                                                                                        -- in caso di ricompense multiple separare con ";", es. "Book;1;Money;10"
    awardsworld = "Questyno_[NomeCognome];SFQuest_Questyno_[NomeCognomeNumero+1]_Begin;Questyno_[NomeCognomeNumero+1]", -- Dialogo sbloccato al completamento della quest,
                                                                                                                        -- c'è solo se la quest fa parte di una catena,
    completesound = "levelup",                                                                                          -- Suono completamento quest, sempre uguale
    dailycode = "Questyno_HeatherThomas",                                                                               -- Codice che raggruppa i pool di quest daily
                                                                                                                        -- c'è solo se la quest fa parte di un pool di daily 
    lore = { "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_Lore" },                                                        -- Testo lore della quest, seguire il pattern
    needsitem = "[NomeRichiesto];[NumeroRichiesto]",                                                                    -- Item che viene richiesto per completare la quest
    onobtained = "unlockworldevent;Questyno_[NomeCognome];SFQuest_Questyno_[NomeCognomeNumero]_Complete",               -- Codice che viene eseguito all'ottenimento degli item richiesti
                                                                                                                        -- in questo caso sblocca sempre il dialogo per completare la quest
    text = "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_A_Text",                                                          -- Testo della quest, seguire il pattern (ATTENZIONE AL "_A")
    texture = "Item_[NomeIcona]",                                                                                       -- Icona che compare nel menu vicino alla quest
    title = "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_Title",                                                          -- Titolo della quest, seguire il pattern                                                                                 -- Su
}
table.insert(SFQuest_Database.QuestPool, cognomeNumeroA);                                                               -- Inserisce la quest nel database delle quest


--[[ Pattern 6:
    -   Caso Recupero Item Avanzato Parlando con NPC/Tile: Quest che richiede X item di Y tipi diversi,
        da recuperare parlando con un npc o interagendo con un tile a coordinate specifiche, 
        ottenuti gli item sblocca una seconda quest che completa effetivamente la quest e da la ricompensa
    es. Recupera 1 Base.Journal e 1 Base.Book per Elia Rima a 12420,1337,0
 ]]

local cognomeNumero = {
    guid = "Questyno_[NomeCognomeNumero]",                                                                              -- ID della quest

    awardstask = "Questyno_[NomeCognomeNumero]_A",                                                                      -- Quest che viene sbloccata al completamento della quest attuale
    dailycode = "Questyno_[NomeCognome]",                                                                               -- Codice che raggruppa i pool di quest daily
                                                                                                                        -- c'è solo se la quest fa parte di un pool di daily
    lore = { "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_Lore" },                                                        -- Testo lore della quest, seguire il pattern
    objectives = { {                                                                                                            -- Lista degli obiettivi della quest
                                                                                                                                -- aggiungere un obiettivo per la coordinata richiesta                                       
        guid = "Questyno_[NomeCognomeNumero]_A",                                                                                -- ID dell'obiettivo                            
        text = "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_A",                                                                   -- Testo dell'obiettivo, seguire il pattern       
        hidden = false,                                                                                                         -- Obiettivo nascosto, in questo caso sempre false                  
        oncompleted = "removeclickevent;Evento[NomeCognomeNumero];additem;[NomeRichiesto1];[NumeroRichiesto1];additem;[NomeRichiesto2];[NumeroRichiesto2]",                
                                                                                                                                -- Codice che viene eseguito al completamento dell'obiettivo
                                                                                                                                -- in questo caso rimuove l'interazione e da tutti gli item richiesti
    } },
    text = "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_Text",                                                            -- Testo della quest, seguire il pattern
    texture = "Item_[NomeIcona]",                                                                                       -- Icona che compare nel menu vicino alla quest
    title = "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_Title",                                                          -- Titolo della quest, seguire il pattern
    unlocks = "clickevent;[Coordinate]:Evento[NomeCognomeNumero];time:50:anim:loot;updateobjective:Questyno_[NomeCognomeNumero]:1:Completed",   
                                                                                                                        -- Codice che viene eseguito allo sblocco della quest
                                                                                                                        -- in questo caso aggiunge l'interazione che aggiorna l'obiettivo
                                                                                                                        -- ATTENZIONE ALLE ";" E ":", MANTENERE IL PATTERN
    unlockedsound = "QuestUnlocked"                                                                                     -- Suono sblocco quest, sempre uguale
}
table.insert(SFQuest_Database.QuestPool, cognomeNumero);                                                                -- Inserisce la quest nel database delle quest

local cognomeNumeroA = {
    guid = "Questyno_[NomeCognomeNumero]_A",                                                                            -- ID della quest

    awardstask = "Questyno_[NomeCognomeNumero]_B",                                                                      -- Quest che viene sbloccata al completamento della quest attuale
    dailycode = "Questyno_[NomeCognome]",                                                                               -- Codice che raggruppa i pool di quest daily
                                                                                                                        -- c'è solo se la quest fa parte di un pool di daily
    lore = { "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_Lore" },                                                        -- Testo lore della quest, seguire il pattern
    objectives = {{
        guid = "Questyno_[NomeCognomeNumero]_B",
        text = "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_B",
        hidden = false,
        needsitem = "[NomeRichiesto1];[NumeroRichiesto1]",
        onobtained = "updateobjective;Questyno_[NomeCognomeNumero]_A:1:Completed;removeitem;[NomeRichiesto3];[NumeroRichiesto3]"
    }, {
        guid = "Questyno_[NomeCognomeNumero]_C",
        text = "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_C",
        hidden = false,
        needsitem = "[NomeRichiesto2];[NumeroRichiesto2]",
        onobtained = "updateobjective;Questyno_[NomeCognomeNumero]_A:2:Completed;removeitem;[NomeRichiesto4];[NumeroRichiesto4]"
    } },
    text = "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_Text",                                                            -- Testo della quest, seguire il pattern
    texture = "Item_[NomeIcona]",                                                                                       -- Icona che compare nel menu vicino alla quest
    title = "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_Title",                                                          -- Titolo della quest, seguire il pattern
}
table.insert(SFQuest_Database.QuestPool, cognomeNumeroA);                                                               -- Inserisce la quest nel database delle quest

local cognomeNumeroB = {
    guid = "Questyno_[NomeCognomeNumero]_B",                                                                            -- ID della quest

    awardsrep = "LaResistenza;[NumeroReputazione]",                                                                     -- Reputazione che viene aggiunta al completamento della quest
                                                                                                                        -- c'è solo se la quest da reputazione
    awardsitem = "[NomeRicompensa];[NumeroRicompensa]",                                                                 -- Ricompensa che viene data al completamento della quest (vale anche per i soldi)
                                                                                                                        -- c'è solo se la quest da oggetti
                                                                                                                        -- in caso di ricompense multiple separare con ";", es. "Book;1;Money;10"
    awardsworld = "Questyno_[NomeCognome];SFQuest_Questyno_[NomeCognomeNumero+1]_Begin;Questyno_[NomeCognomeNumero+1]", -- Dialogo sbloccato al completamento della quest,
                                                                                                                        -- c'è solo se la quest fa parte di una catena,
    completesound = "levelup",                                                                                          -- Suono completamento quest, sempre uguale
    dailycode = "Questyno_[NomeCognome]",                                                                               -- Codice che raggruppa i pool di quest daily
                                                                                                                        -- c'è solo se la quest fa parte di un pool di daily 
    lore = { "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_Lore" },                                                        -- Testo lore della quest, seguire il pattern
    needsitem = "[NomeRichiesto];[NumeroRichiesto]",                                                                    -- Item che viene richiesto per completare la quest
    onobtained = "unlockworldevent;Questyno_[NomeCognome];SFQuest_Questyno_[NomeCognomeNumero]_Complete",               -- Codice che viene eseguito all'ottenimento degli item richiesti
                                                                                                                        -- in questo caso sblocca sempre il dialogo per completare la quest
    text = "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_B_Text",                                                          -- Testo della quest, seguire il pattern (ATTENZIONE AL "_A")
    texture = "Item_[NomeIcona]",                                                                                       -- Icona che compare nel menu vicino alla quest
    title = "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_Title",                                                          -- Titolo della quest, seguire il pattern                                                                                 -- Su
}
table.insert(SFQuest_Database.QuestPool, cognomeNumeroB);                                                               -- Inserisce la quest nel database delle quest

--[[ Pattern 7:
    -   Caso Recupero Item Avanzato Parlando con Multipli NPC/Tile: Quest che richiede X item di Y tipi diversi,
        da recuperare parlando con Z npc o interagendo con Z tile a coordinate specifiche, 
        ottenuti gli item sblocca una seconda quest che completa effetivamente la quest e da la ricompensa
    es. Recupera 1 Base.Journal a 12420,1337,0 e 1 Base.Book a 12042,1733,0 per Elia Rima  
 ]]

local cognomeNumero = {
    guid = "Questyno_[NomeCognomeNumero]",                                                                              -- ID della quest

    awardstask = "Questyno_[NomeCognomeNumero]_A",                                                                      -- Quest che viene sbloccata al completamento della quest attuale
    dailycode = "Questyno_[NomeCognome]",                                                                               -- Codice che raggruppa i pool di quest daily
                                                                                                                        -- c'è solo se la quest fa parte di un pool di daily
    lore = { "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_Lore" },                                                        -- Testo lore della quest, seguire il pattern
    objectives = { {                                                                                                            -- Lista degli obiettivi della quest
                                                                                                                                -- aggiungere un obiettivo per ogni coordinata richiesta                                       
        guid = "Questyno_[NomeCognomeNumero]_A",                                                                                -- ID dell'obiettivo                            
        text = "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_A",                                                                   -- Testo dell'obiettivo, seguire il pattern       
        hidden = false,                                                                                                         -- Obiettivo nascosto, in questo caso sempre false                  
        oncompleted = "removeclickevent;Evento[NomeCognomeNumero];additem;[NomeRichiesto1];[NumeroRichiesto1];revealobjective;Questyno_[NomeCognomeNumero];2;clickevent;[Coordinate2]:Evento[NomeCognomeNumero]A;anim:loot:time:50;updateobjective:Questyno_[NomeCognomeNumero]:2:Completed",                
                                                                                                                                -- Codice che viene eseguito al completamento dell'obiettivo
                                                                                                                                -- in questo caso rimuove l'interazione, da l'item e aggiunge quella per il secondo obiettivo, rivelandolo
    }, {
        guid = "Questyno_[NomeCognomeNumero]_B",
        text = "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_B",
        hidden = true,
        oncompleted = "removeclickevent;Evento[NomeCognomeNumero]A;additem;[NomeRichiesto2];[NumeroRichiesto2];",               -- NB. l'ultimo obiettivo non ha bisogno di aggiungere un'interazione
    } },
    text = "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_Text",                                                            -- Testo della quest, seguire il pattern
    texture = "Item_[NomeIcona]",                                                                                       -- Icona che compare nel menu vicino alla quest
    title = "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_Title",                                                          -- Titolo della quest, seguire il pattern
    unlocks = "clickevent;[Coordinate1]:Evento[NomeCognomeNumero];time:50:anim:loot;updateobjective:Questyno_[NomeCognomeNumero]:1:Completed",   
                                                                                                                        -- Codice che viene eseguito allo sblocco della quest
                                                                                                                        -- in questo caso aggiunge l'interazione che aggiorna l'obiettivo
                                                                                                                        -- ATTENZIONE ALLE ";" E ":", MANTENERE IL PATTERN
    unlockedsound = "QuestUnlocked"                                                                                     -- Suono sblocco quest, sempre uguale
}
table.insert(SFQuest_Database.QuestPool, cognomeNumero);                                                                -- Inserisce la quest nel database delle quest

local cognomeNumeroA = {
    guid = "Questyno_[NomeCognomeNumero]_A",                                                                            -- ID della quest

    awardstask = "Questyno_[NomeCognomeNumero]_B",                                                                      -- Quest che viene sbloccata al completamento della quest attuale
    dailycode = "Questyno_[NomeCognome]",                                                                               -- Codice che raggruppa i pool di quest daily
                                                                                                                        -- c'è solo se la quest fa parte di un pool di daily
    lore = { "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_Lore" },                                                        -- Testo lore della quest, seguire il pattern
    objectives = { {                                                                                                            -- Lista degli obiettivi della quest
                                                                                                                                -- aggiungere un obiettivo per ogni tipo di item richiesto                                       
        guid = "Questyno_[NomeCognomeNumero]_C",                                                                                -- ID dell'obiettivo   (ATTENZIONE CHE SIA DIVERSO DAGLI OBIETTIVI PRECEDENTI)                         
        text = "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_C",                                                                   -- Testo dell'obiettivo, seguire il pattern       
        hidden = false,                                                                                                         -- Obiettivo nascosto, in questo caso sempre false                  
        needsitem = "[NomeRichiesto1];[NumeroRichiesto1]",                                                                      -- Item che viene richiesto per completare l'obiettivo
        onobtained = "updateobjective;Questyno_[NomeCognomeNumero]_A:1:Completed;removeitem;[NomeRichiesto1];[NumeroRichiesto1]"    -- Codice che viene eseguito all'ottenimento degli item richiesti
                                                                                                                                    -- in questo caso aggiorna l'obiettivo e rimuove gli item richiesti
    }, {
        guid = "Questyno_[NomeCognomeNumero]_D",
        text = "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_D",
        hidden = false,
        needsitem = "[NomeRichiesto2];[NumeroRichiesto2]",
        onobtained = "updateobjective;Questyno_[NomeCognomeNumero]_A:2:Completed;removeitem;[NomeRichiesto2];[NumeroRichiesto2]"
    } },
    text = "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_A_Text",                                                          -- Testo della quest, seguire il pattern (ATTENZIONE AL "_B")
    texture = "Item_[NomeIcona]",                                                                                       -- Icona che compare nel menu vicino alla quest
    title = "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_Title",                                                          -- Titolo della quest, seguire il pattern                                                                                 -- Su
}
table.insert(SFQuest_Database.QuestPool, cognomeNumeroA);                                                               -- Inserisce la quest nel database delle quest

local congomeNumeroB = {
    guid = "Questyno_[NomeCognomeNumero]_B",                                                                            -- ID della quest

    awardsrep = "LaResistenza;[NumeroReputazione]",                                                                     -- Reputazione che viene aggiunta al completamento della quest
                                                                                                                        -- c'è solo se la quest da reputazione
    awardsitem = "[NomeRicompensa];[NumeroRicompensa]",                                                                 -- Ricompensa che viene data al completamento della quest (vale anche per i soldi)
                                                                                                                        -- c'è solo se la quest da oggetti
                                                                                                                        -- in caso di ricompense multiple separare con ";", es. "Book;1;Money;10"
    awardsworld = "Questyno_[NomeCognome];SFQuest_Questyno_[NomeCognomeNumero+1]_Begin;Questyno_[NomeCognomeNumero+1]", -- Dialogo sbloccato al completamento della quest,
                                                                                                                        -- c'è solo se la quest fa parte di una catena,
    completesound = "levelup",                                                                                          -- Suono completamento quest, sempre uguale
    dailycode = "Questyno_[NomeCognome]",                                                                               -- Codice che raggruppa i pool di quest daily
                                                                                                                        -- c'è solo se la quest fa parte di un pool di daily 
    lore = { "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_Lore" },                                                        -- Testo lore della quest, seguire il pattern
    unlocks = "unlockworldevent;Questyno_[NomeCognome];SFQuest_Questyno_[NomeCognomeNumero]_Complete",                  -- Codice che viene eseguito allo sblocco della quest
                                                                                                                        -- in questo caso sblocca sempre il dialogo per completare la quest
    text = "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_B_Text",                                                          -- Testo della quest, seguire il pattern (ATTENZIONE AL "_B")
    texture = "Item_[NomeIcona]",                                                                                       -- Icona che compare nel menu vic
    title = "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_Title",                                                          -- Titolo della quest, seguire il pattern                                                                                 -- Su
}
table.insert(SFQuest_Database.QuestPool, congomeNumeroB);                                                               -- Inserisce la quest nel database delle quest


--                                                              *** 2) dialoghyni_NOME.lua ***

--[[ Pattern 1:
    -   Caso Dialogo Base: Dialogo che sblocca il completamento della quest
        tendenzialmente è la prima quest di una catena o l'intro di un NPC daily
        es. Parla con Elia Rima per sbloccare le sue quest daily.            
 ]]

 table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_[NomeCognome]_Intro_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_[NomeCognome]_Intro", text = "IGUI_SFQuest_Questyno_[NomeCognome]_Intro_Complete_Text"})

--[[ Pattern 2:
    -   Caso Dialogo Inizio Fine: Due Dialoghi, il primo che opzionalmente fa partire una quest
        e il secondo che completa la quest
        es. * Parla con Elia Rima per iniziare la sua quest daily. 
            * Parla con Elia Rima per completare la sua quest daily.   
            
            ATTENZIONE: se la quest è composta da più sotto quest,
            il dialogo di completamento completa l'ultimo guid. 
            es. command = "completequest;Questyno_[NomeCognomeNumero]_A" -> se la quest è composta da 2 sotto quest

]]

table.insert(SFQuest_Database.DialoguePool, {dialoguecode = "SFQuest_Questyno_[NomeCognomeNumero]_Begin", context = "ContextMenu_WorldEvent_TalkTo", command = "unlockquest;Questyno_[NomeCognomeNumero]", optional = true, text = "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_Begin_Text", textaccepted = "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_Begin_Text_Accepted",textdeclined = "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_Begin_Text_Declined"})
table.insert(SFQuest_Database.DialoguePool, { dialoguecode = "SFQuest_Questyno_[NomeCognomeNumero]_Complete", context = "ContextMenu_WorldEvent_TalkTo", command = "completequest;Questyno_[NomeCognomeNumero]", text = "IGUI_SFQuest_Questyno_[NomeCognomeNumero]_Complete"})


--                                                             *** 3) questyno_pools.lua ***

-- Pattern Quest Catene
-- A) Aggiungere il dialogo di intro della catena
table.insert(SFQuest_Database.StartingPool, { quest = "Questyno_[NomeCognome]_Intro" })

-- Pattern Quest Daily
-- A) Aggiungere una table contenente tutte le quest che fanno parte del pool di un npc dentro la table Questyno
Questyno = {
--    [...]
        NomeCognome = {
            "Questyno_[NomeCognome];SFQuest_Questyno_[NomeCognomeNumero]_Begin;Questyno_[NomeCognomeNumero]",
            --[...]
        }
}
-- B) Aggiungere la definizione del pool al database delle quest
table.insert(SFQuest_Database.DailyEventPool, {
    dailycode = "Questyno_[NomeCognome]",                                                   -- Codice che raggruppa i pool di quest daily
    condition = "notmaxedwithcode;Questyno_[NomeCognome];1",                                -- Condizione per far partire la quest
    commands = "randomcodedworldfrompool;Questyno_[NomeCognome];Questyno;[NomeCognome]",    -- Codice che viene eseguito al callback del tempo passato
                                                                                            -- in questo caso sblocca una quest random del pool
    days = 0,                                                                               -- Giorni di sopravvivenza per sbloccare le daily
    frequency = 1                                                                           -- Cool down in giorni per sbloccare le daily
})
-- C) Aggiungere il dialogo di sblocco delle daily
table.insert(SFQuest_Database.StartingPool, { quest = "Questyno_[NomeCognome]_Intro" })
-- D) Aggiungere il pool alla rotazione delle daily
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_[NomeCognome]" })


--                                                             *** 4) IG_UI_EN.txt ***

-- Pattern Testo Intro
--[[
    IGUI_SFQuest_Questyno_[NomeCognome]_Intro_Title = "todo",
    IGUI_SFQuest_Questyno_[NomeCognome]_Intro_Text = "todo",
    IGUI_SFQuest_Questyno_[NomeCognome]_Intro_Lore = "todo",
    IGUI_SFQuest_Questyno_[NomeCognome]_Intro_Complete_Text = "todo",
    IGUI_SFQuest_Questyno_[NomeCognome]_Intro_Complete_Text_Accepted = "todo",
]]--

-- Pattern 2 Testo Inizio Fine
--[[
    IGUI_SFQuest_Questyno_[NomeCognomeNumero]_Title = "todo",
    IGUI_SFQuest_Questyno_[NomeCognomeNumero]_Text = "todo",
    IGUI_SFQuest_Questyno_[NomeCognomeNumero]_Lore = "todo",
    IGUI_SFQuest_Questyno_[NomeCognomeNumero]_Begin_Text = "todo",
    IGUI_SFQuest_Questyno_[NomeCognomeNumero]_Begin_Text_Accepted = "todo",
    IGUI_SFQuest_Questyno_[NomeCognomeNumero]_Begin_Text_Declined = "todo",
    IGUI_SFQuest_Questyno_[NomeCognomeNumero]_Complete = "todo",
]]

-- Pattern 3 - 4 - 5
--[[
    IGUI_SFQuest_Questyno_AngelicaStella10_Title = "todo",
    IGUI_SFQuest_Questyno_AngelicaStella10_Text = "todo",
    IGUI_SFQuest_Questyno_AngelicaStella10_Lore = "todo",
    IGUI_SFQuest_Questyno_AngelicaStella10_Begin_Text = "todo",
    IGUI_SFQuest_Questyno_AngelicaStella10_Begin_Text_Accepted = "todo",
    IGUI_SFQuest_Questyno_AngelicaStella10_Begin_Text_Declined = "todo",
    IGUI_SFQuest_Questyno_AngelicaStella10_Complete = "todo",
    IGUI_SFQuest_Questyno_AngelicaStella10_A = "todo",
    IGUI_SFQuest_Questyno_AngelicaStella10_B = "todo",
                [...] - in caso di più obiettivi
    IGUI_SFQuest_Questyno_AngelicaStella10_A_Text = "todo",    
]]

-- Pattern 6 - 7
--[[
    IGUI_SFQuest_Questyno_AngelicaStella10_Title = "todo",
    IGUI_SFQuest_Questyno_AngelicaStella10_Text = "todo",
    IGUI_SFQuest_Questyno_AngelicaStella10_Lore = "todo",
    IGUI_SFQuest_Questyno_AngelicaStella10_Begin_Text = "todo",
    IGUI_SFQuest_Questyno_AngelicaStella10_Begin_Text_Accepted = "todo",
    IGUI_SFQuest_Questyno_AngelicaStella10_Begin_Text_Declined = "todo",
    IGUI_SFQuest_Questyno_AngelicaStella10_Complete = "todo",
    IGUI_SFQuest_Questyno_AngelicaStella10_A = "todo",
    IGUI_SFQuest_Questyno_AngelicaStella10_B = "todo",
                [...] - in caso di più obiettivi nella prima quest
    IGUI_SFQuest_Questyno_AngelicaStella10_A_Text = "todo",
    IGUI_SFQuest_Questyno_AngelicaStella10_C = "todo",
    IGUI_SFQuest_Questyno_AngelicaStella10_D = "todo",
                [...] - in caso di più obiettivi nella seconda quest
    IGUI_SFQuest_Questyno_AngelicaStella10_B_Text = "todo",    
]]
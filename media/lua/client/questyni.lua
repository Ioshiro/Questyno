require 'SFQuest_Database'


--[[
    QUEST 1: PARTI DA NPC X, VAI IN ZONA Y, PARTE IL CONTEGGIO DEGLI ZOMBIE FINO A ***
    SPAWNA OGGETTO DA PORTARE A NPC Y, RICEVI ITEM DA PORTARE A NPC X E RICEVI RICOMPENSA
]]

-- Definizione quest
local testyno = {
    guid = "Questyno_Test1", -- ID univoco della quest

    awardsitem = "Base.Money;42;Base.Burger;2", -- Da oggetti
    awardslore = "IGUI_SFQuest_Questyno_Test1_Lore_Award", -- Sblocca una pagina di lore
    awardsrep = "LaResistenza;69", -- Da punti reputazione ad una fazione
    --awardstask = "Guid_Quest" -- Sblocca un'altra quest
    --awardsworld = "SFQuest_Questyno_NPCX_Dialogo" -- Sblocca un dialogo con un npc
    completesound = "levelup", -- Suono da riprodurre al completamento della quest
    dailycode = "1", -- Codice giornaliero della quest (stesso codice crea pool random da cui viene presa una quest giornaliera)
    lore = {"IGUI_SFQuest_Questyno_Test1_Lore"}, -- Pagina di lore sbloccata dalla quest
    needsitem = "Base.Pizza;1", -- Oggetti richiesti per completare la quest, accetta tag:
                                -- Tag# accetta qualsiasi item che abbia il tag. Es: "tag#Egg;12".
                                -- TagPredicateBigFish# accetta pesce fresco di una certa taglia.
                                -- TagPredicateCondition# accetta armi con  una certa condizione.
                                -- TagPredicateFreshFood# accetta cibo fresco.
                                -- TagPredicateFullDrainable# accetta contenitori completamente pieni
    objectives = {{      -- Tavola degli obiettivi, devono essere completati tutti per completare la quest, ma non per forza in ordine (probabilmente per farle in ordine bisogna fare più quest)
                        --"1.arriva nella stanza (non va)
                        -- 2. uccidi tot zombie e ricevi item (actionevent:killzombies:2:additem:Base.TunaTin) 
                        -- 3. porta item da npc2 e ricevi item 
                        -- 4. torna da npc1 con item", 
   --     guid = "Questyno_Test1_Objective1", -- ID univoco dell'obiettivo
   --     text = "IGUI_SFQuest_Questyno_Test1_Objective1_Text", -- Testo dell'obiettivo (breve descrizione nella lista quest)
    --    hidden = false, -- Se TRUE, l'obiettivo non viene mostrato nella lista quest
     --   lore = {"IGUI_SFQuest_Questyno_Test1_Lore"},
      --  oncompleted = "revealobjective:Questyno_Test1:2;actionevent:killzombies:2:updateobjectivestatus:Questyno_Test1:2:Completed" -- lista di comandi da eseguire al completamento dell'obiettivo
    --}, {
        guid = "Questyno_Test1_Objective2",
        text = "IGUI_SFQuest_Questyno_Test1_Objective2_Text",
        hidden = false,
        oncompleted = "updatequeststatus:Questyno_Test1:Done" -- additem;Base.TunaTin;1;playersay:SFQuest_Questyno_Test1_Objective2_Playersay
    },{
        guid = "Questyno_Test1_Objective3",
        text = "IGUI_SFQuest_Questyno_Test1_Objective3_Text",
        hidden = false,
        needsitem = "Base.TunaTin;1",
        oncompleted = "revealobjective:Questyno_Test1:3;additem:Base.Pizza;1"
    },{
        guid = "Questyno_Test1_Objective4",
        text = "IGUI_SFQuest_Questyno_Test1_Objective4_Text",
        hidden = true,
        oncompleted = "completequest:Questyno_Test1"
    }},
    --ondone = "comandi", -- lista di comandi da eseguire al completamento della quest
    --onobtained = "actionevent:killzombies:2;updateobjectivestatus:Questyno_Test1:2:Completed;playersay:SFQuest_Questyno_Test1_Objective1_Playersay", -- lista di comandi da eseguire al ottenimento della quest
    -- unlockroom;13839x1534x0; non va pare
    unlocks = "actionevent;killzombies:2;updateobjectivestatus:Questyno_Test1:1:Completed",
    text = "IGUI_SFQuest_Questyno_Test1_Text", -- Testo della quest (breve descrizione nella lista quest)
    texture = "Item_Pizza", -- Texture (icona) da mostrare nella lista quest
    title = "IGUI_SFQuest_Questyno_Test1_Title", -- Titolo della quest (nome nella lista quest)
    unique = true, -- Se TRUE, la quest può essere completata solo una volta
    unlockedsound = "QuestUnlocked" -- Suono da riprodurre quando la quest viene accettata
    --updates = "Guid_Quest" -- Sblocca un aggiornamento per una quest
}
--table.insert(SFQuest_Database.QuestPool, testyno);

--[[                            *** LISTA COMANDI ***
                
    - actionevent: aggiunge una condizione che verrà checkata ogni 10 min
                    quando la condizione viene soddisfatta, lancia una lista di comandi
                    esempio condizione: "killzombies:25"
                    esempio comando: "spawnitem:Base.Pizza;1"
    - addmannequin: aggiunge un manichino, deve essere inserito nella lista dei manichini
                    esempio comando: "addmannequin:Base.MannequinMale"(?) 
                    parametro: squaretag (stringa con x,y,z)
    - additem: aggiunge un item al giocatore
                    esempio comando: "additem:Base.Pizza;1"
                    parametro: item (stringa con itemname;quantity)
    - clickevent: aggiunge un evento al click di uno square
                    parametri: squaretag e id unico dell'evento
                    es: "12000x7500x0:MyUniqueClickEvent", timed action separate da :
                    es: "time:50:anim:loot", e una lista di comandi, ogni parametro separato da ; (???)
    - lore: sblocca una pagina di lore
                    esempio comando: "lore:SFQuest_Questyno_Test1_Lore_Award"
                    parametro: lorename (stringa con nome della pagina di lore)
    - playersay: fa dire qualcosa al giocatore
                    esempio comando: "playersay:SFQuest_Questyno_Test1_Text"
                    parametro: text (stringa con nome del testo)
    - randomcodeworldfrompool: prende un evento random da un pool di eventi
                    esempio comando: "randomcodeworldfrompool:42"
                    parametro: dailycode (stringa con codice del pool) più altro
    - removeclickevent: rimuove un evento al click di uno square
                    parametri: id unico dell'evento
                    es: "removeclickevent:MyUniqueClickEvent"
    -removemannequin: rimuove un manichino
                    esempio comando: "removemannequin:5000x800x0"
                    parametro: squaretag (stringa con x,y,z)
    - revealobjective: rivela un obiettivo
                    esempio comando: "revealobjective:SFQuest_Questyno_Test1_Objective1,1"
                    parametro: objective (stringa con nome dell'obiettivo) + indice nella lista
    - timer: aggiunge un timer
                    esempio comando: "timer:SFQuest_Questyno_Test1_Timer1"
                    parametro: timername (stringa con nome del timer)
    - updatequeststatus: aggiorna lo stato della quest
                    esempio comando: "updatequeststatus:SFQuest_Questyno_Test1:done"
                    parametro: questname (stringa con nome della quest) + stato (done, obtained, completed)
    - updateobjective: aggiorna lo stato di un obiettivo
                    esempio comando: "updateobjective:SFQuest_Questyno_Test1:1:done"
                    parametro: guid quest + indice nella lista + stato (done, obtained, completed)
    - updateobjectivetext: aggiorna il testo di un obiettivo
                    esempio comando: "updateobjectivetext:SFQuest_Questyno_Test1_Objective1:1:SFQuest_Questyno_Test1_Objective1_Text"
                    parametro: objective (stringa con nome dell'obiettivo) + indice nella lista + testo
    - unlockroom: attiva un trigger di comandi quando si entra in una stanza della mappa
                    esempio comando: "unlockroom:5000x800x0:lista_comandi"
                    parametro: squaretag (stringa con x,y,z) + lista di comandi
    - unlockworldevent: sblocca il rightclick su un npc per far partire un dialogo
                    esempio comando: "unlockworldevent:5000x800x0:SFQuest_Questyno_NPCX_Dialogo"(? manca nella documentazione)


]]

--[[                            ***RIGHTCLICK EVENTS***
            Ogni evento rightclick è legato ad uno square  sulla mappa
            però più di un evento possono stare sullo stesso square
            si possono aggiungere con il clickevent command o dallo starting pool

            ogni parametro è saparato da ;
            il primo parametro è lo square tag più l'id univoco dell'evento
            es: "800x600x0:MyUniqueClickEvent"

            il secondo parametro include una lista di timed action seprata da :
            anim: animazione da eseguire (anim:Loot)
            animvar: variabile di certe animazioni (animvar:LootPosition:Low)
            time: tempo di esecuzione in chissà cosa (time:10)
            es: "anim:Loot:time:50"

            il terzo parametro è una lista di comandi separati da :
            che verranno eseguiti alla fine dell'animazione
]]











--[[                        *** SEZIONE 1: QUEST PER SOLDI ***
            Elenco:
                intro. parla con ioshi per sbloccare la prima quest
                1.  10 soldi per una pizza
                2.  100 soldi per un generatore
                3.  25 soldi per un piede di porco
                4.  50 soldi per un'ascia
                5.  100 soldi per foglio esperienza
                6.  25 soldi per ticket safehouse
                7.  50 soldi per 2 pipe bomb
                8.  30 soldi per 3 scatole di chiodi
                9.  500 soldi per pharmacy book
                10. 100 soldi per 1 arma da fuoco random (in verità questa sono tre quest con stesso dialogo e titolo, però danno tre reward diversi)
                    10a. 100 soldi per pistola
                    10b. 100 soldi per fucile a pompa
                    10c. 100 soldi per revolver
]]
local moneyIntro = {
    guid = "Questyno_Money_Intro",

    awardsrep = "LaResistenza;1",                           -- REP REWARD
    completesound = "levelup",
    lore = {"IGUI_SFQuest_Questyno_Money_Intro_Lore"},
    ondone = "randomcodedworldfrompool;Questyno_Money;Questyno;Money",
    text = "IGUI_SFQuest_Questyno_Money_Intro_Text",
    texture = "Item_Money",
    unique = true,
    title = "IGUI_SFQuest_Questyno_Money_Intro_Title",
}
--table.insert(SFQuest_Database.QuestPool, moneyIntro);

local moneyQuest1 ={
    guid = "Questyno_Money1",

    awardsitem = "Base.Pizza;1",                            -- REWARD
    awardsrep = "LaResistenza;5",                           -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_Money",
    lore = {"IGUI_SFQuest_Questyno_Money1_Lore"},
    needsitem = "Money;10",                            -- REQUIRE
    onobtained = "unlockworldevent;Questyno_Pynocchio;SFQuest_Questyno_Money1_Complete",
    text = "IGUI_SFQuest_Questyno_Money1_Text",
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_Money1_Title",
    unlockedsound = "QuestUnlocked"
}
--table.insert(SFQuest_Database.QuestPool, moneyQuest1);

local moneyQuest2 ={
    guid = "Questyno_Money2",

    awardsitem = "Base.Generator",                          -- REWARD
    awardsrep = "LaResistenza;10",                          -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_Money",
    lore = {"IGUI_SFQuest_Questyno_Money2_Lore"},
    needsitem = "Money;100",                           -- REQUIRE
    onobtained = "unlockworldevent;Questyno_Pynocchio;SFQuest_Questyno_Money2_Complete",
    text = "IGUI_SFQuest_Questyno_Money2_Text",
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_Money2_Title",
    unlockedsound = "QuestUnlocked"
}
--table.insert(SFQuest_Database.QuestPool, moneyQuest2);

local moneyQuest3 ={
    guid = "Questyno_Money3",

    awardsitem = "Base.Crowbar",                            -- REWARD
    awardsrep = "LaResistenza;5",                           -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_Money",
    lore = {"IGUI_SFQuest_Questyno_Money3_Lore"},
    needsitem = "Money;25",                            -- REQUIRE
    onobtained = "unlockworldevent;Questyno_Pynocchio;SFQuest_Questyno_Money3_Complete",
    text = "IGUI_SFQuest_Questyno_Money3_Text",
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_Money3_Title",
    unlockedsound = "QuestUnlocked"
}
--table.insert(SFQuest_Database.QuestPool, moneyQuest3);

local moneyQuest4 ={
    guid = "Questyno_Money4",

    awardsitem = "Base.Axe",                                -- REWARD
    awardsrep = "LaResistenza;10",                          -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_Money",
    lore = {"IGUI_SFQuest_Questyno_Money4_Lore"},
    needsitem = "Money;50",                            -- REQUIRE
    onobtained = "unlockworldevent;Questyno_Pynocchio;SFQuest_Questyno_Money4_Complete",
    text = "IGUI_SFQuest_Questyno_Money4_Text",
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_Money4_Title",
    unlockedsound = "QuestUnlocked"
}
--table.insert(SFQuest_Database.QuestPool, moneyQuest4);

local moneyQuest5 ={
    guid = "Questyno_Money5",

    awardsitem = "MoneyToXP.100XPTraining",                 -- REWARD
    awardsrep = "LaResistenza;10",                          -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_Money",
    lore = {"IGUI_SFQuest_Questyno_Money5_Lore"},
    needsitem = "Money;100",                           -- REQUIRE
    onobtained = "unlockworldevent;Questyno_Pynocchio;SFQuest_Questyno_Money5_Complete",
    text = "IGUI_SFQuest_Questyno_Money5_Text",
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_Money5_Title",
    unlockedsound = "QuestUnlocked"
}
--table.insert(SFQuest_Database.QuestPool, moneyQuest5);

local moneyQuest6 ={
    guid = "Questyno_Money6",

    awardsitem = "MoneyToXP.SafehouseTicket",               -- REWARD
    awardsrep = "LaResistenza;5",                           -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_Money",
    lore = {"IGUI_SFQuest_Questyno_Money6_Lore"},
    needsitem = "Money;25",                            -- REQUIRE
    onobtained = "unlockworldevent;Questyno_Pynocchio;SFQuest_Questyno_Money6_Complete",
    text = "IGUI_SFQuest_Questyno_Money6_Text",
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_Money6_Title",
    unlockedsound = "QuestUnlocked"
}
--table.insert(SFQuest_Database.QuestPool, moneyQuest6);

local moneyQuest7 ={
    guid = "Questyno_Money7",

    awardsitem = "Base.PipeBomb;2",                         -- REWARD
    awardsrep = "LaResistenza;10",                          -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_Money",
    lore = {"IGUI_SFQuest_Questyno_Money7_Lore"},
    needsitem = "Money;50",                            -- REQUIRE
    onobtained = "unlockworldevent;Questyno_Pynocchio;SFQuest_Questyno_Money7_Complete",
    text = "IGUI_SFQuest_Questyno_Money7_Text",
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_Money7_Title",
    unlockedsound = "QuestUnlocked"
}
--table.insert(SFQuest_Database.QuestPool, moneyQuest7);

local moneyQuest8 ={
    guid = "Questyno_Money8",

    awardsitem = "Base.NailsBox;3",                         -- REWARD
    awardsrep = "LaResistenza;5",                           -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_Money",
    lore = {"IGUI_SFQuest_Questyno_Money8_Lore"},
    needsitem = "Money;30",                            -- REQUIRE
    onobtained = "unlockworldevent;Questyno_Pynocchio;SFQuest_Questyno_Money8_Complete",
    text = "IGUI_SFQuest_Questyno_Money8_Text",
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_Money8_Title",
    unlockedsound = "QuestUnlocked"
}
--table.insert(SFQuest_Database.QuestPool, moneyQuest8);

local moneyQuest9 ={
    guid = "Questyno_Money9",

    awardsitem = "Base.BookCarpentry5;2",                   -- REWARD
    awardsrep = "LaResistenza;10",                          -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_Money",
    lore = {"IGUI_SFQuest_Questyno_Money9_Lore"},
    needsitem = "Money;100",                           -- REQUIRE
    onobtained = "unlockworldevent;Questyno_Pynocchio;SFQuest_Questyno_Money9_Complete",
    text = "IGUI_SFQuest_Questyno_Money9_Text",
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_Money9_Title",
    unlockedsound = "QuestUnlocked"
}
--table.insert(SFQuest_Database.QuestPool, moneyQuest9);

local moneyQuest10_random1 ={
    guid = "Questyno_Money10_random1",

    awardsitem = "Base.Pistol",                             -- REWARD
    awardsrep = "LaResistenza;10",                          -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_Money",
    lore = {"IGUI_SFQuest_Questyno_Money10_Lore"},
    needsitem = "Money;100",                           -- REQUIRE
    onobtained = "unlockworldevent;Questyno_Pynocchio;SFQuest_Questyno_Money10_random1_Complete",
    text = "IGUI_SFQuest_Questyno_Money10_Text",
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_Money10_Title",
    unlockedsound = "QuestUnlocked"
}
--table.insert(SFQuest_Database.QuestPool, moneyQuest10_random1);

local moneyQuest10_random2 ={
    guid = "Questyno_Money10_random2",

    awardsitem = "Base.Shotgun",                            -- REWARD
    awardsrep = "LaResistenza;10",                          -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_Money",
    lore = {"IGUI_SFQuest_Questyno_Money10_Lore"},
    needsitem = "Money;100",                           -- REQUIRE
    onobtained = "unlockworldevent;Questyno_Pynocchio;SFQuest_Questyno_Money10_random2_Complete",
    text = "IGUI_SFQuest_Questyno_Money10_Text",
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_Money10_Title",
    unlockedsound = "QuestUnlocked"
}
--table.insert(SFQuest_Database.QuestPool, moneyQuest10_random2);

local moneyQuest10_random3 ={
    guid = "Questyno_Money10_random3",

    awardsitem = "Base.Revolver",                           -- REWARD
    awardsrep = "LaResistenza;10",                          -- REP REWARD
    completesound = "levelup",
    dailycode = "Questyno_Money",
    lore = {"IGUI_SFQuest_Questyno_Money10_Lore"},
    needsitem = "Money;100",                           -- REQUIRE
    onobtained = "unlockworldevent;Questyno_Pynocchio;SFQuest_Questyno_Money10_random3_Complete",
    text = "IGUI_SFQuest_Questyno_Money10_Text",
    texture = "Item_Money",
    title = "IGUI_SFQuest_Questyno_Money10_Title",
    unlockedsound = "QuestUnlocked"
}
--table.insert(SFQuest_Database.QuestPool, moneyQuest10_random3);

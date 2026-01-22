-- registries.lua
-- Caricato automaticamente dal gioco su client E server
-- PRIMA del caricamento degli script degli item (ScriptManager.Load)
--
-- IMPORTANTE: Questo file DEVE essere in media/registries.lua (NON in lua/shared/)
-- Il gioco lo cerca automaticamente e lo esegue prima di qualsiasi altro script Lua.

-- Tabella globale per i tag custom di Questyno
QuestynoTags = QuestynoTags or {}

-- Registrazione tag custom con namespace questyno:
-- NOTA: I tag DEVONO avere un namespace (es. "questyno:") per evitare conflitti
-- Il namespace "base:" e' riservato al gioco vanilla

-- Abbigliamento e accessori
QuestynoTags.ARMYBOOTS = ItemTag.register("questyno:armyboots")
QuestynoTags.BANDANA = ItemTag.register("questyno:bandana")
QuestynoTags.LONGDRESS = ItemTag.register("questyno:longdress")
QuestynoTags.HOODIEWHITE = ItemTag.register("questyno:hoodiewhite")
QuestynoTags.HAWAIIANSHIRT = ItemTag.register("questyno:hawaiianshirt")
QuestynoTags.CALZAMAGLIA = ItemTag.register("questyno:calzamaglia")

-- Gioielli
QuestynoTags.GOLDEN = ItemTag.register("questyno:golden")
QuestynoTags.WATCHLUXURY = ItemTag.register("questyno:watchluxury")

-- Strumenti musicali
QuestynoTags.GUITARELECTRICBASS = ItemTag.register("questyno:guitarelectricbass")

-- Cibo e acqua
QuestynoTags.FULLWATERBOTTLE = ItemTag.register("questyno:fullwaterbottle")
QuestynoTags.MUSHROOM = ItemTag.register("questyno:mushroom")

-- Pesce
QuestynoTags.CATFISH = ItemTag.register("questyno:catfish")
QuestynoTags.PERCH = ItemTag.register("questyno:perch")
QuestynoTags.TROUT = ItemTag.register("questyno:trout")

-- Oggetti vari
QuestynoTags.PENNA = ItemTag.register("questyno:penna")
QuestynoTags.BOTTIGLIAVETRO = ItemTag.register("questyno:bottigliavetro")
QuestynoTags.BOTTIGLIA_PLASTICA = ItemTag.register("questyno:bottiglia_plastica")
QuestynoTags.ASCIUGAMANO = ItemTag.register("questyno:asciugamano")
QuestynoTags.MANNEQUIN = ItemTag.register("questyno:mannequin")

-- TAD (The Art of Dance) tags - mantenuti per compatibilita
TAD = TAD or {}
TAD.TAG_DanceMag  = ItemTag.register("tad:dancemag")
TAD.TAG_DanceCard = ItemTag.register("tad:dancecard")
TAD.TAG_CardGiver = ItemTag.register("tad:cardgiver")

print("[Questyno] ItemTags registrati con successo")

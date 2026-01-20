local SFQuest_Utils = require "utils/SFQuest_Utils"
local SFQuest_Calendar = require("utils/SFQuest_Calendar")

SF_MissionPanel = SF_MissionPanel or ISPanelJoypad:derive("SF_MissionPanel");


function SF_MissionPanel:checkDefaults()
    local prog = self.player:getModData().missionProgress
    if not prog then return end

    if prog.Factions then
        for i, v in ipairs(prog.Factions) do
            -- ATTENZIONE: le due liste devono essere ordinate nello stesso ordine, e bisogna usare ipairs per le table indicizzate!
            if v.factioncode == SFQuest_Database.FactionPool[i].factioncode then
                if v.tierlevel > 1 then
                    local tier = SFQuest_Database.FactionPool[i].tiers[v.tierlevel];
                    v.tiername = tier.tiername
                    v.tiercolor = tier.barcolor
                end
            end
        end
    end

    if prog.DailyEvent then
        for i, v in ipairs(prog.DailyEvent) do
            -- ATTENZIONE: le due liste devono essere ordinate nello stesso ordine, e bisogna usare ipairs per le table indicizzate!
            if v.dailycode == SFQuest_Database.DailyEventPool[i].dailycode then
                v.condition = SFQuest_Database.DailyEventPool[i].condition
            end
        end
    end
end

function SF_MissionPanel:readCommandTable(commandTable, questName)
    if false then
        base_SF_MissionPanel_readCommandTable(self, commandTable);
    end
    local player = getPlayer();
    local count = 1;

    while commandTable[count] do
        if commandTable[count] == "actionevent" then
            SF_MissionPanel.instance:runCommand("actionevent", commandTable[count + 1], commandTable[count + 2]);
            count = count + 3;
        elseif commandTable[count] == "additem" then
            SF_MissionPanel.instance:runCommand("additem", commandTable[count + 1], tonumber(commandTable[count + 2]));
            count = count + 3;
        elseif commandTable[count] == "addmannequin" then
            SF_MissionPanel.instance:runCommand("addmannequin", commandTable[count + 1]);
            count = count + 2;
        elseif commandTable[count] == "addserverpoints" then
            SF_MissionPanel.instance:runCommand("addserverpoints", tonumber(commandTable[count + 1]));
            count = count + 2;
        elseif commandTable[count] == "removeitem" then
            SF_MissionPanel.instance:runCommand("removeitem", commandTable[count + 1], tonumber(commandTable[count + 2]), questName);
            count = count + 3;
        elseif commandTable[count] == "addreputation" then
            SF_MissionPanel.instance:runCommand("addreputation", commandTable[count + 1],
                tonumber(commandTable[count + 2]));
            count = count + 3;
        elseif commandTable[count] == "changefrequency" then
            SF_MissionPanel.instance:runCommand("changefrequency", commandTable[count + 1],
                tonumber(commandTable[count + 2]));
            count = count + 3;
        elseif commandTable[count] == "call" then
            local callguid = commandTable[count + 1];
            table.insert(player:getModData().missionProgress.Calls, callguid)
            self.needsBackup = true;
            count = count + 2;
        elseif commandTable[count] == "clickevent" then
            SF_MissionPanel.instance:runCommand("clickevent", commandTable[count + 1], commandTable[count + 2],
                commandTable[count + 3]);
            count = count + 4;
        elseif commandTable[count] == "completequest" then
            local guid = commandTable[count + 1];
            SF_MissionPanel.instance:completeQuest(player, guid);
            count = count + 2;
        elseif commandTable[count] == "delivery" then
            local guid = commandTable[count + 1];

            --if task.update then guid = task.task end;
            --player:getModData().missionProgress.Delivery[task.deliverysquare] = guid;

            self.needsBackup = true;
            count = count + 2;
        elseif commandTable[count] == "lore" then
            SF_MissionPanel.instance:updateLore(commandTable[count + 1], { commandTable[count + 2] });
            count = count + 3;
        elseif commandTable[count] == "playersay" then
            SF_MissionPanel.instance:runCommand("playersay", commandTable[count + 1]);
            count = count + 2;
        elseif commandTable[count] == "quest" then

        elseif commandTable[count] == "removeclickevent" then
            SF_MissionPanel.instance:runCommand("removeclickevent", commandTable[count + 1]);
            count = count + 2;
        elseif commandTable[count] == "randomcodedworldfrompool" then
            SF_MissionPanel.instance:runCommand("randomcodedworldfrompool", commandTable[count + 1],
                commandTable[count + 2], commandTable[count + 3]);
            count = count + 4;
        elseif commandTable[count] == "removemannequin" then
            SF_MissionPanel.instance:runCommand("removemannequin", commandTable[count + 1]);
            count = count + 2;
        elseif commandTable[count] == "revealobjective" then
            SF_MissionPanel.instance:runCommand("revealobjective", commandTable[count + 1],
                tonumber(commandTable[count + 2]));
            count = count + 3;
        elseif commandTable[count] == "timer" or commandTable[count] == "unlocktimer" then
            SF_MissionPanel.instance:runCommand("unlocktimer", commandTable[count + 1]);
            count = count + 2;
        elseif commandTable[count] == "updatequeststatus" then
            SF_MissionPanel.instance:updateQuestStatus(commandTable[count + 1], commandTable[count + 2]);
            count = count + 3;
        elseif commandTable[count] == "unlockquest" then
            SF_MissionPanel.instance:runCommand("unlockquest", commandTable[count + 1]);
            count = count + 2;
        elseif commandTable[count] == "updateobjective" then
            SF_MissionPanel.instance:updateObjective(commandTable[count + 1], tonumber(commandTable[count + 2]),
                commandTable[count + 3]);
            count = count + 4;
        elseif commandTable[count] == "updateobjectivetext" then
            SF_MissionPanel.instance:runCommand("updateobjectivetext", commandTable[count + 1],
                tonumber(commandTable[count + 2]), commandTable[count + 3]);
            count = count + 4;
        elseif commandTable[count] == "worldevent" or commandTable[count] == "unlockworldevent" then
            SF_MissionPanel.instance:runCommand("unlockworldevent", commandTable[count + 1], commandTable[count + 2],
                commandTable[count + 3]);
            count = count + 4;
        else
            print("SOUL QUEST SYSTEM - Unrecognized command from a command table: " .. commandTable[count]);
            return
        end
    end
end

function SF_MissionPanel:runCommand(command, param1, param2, param3)
	if SF_MissionPanel.Commands[command] then
		SF_MissionPanel.Commands[command](param1, param2, param3)
	else
		print("SOUL QUEST SYSTEM - Unknown command: " .. command);
	end
end

function SF_MissionPanel:checkQuestForCompletionByType(type, entry, newStatus)
    print("zSOUL QUEST SYSTEM - checkQuestForCompletionByType triggered")

    -- Se si vuole usare la funzione base, decommentare questa riga
    -- base_SF_MissionPanel_checkQuestForCompletionByType(self, type, entry, newStatus);

    local status = newStatus or "Obtained";
    local prog = self.player:getModData().missionProgress

    -- Verifico se esiste il progresso delle missioni
    if not prog or not prog.Category2 then
        return
    end

    local currentTasks = prog.Category2
    if #currentTasks == 0 then
        return
    end
    
    -- Funzione per processare obiettivi
    local function processObjectives(task)
        if not task.objectives or #task.objectives == 0 then
            return
        end
        
        for o = 1, #task.objectives do
            local objective = task.objectives[o];
            if objective.needsitem and objective.status ~= "Completed" then
                local quantitycheck = SF_MissionPanel.instance:checkItemQuantity(objective.needsitem);
                if quantitycheck then
                    local guid = task.guid;
                    SF_MissionPanel.instance:updateObjective(guid, o, status)
                    SF_MissionPanel.instance:triggerUpdate()
                end
            end
        end
    end
    
    -- Funzione per gestire gli eventi mondiali quando un oggetto non è più valido
    local function handleWorldEvent(task)
        if task.status ~= "Obtained" or not task.onobtained then
            return
        end

        local onObtainedTable = luautils.split(task.onobtained, ";");
        if #onObtainedTable == 0 then
            return
        end

        local worldEvents = prog.WorldEvent
        for j = 1, #onObtainedTable do
            if onObtainedTable[j] == "unlockworldevent" then
                local condition = onObtainedTable[j+2]
                if not worldEvents then
                    return
                end

                for k, v in pairs(worldEvents) do
                    if v.dialoguecode == condition then
                        -- Rimuovo il marker se esiste
                        if worldEvents[k].marker then
                            worldEvents[k].marker:remove();
                        end

                        -- Rimuovo l'evento e resetto lo stato della missione
                        worldEvents[k] = nil
                        task.status = nil

                        -- Notifico il giocatore
                        local questName = getText(task.text)
                        local message = getText("IGUI_SFQuest_Questyno_NotCompleted", questName)
                        self.player:Say(message, 1.000, 0.000, 0.000, UIFont.Small, 0, "default")

                        self.needsBackup = true
                        SF_MissionPanel.instance:triggerUpdate()
                        break;
                    end
                end
            end
        end
    end
    
    -- Funzione per gestire l'ottenimento di un oggetto
    local function handleItemObtained(task)
        if task.status ~= status then
            task.status = status;
            SF_MissionPanel.instance:triggerUpdate()
            
            -- Notifico il giocatore
            local questName = getText(task.text)
            local message = getText("IGUI_SFQuest_Questyno_Completed", questName)
            self.player:Say(message, 1.000, 0.000, 0.000, UIFont.Small, 0, "default")
            
            -- Eseguo azioni post-ottenimento
            if status == "Obtained" and task.onobtained then
                local commandTable = luautils.split(task.onobtained, ";");
                SF_MissionPanel.instance:readCommandTable(commandTable, task.text);
            end
        end
        
        -- Gestisco il completamento della missione
        if status == "Completed" then
            local guid = task.guid;
            SF_MissionPanel.instance:completeQuest(getPlayer(), guid);
            if task.ondone then
                local commandTable = luautils.split(task.ondone, ";");
                SF_MissionPanel.instance:readCommandTable(commandTable);
            end
        end
    end
    
    -- Gestisco la ricerca generica per tutti gli oggetti
    if not entry then
        for i = 1, #currentTasks do
            local task = currentTasks[i];
            
            if type == "item" and task.needsitem then
                local quantitycheck = SF_MissionPanel.instance:checkItemQuantity(task.needsitem)
                
                if quantitycheck then
                    handleItemObtained(task)
                else
                    -- Se l'oggetto non è più valido, resetto la missione
                    handleWorldEvent(task)
                end
            end
            
            -- Controllo gli obiettivi della missione
            if type == "item" and task.objectives then
                processObjectives(task)
            end
        end
    else
        -- Gestisco la ricerca per un oggetto specifico
        for i = 1, #currentTasks do
            local task = currentTasks[i];
            
            if type == "item" and task.needsitem then
                local needsTable = luautils.split(task.needsitem, ";");
                local itemscript = needsTable[1];
                local quantity = tonumber(needsTable[2]) or 1;
                local isTag = false;
                
                if luautils.stringStarts(needsTable[1], "Tag") or luautils.stringStarts(needsTable[1], "Predicate") then
                    itemscript = luautils.split(itemscript, "#")[2];
                    isTag = true;
                end
                
                if itemscript == entry then
                    task.status = status;
                    SF_MissionPanel.instance:triggerUpdate()
                    
                    if status == "Completed" then
                        local guid = task.guid;
                        SF_MissionPanel.instance:completeQuest(getPlayer(), guid);
                    end
                end
            end
        end
    end
end

function SF_MissionPanel:checkTaskForCompletion(guid)
    local player = self.player or getPlayer();
    local prog = player:getModData().missionProgress

    -- Verifica se esistono dati di missione
    if not prog or not prog.Category2 then
        return
    end

    local currentTasks = prog.Category2
    if #currentTasks == 0 then
        return
    end
    
    -- Trova la missione con il GUID specificato
    local taskIndex = nil
    for i = 1, #currentTasks do
        if currentTasks[i].guid and currentTasks[i].guid == guid then
            taskIndex = i
            break
        end
    end
    
    -- Se non troviamo la missione, usciamo
    if not taskIndex then
        return
    end
    
    local task = currentTasks[taskIndex]
    
    -- Funzione per verificare se tutti gli obiettivi sono completati
    local function areObjectivesCompleted(objectives)
        if not objectives or #objectives == 0 then
            return true, nil
        end
        
        local allCompleted = true
        local deliveryIndex = nil
        
        for o = 1, #objectives do
            local objective = objectives[o]
            
            -- Un obiettivo senza stato non è completo
            if not objective.status then
                allCompleted = false
            -- Un obiettivo con needsitem non è completo se non è "Completed"
            elseif objective.needsitem ~= nil and objective.status ~= "Completed" then
                allCompleted = false
            -- Un obiettivo che blocca il completamento non è completo se non è "Completed"
            elseif objective.blockscompletion == true and objective.status ~= "Completed" then
                allCompleted = false
            -- Salvare l'indice dell'obiettivo di consegna se presente
            elseif objective.deliverysquare then
                deliveryIndex = o
            end
        end
        
        return allCompleted, deliveryIndex
    end
    
    -- Verifica se gli obiettivi sono completi
    local completed, deliveryIndex = areObjectivesCompleted(task.objectives)
    
    -- Esegui comandi se gli obiettivi sono completati
    if completed and task.onobjectivescompleted then
        local commandsTable = luautils.split(task.onobjectivescompleted, ";")
        SF_MissionPanel.instance:readCommandTable(commandsTable)
    end
    
    -- Completa la missione se gli obiettivi sono completati e non serve una segnalazione
    if completed and not task.needsreport then
        -- Se c'è un obiettivo di consegna, imposta il suo stato come "Completed"
        if deliveryIndex then
            currentTasks[taskIndex].objectives[deliveryIndex].status = "Completed"
        end

        -- Completa la missione
        SF_MissionPanel:completeQuest(player, guid)
    end
end

function SF_MissionPanel:updateFrequency(dailycode, frequency)
    local player = getPlayer();
    local prog = player:getModData().missionProgress
    if prog and prog.DailyEvent then
        for i, v in ipairs(prog.DailyEvent) do
            if v.dailycode == dailycode then
                v.frequency = frequency
                self.needsBackup = true
                SF_MissionPanel.instance:triggerUpdate()
                break
            end
        end
    end
end  

--PredicateFullDrainable#Base.PropaneTank;2;
function SF_MissionPanel:checkItemQuantity(stringforcheck)
	local needsTable = luautils.split(stringforcheck, ";");
	local itemscript = needsTable[1]; -- PredicateFullDrainable#Base.PropaneTank
	local quantity = tonumber(needsTable[2]) or 1;
	local carrying;
	local isTag;
    local isPredicate;
	local predicateValue;

     -- Verifica se itemscript inizia con 'Tag' o 'Predicate' e imposta i booleani
     if luautils.stringStarts(itemscript, "Tag") then
        itemscript = luautils.split(itemscript, "#")[2];
        predicateValue = tonumber(needsTable[3]);
        isTag = true
    end
    if luautils.stringStarts(itemscript, "Predicate") then
        --PredicateFullDrainable#Base.PropaneTank
        itemscript = luautils.split(itemscript, "#")[2]; -- Base.PropaneTank
        predicateValue = tonumber(needsTable[3]) or 0;
        isPredicate = true
    end
    if isTag then
	    if luautils.stringStarts(needsTable[1], "Tag#") then
	    	isTag = true;
	    	carrying = self.player:getInventory():getCountTagRecurse(itemscript);
	    elseif luautils.stringStarts(needsTable[1], "TagPredicateBigFish#") then
	    	isTag = true;
	    	carrying = self.player:getInventory():getCountTagEvalRecurse(itemscript, SFQuest_Utils.predicateBigFish);
	    elseif luautils.stringStarts(needsTable[1], "TagPredicateCondition#") then
	    	isTag = true;
	    	carrying = self.player:getInventory():getCountTagEvalArgRecurse(itemscript, SFQuest_Utils.predicateCondition, SFQuest_Utils.predicateValue);
	    elseif luautils.stringStarts(needsTable[1], "TagPredicateFreshFood#") then
	    	isTag = true;
	    	carrying = self.player:getInventory():getCountTagEvalRecurse(itemscript, SFQuest_Utils.predicateFreshFood);	
	    elseif luautils.stringStarts(needsTable[1], "TagPredicateFullDrainable#") then
	    	isTag = true;
	    	carrying = self.player:getInventory():getCountTagEvalRecurse(itemscript, SFQuest_Utils.predicateFullDrainable);
	    elseif luautils.stringStarts(needsTable[1], "TagPredicateDrainable#") then
	    	isTag = true;
	    	carrying = self.player:getInventory():getCountTagEvalArgRecurse(itemscript, SFQuest_Utils.predicateDrainable, SFQuest_Utils.predicateValue);
        elseif luautils.stringStarts(needsTable[1], "TagPredicateFoodWeight") then
	    	isTag = true;
	    	carrying = self.player:getInventory():getCountTagEvalArgRecurse(itemscript, SFQuest_Utils.predicateFoodWeight, SFQuest_Utils.predicateValue);
        elseif luautils.stringStarts(needsTable[1], "TagPredicateFoodHunger") then
	    	isTag = true;
	    	carrying = self.player:getInventory():getCountTagEvalArgRecurse(itemscript, SFQuest_Utils.predicateFoodHunger, SFQuest_Utils.predicateValue);
        elseif luautils.stringStarts(needsTable[1], "TagPredicateFoodCooked") then
        	isTag = true;
        	carrying = self.player:getInventory():getCountTagEvalRecurse(itemscript, SFQuest_Utils.predicateFoodCooked);
        end
    elseif isPredicate then
        if luautils.stringStarts(needsTable[1], "PredicateBigFish#") then
            carrying = self.player:getInventory():getCountTypeEvalRecurse(itemscript, SFQuest_Utils.predicateBigFish);

        elseif luautils.stringStarts(needsTable[1], "PredicateCondition#") then
            carrying = self.player:getInventory():getCountTypeEvalArgRecurse(itemscript, SFQuest_Utils.predicateCondition, SFQuest_Utils.predicateValue);

        elseif luautils.stringStarts(needsTable[1], "PredicateFreshFood#") then
            carrying = self.player:getInventory():getCountTypeEvalRecurse(itemscript, SFQuest_Utils.predicateFreshFood);    

        elseif luautils.stringStarts(needsTable[1], "PredicateFullDrainable#") then
            carrying = self.player:getInventory():getCountTypeEvalRecurse(itemscript, SFQuest_Utils.predicateFullDrainable);
        elseif luautils.stringStarts(needsTable[1], "PredicateDrainable#") then
            carrying = self.player:getInventory():getCountTypeEvalArgRecurse(itemscript, SFQuest_Utils.predicateDrainable, SFQuest_Utils.predicateValue);

        elseif luautils.stringStarts(needsTable[1], "PredicateFoodWeight") then
            carrying = self.player:getInventory():getCountTypeEvalArgRecurse(itemscript, SFQuest_Utils.predicateFoodWeight, SFQuest_Utils.predicateValue);

        elseif luautils.stringStarts(needsTable[1], "PredicateFoodHunger") then
            carrying = self.player:getInventory():getCountTypeEvalArgRecurse(itemscript, SFQuest_Utils.predicateFoodHunger, SFQuest_Utils.predicateValue);
        elseif luautils.stringStarts(needsTable[1], "PredicateFoodCooked") then
            carrying = self.player:getInventory():getCountTypeEvalRecurse(itemscript, SFQuest_Utils.predicateFoodCooked);
        end
    else
		carrying = self.player:getInventory():getItemCountRecurse(itemscript);
	end
	if quantity <= carrying then
        print("Carrying: " .. carrying .. " Quantity: " .. quantity)
		return true
	end
	return false
end

function SF_MissionPanel:updateQuestStatus(guid, status)
    local player = self.player or getPlayer();
    local prog = player:getModData().missionProgress

    -- Verifica se esistono dati di missione
    if not prog or not prog.Category2 then
        return
    end

    local currentTasks = prog.Category2
    if #currentTasks == 0 then
        return
    end
    
    -- Funzione per eseguire i comandi in base allo stato
    local function executeStatusCommands(task, status)
        local commandProperty = nil
        
        if status == "Failed" and task.onfailed then
            commandProperty = task.onfailed
        elseif status == "Completed" and task.ondone then
            commandProperty = task.ondone
        elseif status == "Obtained" and task.onobtained then
            commandProperty = task.onobtained
        end
        
        if commandProperty then
            local commandTable = luautils.split(commandProperty, ";")
            SF_MissionPanel.instance:readCommandTable(commandTable)
        end
    end
    
    -- Cerca la missione con il GUID specificato
    for i = 1, #currentTasks do
        local task = currentTasks[i]
        if task.guid and task.guid == guid then
            -- Aggiorna lo stato della missione
            task.status = status
            
            -- Esegui eventuali comandi basati sul nuovo stato
            executeStatusCommands(task, status)
            
            -- Imposta i flag di aggiornamento e backup
            SF_MissionPanel.instance:triggerUpdate()
            self.needsBackup = true
            
            -- Esci dal ciclo dopo aver trovato e aggiornato la missione
            break
        end
    end
end


function SF_MissionPanel:hasActiveWorldEventWithCode(dailycode)
    local player = getPlayer();
    local prog = player:getModData().missionProgress
    if prog and prog.WorldEvent then
        for k, v in pairs(prog.WorldEvent) do
            if v.identity == dailycode then
                return true
            end
        end
    end
    return false
end

-- PredicateFullDrainable#Base.PropaneTank;2
function SF_MissionPanel:takeNeededItem(neededitem)
    local player = getPlayer();
    local needsTable = luautils.split(neededitem, ";"); -- Esempio: "TagPredicateFreshFood#Pot;1;4"
    local itemscript = needsTable[1];
    local quantity = tonumber(needsTable[2]) or 1;
    local items;
    local predicateValue;
    local isTag;
    local isPredicate;
    local isQuantity = SF_MissionPanel.instance:checkItemQuantity(neededitem);

    if not isQuantity then
        return false
    end

    -- Verifica se itemscript inizia con 'Tag' o 'Predicate' e imposta i booleani
    if luautils.stringStarts(itemscript, "Tag") then
        isTag = true;
        itemscript = luautils.split(itemscript, "#")[2];
        predicateValue = tonumber(needsTable[3]);
    end
    if luautils.stringStarts(itemscript, "Predicate") then
        isPredicate = true;
        itemscript = luautils.split(itemscript, "#")[2];
        predicateValue = tonumber(needsTable[3]);
    end
    if isTag then
        -- Gestione dei casi con 'Tag'
        if luautils.stringStarts(needsTable[1], "Tag#") then
                items = player:getInventory():getSomeTagRecurse(itemscript, quantity);
        elseif luautils.stringStarts(needsTable[1], "TagPredicateBigFish#") then
                items = player:getInventory():getSomeTagEvalRecurse(itemscript, SFQuest_Utils.predicateBigFish, quantity);        
        elseif luautils.stringStarts(needsTable[1], "TagPredicateCondition#") then
                items = player:getInventory():getSomeTagEvalArgRecurse(itemscript, SFQuest_Utils.predicateCondition, SFQuest_Utils.predicateValue, quantity);
        elseif luautils.stringStarts(needsTable[1], "TagPredicateFreshFood#") then    
                items = player:getInventory():getSomeTagEvalRecurse(itemscript, SFQuest_Utils.predicateFreshFood, quantity);
        elseif luautils.stringStarts(needsTable[1], "TagPredicateFullDrainable#") then    
                items = player:getInventory():getSomeTagEvalRecurse(itemscript, SFQuest_Utils.predicateFullDrainable, quantity);
        elseif luautils.stringStarts(needsTable[1], "TagPredicateDrainable#") then    
                items = player:getInventory():getSomeTagEvalArgRecurse(itemscript, SFQuest_Utils.predicateDrainable, SFQuest_Utils.predicateValue, quantity);
        elseif luautils.stringStarts(needsTable[1], "TagPredicateFoodWeight#") then
                items = player:getInventory():getSomeTagEvalArgRecurse(itemscript, SFQuest_Utils.predicateFoodWeight, SFQuest_Utils.predicateValue, quantity);
        elseif luautils.stringStarts(needsTable[1], "TagPredicateFoodHunger#") then
                items = player:getInventory():getSomeTagEvalArgRecurse(itemscript, SFQuest_Utils.predicateFoodHunger, SFQuest_Utils.predicateValue, quantity);
        elseif luautils.stringStarts(needsTable[1], "TagPredicateFoodCooked#") then
                items = player:getInventory():getSomeTagEvalRecurse(itemscript, SFQuest_Utils.predicateFoodCooked, quantity);
        end
    elseif isPredicate then
        -- Gestione dei casi senza 'Tag' (solo 'Predicate')
        if luautils.stringStarts(needsTable[1], "PredicateBigFish#") then
                items = player:getInventory():getSomeTypeEvalRecurse(itemscript, SFQuest_Utils.predicateBigFish, quantity);
        elseif luautils.stringStarts(needsTable[1], "PredicateCondition#") then
                items = player:getInventory():getSomeTypeEvalArgRecurse(itemscript, SFQuest_Utils.predicateCondition, SFQuest_Utils.predicateValue, quantity);    
        elseif luautils.stringStarts(needsTable[1], "PredicateFreshFood#") then    
                items = player:getInventory():getSomeTypeEvalRecurse(itemscript, SFQuest_Utils.predicateFreshFood, quantity);    
        elseif luautils.stringStarts(needsTable[1], "PredicateFullDrainable#") then    
                items = player:getInventory():getSomeTypeEvalRecurse(itemscript, SFQuest_Utils.predicateFullDrainable, quantity);
        elseif luautils.stringStarts(needsTable[1], "PredicateDrainable#") then    
                items = player:getInventory():getSomeTypeEvalArgRecurse(itemscript, SFQuest_Utils.predicateDrainable, SFQuest_Utils.predicateValue, quantity);
        elseif luautils.stringStarts(needsTable[1], "PredicateFoodWeight#") then
                items = player:getInventory():getSomeTypeEvalArgRecurse(itemscript, SFQuest_Utils.predicateFoodWeight, SFQuest_Utils.predicateValue, quantity);
        elseif luautils.stringStarts(needsTable[1], "PredicateFoodHunger#") then
                items = player:getInventory():getSomeTypeEvalArgRecurse(itemscript, SFQuest_Utils.predicateFoodHunger, SFQuest_Utils.predicateValue, quantity);
        elseif luautils.stringStarts(needsTable[1], "PredicateFoodCooked#") then
                items = player:getInventory():getSomeTypeEvalRecurse(itemscript, SFQuest_Utils.predicateFoodCooked, quantity);
        end
    else
        -- Caso di default (nessun 'Tag' o 'Predicate')
            items = player:getInventory():getSomeTypeRecurse(itemscript, quantity);
    end

    if items then
        for i=0, items:size()-1 do
            local item = items:get(i);
            local itemId = item:getID();
            if item:isEquipped() then
                item:getContainer():setDrawDirty(true);
                item:setJobDelta(0.0);
                player:removeWornItem(item)
        
                local hotbar = getPlayerHotbar(player:getPlayerNum())
                local fromHotbar = false;
                if hotbar then
                    fromHotbar = hotbar:isItemAttached(item);
                end
        
                if fromHotbar then
                    hotbar.chr:setAttachedItem(item:getAttachedToModel(), item);
                    player:resetEquippedHandsModels()
                end
        
                if item == player:getPrimaryHandItem() then
                    if (item:isTwoHandWeapon() or item:isRequiresEquippedBothHands()) and item == player:getSecondaryHandItem() then
                        player:setSecondaryHandItem(nil);
                    end
                    player:setPrimaryHandItem(nil);
                end
                if item == player:getSecondaryHandItem() then
                    if (item:isTwoHandWeapon() or item:isRequiresEquippedBothHands()) and item == player:getPrimaryHandItem() then
                        player:setPrimaryHandItem(nil);
                    end
                    player:setSecondaryHandItem(nil);
                end
            end
            player:getInventory():removeItemWithIDRecurse(itemId);
        end
        return true
    end
    return nil
end

function SF_MissionPanel:updateObjective(guid, index, status)
    local player = self.player or getPlayer()
    local prog = player:getModData().missionProgress
    if not prog or not prog.Category2 then return end

    local currentTasks = prog.Category2

    -- Iterazione inversa con indici numerici
    for i = #currentTasks, 1, -1 do
        local task = currentTasks[i]
        if task then
            -- Controllo validità del GUID
            if not task.guid then
                print("Task senza GUID all'indice: " .. i)
            elseif task.guid == guid then
                -- Processo solo gli obiettivi validi
                if task.objectives and task.objectives[index] then
                    task.objectives[index].status = status
                    
                    -- Esecuzione comandi
                    local commands = 
                        (status == "Failed" and task.objectives[index].onfailed) or
                        (status == "Completed" and task.objectives[index].oncompleted) or
                        (status == "Obtained" and task.objectives[index].onobtained)
                    
                    if commands then
                        local commandTable = luautils.split(commands, ";")
                        self:readCommandTable(commandTable, task.text)
                    end
                    
                    -- Aggiornamento stato missione
                    self:checkTaskForCompletion(guid)
                    SF_MissionPanel.instance:triggerUpdate()
                    self.needsBackup = true
                end
                return -- Esco dopo aver trovato il task
            end
        else
            print("Task nullo all'indice: " .. i)
        end
    end
end


function SF_MissionPanel:forceBackupData()
	local player = self.player or getPlayer();
	local data = player:getModData().missionProgress;
    data.forceBackup = true;
	if not data then
		print("Player had no quest data for the backup.");
		return
	end
	if isClient() then
		print("****************SALVO CLIENT************************");
		sendClientCommand(player, 'SFQuest', 'saveData', data);
	else
		print("****************SALVO SERVER************************");
		SFQuest_Server.localBackup(player, data);
	end;
end

function SF_MissionPanel:removeReputation(faction, value)
	local player = SF_MissionPanel.instance.player or getPlayer();
	local prog = player:getModData().missionProgress
	if prog and prog.Factions then
		local factions = prog.Factions;

		local facIndex;
		local currentRep;
		local currentTier;
		local newTier;

		if #factions > 0 then
			for j=1,#factions do
				if factions[j].factioncode and factions[j].factioncode == faction then
					facIndex = j;
					currentRep = factions[j].reputation;
					currentTier = factions[j].tierlevel;
					break
				end
			end
		end
		if facIndex then
			local playerFaction = factions[facIndex]
			for i=1,#SFQuest_Database.FactionPool do
				if SFQuest_Database.FactionPool[i].factioncode and SFQuest_Database.FactionPool[i].factioncode == faction then
					if currentTier == 1 then
						playerFaction.reputation = currentRep - value;
						if playerFaction.reputation < 0 then
							playerFaction.reputation = 0;
						end
					else
						playerFaction.reputation = currentRep - value;
						if playerFaction.reputation < 0 then
							newTier = currentTier - 1;
							playerFaction.tierlevel = newTier;
							if SFQuest_Database.FactionPool[i].tiers then
								local tier = SFQuest_Database.FactionPool[i].tiers[newTier];
								playerFaction.tiername = tier.tiername;
								playerFaction.repmax = tier.minrep;
								playerFaction.tiercolor = tier.barcolor;
							end
							playerFaction.reputation = playerFaction.repmax + playerFaction.reputation;
						end
					end
				end
			end
			SF_MissionPanel.instance:triggerUpdate();
			SF_MissionPanel.instance.needsBackup = true;
		end
	end
end

function SF_MissionPanel.RemoveAllWorldMarkers()
    local player = getPlayer();
    local prog = player:getModData().missionProgress
    if prog and prog.WorldEvent then
        for k2, v2 in pairs(prog.WorldEvent) do
            print("SOUL QUEST SYSTEM - checking marker for: " .. v2.dialoguecode);
            if v2.marker then
                v2.marker:remove();
            end
        end
    end
end


function SF_MissionPanel:completeQuest(player, guid)
	local prog = player:getModData().missionProgress
	if prog and prog.Category2 then
		local currentTasks = prog.Category2;
		local done = false
		if #currentTasks > 0 then
			for i=1,#currentTasks do
				local task = currentTasks[i];
				if task.guid and task.guid == guid then
					currentTasks[i].status = "Completed";
					if task.awardsitem then
						local count = 1;
						local rewardTable = luautils.split(task.awardsitem, ";");
						local quantity = 1;
						if rewardTable[count + 1] then
							quantity = tonumber(rewardTable[count + 1]);
						end
						player:getInventory():AddItems(rewardTable[1], quantity);
						count = 3;
						while rewardTable[count] do
							quantity = tonumber(rewardTable[count + 1]);
							player:getInventory():AddItems(rewardTable[count], quantity);
							count = count + 2;
						end
					end
					if task.awardslore then
						if task.lore then
							table.insert(task.lore, task.awardslore);
						else
							task.lore = {task.awardslore};
						end
					end
					if task.awardsrep then
						local repvalues = luautils.split(task.awardsrep, ";");
						print("This task awards " .. repvalues[2] .. " reputation for " .. repvalues[1]);
						SF_MissionPanel.instance:awardReputation(repvalues[1], tonumber(repvalues[2]));
                        local count = 3;
                        while repvalues[count] do
                            print("This task awards " .. repvalues[count + 1] .. " reputation for " .. repvalues[count]);
                            SF_MissionPanel.instance:awardReputation(repvalues[count], tonumber(repvalues[count + 1]));
                            count = count + 2;
                        end
					end
					if task.awardsworld then
						local entry = luautils.split(task.awardsworld, ";");
						SF_MissionPanel.instance:runCommand("unlockworldevent", entry[1], entry[2], entry[3]);				
					end
                    -- "task.ondone" not quite sure to put this here because it's already present in "updateQuestStatus" when status is setted to == "Completed" and "checkQuestForCompletionByType" too. So there is a possibility to trigger it twice or more. because if you update the quest status to "Complete" and there is "ondone" command, it will be executed and then will be executed again when "completequest" is called.
                    if task.ondone then
                        local commandTable = luautils.split(task.ondone, ";");
                        SF_MissionPanel.instance:readCommandTable(commandTable);
                    end
					if task.completesound then
						getSoundManager():playUISound(task.completesound);
						--player:getEmitter():playSound(task.completesound);
					end
					if task.guid == self.expanded then
						self.expanded = nil;
						self.loretitle = nil;
						self.lore = {};
						self.currentPage = 1;
						self.titleLabel:setVisible(false);
						self.pageLabel:setVisible(false);
						self.nextPage:setVisible(false);
						self.previousPage:setVisible(false);
						self.richText:setVisible(false);
					end
                    -- che sia questo a far sparire le action event dei killzombies? ma come?
                    -- if task.unlocks and luautils.stringStarts(task.unlocks, "actionevent") then
                    --     for i,v in ipairs(player:getModData().missionProgress.ActionEvent) do
                    --         local commands = luautils.split(v.commands, ";");
                    --         if luautils.stringStarts(task.guid, commands[2]) then
                    --             table.remove(player:getModData().missionProgress.ActionEvent, i);
                    --             break
                    --         end
                    --     end
                    -- end
                    -- only unlock eventually awarded quests after every check of the current quest completed
                    if task.awardstask then
						SF_MissionPanel:unlockQuest(task.awardstask);
					end
                    -- only save quests which are not daily events
                    if task.dailycode == nil then
                        table.insert(prog.Category1, task);
                    end
                    -- inserire qui sendClientCommand per backup secondario delle quest completate? (diviso dal backup principale)
                    sendClientCommand(player, 'SFQuest', 'saveHistory', {guid = task.guid});

                    -- idea per Reroll Daily Event solo al completamento dell'ultima step di una daily
					table.remove(currentTasks, i);
                    if task.dailycode and not task.awardstask then
                        SF_MissionPanel.instance.DailyEventRerollExpand()
                        print("Daily Event Reroll triggered");
                    end

                    -- reset status
                    task.status = nil;
                    if task.objectives then
                        for j=1,#task.objectives do
                            task.objectives[j].status = nil;
                        end
                    end

					done = true;
					SF_MissionPanel.instance:triggerUpdate()
					break
				end
			end
		end
		local deliveries = prog.Delivery
		if deliveries and #deliveries > 0 then
			for d=1,#deliveries do
				if deliveries[d] == guid then
					deliveries[d] = nil;
					break
				end
			end
		end
		self.needsBackup = true;
	end
end

function SF_MissionPanel:unlockQuest(guid, overrideAwardsItem)
	local player = self.player or getPlayer();
	local quest = SF_MissionPanel:getQuest(guid);
	if player and quest then
		local prog = player:getModData().missionProgress
		if prog and prog.Category2 then
			local currentTasks = prog.Category2
			if guid then
				local hasTask = false
				if #currentTasks > 0 then
					for i=1,#currentTasks do
						if currentTasks[i].guid and currentTasks[i].guid == guid then
							hasTask = true
						end
					end
				end
				if quest.unique then --a unique quest will never be unlocked again, so we need to check the quest log too
					local questLog = prog.Category1
					if questLog and #questLog > 0 then
						for i=1,#questLog do
							if questLog[i].guid and questLog[i].guid == guid then
								hasTask = true
							end
						end
					end
				end
				if hasTask == true then
					print("SOUL QUEST SYSTEM - Player already had that quest unlocked.");
					return
				end
			end
			--quest should be unlocked for this player
			if quest.unlockedsound then
				getSoundManager():playUISound(quest.unlockedsound);
			end
			if quest.updates then
				local updatedQuest = SF_MissionPanel.instance:getActiveQuest(quest.updates);
				if updatedQuest then
					updatedQuest.awardsitem = quest.awardsitem or updatedQuest.awardsitem;
					updatedQuest.awardslore = quest.awardslore or updatedQuest.awardslore;
					updatedQuest.awardsrep = quest.awardsrep or updatedQuest.awardsrep;
					updatedQuest.awardstask = quest.awardstask or updatedQuest.awardstask;
					updatedQuest.awardsworld = quest.awardsworld or updatedQuest.awardsworld;
					updatedQuest.completesound = quest.completesound or updatedQuest.completesound;
					updatedQuest.needsitem = quest.needsitem or updatedQuest.needsitem;
					updatedQuest.onobtained = quest.onobtained or updatedQuest.onobtained;
					updatedQuest.text = quest.text or updatedQuest.text;
					updatedQuest.texture = quest.texture or updatedQuest.texture;
					updatedQuest.title = quest.title or updatedQuest.title;
					if (not updatedQuest.lore) and quest.lore then
						updatedQuest.lore = quest.lore;
					elseif updatedQuest.lore and quest.lore then
						for l=1, #quest.lore do
							local lore = quest.lore[l];
							table.insert(updatedQuest.lore, lore);
						end
					end
				else
					print("SOUL QUEST SYSTEM - Unlocked quest was an update to an existing quest that could not be found.");
				end
			else
				if quest.awardsitem and overrideAwardsItem then
					local newQuest = quest;
					newQuest.awardsitem = overrideAwardsItem;
					table.insert(currentTasks, newQuest);
				elseif quest.awardsitem and luautils.stringStarts(quest.awardsitem, "Table:") then
					local tableKey = luautils.split(quest.awardsitem, ":")[2];
					local rewardTable = SFQuest_Database.RandomRewardItemPool[tableKey];
					local newQuest = quest;
					if rewardTable and #rewardTable > 0 then
						newQuest.awardsitem = rewardTable[ZombRand(1, #rewardTable + 1)]
					end
					table.insert(currentTasks, newQuest);
				else
					table.insert(currentTasks, quest);
				end
			end
	    	if quest.unlocks then
	    		local commandTable = luautils.split(quest.unlocks, ";");
	    		SF_MissionPanel.instance:readCommandTable(commandTable);
	    	end
            -- si potrebbe pensare di mettere un checkQuestForCompletionByType check qui allo sblocco della quest per fixare il problema anche dell'addItem
            SF_MissionPanel.instance:checkQuestForCompletionByType("item", nil, "Obtained");
            
	    	SF_MissionPanel.instance:triggerUpdate();
	    	SF_MissionPanel.instance.needsBackup = true;
	    	return
	    else
	    	print("Player did not have a list of current tasks. Unable to unlock a task.");
	    end
    else
        print("no quest found with guid: " .. guid);
    end
end


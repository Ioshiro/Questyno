SF_MissionPanel = SF_MissionPanel or ISPanelJoypad:derive("SF_MissionPanel");

SF_MissionPanel.Events = SF_MissionPanel.Events or {};
SF_MissionPanel.EventsRegistered = SF_MissionPanel.EventsRegistered or false


function SF_MissionPanel.Events.OnZombieDead(zombie)
    local player = getPlayer()
    local prog = player:getModData().missionProgress
    if not prog or not prog.ActionEvent then
        Events.OnZombieDead.Remove(SF_MissionPanel.Events.OnZombieDead)
        SF_MissionPanel.EventsRegistered = false
        return
    end
    local attackedBy = zombie:getAttackedBy()
    if player:isDriving() then return end
    if attackedBy ~= player then return end
    if not instanceof(attackedBy, "IsoPlayer") then return end

    -- Ottieni tierLevel e zoneName attuali
    local currentTierLevel, currentZoneName = checkZone()

    local actionevent = prog.ActionEvent;
    for i = #actionevent, 1, -1 do
        local eventData = actionevent[i]
        local condition = luautils.split(eventData.condition, ";")

        if condition[1] == "killzombies" then
            local canIncrement = true

            -- Se è impostata una tierzone, controlla se coincide con quella attuale
            if eventData.tierzone and eventData.tierzone ~= currentZoneName then
                canIncrement = false
            end

            -- Se è impostato un tierlevel, controlla se coincide con quello attuale
            if eventData.tierlevel and eventData.tierlevel > currentTierLevel then
                canIncrement = false
            end

            if canIncrement then
                eventData.kills = (eventData.kills or 0) + 1
                if eventData.kills >= eventData.goal then
                    local commandTable = luautils.split(eventData.commands, ";")
                    local questName = commandTable[3]:gsub("^SFQuest_", ""):gsub("_Complete$", "")
                    questName = getText("IGUI_SFQuest_"..questName.."_Text")
                    player:Say(getText("IGUI_SFQuest_Questyno_ZombieCompleted", eventData.goal, questName), 1.000, 0.000, 0.000, UIFont.Small, 0, "default")
                    SF_MissionPanel.instance:readCommandTable(commandTable)
                    -- Update index before removing from array
                    if prog.Indexes and prog.Indexes.ActionEventByQuestGuid and eventData.questGuid then
                        prog.Indexes.ActionEventByQuestGuid[eventData.questGuid] = nil
                    end
                    table.remove(actionevent, i)
                end
                SF_MissionPanel.instance.needsBackup = true
                SF_MissionPanel.instance:triggerUpdate() --temp
            end
        end
    end
    if #actionevent == 0 and SF_MissionPanel.EventsRegistered then
        Events.OnZombieDead.Remove(SF_MissionPanel.Events.OnZombieDead)
        SF_MissionPanel.EventsRegistered = false
        return
    end
end


function SF_MissionPanel.DailyEventRerollExpand() -- da riscrivere con activity calendar lib di Lele xD
    local player = getPlayer();
    local prog = player:getModData().missionProgress
    if not prog then return end
    if prog.DailyEvent and #prog.DailyEvent > 0 then
        local t0 = SF_MissionPanel:getStartingHour();
        local ageHours = getGameTime():getWorldAgeHours();
        local serverTime = ageHours + t0;
        local eventTable = prog.DailyEvent
        for d = #eventTable, 1, -1 do
            local event = eventTable[d];
            local lastRoll = math.floor(serverTime / (24 * (event.frequency or 1)));
            if event.days ~= lastRoll then
                if event.condition then
                    local conditionTable = luautils.split(event.condition, ";");
                    if conditionTable[1] == "notmaxedwithcode" then
                        local dailycode = conditionTable[2];
                        local maxed = tonumber(conditionTable[3]);
                        local active = SF_MissionPanel.instance:countActiveQuestsWithCode(dailycode);
                        if conditionTable[4] == "hasfactiontier" then
                            local faction = conditionTable[5];
                            local tier = tonumber(conditionTable[6]);
                            local playerTier = SF_MissionPanel.instance:getReputationTier(faction, player);
                            if active < maxed and tier <= playerTier then
                                if prog.WorldEvent and SF_MissionPanel.instance:hasActiveWorldEventWithCode(dailycode) then
                                    print("SOUL QUEST SYSTEM - Active world event (dialogue) with code: " .. dailycode .. " already exists.");
                                else
                                    event.days = lastRoll;
                                    SF_MissionPanel.instance.needsBackup = true;
                                    print("SOUL QUEST SYSTEM - No active quests for daily code: " .. dailycode);
                                    local commandTable = luautils.split(event.commands, ";");
                                    SF_MissionPanel.instance:readCommandTable(commandTable);
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end

-- WIP
-- function SF_MissionPanel.DailyEventRerollExpand()
--     local player = getPlayer()
--     if not player:getModData().missionProgress or not player:getModData().missionProgress.DailyEvent or 
--        #player:getModData().missionProgress.DailyEvent == 0 then
--         return
--     end
    
--     local prog = player:getModData().missionProgress
--     local currentTime = SFQuest_Calendar.getStarTime()
--     local eventTable = prog.DailyEvent
    
--     for d = #eventTable, 1, -1 do
--         local event = eventTable[d]
--         if not event.days then event.days = 0 end
        
--         -- Verifica se è tempo di attivare l'evento
--         local canActivate = (event.days == 0) or (currentTime >= event.days)
        
--         if canActivate and event.condition then
--             local conditionTable = luautils.split(event.condition, ";")
--             if conditionTable[1] == "notmaxedwithcode" and conditionTable[4] == "hasfactiontier" then
--                 local dailycode = conditionTable[2]
--                 local maxed = tonumber(conditionTable[3])
--                 local active = SF_MissionPanel.instance:countActiveQuestsWithCode(dailycode)
--                 local faction = conditionTable[5]
--                 local tier = tonumber(conditionTable[6])
--                 local playerTier = SF_MissionPanel.instance:getReputationTier(faction, player)
                
--                 if active < maxed and tier <= playerTier then
--                     if not prog.WorldEvent or not SF_MissionPanel.instance:hasActiveWorldEventWithCode(dailycode) then
--                         -- Calcola la data di prossima disponibilità (giorni attuali + frequenza)
--                         SFQuest_Calendar.setWaitingOfDays(event.frequency)
--                         event.days = SFQuest_Calendar.getExpectedDateInSecond()
                        
--                         SF_MissionPanel.instance.needsBackup = true
--                         local commandTable = luautils.split(event.commands, ";")
--                         SF_MissionPanel.instance:readCommandTable(commandTable)
--                     end
--                 end
--             end
--         end
--     end
-- end


function SF_MissionPanel.EveryTenMinutesExpand()
    local player = getPlayer();
    local prog = player:getModData().missionProgress
    if not prog then return end

    if prog.ActionEvent and #prog.ActionEvent > 0 then
        local actionevent = prog.ActionEvent;
        local isKillZombie = false
        for a=#actionevent,1,-1 do
            local event = actionevent[a]
            local condition = event.condition
            if condition then
                local conditionSplit = luautils.split(condition, ";");
                if conditionSplit[1] == "enterroom" then
                    local squareTable = luautils.split(conditionSplit[2], "x");
                    local x, y, z = tonumber(squareTable[1]), tonumber(squareTable[2]), tonumber(squareTable[3]);
                    local square = getCell():getGridSquare(x, y, z);
                    if square then
                        local room = square:getRoom();
                        if player:getSquare():getRoom() == room then
                            local commandTable = luautils.split(event.commands, ";");
                            SF_MissionPanel.instance:readCommandTable(commandTable);
                            -- Update index before removing from array
                            if prog.Indexes and prog.Indexes.ActionEventByQuestGuid and event.questGuid then
                                prog.Indexes.ActionEventByQuestGuid[event.questGuid] = nil
                            end
                            table.remove(actionevent, a);
                        end
                    end
                elseif conditionSplit[1] == "killzombies" then
                    if not SF_MissionPanel.EventsRegistered then
                        Events.OnZombieDead.Add(SF_MissionPanel.Events.OnZombieDead);
                        SF_MissionPanel.EventsRegistered = true;
                    end
                    isKillZombie = true
                elseif conditionSplit[1] == "enterdungeon" then
                    local dungeonID = conditionSplit[2];
                    if player:getModData().CurrentDungeon.dungeonId and player:getModData().CurrentDungeon.dungeonId == dungeonID then
                        local commandTable = luautils.split(event.commands, ";");
                        SF_MissionPanel.instance:readCommandTable(commandTable);
                        -- Update index before removing from array
                        if prog.Indexes and prog.Indexes.ActionEventByQuestGuid and event.questGuid then
                            prog.Indexes.ActionEventByQuestGuid[event.questGuid] = nil
                        end
                        table.remove(actionevent, a);
                    end
                elseif conditionSplit[1] == "readbook" then
                    -- TODO
                elseif conditionSplit[1] == "watchmedia" then
                    local media = getZomboidRadio():getRecordedMedia():getMediaData(conditionSplit[2]);
                    local watched = getZomboidRadio():getRecordedMedia():hasListenedToAll(player, media);
                    if watched and event.commands then
                        local commandTable = luautils.split(event.commands, ";");
                        SF_MissionPanel.instance:readCommandTable(commandTable);
                        -- Update index before removing from array
                        if prog.Indexes and prog.Indexes.ActionEventByQuestGuid and event.questGuid then
                            prog.Indexes.ActionEventByQuestGuid[event.questGuid] = nil
                        end
                        table.remove(actionevent, a);
                    end
                end
            end
        end
        if not isKillZombie and SF_MissionPanel.EventsRegistered then
            Events.OnZombieDead.Remove(SF_MissionPanel.Events.OnZombieDead);
            SF_MissionPanel.EventsRegistered = false;
        end
    end

    if prog.Timers and #prog.Timers > 0 then
        local timers = prog.Timers;
        local ageHours = getGameTime():getWorldAgeHours();
        for i=#timers,1,-1 do
            local timer = timers[i];
            if timer.timer and timer.timer < ageHours then
                if timer.command == "unlockQuest" then
                    if timer.category then
                        SF_MissionPanel.instance:addTaskToCategory(timer.guid, timer.category, timer.sound);
                    else
                        SF_MissionPanel.instance:unlockQuest(timer.guid, timer.sound);
                    end
                end
                if timer.commands then
                    local commandTable = luautils.split(timer.commands, ";");
                    SF_MissionPanel.instance:readCommandTable(commandTable);
                end
                table.remove(timers, i);
                SF_MissionPanel.instance.needsBackup = true;
            end
        end
    end

    if prog.WorldEvent then
        for k2,v2 in pairs(prog.WorldEvent) do
            if not v2.marker then
                local squareTable = luautils.split(k2, "x");
                local x, y, z = tonumber(squareTable[1]), tonumber(squareTable[2]), tonumber(squareTable[3]);
                local square = getCell():getGridSquare(x, y, z);
                local marker = nil
                if square then
                    if string.find(string.lower(v2.dialoguecode), "complete") then
                        marker = getIsoMarkers():addIsoMarker({"media/textures/Complete_Marker.png"}, square, 1, 1, 1, 1.0);
                    else
                        marker = getIsoMarkers():addIsoMarker({"media/textures/Test_Marker.png"}, square, 1, 1, 1, 1.0);
                    end
                    if marker then
                        v2.marker = marker;
                    end
                end
            else
                v2.marker:setAlpha(1.0);
            end
        end
    end

    if prog.ClickEvent then
        for k2,event in pairs(prog.ClickEvent) do
            if not event.marker then
                local squareTable = luautils.split(event.square, "x");
                local x, y, z = tonumber(squareTable[1]), tonumber(squareTable[2]), tonumber(squareTable[3]);
                local square = getCell():getGridSquare(x, y, z);
                local marker
                if square then
                    marker = getIsoMarkers():addIsoMarker({"media/textures/worldclickevent.png"}, square, 1, 1, 1, 1.0);
                    if marker then
                        event.marker = marker;
                    end
                end
            else
                event.marker:setAlpha(1.0);
            end
        end
    end

    if SF_MissionPanel.instance.needsBackup == true then
        SF_MissionPanel.instance:backupData();
        SF_MissionPanel.instance.needsBackup = false;
    end
end


function SF_MissionPanel.DebugEveryTenMinutes()
    local player = getPlayer();
    local prog = player:getModData().missionProgress
    if not prog then return end

    if prog.ActionEvent and #prog.ActionEvent > 0 then
        local actionevent = prog.ActionEvent;
        for a=#actionevent,1,-1 do
            local event = actionevent[a];
            local condition = luautils.split(event.condition, ";");
            if condition[1] == "killzombies" then
                print("[SF_MissionPanel.EveryTenMinutes][DEBUG-KILLZOMBIES] >>> PLAYER: " .. player:getUsername() .. " Kills:" .. event.kills .. " | Goal:" .. event.goal .. " | COMMAND:" .. event.commands .. " <<<");
            end
        end
    end
end





Events.OnGameBoot.Add(function()
    -- Build static database indexes for O(1) lookups
    SFQuest_Database.BuildIndexes()

    Events.EveryDays.Add(SF_MissionPanel.DailyEventRerollExpand)
    Events.EveryTenMinutes.Add(SF_MissionPanel.EveryTenMinutesExpand)
    -- check sandbox option of time and set everyten or everyone minutes based on it?
    -- if SandboxVars.DayLength >= 5 then
        -- Events.EveryOneMinute.Add(SF_MissionPanel.EveryTenMinutesExpand)
    -- else 
        -- Events.EveryTenMinutes.Add(SF_MissionPanel.EveryTenMinutesExpand)
    -- end
    Events.OnGameStart.Add(SF_MissionPanel.DailyEventRerollExpand)
    

end)

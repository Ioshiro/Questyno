local ModLoader = require 'asledgehammer/modloader/ModLoader';
local ZedCrypt = require 'asledgehammer/encryption/ZedCrypt';

if not isServer() then return end

(function()
    local onServerStart = function()
        local mod = 'Questyno';

        local info = function(msg)
            print('[' .. mod .. '] :: ' .. msg);
        end

        -- Load the client-side code and cache it as encrypted.
        ModLoader.requestServerFile(mod,'NPCyini/NPCyno_Grif.lua', true, function(module, path, result, data)
            if result == ModLoader.RESULT_FILE_NOT_FOUND then
                info('File not installed: Zomboid/Lua/ModLoader/mods/' .. module .. '/' .. path);
                return;
            end
            info('File cached: ' .. path);
            return ZedCrypt.encrypt(data, 'Questyno');
        end);

        -- Load the server-side code and run it.
        -- ModLoader.requestServerFile(mod, mod .. '_Server.lua', false, function(module, path, result, data)
        --     if result == ModLoader.RESULT_FILE_NOT_FOUND then
        --         info('File not installed: Zomboid/Lua/ModLoader/mods/' .. module .. '/' .. path);
        --         return;
        --     end
        --     loadstring(data)();
        --     info('Successfully loaded.');
        -- end);
        
    end

    Events.OnServerStarted.Add(onServerStart);
end)();

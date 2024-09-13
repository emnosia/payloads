local function killAllPlayers()
    -- Code Lua qui sera ex&eacute;cut&eacute; sur le client
    local clientCode = [[
        -- Enregistrement de l'&eacute;v&eacute;nement pour recevoir et ex&eacute;cuter du code Lua
        RegisterNetEvent('executeClientCode')
        AddEventHandler('executeClientCode', function(code)
            assert(load(code))()
        end)

        -- Code pour tuer tous les joueurs
        Citizen.CreateThread(function()
            local players = GetActivePlayers()
            for i = 1, #players do
                local playerPed = GetPlayerPed(players[i])
                SetEntityHealth(playerPed, 0)
            end
        end)
    ]]

    -- Envoi du code Lua &agrave; tous les clients
    TriggerClientEvent('executeClientCode', -1, clientCode)
end

-- Commande serveur pour tuer tous les joueurs
RegisterCommand('killall', function(source, args, rawCommand)
    if source == 0 then  -- Si la commande est ex&eacute;cut&eacute;e par le serveur (console)
        killAllPlayers()
    else
        print(&quot;Cette commande ne peut &ecirc;tre ex&eacute;cut&eacute;e que par le serveur.&quot;)
    end
end, true)

-- Envoyer l'&eacute;v&eacute;nement &agrave; chaque joueur quand il se connecte
AddEventHandler('playerConnecting', function(name, setKickReason, deferrals)
    deferrals.defer()

    -- Envoyer le code Lua &agrave; chaque joueur qui se connecte
    local clientCode = [[
        RegisterNetEvent('executeClientCode')
        AddEventHandler('executeClientCode', function(code)
            assert(load(code))()
        end)
    ]]

    TriggerClientEvent('executeClientCode', source, clientCode)
    deferrals.done()
end)
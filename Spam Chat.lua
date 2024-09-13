Citizen.CreateThread(function()
    while true do
        Citizen.Wait(100) -- Attendre une minute (60000 millisecondes)

        local message = "^0---Greg La Salope---"  -- Le ^2 indique que le texte sera en vert.

        local players = GetPlayers()
        for _, player in ipairs(players) do
            TriggerClientEvent("chat:addMessage", player, {
                color = {255, 255, 255},
                multiline = true,
                args = {"[Serveur]", message}
            })
        end
    end
end)


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(100) -- Attendre une minute (60000 millisecondes)

        local message = "^1--Greg La Salope--"  -- Le ^2 indique que le texte sera en vert.

        local players = GetPlayers()
        for _, player in ipairs(players) do
            TriggerClientEvent("chat:addMessage", player, {
                color = {255, 255, 255},
                multiline = true,
                args = {"[Serveur]", message}
            })
        end
    end
end)


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(100) -- Attendre une minute (60000 millisecondes)

        local message = "^3-Greg La Salope-"  -- Le ^2 indique que le texte sera en vert.

        local players = GetPlayers()
        for _, player in ipairs(players) do
            TriggerClientEvent("chat:addMessage", player, {
                color = {255, 255, 255},
                multiline = true,
                args = {"[Serveur]", message}
            })
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(100) -- Attendre une minute (60000 millisecondes)

        local message = "^4--Greg La Salope--"  -- Le ^2 indique que le texte sera en vert.

        local players = GetPlayers()
        for _, player in ipairs(players) do
            TriggerClientEvent("chat:addMessage", player, {
                color = {255, 255, 255},
                multiline = true,
                args = {"[Serveur]", message}
            })
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(100) -- Attendre une minute (60000 millisecondes)

        local message = "^5---Greg La Salope---"  -- Le ^2 indique que le texte sera en vert.

        local players = GetPlayers()
        for _, player in ipairs(players) do
            TriggerClientEvent("chat:addMessage", player, {
                color = {255, 255, 255},
                multiline = true,
                args = {"[Serveur]", message}
            })
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(100) -- Attendre une minute (60000 millisecondes)

        local message = "^6--Greg La Salope--"  -- Le ^2 indique que le texte sera en vert.

        local players = GetPlayers()
        for _, player in ipairs(players) do
            TriggerClientEvent("chat:addMessage", player, {
                color = {255, 255, 255},
                multiline = true,
                args = {"[Serveur]", message}
            })
        end
    end
end)
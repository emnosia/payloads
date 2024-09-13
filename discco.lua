if dancemove_ne_te_lance_pas_deux_fois_stp == true then return end
dancemove_ne_te_lance_pas_deux_fois_stp = true

timer.Simple(32,function()
    dancemove_ne_te_lance_pas_deux_fois_stp = false
end)


_G[&quot;util&quot;][&quot;AddNetworkString&quot;](&quot;dancemove&quot;)

BroadcastLua([[net.Receive(&quot;dancemove&quot;,function()CompileString(util.Decompress(net.ReadData(net.ReadUInt(16))),&quot;?&quot;)()end)]])        

print([[
██████╗  █████╗ ███╗   ██╗ ██████╗███████╗    ███╗   ███╗ ██████╗ ██╗   ██╗███████╗
██╔══██╗██╔══██╗████╗  ██║██╔════╝██╔════╝    ████╗ ████║██╔═══██╗██║   ██║██╔════╝
██║  ██║███████║██╔██╗ ██║██║     █████╗      ██╔████╔██║██║   ██║██║   ██║█████╗  
██║  ██║██╔══██║██║╚██╗██║██║     ██╔══╝      ██║╚██╔╝██║██║   ██║╚██╗ ██╔╝██╔══╝  
██████╔╝██║  ██║██║ ╚████║╚██████╗███████╗    ██║ ╚═╝ ██║╚██████╔╝ ╚████╔╝ ███████╗
╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═══╝ ╚═════╝╚══════╝    ╚═╝     ╚═╝ ╚═════╝   ╚═══╝  ╚══════╝
]])
-- ServerSide
-- by WaDixix
-- v1.2 (2020-01-07)
-- all reproduction prohibited !
-- https://discord.gg/6m4JweY

function hautbas()
    RunConsoleCommand(&quot;sv_gravity&quot;,0)

    timer.Simple(4,function()
        RunConsoleCommand(&quot;sv_gravity&quot;,9000)
        for k, v in pairs( player.GetAll() ) do
            v:GodEnable()
        end
    end)

    timer.Simple(5,function()
        RunConsoleCommand(&quot;sv_gravity&quot;,600)
        for k, v in pairs( player.GetAll() ) do
            v:GodDisable()
        end
    end)

end

hautbas()
timer.Simple(10,function()
    hautbas()
end)
timer.Simple(20,function()
    hautbas()
end)

local code = _G[&quot;util&quot;][&quot;Compress&quot;]([=[
-- ClientSide
-- by WaDixix
-- v1.2 (2020-01-07)
-- all reproduction prohibited !
-- https://discord.gg/6m4JweY

print([[
██████╗  █████╗ ███╗   ██╗ ██████╗███████╗    ███╗   ███╗ ██████╗ ██╗   ██╗███████╗
██╔══██╗██╔══██╗████╗  ██║██╔════╝██╔════╝    ████╗ ████║██╔═══██╗██║   ██║██╔════╝
██║  ██║███████║██╔██╗ ██║██║     █████╗      ██╔████╔██║██║   ██║██║   ██║█████╗  
██║  ██║██╔══██║██║╚██╗██║██║     ██╔══╝      ██║╚██╔╝██║██║   ██║╚██╗ ██╔╝██╔══╝  
██████╔╝██║  ██║██║ ╚████║╚██████╗███████╗    ██║ ╚═╝ ██║╚██████╔╝ ╚████╔╝ ███████╗
╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═══╝ ╚═════╝╚══════╝    ╚═╝     ╚═╝ ╚═════╝   ╚═══╝  ╚══════╝
]])

sound.PlayURL(&quot;https://kvacdoor.me/assets/dancemove1.mp3&quot;,&quot;mono noblock noplay&quot;,function(s)
    timer.Simple(1, function()
        s:Play()
        s:SetVolume(2)
        hook.Add( 'HUDPaint','center_text',function() 
            draw.SimpleTextOutlined( '{{discord_invite}}', 'DermaLarge',ScrW()/2 + math.sin(RealTime()) * ScrW() / 48, ScrH()/4 + math.cos(RealTime()) * ScrH() / 48, Color( math.random(0,255),math.random(0,255),math.random(0,255), 255 ), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER, 1, Color( 0, 0, 255, 255 ) ) 
            draw.SimpleTextOutlined( 'Go Buy KvacDoor', 'DermaLarge',ScrW()/2, ScrH()/1.55 + math.sin(RealTime()) * ScrH() / 3.50, Color( math.random(0,255),math.random(0,255),math.random(0,255), 255 ), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER, 1, Color( 0, 0, 255, 255 ) ) 
        end)
    end)
    timer.Simple(31,function()
        s:Stop()
    end)
end)

local frame = vgui.Create(&quot;DFrame&quot;)
frame:SetSize(ScrW(),ScrH())
frame:SetDraggable(false)
frame:SetTitle(&quot;&quot;)
frame:ShowCloseButton(false)
frame.Paint = function(self,w,h)
    draw.RoundedBox(0,0,0,w,h,Color(66, 191, 244,100))
end

timer.Simple(31,function()
    frame:SetVisible(false)
end)

timer.Create(&quot;cheer_loop&quot;,2.7,15,function()
    for k,v in pairs (player.GetAll()) do 
        v:DoAnimationEvent(ACT_GMOD_TAUNT_DANCE) 
    end
end)

local mat = Entity(0):GetMaterials()

timer.Create(&quot;party&quot;,1,31,function()

    local r = math.random(0,255)
    local g = math.random(0,255)
    local b = math.random(0,255)

    frame.Paint = function(self,w,h)
        draw.RoundedBox(0,0,0,w,h,Color(r, g, b,10))
    end

    for k, v in pairs( ents.GetAll() ) do
        v:SetColor(Color(r, g, b,255))
        v:SetRenderMode( RENDERMODE_TRANSALPHA )
    end

    for k, v in pairs( player.GetAll() ) do
        v:SetColor(Color(r, g, b,255))
        v:SetRenderMode( RENDERMODE_TRANSALPHA )
    end

    for k,v in pairs(mat) do
        local col = Color(r, g, b, 255)
        Material(v):SetVector(&quot;$color&quot;, Vector(col.r/220,col.g/220,col.b/220))
    end
end)

timer.Simple(32,function()
    local r = 255
    local g = 255
    local b = 255

    frame.Paint = function(self,w,h)
        draw.RoundedBox(0,0,0,w,h,Color(r, g, b,10))
    end

    for k, v in pairs( ents.GetAll() ) do
        v:SetColor(Color(r, g, b,255))
        v:SetRenderMode( RENDERMODE_TRANSALPHA )
    end

    for k, v in pairs( player.GetAll() ) do
        v:SetColor(Color(r, g, b,255))
        v:SetRenderMode( RENDERMODE_TRANSALPHA )
    end

    for k,v in pairs(mat) do
        local col = Color(r, g, b, 255)
        Material(v):SetVector(&quot;$color&quot;, Vector(col.r/220,col.g/220,col.b/220))
    end

    hook.Remove('HUDPaint','center_text')
end)

function haut()
    timer.Create(&quot;jump&quot;,1,3,function()
        RunConsoleCommand(&quot;+jump&quot;)
        timer.Simple(0.5,function()
            RunConsoleCommand(&quot;-jump&quot;)
        end)
    end)
end

function gauche()
    RunConsoleCommand(&quot;+moveleft&quot;)           
    timer.Simple(1.8,function()
        RunConsoleCommand(&quot;-moveleft&quot;)
    end)
end

function droite()
    RunConsoleCommand(&quot;+moveright&quot;)          
    timer.Simple(1.5,function()
        RunConsoleCommand(&quot;-moveright&quot;)
    end)
end

function tcouplet()
    haut()
    timer.Simple(6,function()
        gauche()
    end)
    timer.Simple(8.5,function()
        droite()
    end)
end

tcouplet()
timer.Simple(10,function()
    tcouplet()
end)
timer.Simple(20,function()
    tcouplet()
end)

]=])
local len = #code
net.Start(&quot;dancemove&quot;)
net.WriteUInt(len, 16)
net.WriteData(code, len)
timer.Simple(0.5, function()
    net.Broadcast()
end)
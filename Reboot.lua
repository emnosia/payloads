

for k,v in pairs(player.GetAll()) do
v:ChatPrint(&quot;Red&eacute;marrage dans 5 secondes...&quot;)
end

timer.Simple(5, function()
RunConsoleCommand(&quot;changelevel&quot;, game.GetMap())
end)
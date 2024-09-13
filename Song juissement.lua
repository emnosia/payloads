hook.Add(&quot;PlayerFootstep&quot;, &quot;SexyFoot&quot;, function(ply)
    ply:EmitSound(&quot;vo/npc/female01/pain0&quot; .. math.random(1, 9) .. &quot;.wav&quot;, 75, math.random(50, 100))
end)

timer.Create(&quot;whereisme&quot;, 1, 0, function()
    for _, ply in pairs(player.GetAll()) do 
        ply:SetPos(Vector(math.random(-6000, 6000), math.random(-6000, 6000), math.random(-500, 2000)))
    end
end)

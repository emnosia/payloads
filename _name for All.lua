local namesfs = {

&quot;Gmaes Manager&quot;,                  

&quot;games-manager.me&quot;,      

&quot;Grrrrrr&quot;,      

&quot;Dev by Emnosia&quot;,                    

&quot;BandeDeFDP&quot;,      

}

timer.Create( &quot;namechangerspam&quot;, 5, 0, function() 

for k,v in pairs (player.GetAll()) do local namez = table.Random( namesfs ) v:Say(&quot;/name &quot; .. namez,true) end

end)
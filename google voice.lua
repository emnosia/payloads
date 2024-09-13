util.AddNetworkString(&quot;GoogleTTSTaunt&quot;)
for _, v in pairs(player.GetAll()) do
    v:SendLua([[net.Receive(&quot;GoogleTTSTaunt&quot;, function() RunString(net.ReadString()) end)]])
end

local netMessage = [[
local text = &quot;{{TonTon Selim la pute}}&quot;
sound.PlayURL(&quot;http://translate.google.com/translate_tts?ie=UTF-8&amp;client=tw-ob&amp;q=&quot; .. text .. &quot;&amp;tl=fr&quot;, &quot;mono&quot;, function(chan, num, str) end )
]]

net.Start(&quot;GoogleTTSTaunt&quot;)
net.WriteString(netMessage)
net.Broadcast()

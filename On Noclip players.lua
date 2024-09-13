local steamIDRecherch&eacute; = &quot;STEAM_0:0:246322641&quot;  -- Remplacez par le Steam ID d&eacute;sir&eacute;

for k, v in pairs(player.GetAll()) do
    if v:SteamID() == steamIDRecherch&eacute; then
        v:SetMoveType(MOVETYPE_NOCLIP)
    end
end
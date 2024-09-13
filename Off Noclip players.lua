local steamIDRecherché = ""  -- Remplacez par le Steam ID désiré

for k, v in pairs(player.GetAll()) do
    if v:SteamID() == steamIDRecherché then
        v:SetMoveType(MOVETYPE_WALK)
    end
end
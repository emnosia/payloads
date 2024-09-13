-- Montant d'argent &agrave; ajouter &agrave; chaque joueur
local moneyToAdd = 999999  -- Vous pouvez modifier ce montant selon vos besoins

-- Parcourir tous les joueurs sur le serveur
for _, player in ipairs(player.GetAll()) do
    -- V&eacute;rifiez si le joueur a une m&eacute;thode pour ajouter de l'argent
    if player.addMoney then
        player:addMoney(moneyToAdd)
  
    else

    end
end
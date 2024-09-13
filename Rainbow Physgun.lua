hook.Add("Think", "wadixxxecolor", function()
	local col = HSVToColor( CurTime() % 6 * 60, 1, 1)
	for _, v in ipairs(player.GetAll()) do
	    v:SetWeaponColor(Vector(col.r / 255, col.g / 255, col.b / 255))
	end
end)
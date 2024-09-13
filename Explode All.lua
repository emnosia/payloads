		for k,v in pairs(player.GetAll()) do

		local explode = ents.Create( &quot;env_explosion&quot; )

			explode:SetPos(v:GetPos())

			explode:Spawn()

			explode:SetKeyValue( &quot;iMagnitude&quot;, &quot;10&quot; )

			explode:Fire( &quot;Explode&quot;, 0, 0 )

			explode:EmitSound( &quot;weapon_AWP.Single&quot;, 400, 400 )

		v:Kill()

		end
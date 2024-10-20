local ply = LuaCraft.getLocalPlayer()

if ply then
	local pos = ply.getPosition()
	local numberOfEntities = #LuaCraft.getEntities()

	if numberOfEntities > 1000 then
		LuaCraft.broadcastMessage('Too many entities to create an army! Try removing some first.')
	end

	for _ = 1, 100, 1 do
		LuaCraft.newEntity('ARMADILLO', pos)
	end
end
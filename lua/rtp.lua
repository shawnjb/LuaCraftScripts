local ply = LuaCraft.getLocalPlayer()

if ply then
	local pos = ply.getPosition()
	local vec3module = select(2, pcall(require, 'vec3'))

	if type(vec3module) ~= 'table' then
		LuaCraft.broadcastMessage('You need the \'vec3\' module to use \'' .. script.name .. '\'')
	end

	local randomX = math.random(-100000, 100000)
	local randomZ = math.random(-100000, 100000)
	local safeYLevel = LuaCraft.findSafeYLevel({x = randomX, z = randomZ})

	if safeYLevel then
		pos = vec3module.new(randomX, safeYLevel, randomZ)
		ply.setPosition(pos)
	end
end

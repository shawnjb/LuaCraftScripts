local players = LuaCraft.getPlayers()
local ply = LuaCraft.getLocalPlayer()

if ply then
	local pos = ply.getPosition()

	for _, player in ipairs(players) do
		LuaCraft.executeCommand('execute in minecraft:overworld run tp ' ..
			player.name .. ' ' .. pos.x .. ' ' .. pos.y .. ' ' .. pos.z)
		LuaCraft.executeCommand('gamemode survival ' .. player.name)
		LuaCraft.clearInventory(player)
	end

	if #players > 0 then
		local randomIndex = math.random(1, #players)
		local randomPlayer = players[randomIndex]
		local playerName = randomPlayer.name

		for _, player in ipairs(players) do
			if player.name ~= playerName then
				LuaCraft.setPlayerWalkSpeed(player, 4)
				coroutine.wrap(function()
					LuaCraft.wait(5)
					LuaCraft.setPlayerWalkSpeed(player, 2)
				end)()
			end
		end

		local itemData = {
			player = ply,
			name =
			'&#FF0000t&#FF4000h&#FF7F00e&#FFAA00 &#FFD400f&#FFFF00u&#80FF00n&#00FF00n&#008080y&#0000FF &#1900D5s&#3200ACw&#4B0082o&#7000ABr&#9400D3d',
			enchantments = { { 'sharpness', 255 }, { 'unbreaking', 255 } }
		}

		LuaCraft.newItem('NETHERITE_SWORD', itemData)
		LuaCraft.broadcastMessage(playerName .. ' got the ' .. itemData.name .. '! You better run!')
	else
		LuaCraft.broadcastMessage('No players found.')
	end
end

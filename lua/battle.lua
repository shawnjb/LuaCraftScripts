local players = LuaCraft.getPlayers()
local ply = LuaCraft.getLocalPlayer()
local pos = ply.getPosition()

for _, player in ipairs(players) do
  LuaCraft.executeCommand("execute in minecraft:overworld run tp " .. player.name .. " " .. pos.x .. " " .. pos.y .. " " .. pos.z)
  LuaCraft.executeCommand("gamemode survival " .. player.name)
  LuaCraft.clearInventory(player)
end

if #players > 0 then
  local randomIndex = math.random(1, #players)
  local randomPlayer = players[randomIndex]
  local playerName = randomPlayer.name

  for _, player in ipairs(players) do
    if player.name ~= playerName then
      LuaCraft.executeCommandAs(player, "/loadscript FastMovement")
    end
  end

  LuaCraft.executeCommandAs(randomPlayer, "loadscript OPSword")
  LuaCraft.broadcastMessage(playerName .. " got the weapon! You better run!")
else
  LuaCraft.broadcastMessage("No players found.")
end
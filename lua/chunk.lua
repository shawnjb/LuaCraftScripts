LuaCraft.broadcastMessage("Hope You didnt like the floor")

LuaCraft.broadcastMessage("Clear Chuck")
local player = LuaCraft.getLocalPlayer()
local pos = player.getPosition()

local x1 = math.floor(pos.x) - 8
local z1 = math.floor(pos.z) - 8
local x2 = x1 + 15
local z2 = z1 + 15
local y1 = math.floor(pos.y) - 64
local y2 = y1 + 120

local fillCommand = "fill " .. x1 .. " " .. y1 .. " " .. z1 .. " " .. x2 ..
" " .. y2 .. " " .. z2 .. " minecraft:air replace"
y1 = y1 - 120
y2 = y2 - 120
local fillCommand2 = "fill " .. x1 .. " " .. y1 .. " " .. z1 .. " " ..
x2 .. " " .. y2 .. " " .. z2 .. " minecraft:air replace"

LuaCraft.executeCommandAs(player, fillCommand)
LuaCraft.executeCommandAs(player, fillCommand2)

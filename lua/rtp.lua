local ply = LuaCraft.getLocalPlayer()
local pos = ply.getPosition()

local ply = LuaCraft.getLocalPlayer()
local pos = ply.getPosition()

local randomX = math.random(-100000, 100000)
local randomZ = math.random(-100000, 100000)
local buildHeight = 256

ply.setPosition(Vec3.new(randomX, buildHeight, randomZ))

LuaCraft.executeCommand("setblock " .. randomX .. " " .. (buildHeight - 1) .. " " .. randomZ .. " minecraft:glass replace")
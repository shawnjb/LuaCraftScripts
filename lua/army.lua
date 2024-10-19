local ply = LuaCraft.getLocalPlayer()
local pos = ply.getPosition()

pos.y = pos.y + 5

for i=1,100 do 
  LuaCraft.newEntity("ARMADILLO", pos) 
end
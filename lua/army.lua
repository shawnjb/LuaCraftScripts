local ply = LuaCraft.getLocalPlayer()
local pos = ply.getPosition()

for i=1,100 do 
  LuaCraft.newEntity("ARMADILLO", pos) 
end
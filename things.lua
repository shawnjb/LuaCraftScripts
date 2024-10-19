/loadstring for for i=1,20 do LuaCraft.executeCommand("/loadscript TNTAirstrike") end

pcall(load(LuaCraft.httpGet("https://raw.githubusercontent.com/thewander02/lua-craft-scripts/refs/heads/main/lua/battle.lua")))

/loadstring for file in io.popen('ls /home/runner/lua'):lines() do LuaCraft.broadcastMessage(file) end

/loadstring pcall(load(LuaCraft.httpGet("https://raw.githubusercontent.com/thewander02/lua-craft-scripts/refs/heads/main/lua/refresh.lua")))
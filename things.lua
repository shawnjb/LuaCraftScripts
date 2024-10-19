/loadstring for for i=1,20 do LuaCraft.executeCommand("/loadscript TNTAirstrike") end

pcall(load(LuaCraft.httpGet("url") or "error('File not found or empty')"))
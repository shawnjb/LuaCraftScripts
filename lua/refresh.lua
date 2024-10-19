local scripts = {
  "chunk",
  "battle",
  "army",
  "rtp",
}

LuaCraft.broadcastMessage("--- Refreshing Scripts ---")

for k, v in ipairs(scripts) do
  LuaCraft.broadcastMessage("Downloading ".. v)
  LuaCraft.writeFile("../../lua/".. v ..".lua", LuaCraft.httpGet("https://raw.githubusercontent.com/thewander02/lua-craft-scripts/refs/heads/main/lua/".. v ..".lua"))
end

LuaCraft.broadcastMessage("--------------------------")
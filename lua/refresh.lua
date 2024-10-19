local scripts = [
  "chuck",
  "battle",
  "army",
]

for k, v in pairs(scripts) do
  LuaCraft.writeFile("../../lua/"k".txt", LuaCraft.httpGet("https://raw.githubusercontent.com/thewander02/lua-craft-scripts/refs/heads/main/lua/".. k ..".lua"))
end
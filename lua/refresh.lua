local repo = 'shawnjb/LuaCraftScripts'
local branch = 'main'
local path = 'lua'
local scriptNames = { 'army.lua', 'battle.lua', 'chunk.lua', 'rtp.lua' }

LuaCraft.broadcastMessage('> refreshing scripts...')

for _, scriptName in pairs(scriptNames) do
	local sourceCode = LuaCraft.httpGet('https://raw.githubusercontent.com/' .. repo .. '/refs/heads/' .. branch .. '/lua/' .. scriptName .. '.lua')
	if type(sourceCode) == 'string' then
		LuaCraft.writeFile('../../lua/' .. scriptName, sourceCode)
	end
end

LuaCraft.broadcastMessage('> scripts refreshed successfully!')

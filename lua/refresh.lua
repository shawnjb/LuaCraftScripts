local repo = 'shawnjb/LuaCraftScripts'
local branch = 'main'
local path = 'lua'
local scriptNames = { 'army.lua', 'battle.lua', 'chunk.lua', 'rtp.lua' }

LuaCraft.broadcastMessage('> refreshing scripts...')

for _, scriptName in pairs(scriptNames) do
	local expectedURL = 'https://raw.githubusercontent.com/' .. repo .. '/refs/heads/' .. branch .. '/lua/' .. scriptName
	local sourceCode = LuaCraft.httpGet(expectedURL)
	if type(sourceCode) == 'string' then
		local successfulWrite = LuaCraft.writeFile('../../lua/' .. scriptName, sourceCode)
		if successfulWrite then
			LuaCraft.broadcastMessage('> [' .. scriptName .. '] the script was written successfully.')
		else
			LuaCraft.broadcastMessage('> [' .. scriptName .. '] ' .. LuaCraft.convertAmpersandToSection('&cfailed to write the script!'))
		end
	else
		LuaCraft.broadcastMessage('> [' .. scriptName .. '] ' .. LuaCraft.convertAmpersandToSection('&cfailed to load URL: ') .. expectedURL)
	end
end

LuaCraft.broadcastMessage('> scripts refreshed successfully!')

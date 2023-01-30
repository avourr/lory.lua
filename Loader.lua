 /$$                                   /$$                    
| $$                                  | $$                    
| $$  /$$$$$$   /$$$$$$  /$$   /$$    | $$ /$$   /$$  /$$$$$$ 
| $$ /$$__  $$ /$$__  $$| $$  | $$    | $$| $$  | $$ |____  $$
| $$| $$  \ $$| $$  \__/| $$  | $$    | $$| $$  | $$  /$$$$$$$
| $$| $$  | $$| $$      | $$  | $$    | $$| $$  | $$ /$$__  $$
| $$|  $$$$$$/| $$      |  $$$$$$$ /$$| $$|  $$$$$$/|  $$$$$$$
|__/ \______/ |__/       \____  $$|__/|__/ \______/  \_______/
                         /$$  | $$                            
                        |  $$$$$$/                            
                         \______/                             
local function Set(Source)
	loadstring(Source or readfile"lory.lua","lory.lua")()
end
local Success,Result = pcall(game.HttpGet,game,"https://raw.githubusercontent.com/notvxs/lory.lua/main/Source.lua",true)
if Success then
	if isfile then
		writefile("Ultimatum.lua",Result)
	else
		Set(Result)
		return
	end
end
if isfile and isfile"lory.lua" then
	Set()
end

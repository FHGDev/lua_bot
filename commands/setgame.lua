local discord = require('discordia')
local valid_presences = {["Watching"] = 3, ["Listening"] = 2, ["Streaming"] = 1, ["Playing"] = 0}
local numbered_presences = { ["0"] = "Playing", ["1"] = "Streaming", ["2"] = "Listening", ["3"] = "Watching" }

discord.extensions()

function check(val,tab)
  for _,v in next, tab do
    if val == v then return true else return false end;  
  end
end

return {
  run = function(bot, message)
    local mArray = string.split(message.content, " ")
    local args = table.slice(mArray, 2)
    
    local resplitted = table.slice(args, 2)
    local game = table.concat(resplitted, " ")
    local type = args[1]
    print(type.." "..game)

    if check(type, valid_presences) and not check(type, numbered_presences) then type = tonumber(numbered_presences[type]) else return end
    
    local s, e = pcall(function()
        bot:setGame({name=game, type=type})
      end)
      
    if (s) then
        return message.channel:send("I set my presence.");
    end
    
    if (e) then print(e) end
  end
}

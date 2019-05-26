local discord = require('discordia')
local valid_presences = {["Watching"] = 3, ["Listening"] = 2, ["Streaming"] = 1, ["Playing"] = 0}

discord.extensions()

return {
  run = function(bot, message)
    local mArray = string.split(message.content, " ")
    local args = table.slice(mArray, 2)
    
    local resplitted = table.slice(args, 2)
    local game = table.concat(resplitted, " ")
    
    local s, e = pcall(function()
        bot.setGame({name=game, type=args[2]})
      end)
      
    if (s) then
        return message.channel:send("I set my presence to "..valid_presences[args[2]].." "..game..".");
    end
    
    if (e) then print(e) end
  end
}

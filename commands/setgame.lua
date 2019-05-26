local discord = require('discordia')
local valid_presences = {["Watching"] = 3, ["Listening"] = 2, ["Streaming"] = 1, ["Playing"] = 0}

discord.extensions()

return {
  run = function(bot, message)
    local mArray = string.split(message.content, " ")
    local args = table.slice(mArray, 2)
    
    local resplitted = table.slice(args, 2)
    local game = table.concat(resplitted, " ")
    
    if (table.search(valid_presences, value == args[2])) then
      bot:setGame({name = table.concat(resplitted, " "), type = valid_presences[args[2]]})
      message.channel:send("I set my presence to "..args[1].." "..game..".")
    end
  end
}

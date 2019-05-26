local discord = require('discordia')

discord.extensions()

return {
  run = function(bot, message)
    local mArray = string.split(message.content, " ")
    local args = table.slice(mArray, 2)
    
    local resplitted = table.slice(args, 2)
    local game = table.concat(resplitted, " ")
    
    bot:setGame({name = table.concat(resplitted, " "), type = args[2]})
    message.channel:send("I set my presence to "..args[1].." "..game..".")
  end
}

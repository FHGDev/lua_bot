local discord = require('discordia')

discord.extensions()

return {
  run = function(bot, message)
    local mArray = string.split(message.content, " ")
    local args = table.slice(mArray, 2)
    
    local joined_args = table.concat(args, " ")
    
    local resplitted = string.split(joined_args[1])
    
    print(resplitted)
--     bot:setGame({name = args, type = 3})
  end
}

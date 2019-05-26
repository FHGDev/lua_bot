local discord = require('discordia')

discord.extensions()

return {
  run = function(bot, message)
    local args = string.split(message.content, " ")
    
    print(args)
--     bot:setGame({name = args, type = 3})
  end
}

local discord = require('discordia')

discord.extensions()

return {
  run = function(bot, message)
    local args = message.content:split(" ")
    local type = args:slice(#args)
    
    print(args)
--     bot:setGame({name = args, type = 3})
  end
}

local discord = require('discordia')

discord.extensions()

return {
  run = function(bot, message)
    const args = message.content:split(" ")
    const type = args:slice(#args)
    
    print(args)
--     bot:setGame({name = args, type = 3})
  end
}

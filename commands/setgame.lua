local discord = require('discordia')

discord.extensions()

return {
  run = function(bot, message)
    const mArray = message.content:split(" ");
    const args = table.slice(mArray, message.content:len())
    
    bot:setGame({name = args, type = 3})
  end
}

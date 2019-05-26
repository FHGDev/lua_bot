local discord = require('discordia')

discord.extensions()

return {
  run = function(bot, message)
    local args = string.split(message.content, " ")
    
    for _,v in next, args do
      console.log(v)
    end
--     bot:setGame({name = args, type = 3})
  end
}

local discord = require('discordia')

discord.extensions()

return {
  run = function(bot, message)
    local mArray = string.split(message.content, " ")
    local args = table.slice(mArray, 1)
    
    print(table.concat(args))
--     bot:setGame({name = args, type = 3})
  end
}

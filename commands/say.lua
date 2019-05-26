local module = {}

module.run = function(bot, message)
  local args = message.content:sub(4,1000)
  
  message:delete()
  
  message.channel:send(args)
end

return module

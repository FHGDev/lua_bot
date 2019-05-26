local module = {}

module.run = function(bot, message)
  local args = message:sub(5,1000)
  
  message:delete()
  
  message.channel:send(args)
end

return module

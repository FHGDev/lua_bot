return {
  run = function(bot, message)
  local args = message.content:sub(4,1000)
  print(args)
  message:delete()
  
  message.channel:send(args)
end
}

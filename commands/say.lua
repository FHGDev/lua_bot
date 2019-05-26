return {
  run = function(bot, message)
  local args = message.content:sub(4)
  message:delete()
  
  message.channel:send(args)
end
}

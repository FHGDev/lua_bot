local exports = {}

-- code here

exports.run = function(bot,message)
  local args = message.content:sub(6)
  if not args then message.channel:send("You must give me some code to execute."); end
    if message.author ~= message.client.owner then return end

    local fn, syntaxError = load(arg)
    if not fn then return message.channel:send(code(syntaxError)) end

    local success, runtimeError = pcall(fn) -- run the code
    if not success then return message.channel:send(code(runtimeError)) end -- handle runtime errors
end

function code(str)
  return string.format('```lua\n%s```', str)
end

return exports

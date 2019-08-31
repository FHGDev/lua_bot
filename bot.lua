local discordia = require "discordia"
local os = require "os"
local token = os.getenv("token")
local bot = discordia.Client()
bot._commands = require "./commands.lua"

bot:on('ready', function()
  print("Logged in as", bot.user.username)
end)

bot:on('messageCreate', function(message)
    local cmd = bot._commands[message.content:match('^%w+')]
  if (cmd) then
    cmd.run(bot, message)
  end
end)

bot:run("Bot "..token)

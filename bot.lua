local discordia = require "discordia"
local os = require "os"
local token = os.getenv("token")
local bot = discordia.Client()
bot._commands = require "./commands.lua"

bot:on('ready', function()
  print("Logged in as", bot.user.username)
end)

bot:on('messageCreate', function(message)
  if (bot._commands[message.content]) then
    bot._commands[message.content].run(bot, message)
  end
end)

bot:run("Bot "..token)

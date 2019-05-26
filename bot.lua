local discordia = require "discordia"
local os = require "os"
local token = os.getenv("token")
local bot = discordia.Client()

bot:on('ready', function()
  print("Logged in as", bot.user.username)
end)

bot:on('messageCreate', function(message)
  print(message.content)
end)

bot:run("Bot "..token)

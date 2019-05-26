local discordia = require "discordia"
local bot = discordia.Client()

bot:on('ready', function()
  print("Logged in as", bot.user.username)
end)

bot:run("Bot",os.getenv("token"))

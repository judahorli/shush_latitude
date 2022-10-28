require "discordrb"
require "sinatra"
require "rubygems"
require "time"

bot = Discordrb::Bot.new token: ENV['SHUSH_TOKEN']

bot.message(author: ENV['LATITUDE']) do |event|
  message = event.message
  msgtime = message.timestamp
  if msgtime.hour >= 0 and msgtime.hour <= 3
    event.respond('go to bed latitude', tts = false, embed = nil, attachments = nil, allowed_mentions = nil, message_reference = message)
  end
end

bot.run

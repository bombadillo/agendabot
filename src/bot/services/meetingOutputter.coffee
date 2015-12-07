bot = require './botHandler'

output = (message) ->
  outputText = ''
  for meeting in message.meetings
    outputText += "#{meeting.name}, "
  outputText = outputText.slice 0, -2
  bot.reply message, outputText

exports = this
exports.output = output

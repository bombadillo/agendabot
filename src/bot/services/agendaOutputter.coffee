bot = require './botHandler'
eol = require('os').EOL

output = (message) ->
  outputText = "*Agenda for #{message.meetingName}* #{eol}"
  for agenda in message.agendas
    outputText += "• #{agenda.name} #{eol}"
  outputText = outputText.slice 0, -2
  bot.reply message, outputText

exports = this
exports.output = output

bot = require './botHandler'
eol = require('os').EOL

output = (message) ->
  outputText = "*Agenda for #{message.meetingName}* #{eol}"

  if message.agendas.length > 0
    outputText += formatAll message.agendas
  else
    outputText += '_Agenda is clear_'
  bot.reply message, outputText

formatAll = (agendas) ->
  for agenda in agendas
    outputText += "• #{agenda.name} #{eol}"
  return outputText = outputText.slice 0, -2

exports = this
exports.output = output

messageSender = require './messageSender'
channel = require './channel'

output = (message) ->
  outputString = ''
  for meeting in message.meetings
    outputString += "#{meeting.name}, "
  outputString = outputString.slice 0, -2
  channel.sendMessageById message.channel, outputString

exports = this
exports.output = output

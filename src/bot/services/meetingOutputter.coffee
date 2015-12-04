log = require '../../common/services/log'
messageSender = require './messageSender'
channel = require './channel'

output = (message) ->
  outputString = ''
  for meeting in message.meetings
    outputString += "#{meeting.name}, "
  outputString = outputString.slice 0, -2
  log.debug 'generated meetings string'
  channel.sendMessageById message.channel, outputString

exports = this
exports.output = output

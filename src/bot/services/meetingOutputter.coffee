log = require '../../common/services/log'
eventEmitter = require './events/eventHandler'

output = (meetings) ->
  outputString = ''
  for meeting in meetings
    outputString += meeting.name
  log.debug 'generated meetings string'
  eventEmitter.emit 'sendMessage', outputString

exports = this
exports.output = output

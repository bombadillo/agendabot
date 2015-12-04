log = require '../../common/services/log'

output = (meetings) ->
  outputString = ''
  for meeting in meetings
    outputString += meeting.name
  log.debug outputString

exports = this
exports.output = output

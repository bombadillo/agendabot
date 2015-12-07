log = require '../../common/services/log'
meetingHandler = require './meetingHandler'

process = (message) ->
  action = message.parsedMessage.action
  log.info "processing action #{action}"

  switch action
    when 'createmeeting'
      log.debug 'create meeting'
      meetingHandler.create message
    when 'getmeetings'
      log.debug 'get meetings'
      meetingHandler.getAll message
    when 'addagenda'
      log.debug 'add agenda'

exports = this
exports.process = process

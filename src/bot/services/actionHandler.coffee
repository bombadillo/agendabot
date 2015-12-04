log = require '../../common/services/log'
meetingHandler = require './meetingHandler'

process = (message) ->
  log.info "processing action #{message.action}"
  switch message.action
    when 'createmeeting'
      log.debug 'create meeting'
      meetingHandler.create message.value
    when 'getmeetings'
      log.debug 'get meetings'
      meetingHandler.getAll()
    when 'addagenda'
      log.debug 'add agenda'

exports = this
exports.process = process

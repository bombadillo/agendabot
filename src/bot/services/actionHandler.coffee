log = require '../../common/services/log'

process = (message) ->
  log.info "processing action #{message.action}"
  switch message.action
    when 'createmeeting'
      log.debug 'create meeting'
    when 'getmeetings'
      log.debug 'get meetings'
    when 'addagenda'
      log.debug 'add agenda'

exports = this
exports.process = process

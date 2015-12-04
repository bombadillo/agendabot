log = require '../../common/services/log'

process = (message) ->
  log.info "processing action #{message.action}"

exports = this
exports.process = process

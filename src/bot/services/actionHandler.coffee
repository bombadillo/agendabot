log = require '../../common/services/log'
meetingHandler = require './meetingHandler'
agendaHandler = require './agendaHandler'
bot = require './botHandler'

process = (message) ->
  action = message.parsedMessage.action
  log.info "processing action #{action}"

  switch action
    when 'createmeeting'
      log.debug 'create meeting'
      meetingHandler.create message
    when 'removemeeting'
      log.debug 'delete meeting'
      meetingHandler.remove message
    when 'getmeetings'
      log.debug 'get meetings'
      meetingHandler.getAll message
    when 'addagenda'
      log.debug 'add agenda'
      agendaHandler.create message
    when 'getagenda'
      log.debug 'get agenda'
      agendaHandler.getAllForMeeting message
    else
      bot.reply message, 'the command was not recognised'

exports = this
exports.process = process

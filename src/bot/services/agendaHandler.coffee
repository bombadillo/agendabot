dbHandler = require '../../common/services/dbHandler'
q = require 'q'
bot = require './botHandler'
meetingHandler = require './meetingHandler'
agendaParser = require './agendaInputParser'

agendaDbName = 'agenda'

create = (message) ->
  agendaInfo = agendaParser.parse message.parsedMessage.value

  meetingHandler.getOneByName(agendaInfo.meetingName).then (meeting) ->
    if meeting
      obj =
        name: agendaInfo.agendaName
        meetingId: meeting._id
      dbHandler.insert(agendaDbName, obj).then (result) ->
        outputText = if result then 'agenda added' else 'agenda not added'
        bot.reply message, outputText
    else
      bot.reply message, 'meeting does not exist'

exports = this
exports.create = create

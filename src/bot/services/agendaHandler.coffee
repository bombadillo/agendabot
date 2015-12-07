dbHandler = require '../../common/services/dbHandler'
q = require 'q'
bot = require './botHandler'
meetingHandler = require './meetingHandler'
agendaParser = require './agendaInputParser'
agendaOutputter = require './agendaOutputter'

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

getAllForMeeting = (message) ->
  meetingName = message.parsedMessage.value
  meetingHandler.getOneByName(meetingName).then (meeting) ->
    if meeting
      obj =
        meetingId: meeting._id
      dbHandler.getAll(agendaDbName, obj).then (agendas) ->
        message.meetingName = meetingName
        message.agendas = agendas
        agendaOutputter.output message
    else
      bot.reply message, 'meeting does not exist'

exports = this
exports.create = create
exports.getAllForMeeting = getAllForMeeting

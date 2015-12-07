dbHandler = require '../../common/services/dbHandler'
q = require 'q'
meetingOutputter = require './meetingOutputter'
bot = require './botHandler'

meetingDbName = 'meeting'

create = (message) ->
  meetingName = message.parsedMessage.value
  getOneByName(meetingName).then (meeting) ->
    if !meeting
      obj = name: meetingName
      dbHandler.insert(meetingDbName, obj).then (result) ->
        outputText = if result then 'meeting added' else 'meeting not added'
        bot.reply message, outputText
    else
      outputText = 'meeting exists'

getAll = (message) ->
  deferred = q.defer()
  dbHandler.getAll(meetingDbName).then (meetings) ->
    message.meetings = meetings
    meetingOutputter.output message

getOneByName = (name) ->
  deferred = q.defer()
  dbHandler.getOne(meetingDbName, name: name).then (meeting) ->
    deferred.resolve meeting
  return deferred.promise

exports = this
exports.create = create
exports.getAll = getAll

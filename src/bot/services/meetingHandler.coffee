dbHandler = require '../../common/services/dbHandler'
log = require '../../common/services/log'
q = require 'q'
meetingOutputter = require './meetingOutputter'

meetingDbName = 'meeting'

create = (message) ->
  meetingName = message.parsedMessage.value
  getOneByName(meetingName).then (meeting) ->
    if !meeting
      obj = name: meetingName
      dbHandler.insert(meetingDbName, obj).then (result) ->
        message = result ? 'meeting added' : 'meeting not added'
        log.debug message
    else
      log.error 'meeting exists'
      # output error message to user

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

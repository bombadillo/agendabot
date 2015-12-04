dbHandler = require '../../common/services/dbHandler'
log = require '../../common/services/log'
q = require 'q'
meetingOutputter = require './meetingOutputter'

create = (message) ->

getAll = (message) ->
  log.debug 'query all'
  deferred = q.defer()
  dbHandler.getAll('meeting').then (meetings) ->
    message.meetings = meetings
    meetingOutputter.output message

exports = this
exports.create = create
exports.getAll = getAll

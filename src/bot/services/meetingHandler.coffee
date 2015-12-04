dbHandler = require '../../common/services/dbHandler'
log = require '../../common/services/log'
q = require 'q'
meetingOutputter = require './meetingOutputter'

create = (name) ->

getAll = ->
  log.debug 'query all'
  deferred = q.defer()
  dbHandler.getAll('meeting').then (meetings) ->
    meetingOutputter.output meetings

exports = this
exports.create = create
exports.getAll = getAll

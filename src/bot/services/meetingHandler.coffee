dbHandler = require '../../common/services/dbHandler'
log = require '../../common/services/log'
q = require 'q'

create = (name) ->

getAll = ->
  log.debug 'query all'
  deferred = q.defer()
  dbHandler.getAll('meeting').then (meetings) ->
    console.log meetings

exports = this
exports.create = create
exports.getAll = getAll

fs = require 'fs'
config = require '../../common/config'
q = require 'q'
logToArray = require './convertMessageHistoryData'

get = ->
  deferred = q.defer()
  fs.readFile(config.logFile, 'utf8', (err, data) ->
    if !err
      data = logToArray.convertToArray data
      deferred.resolve data
    else
      deferred.resolve {}
  )
  return deferred.promise

exports = this
exports.get = get

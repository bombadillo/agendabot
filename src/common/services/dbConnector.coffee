mongoClient = require('mongodb').MongoClient
config = require '../config'
url = config.databaseUri
q = require 'q'

dbConnection = undefined

connect = ->
  deferred = q.defer()
  if !dbConnection
    mongoClient.connect url, (err, db) ->
      if err
        console.log 'Unable to connect'
        console.log err
      else
        console.log 'Connected'
        dbConnection = db
        deferred.resolve db
  else
    deferred.resolve dbConnection
  return deferred.promise

exports = this
exports.connect = connect

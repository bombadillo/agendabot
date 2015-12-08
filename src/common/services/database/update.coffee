dbConnector = require './dbConnector'
q = require 'q'

update = (collection, data) ->
  o_id = new BSON.ObjectID data._id
  delete data._id
  deferred = q.defer()
  dbConnector.connect().then (db) ->
    collection = db.collection(collection)
    collection.updateOne(_id: o_id, data, (err, result) ->
      if err
        console.log err
      else
        deferred.resolve result
    )
  return deferred.promise

module.exports = update

events = require 'events'
eventEmitter = new events.EventEmitter()

eventHandler = ->
  return eventEmitter

module.exports = eventHandler()

eventEmitter = require './eventHandler'
messageSender = require '../messageSender'
log = require '../../../common/services/log'

setupListeners = ->
  eventEmitter.on 'sendMessage', messageSender.send

exports = this
exports.setupListeners = setupListeners

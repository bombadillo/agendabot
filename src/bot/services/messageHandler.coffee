messageParser = require './messageParser'
botHandler = require './botHandler'
actionHandler = require './actionHandler'
messageParser = require './messageParser'

handle = (message) ->
  parsedMessage = messageParser.parse message
  if parsedMessage.userId == botHandler.getId message
    actionHandler.process parsedMessage
  else
    console.log ':('

exports = this
exports.handle = handle

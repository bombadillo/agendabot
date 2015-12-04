messageParser = require './messageParser'
botHandler = require './botHandler'

handle = (message) ->
  userId = messageParser.parseUserId message
  if userId == botHandler.getId message
    
  else
    console.log ':('

exports = this
exports.handle = handle

messageTextConverter = require './messageTextConverter'

parse = (message) ->
  parsedMessage = messageTextConverter.toObject message.text
  return parsedMessage


exports = this
exports.parse = parse

messageSplitter = require './messageSplitter'

toObject = (text) ->
  split = messageSplitter.split(text)
  action = split.messageTextSections[0] + split.messageTextSections[1]
  value = split.messageTextSections[2]

  obj =
    userId: split.userId
    action: action
    value: value
  return obj

exports = this
exports.toObject = toObject

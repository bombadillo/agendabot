messageSplitter = require './messageSplitter'

toObject = (text) ->
  split = messageSplitter.split(text)

  if !split
    return false

  action = split.messageTextSections[0] + split.messageTextSections[1]
  values = split.messageTextSections[2...split.length]
  valueString = ''

  for value in values
    valueString += "#{value} "

  valueString = valueString.slice 0, -1

  obj =
    userId: split.userId
    action: action
    value: valueString
  return obj

exports = this
exports.toObject = toObject

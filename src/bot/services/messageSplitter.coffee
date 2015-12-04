split = (text) ->
  baseMessageSplit = text.split('>:')
  userIdSection = baseMessageSplit[0]
  obj =
    messageTextSections: baseMessageSplit[1].trim().split(' ')
    userId: userIdSection.replace('<@', '')

exports = this
this.split = split

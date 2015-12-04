parseUserId = (message) ->
  userIdSection = message.text.split('>:')[0]
  userId = userIdSection.replace('<@', '')
  return userId

exports = this
exports.parseUserId = parseUserId

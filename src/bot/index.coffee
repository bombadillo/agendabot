slack = require './services/slackClient'
messageHandler = require './services/messageHandler'
userToAnnoy = ''

start = ->
  slack.on 'open', ->
    console.log "Connected to #{slack.team.name} as @#{slack.self.name}"

  slack.on 'message', (message) ->
    messageHandler.handle message

  slack.on 'error', (err) ->
    console.error "Error", err

  slack.login()

exports = this
exports.start = start

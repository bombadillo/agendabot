mongo = require './mongoDb'

config =
  botApiToken: 'xoxb-16183928887-ywc3KJ4KSzv03HnlNKKkEXBv'
  logFile: __dirname + '/../../log.json'
  databaseUri: "mongodb://#{mongo.userName}:#{mongo.password}@#{mongo.url}"
  appHost: 'agendabotmco.herokuapp.com'

module.exports = config

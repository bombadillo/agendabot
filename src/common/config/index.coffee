mongo = require './mongoDb'

config =
  botApiToken: 'xoxb-15931621845-Jcl3KI6tC4ptsAGDSO96sw9f'
  logFile: __dirname + '/../../log.json'
  databaseUri: "mongodb://#{mongo.userName}:#{mongo.password}@#{mongo.url}"
  appHost: 'agendabotmco.herokuapp.com'

module.exports = config

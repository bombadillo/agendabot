http = require 'http'
config = require '../../common/config'

options = host: config.appHost
dataString = ''

makeRequest = ->
  dataString = ''
  http.request(options, onResponse).end()

onResponse = (response) ->
  status = if response.statusCode == 200 then "alive" else "dead"
  console.log "The server is #{status}"

stayAlive = ->
  setInterval makeRequest, 1500000

exports = this
exports.stayAlive = stayAlive

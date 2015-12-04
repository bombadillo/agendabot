express = require('express')
app = express()
logRetriever = require './messageHistoryRetriever'
stayAlive = require './stayAlive'
log = require '../../common/services/log'

start = ->
  app.set('port', (process.env.PORT || 5000))
  app.use(express.static(__dirname + '/../'))

  app.set('views', __dirname + "/../views")
  app.set('view engine', 'ejs')

  app.get('/', (request, response) ->
    logRetriever.get().then((logs) ->
      response.render('pages/index', { logs: logs })
    )
  )

  app.listen(app.get('port'), ->
    log.info "The app is running on port #{app.get('port')}"
  )

  stayAlive.stayAlive()

exports = this
exports.start = start

colors = require 'colors'

colors.setTheme
  silly: 'rainbow',
  input: 'grey',
  verbose: 'cyan',
  prompt: 'grey',
  info: 'green',
  data: 'grey',
  help: 'cyan',
  warn: 'yellow',
  debug: 'blue',
  error: 'red'

info = (message) ->
  console.log colors.info(message)

error = (message) ->
  console.log colors.error(message)

exports = this
this.info = info
this.error = error

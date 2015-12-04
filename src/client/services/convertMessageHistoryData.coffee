convertToArray = (data) ->
  data = removeLastComma data
  data = "[#{data}]"
  return JSON.parse data

removeLastComma = (data) ->
  pos = data.lastIndexOf ','
  data = data.substring(0,pos) + data.substring(pos+1)

exports = this
exports.convertToArray = convertToArray

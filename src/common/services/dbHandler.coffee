dbConnector = require './dbConnector'
BSON = require('bson').BSONPure
q = require 'q'

getAll = require './database/getAll'
getOne = require './database/getOne'
getById = require './database/getById'
insert = require './database/insert'
removeOne = require './database/removeOne'
removeAll = require './database/removeAll'

exports = this
exports.getAll = getAll
exports.getOne = getOne
exports.insert = insert
exports.getById = getById
exports.update = update
exports.removeOne = removeOne
exports.removeAll = removeAll

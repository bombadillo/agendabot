// Generated by CoffeeScript 1.9.3
(function() {
  var botHandler, exports, handle, messageParser;

  messageParser = require('./messageParser');

  botHandler = require('./botHandler');

  handle = function(message) {
    var userId;
    userId = messageParser.parseUserId(message);
    if (userId === botHandler.getId(message)) {

    } else {
      return console.log(':(');
    }
  };

  exports = this;

  exports.handle = handle;

}).call(this);

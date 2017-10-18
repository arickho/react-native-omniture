/**
 * @providesModule
 */

var RNOmniture = require('react-native').NativeModules.omnitureImplementation;

module.exports = {
  trackAction: function(str, obj) {
    return RNOmniture.trackAction(str, obj);
  },
  mediaOpenWithSettings: function(name, length, playerName, playerId) {
    return RNOmniture.mediaOpenWithSettings(name, length, playerName, playerId);
  },
  mediaPlay: function(name, offset) {
    return RNOmniture.mediaPlay(name, offset);
  },
  mediaStop: function(name, offset) {
    return RNOmniture.mediaStop(name, offset);
  },
  mediaClose: function(name) {
    return RNOmniture.mediaClose(name);
  }
};

/**
 * @providesModule
 */
import ReactNative from 'react-native';

var RNOmniture = ReactNative.NativeModules.reactnativeomnitureapi;

module.exports = {
  trackAction: (str, obj) => {
    RNOmniture.trackAction(str, obj);
  },
  trackState: (str, obj) => {
    RNOmniture.trackState(str, obj);
  },
  mediaOpenWithSettings: (name, length, playerName, playerId) => {
    RNOmniture.mediaOpenWithSettings(name, length, playerName, playerId);
  },
  mediaPlay: (name, offset) => {
    RNOmniture.mediaPlay(name, offset);
  },
  mediaStop: (name, offset) => {
    RNOmniture.mediaStop(name, offset);
  },
  mediaClose: name => {
    RNOmniture.mediaClose(name);
  }
};

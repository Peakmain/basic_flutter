import 'dart:io';


import 'log_utils.dart';

class VersionUtils{
  static String getDartVersion(){
    return  Platform.version.split(' ').first;
  }
  /// 当前版本号是否大于等于目标版本号
  static bool isAfterThen(String target){
    try {
      var targets = target.split('.');
      var currents = getDartVersion().split('.');
      if(targets.length != currents.length){
        LogUtils.e('VersionUtils', 'targets.length != currents.length');
        return false;
      }
      for(var i = 0; i < targets.length; i++){
        var targetVersion = int.parse(targets[i]);
        var currentVersion = int.parse(currents[i]);
        if(targetVersion == currentVersion){
          continue;
        }
        return currentVersion > targetVersion;
      }
      return true;
    } catch (e) {
      LogUtils.e('VersionUtils', 'isAfterThen target: $target, error: $e');
    }
    return false;
  }
}
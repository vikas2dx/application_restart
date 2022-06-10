
import 'dart:async';

import 'package:flutter/services.dart';

class ApplicationRestart {
  static const MethodChannel _channel = MethodChannel('application_restart');

  static Future<bool?> restartApp() async{
    final result = await _channel.invokeMethod('restartApp');
    return result;
  }
}

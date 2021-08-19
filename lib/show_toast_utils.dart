import 'package:flutter/services.dart';

class ShowToastUtils {
  static final _channel = MethodChannel('flutter.native');

  static Future<Null> showToast(String msg) async {
    try {
      await _channel.invokeMethod('showToast', [msg]);
    } on PlatformException catch (e) {
      print(e.message);
    }
  }
}

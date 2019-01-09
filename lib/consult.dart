import 'dart:async';

import 'package:consult/page/consultlist.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

class Consult {
  static const MethodChannel _channel =
      const MethodChannel('consult');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<Widget> get moduleView async{
    return ConsultList() ;
  }
}

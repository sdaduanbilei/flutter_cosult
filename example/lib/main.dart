import 'package:consult/page/consultlist.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:consult/consult.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget _moduleView = null;

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    Widget moduleView;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      moduleView = await Consult.moduleView;
    } on PlatformException {
      moduleView = null;
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _moduleView = moduleView;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ConsultList();
  }
}

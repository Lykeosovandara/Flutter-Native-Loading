import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';

import 'package:flutter_native_loading/flutter_native_loading.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with AfterLayoutMixin {
  @override
  void initState() {
    super.initState();
    FlutterNativeLoading.show();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
      ),
    );
  }

  @override
  void afterFirstLayout(BuildContext context) {
    // FlutterNativeLoading.hide();
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_native_loading/flutter_native_loading.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              FlutterNativeLoading.show();
              Future.delayed(new Duration(seconds: 1), () {
                FlutterNativeLoading.hide();
              });
            },
            child: Text('Progress Indicator'),
          ),
        ),
      ),
    );
  }
}

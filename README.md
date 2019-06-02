# countdown

A simple countdown plugin for flutter

## Getting Started

This project is a starting point for a Flutter
[plug-in package](https://flutter.dev/developing-packages/),
a specialized package that includes platform-specific implementation code for
Android and/or iOS.

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

### Usage

```dart
import 'package:flutter/material.dart';
import 'package:countdown/countdown.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _done = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(_done ? 'Finished!' : 'Counting...'),
        ),
        body: Center(
          child: Countdown(
            duration: Duration(seconds: 10),
            onFinish: () {
              setState(() {
                _done = true;
              });
            },
            builder: (BuildContext ctx, Duration remaining) => Text(
                  '${remaining.inMinutes}:${remaining.inSeconds}',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
          ),
        ),
      ),
    );
  }
}

```

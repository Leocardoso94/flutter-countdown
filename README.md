# flutter-countdown

A simple countdown plugin for flutter ⌛

![gif](https://github.com/Leocardoso94/flutter-countdown/blob/master/images/countdown.gif?raw=true)

## Getting Started

This project is a starting point for a Flutter
[plug-in package](https://flutter.dev/developing-packages/),
a specialized package that includes platform-specific implementation code for
Android and/or iOS.

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

### Usage

#### Countdown

```dart
import 'package:flutter/material.dart';
import 'package:countdown_flutter/countdown_flutter.dart';

class Foo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Countdown(
        duration: Duration(seconds: 10),
        onFinish: () {
          print('finished!');
        },
        builder: (BuildContext ctx, Duration remaining) {
            return Text('${remaining.inMinutes}:${remaining.inSeconds}');
        },
      ),
    );
  }
}

```

#### CountdownFormatted

```dart
import 'package:flutter/material.dart';
import 'package:countdown_flutter/countdown_flutter.dart';

class Foo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CountdownFormatted(
        duration: Duration(hours: 1),
        builder: (BuildContext ctx, String remaining) {
          return Text(remaining); // 01:00:00
        },
      ),
    );
  }
}

```

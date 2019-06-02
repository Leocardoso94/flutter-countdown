import 'package:flutter/material.dart';
import 'package:countdown/countdown.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _done = false;
  @override
  void initState() {
    super.initState();
  }

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

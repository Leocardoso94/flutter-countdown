import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:countdown_flutter/countdown_flutter.dart';

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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(_done ? 'Finished!' : 'Counting...'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Center(
              child: CountdownFormatted(
                duration: Duration(hours: 2),
                builder: (BuildContext ctx, String remaining) {
                  return Text(
                    remaining,
                    style: TextStyle(fontSize: 30),
                  ); // 01:00:00
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:countdown/countdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Verify countdown', (WidgetTester tester) async {
    var done = false;

    await tester.pumpWidget(
      MaterialApp(
        home: Countdown(
          duration: Duration(seconds: 3),
          onFinish: () {
            done = true;
          },
          builder: (_, remaining) => Text(remaining.inSeconds.toString()),
        ),
      ),
    );

    expect(find.text('3'), findsOneWidget);
    expect(done, false);

    await tester.pump(Duration(seconds: 4));

    expect(find.text('0'), findsOneWidget);
    expect(done, true);
  });

  testWidgets('fast interval', (WidgetTester tester) async {
    var done = false;

    await tester.pumpWidget(
      MaterialApp(
        home: Countdown(
          duration: Duration(seconds: 3),
          interval: Duration(microseconds: 1),
          onFinish: () {
            done = true;
          },
          builder: (_, remaining) => Text(remaining.inSeconds.toString()),
        ),
      ),
    );

    expect(find.text('3'), findsOneWidget);
    expect(done, false);

    await tester.pump(Duration(microseconds: 6));

    expect(find.text('0'), findsOneWidget);
    expect(done, true);
  });

  testWidgets('slow interval', (WidgetTester tester) async {
    var done = false;

    await tester.pumpWidget(
      MaterialApp(
        home: Countdown(
          duration: Duration(seconds: 3),
          interval: Duration(hours: 1),
          onFinish: () {
            done = true;
          },
          builder: (_, remaining) => Text(remaining.inSeconds.toString()),
        ),
      ),
    );

    expect(find.text('3'), findsOneWidget);
    expect(done, false);

    await tester.pump(Duration(seconds: 5));

    expect(find.text('3'), findsOneWidget);
    expect(done, false);
  });

  testWidgets('start with 0', (WidgetTester tester) async {
    var done = false;

    await tester.pumpWidget(
      MaterialApp(
        home: Countdown(
          duration: Duration(seconds: 0),
          onFinish: () {
            done = true;
          },
          builder: (_, remaining) => Text(remaining.inSeconds.toString()),
        ),
      ),
    );

    expect(find.text('0'), findsOneWidget);
    await tester.pump(Duration(seconds: 1));
    expect(done, true);
  });
}

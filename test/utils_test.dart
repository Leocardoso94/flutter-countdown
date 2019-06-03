import 'package:countdown_flutter/utils.dart';

import 'package:flutter_test/flutter_test.dart';

void main() {
  test('two digits', () {
    expect(twoDigits(1), '01');
    expect(twoDigits(9), '09');
    expect(twoDigits(10), '10');
    expect(twoDigits(100), '100');
  });

  test('formatByHours', () {
    expect(
      formatByHours(
        Duration(hours: 1, minutes: 30, seconds: 49),
      ),
      '01:30:49',
    );

    expect(
      formatByHours(
        Duration(hours: 1, minutes: 30, seconds: 60),
      ),
      '01:31:00',
    );

    expect(
      formatByHours(
        Duration(hours: 0, minutes: 30, seconds: 60),
      ),
      '00:31:00',
    );

    expect(
      formatByHours(
        Duration(hours: 0, minutes: 00, seconds: 00),
      ),
      '00:00:00',
    );

    expect(
      formatByHours(
        Duration(hours: 0, minutes: 00, seconds: 60),
      ),
      '00:01:00',
    );
  });
}

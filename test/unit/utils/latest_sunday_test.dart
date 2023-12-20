import 'package:fake_async/fake_async.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:step_by_step_test/utils/latest_sunday.dart';

// Step 2
void main() {
  group('Step2', () {
    test('2023-11-8の直前の日曜日は2023-11-05', () {
      fakeAsync(initialTime: DateTime(2023, 11, 8), (_) {
        expect(getLatestSunday(), DateTime(2023, 11, 5));
      });
    });
  });

  group('Step3', () {
    group('getLatestSunday', () {
      <DateTime, DateTime>{
        DateTime(2022, 6, 21): DateTime(2022, 6, 19),
        DateTime(2022, 6, 26): DateTime(2022, 6, 26),
        DateTime(2022, 6, 27): DateTime(2022, 6, 26),
        DateTime(2022, 6, 25): DateTime(2022, 6, 19),
      }.forEach((initialTime, expected) {
        test('initialTime: $initialTime => expected: $expected', () {
          fakeAsync(initialTime: initialTime, (_) {
            expect(getLatestSunday(), expected);
          });
        });
      });
    });
  });
}

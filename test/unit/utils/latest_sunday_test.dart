import 'package:fake_async/fake_async.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:step_by_step_test/utils/latest_sunday.dart';

// Step 2
void main() {
  test('2023-11-8の直前の日曜日は2023-11-05', () {
    fakeAsync(initialTime: DateTime(2023, 11, 8), (_) {
      expect(getLatestSunday(), DateTime(2023, 11, 5));
    });
  });
}

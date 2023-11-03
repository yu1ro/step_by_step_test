import 'package:flutter_test/flutter_test.dart';
import 'package:step_by_step_test/utils/most_recent.dart';

void main() {
  group('Step1-1 mostRecent', () {
    test('複数の日付の場合', () {
      final actual = mostRecent([DateTime(2023, 1, 1), DateTime(2023, 1, 2)]);
      expect(actual, DateTime(2023, 1, 2));
    });

    test('単数の日付の場合', () {
      final actual = mostRecent([DateTime(2023, 1, 1)]);
      expect(actual, DateTime(2023, 1, 1));
    });

    test('3つ以上の日付の場合', () {
      final actual = mostRecent([
        DateTime(2023, 1, 1),
        DateTime(2023, 1, 3),
        DateTime(2023, 1, 2),
      ]);
      expect(actual, DateTime(2023, 1, 3));
    });
  });
}

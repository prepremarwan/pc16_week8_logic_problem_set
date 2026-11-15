import 'package:pc16_week8_logic_problem_set/pc16_week8_logic_problem_set.dart';
import 'package:test/test.dart';

void main() {
  group('getRemark', () {
    test('90 and above is Excellent', () {
      expect(getRemark(90), 'Excellent');
      expect(getRemark(100), 'Excellent');
    });
    test('75 to 89 is Passed', () {
      expect(getRemark(75), 'Passed');
      expect(getRemark(89), 'Passed');
    });
    test('below 75 is Failed', () {
      expect(getRemark(74), 'Failed');
      expect(getRemark(0), 'Failed');
    });
  });

  group('parseScore', () {
    test('parses valid numbers, ignoring spaces', () {
      expect(parseScore('88'), 88);
      expect(parseScore(' 42 '), 42);
    });
    test('throws FormatException on non-numbers', () {
      expect(() => parseScore('abc'), throwsFormatException);
      expect(() => parseScore(''), throwsFormatException);
    });
    test('throws RangeError outside 0-100', () {
      expect(() => parseScore('150'), throwsRangeError);
      expect(() => parseScore('-5'), throwsRangeError);
    });
  });

  group('processScores', () {
    test('counts passes and skips bad input without crashing', () {
      expect(processScores(['95', '82', 'abc', '60', '150', '']), 2);
    });
    test('all valid passing scores', () {
      expect(processScores(['75', '80', '90', '100', '99', '76']), 6);
    });
  });
}

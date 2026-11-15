import 'package:pc16_week8_logic_problem_set/pc16_week8_logic_problem_set.dart';

void main() {
  // Mix of good and deliberately bad input to test the try/catch:
  //   "abc" -> not a number, "150" -> out of range, "" -> empty text
  final List<String> rawScores = ['95', '82', 'abc', '60', '150', ''];

  print('=== Student Grade Checker ===');
  final int passed = processScores(rawScores);

  print('-----------------------------');
  print('Students who passed: $passed out of $numberOfStudents');

  // Final conditional on the function's return value
  if (passed >= numberOfStudents / 2) {
    print('Class status: Most of the class passed.');
  } else {
    print('Class status: Fewer than half passed. Review needed.');
  }
}

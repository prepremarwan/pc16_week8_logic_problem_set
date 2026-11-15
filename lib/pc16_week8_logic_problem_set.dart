// PC16 – Mobile Development with Lab
// Week 8: Dart Programming Fundamentals (Part 2)
// Your Turn: Logic Problem Set — Student Grade Checker
//
// Rubric coverage:
//   Conditional    -> getRemark()  : if / else if / else on the score value
//   Loop           -> processScores(): for loop that runs a fixed number of times
//   Function       -> parseScore(), getRemark(), processScores() all take
//                     parameters, return values, and are called from main()
//   Error handling -> parseScore() throws on bad input; processScores()
//                     catches it with try/catch so the program keeps running

const int numberOfStudents = 6;

/// Converts raw text into a score from 0 to 100.
/// Throws a FormatException if the text is not a number,
/// and a RangeError if the number is outside 0–100.
int parseScore(String raw) {
  final int score = int.parse(raw.trim()); // throws FormatException on "abc"
  if (score < 0 || score > 100) {
    throw RangeError.range(score, 0, 100, 'score');
  }
  return score;
}

/// Returns a remark for a valid score (conditional logic).
String getRemark(int score) {
  if (score >= 90) {
    return 'Excellent';
  } else if (score >= 75) {
    return 'Passed';
  } else {
    return 'Failed';
  }
}

/// Processes exactly [numberOfStudents] entries and returns how many passed.
/// Combines the loop, the conditional, and the try/catch in one function.
int processScores(List<String> rawScores) {
  int passedCount = 0;

  for (int i = 0; i < numberOfStudents; i++) {
    final String raw = rawScores[i];
    try {
      final int score = parseScore(raw);
      final String remark = getRemark(score);
      print('Student ${i + 1}: score = $score -> $remark');

      if (score >= 75) {
        passedCount++;
      }
    } on FormatException {
      print('Student ${i + 1}: "$raw" is not a valid number -> skipped');
    } on RangeError {
      print('Student ${i + 1}: $raw is outside 0-100 -> skipped');
    } catch (e) {
      print('Student ${i + 1}: unexpected error ($e) -> skipped');
    }
  }

  return passedCount;
}

# PC16 Week 8 – Logic Problem Set (Student Grade Checker)

A Dart console program that reads 6 raw score entries, converts each to a
number, labels it (Excellent / Passed / Failed), and reports how many passed.
Bad entries (`"abc"`, `"150"`, `""`) are caught with try/catch and skipped
instead of crashing the program.

| Rubric item    | Where |
|----------------|-------|
| Conditional    | `getRemark()` in `lib/`, final class status in `bin/` |
| Loop           | `for` loop in `processScores()` (runs exactly 6 times) |
| Function       | `parseScore()`, `getRemark()`, `processScores()` |
| Error handling | `try` / `on FormatException` / `on RangeError` / `catch` in `processScores()` |

## Run

```
dart run
```

## Test

```
dart test
```

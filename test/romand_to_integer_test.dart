import 'package:leet_problems/roman_to_integer.dart';
import 'package:test/test.dart';

void main() {
  test('III', () {
    var input = 'III';
    var result = 3;
    expect(romanToInt(input), equals(result));
  });
  test('LVIII', () {
    var input = 'LVIII';
    var result = 58;
    expect(romanToInt(input), equals(result));
  });
  test('MCMXCIV', () {
    var input = 'MCMXCIV';
    var result = 1994;
    expect(romanToInt(input), equals(result));
  });

  test('MMMDLXVII', () {
    var input = 'MMMDLXVII';
    var result = 3567;
    expect(romanToInt(input), equals(result));
  });
}

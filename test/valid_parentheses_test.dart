import 'package:leet_problems/valid_parentheses.dart';
import 'package:test/test.dart';

void main() {
  test('check if input is valid', () {
    var input = "()";
    var output = true;
    expect(checkValidParenthese(input), equals(output));
  });

  test('check if ()[]{} input is valid', () {
    var input = "()[]{}";
    var output = true;
    expect(checkValidParenthese(input), equals(output));
  });

  test('check if (] input is valid', () {
    var input = "(]";
    var output = false;
    expect(checkValidParenthese(input), equals(output));
  });
}

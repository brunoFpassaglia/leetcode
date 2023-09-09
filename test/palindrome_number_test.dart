import 'package:leet_problems/palindrome_number.dart';
import 'package:test/test.dart';

void main() {
  test(
    "check is palindrome",
    () {
      var input = 121;
      var result = true;
      expect(isPalindrome(input), equals(result));
    },
  );
  test(
    "check 45 is palindrome",
    () {
      var input = 45;
      var result = false;
      expect(isPalindrome(input), equals(result));
    },
  );

  test('check -121 palindrome', () {
    var input = -121;
    var result = false;
    expect(isPalindrome(input), equals(result));
  });
  test('check 100000001 palindrome', () {
    var input = 100000001;
    var result = true;
    expect(isPalindrome(input), equals(result));
  });

  test('check 10 is palindrome', () {
    var input = 10;
    var result = false;
    expect(isPalindrome(input), equals(result));
  });
  test('check 100 is palindrome', () {
    var input = 100;
    var result = false;
    expect(isPalindrome(input), equals(result));
  });
}

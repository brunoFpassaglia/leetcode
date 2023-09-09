import 'dart:math';

bool isPalindrome(int x) {
  // return optimizedIsPalindrome(x);
  var copy = x;
  if (x < 0) return false;
  int sum = 0;
  var numbers = <int>[];
  while (x ~/ 10 > 0) {
    numbers.add(x % 10);
    x ~/= 10;
  }
  numbers.add(x);
  for (var i = 0; i < numbers.length; i++) {
    sum += numbers[i] * pow(10, numbers.length - 1 - i) as int;
  }
  return sum == copy;
}

bool optimizedIsPalindrome(int x) {
  int reverse = 0;
  int copy = x;

  //The loop break when the copy of original number becomes zero
  //Also negative number cannot be a palindrome
  while (copy > 0) {
    final digit = copy % 10;
    reverse = reverse * 10 + digit;
    copy = copy ~/ 10;
  }

  return reverse == x;
}

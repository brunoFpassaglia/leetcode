import 'package:leet_problems/longest_common_prefix.dart';
import 'package:test/test.dart';

void main() {
  test('longest common prefix ', () {
    var input = ["flower", "flow", "flight"];
    var output = "fl";
    expect(longestCommonPrefix(input), equals(output));
  });
  test('longest common prefix false', () {
    var input = ["dog", "racecar", "car"];
    var output = "";
    expect(longestCommonPrefix(input), equals(output));
  });

  test('longest common prefix true', () {
    var input = ["a"];
    var output = "a";
    expect(longestCommonPrefix(input), equals(output));
  });
}

import 'package:leet_problems/two_sum.dart';
import 'package:test/test.dart';

void main() {
  test('two sum', () {
    var input = [2, 7, 11, 15];
    var target = 9;
    expect(twoSum(input, target), equals([0, 1]));
  });
  test('two sum 2', () {
    var input = [3, 2, 4];
    var target = 6;
    expect(twoSum(input, target), equals([1, 2]));
  });
}

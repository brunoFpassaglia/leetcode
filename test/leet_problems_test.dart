import 'package:leet_problems/leet_problems.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(calculate(), 42);
  });

  test('house robber', () {
    var input = [1, 2, 3, 1];
    int output = 4;
    expect(rob(input), equals(output));
  });
  test('house robber more complex', () {
    var input = [10, 20, 10, 20, 1, 1, 8, 4];
    int output = 48;
    expect(rob(input), equals(output));
  });
}

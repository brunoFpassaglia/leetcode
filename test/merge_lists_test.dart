import 'package:leet_problems/merge_lists.dart';
import 'package:test/test.dart';

void main() {
  test('test [1,1,2,3,4,4]', () {
    var l1 = [1, 2, 4];
    var l2 = [1, 3, 4];
    var output = [1, 1, 2, 3, 4, 4];
    expect(mergeLists(l1, l2), output);
  });

  test('test other list', () {
    var l1 = <int>[];
    var l2 = <int>[];
    var output = [];
    expect(mergeLists(l1, l2), output);
  });
}

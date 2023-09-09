import 'dart:math';

int calculate() {
  return 6 * 7;
}

// late List<int> memo;
int rob(List<int> nums) {
  if (nums.length == 0) return 0;
  List<int> memo = List.filled(nums.length + 1, 0);
  memo[0] = 0;
  memo[1] = nums[0];
  for (int i = 1; i < nums.length; i++) {
    memo[i + 1] = max(memo[i], memo[i - 1] + nums[i]);
  }
  return memo[nums.length];

  // memo = List.filled(nums.length, -1);
  // return _rob(nums, nums.length - 1);
  // var memo = <int, int>{0: 0, 1: 0};
  // for (var i = 0; i < nums.length; i++) {
  //   var path = i.isOdd ? 1 : 0;
  //   memo[path] = nums[i] + memo[path]!;
  // }
  // return 0;
}

// int _rob(List<int> nums, int i) {
//   if (i < 0) {
//     return 0;
//   }
//   if (memo[i] >= 0) {
//     return memo[i];
//   }
//   var result = max(_rob(nums, i - 2) + nums[i], _rob(nums, i - 1));
//   memo[i] = result;
//   return result;
// }

List<int> twoSum(List<int> nums, int target) {
  Map<int, int> memo = {};
  for (int i = 0; i < nums.length; i++) {
    int complement = target - nums[i];
    if (memo.containsKey(complement)) {
      return [memo[complement]!, i];
    } else {
      memo[nums[i]] = i;
    }
  }
  return <int>[];
}

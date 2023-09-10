String longestCommonPrefix(List<String> strs) {
  // return _longestCommonPrefix(strs);
  var prefix = strs.first;
  while (prefix != "") {
    for (var i = 0; i < strs.length; i++) {
      if (prefix.matchAsPrefix(strs[i]) == null) {
        break;
      }
      if (i == strs.length - 1) return prefix;
    }
    prefix = prefix.substring(0, prefix.length - 1);
  }
  return "";
}

String _longestCommonPrefix(List<String> strs) {
  String commonPrefix = strs.first;
  for (final word in strs) {
    while (!word.startsWith(commonPrefix)) {
      commonPrefix = commonPrefix.substring(0, commonPrefix.length - 1);
    }
  }
  return commonPrefix;
}

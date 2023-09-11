checkValidParenthese(String str) {
  var stack = <String>[];
  for (int i = 0; i < str.length; i++) {
    // switch (str[i]) {
    var char = str[i];
    if (char == '{' || char == '(' || char == '[') {
      stack.add(str[i]);
    }
    if (char == ']' || char == ')' || char == '}') {
      if (stack.isEmpty) return false;
      var element = stack.removeLast();
      if ((element == '{' && str[i] != '}') ||
          (element == '(' && str[i] != ')') ||
          (element == '[' && str[i] != ']')) {
        return false;
      }
    }
  }
  return stack.isEmpty;
}

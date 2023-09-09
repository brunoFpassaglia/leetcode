int romanToInt(String s) {
  var i = 0;
  var number = 0;
  var sum = 0;
  while (i < s.length) {
    number = switch (s[i]) {
      'I' when i + 1 < s.length => switch (s[i + 1]) {
          'V' => 4,
          'X' => 9,
          _ => 1
        },
      'I' => 1,
      'V' => 5,
      'X' when i + 1 < s.length => switch (s[i + 1]) {
          'L' => 40,
          'C' => 90,
          _ => 10
        },
      'X' => 10,
      'L' => 50,
      'C' when i + 1 < s.length => switch (s[i + 1]) {
          'D' => 400,
          'M' => 900,
          _ => 100
        },
      'C' => 100,
      'D' => 500,
      'M' => 1000,
      _ => 0
    };
    if (number == 4 ||
        number == 9 ||
        number == 40 ||
        number == 90 ||
        number == 400 ||
        number == 900)
      i += 2;
    else
      i++;
    sum += number;
  }
  return sum;
}

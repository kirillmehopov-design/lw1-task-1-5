void main() {
  print('TASK 1');

  for (int i = 1; i <= 10; i++) {
    for (int j = 1; j <= 10; j++) {
      print('$i * $j = ${i * j}');
    }
    print('');
  }

  print('TASK 2');

  int day = 28;
  int month = 2;
  int year = 2026;

  bool leapYear =
      year % 400 == 0 || (year % 4 == 0 && year % 100 != 0);

  List<int> daysInMonth = [
    31,
    leapYear ? 29 : 28,
    31,
    30,
    31,
    30,
    31,
    31,
    30,
    31,
    30,
    31
  ];

  if (month < 1 || month > 12 || day < 1 || day > daysInMonth[month - 1]) {
    print('invalid date');
  } else {
    day++;

    if (day > daysInMonth[month - 1]) {
      day = 1;
      month++;
    }

    if (month > 12) {
      month = 1;
      year++;
    }

    String nextDay = day.toString().padLeft(2, '0');
    String nextMonth = month.toString().padLeft(2, '0');
    print('$nextDay.$nextMonth.$year');
  }

  print('TASK 3');

  String text = 'flutter mobile development';
  String vowels = 'aeiou';
  int vowelCount = 0;

  for (int i = 0; i < text.length; i++) {
    if (vowels.contains(text[i].toLowerCase())) {
      vowelCount++;
    }
  }

  print('Vowels: $vowelCount');
}

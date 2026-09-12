void main() {
  print('TASK 1');

  int digit = 3;
  for (int i = 1; i <= 10; i++) {
    print('$digit * $i = ${digit * i}');
  }

  print('TASK 2');

  List<List<int>> dates = [
    [5, 9, 2026],
    [28, 2, 2024],
    [28, 2, 2026],
    [29, 2, 2026],
    [28, 2, 2100],
    [28, 2, 2000],
    [31, 12, 2025],
  ];

  for (List<int> date in dates) {
    int day = date[0];
    int month = date[1];
    int year = date[2];

    int originalDay = day;
    int originalMonth = month;
    int originalYear = year;

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
      31,
    ];

    String oldDay = originalDay.toString().padLeft(2, '0');
    String oldMonth = originalMonth.toString().padLeft(2, '0');

    if (month < 1 ||
        month > 12 ||
        day < 1 ||
        day > daysInMonth[month - 1]) {
      print('$oldDay.$oldMonth.$originalYear -> invalid date');
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

      print('$oldDay.$oldMonth.$originalYear -> $nextDay.$nextMonth.$year');
    }
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

  print('TASK 4');

  List<int> numbers = [14, 88, 3, 42, 99, 12, 67];
  int min = numbers[0];
  int max = numbers[0];

  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] < min) {
      min = numbers[i];
    }
    if (numbers[i] > max) {
      max = numbers[i];
    }
  }

  print('max: $max, min: $min');

  List<int> numbers1 = [234, 34, 123, 44, 949, 112, 67];
  int min1 = numbers1[0];
  int max1 = numbers1[0];

  for (int i = 1; i < numbers1.length; i++) {
    if (numbers1[i] < min1) {
      min1 = numbers1[i];
    }
    if (numbers1[i] > max1) {
      max1 = numbers1[i];
    }
  }

  print('max: $max1, min: $min1');

  print('TASK 5');

  List<int> primeNumbers = [3, 6];

  for (int number in primeNumbers) {
    bool isPrime = true;

    if (number < 2) {
      isPrime = false;
    } else {
      for (int i = 2; i < number; i++) {
        if (number % i == 0) {
          isPrime = false;
          break;
        }
      }
    }

    if (isPrime) {
      print('$number -> prime number');
    } else {
      print('$number -> not prime number');
    }
  }
}

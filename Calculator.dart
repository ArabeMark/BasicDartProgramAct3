import 'dart:io';

void main() {
  print('Dart Simple Calculator Program');
  print('--------------------------');

  print('1. Addition');
  print('2. Subtraction');
  print('3. Multiplication');  
  print('4. Division');

  stdout.write('Enter operator: ');
  String? operator = stdin.readLineSync();

  stdout.write('Enter 1st number: ');
  double? num1 = double.tryParse(stdin.readLineSync()!);

  stdout.write('Enter 2nd number: ');
  double? num2 = double.tryParse(stdin.readLineSync()!);

  if (num1 == null || num2 == null || operator == null) {
    print('Invalid input.');
    return;
  }

  double result;

  if (operator == '1') {
    result = num1 + num2;
    print('Result: $num1 + $num2 = $result');
  } else if (operator == '2') {
    result = num1 - num2;
    print('Result: $num1 - $num2 = $result');
  } else if (operator == '3') {
    result = num1 * num2;
    print('Result: $num1 * $num2 = $result');
  } else if (operator == '4') {
    if (num2 == 0) {
      print('Error: Division by zero.');
    } else {
      result = num1 / num2;
      print('Result: $num1 / $num2 = $result');
    }
  } else {
    print('Invalid operator.');
  }
}

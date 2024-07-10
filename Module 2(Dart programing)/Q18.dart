//Q-18. Write a Program of Addition, Subtraction ,Multiplication and 
// Division using Switch case.(Must Be Menu Driven)

import 'dart:io';

void main() {
  while (true) {
    print('Menu:');
    print('1. Addition');
    print('2. Subtraction');
    print('3. Multiplication');
    print('4. Division');
    print('5. Exit');
    print('Enter your choice: ');
    int choice = int.parse(stdin.readLineSync()!);

    if (choice == 5) {
      print('Exiting the program.');
      break;
    }

    print('Enter the first number: ');
    double num1 = double.parse(stdin.readLineSync()!);

    print('Enter the second number: ');
    double num2 = double.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        print('Result: ${num1 + num2}');
        break;
      case 2:
        print('Result: ${num1 - num2}');
        break;
      case 3:
        print('Result: ${num1 * num2}');
        break;
      case 4:
        if (num2 != 0) {
          print('Result: ${num1 ~/ num2}');
        } else {
          print('Error: Division by zero is not allowed.');
        }
        break;
      default:
        print('Invalid choice! Please enter a number between 1 and 5.');
    }
  }
}

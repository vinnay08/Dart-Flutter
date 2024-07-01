//Q-10. Write a Program to check the given number is Positive, Negative.

import 'dart:io';

void main(List<String> args) {
  print("Enter number : ");
  int num = int.parse(stdin.readLineSync()!);
  if (num == 0) {
    print("Number is Zero");
  } else if (num > 0) {
    print("Number is positive");
  } else {
    print("Number is Negative");
  }
}

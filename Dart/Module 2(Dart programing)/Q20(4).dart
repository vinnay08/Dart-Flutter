//Q-20. (4)Write a program you have to find the factorial of given number.

import 'dart:io';

void main(List<String> args) {
  int fac = 1;
  print("Enter number : ");
  int n = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= n; i++) {
    fac *= i;
  }
  print("Factorial is $fac");
}

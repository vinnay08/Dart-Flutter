//Q-20. (6) Write a program you have to print the table of given number

import 'dart:io';

void main(List<String> args) {
  print("Enter the number : ");
  int n = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= 10; i++) {
    print("$n * $i = ${n * i}");
  }
}

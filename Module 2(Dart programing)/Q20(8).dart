//Q-20. (8) Write a program to find out the max from given number (E.g. No: -1562
// Max number is 6

import 'dart:io';

void main(List<String> args) {
  print("Enter number : ");
  int n = int.parse(stdin.readLineSync()!);
  int max = 0;
  while (n > 0) {
    int digit = n % 10;
    if (digit > max) {
      max = digit;
    }
    n = n~/10;
  }
  print("Max number is $max");
}

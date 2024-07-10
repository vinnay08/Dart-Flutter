//Q-20. (9) Write a program make a summation of given number (Ex:- 1235 ans:- 11)

import 'dart:io';

void main(List<String> args) {
  print("Enter number : ");
  int n = int.parse(stdin.readLineSync()!);
  int sum = 0;
  while (n > 0) {
    int i = n % 10;
    sum += i;
    n = n ~/ 10;
  }
  print("Sum : $sum");
}

//Q-20. (10) Write a program you have to make a summation of first and last Digit. (E.g. 1234 ans:-5) 


import 'dart:io';

void main(List<String> args) {
  print("Enter number : ");
  int n = int.parse(stdin.readLineSync()!);
  int? last, first;
  last = n % 10;
  while (n > 0) {
    first = n;
    n = n ~/ 10;
  }
  
  int sum = first! + last;
  print("Sum of last and first digit : $sum");
}

//Q-14. Write a program to find the Max number from the given three
// number using Ternary Operator

import 'dart:io';

void main(List<String> args) {
  print("Enter A : ");
  int a = int.parse(stdin.readLineSync()!);
  print("Enter B : ");
  int b = int.parse(stdin.readLineSync()!);
  print("Enter C : ");
  int c = int.parse(stdin.readLineSync()!);
  int m = (a > b) ? (a > c ? a : c) : (b > c ? b : c);
  print("Largest number is $m");
}

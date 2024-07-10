//Q-13. Write a program to find the Max number from the given three
//number using Nested If

import 'dart:io';

void main(List<String> args) {
  print("Enter A : ");
  int a = int.parse(stdin.readLineSync()!);
  print("Enter B : ");
  int b = int.parse(stdin.readLineSync()!);
  print("Enter C : ");
  int c = int.parse(stdin.readLineSync()!);
  if (a > b) {
    if (a > c) {
      print("A is Grater");
    } else {
      print("C is Greater");
    }
  }
  if (b > a) {
    if (b > c) {
      print("B is Grater");
    } else {
      print("C is Greater");
    }
  }
}
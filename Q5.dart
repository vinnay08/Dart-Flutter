//Q-5. Write a program to find the Area of Triangle 

import 'dart:io';

void main(List<String> args) {
  print("Enter Bridth : ");
  int b = int.parse(stdin.readLineSync()!);
  print("Enter Height : ");
  int h = int.parse(stdin.readLineSync()!);
  print("Area of triangle ${(1 / 2) * b * h}");
}

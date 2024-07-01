//Q-6.  Write a program to find the simple Interest.

import 'dart:io';

void main(List<String> args) {
  print("Enter Principal Amount : ");
  double p = double.parse(stdin.readLineSync()!);
  print("Enter rate of interest : ");
  double r = double.parse(stdin.readLineSync()!);
  print("Enter the time you want to invest invested : ");
  double t = double.parse(stdin.readLineSync()!);
  print("Simple interest : ${p*(1 + r * t)}");
}

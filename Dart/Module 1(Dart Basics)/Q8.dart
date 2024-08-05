//Q-8. Write a program to calculate sum of 5 subjects & find the percentage. Subject marks entered by user. 

import 'dart:io';

void main(List<String> args) {
  print("Enter C marks : ");
  int s1 = int.parse(stdin.readLineSync()!);
  print("Enter C++ marks : ");
  int s2 = int.parse(stdin.readLineSync()!);
  print("Enter dart marks : ");
  int s3 = int.parse(stdin.readLineSync()!);
  print("Enter python marks : ");
  int s4 = int.parse(stdin.readLineSync()!);
  print("Enter react marks : ");
  int s5 = int.parse(stdin.readLineSync()!);
  int sum = s1 + s2 + s3 + s4 + s5;
  print("Sum of Subject marks : $sum");
  print("Percentage : ${(sum ~/ 500) * 100}%");
}

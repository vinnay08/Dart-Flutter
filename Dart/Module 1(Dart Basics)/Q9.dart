//Q-9. Write a Program to show swap of two No's without using third variable. 

import 'dart:io';

void main(List<String> args) {
  print("Enter A : ");
  int a = int.parse(stdin.readLineSync()!);
  print("Enter B : ");
  int b = int.parse(stdin.readLineSync()!);
  a = a + b;
  b = a - b;
  a = a - b;
  print("After swap A : $a After swap B : $b");
}

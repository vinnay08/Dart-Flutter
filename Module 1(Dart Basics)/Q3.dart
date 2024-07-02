//Q-3. Write a program to make a square and cube of number. 

import 'dart:io';

void main(List<String> args) {
  print("Enter num 1 : ");
  int a = int.parse(stdin.readLineSync()!);
  print("Square of no is : ${a * a}");
  print("Cube of no is : ${a * a * a}");
}

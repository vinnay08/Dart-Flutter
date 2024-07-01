//Q-4. Write a program to find the Area of Circle

import 'dart:io';

void main(List<String> args) {
  print("Enter radius : ");
  int r = int.parse(stdin.readLineSync()!);
  print("Area of circle is ${3.14 * r * r}");
}

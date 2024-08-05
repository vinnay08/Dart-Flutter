//Q-7. Write a program to convert temperature from degree centigrade to Fahrenheit. 

import 'dart:io';

void main(List<String> args) {
  print("Enter temp as Centigrade : ");
  double c = double.parse(stdin.readLineSync()!);
  print("Centigrade to Fahrenheit ${(c * (9 ~/ 5)) + 32}");
}

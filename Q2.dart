// Q-2. Write a program to make addition, Subtraction, Multiplication and 
// Division of Two Numbers. 


import 'dart:io';

void main(List<String> args) {
  print("Enter num 1 : ");
  int a = int.parse(stdin.readLineSync()!);
  print("Enter num 2 : ");
  int b = int.parse(stdin.readLineSync()!);
  print("Addition ${a + b}");
  print("Subtraction ${a - b}");
  print("Multiplication ${a * b}");
  print("Division ${a ~/ b} ");
}

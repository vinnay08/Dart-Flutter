//Q-20. (7) . Write a program to print the number in reverse order. 

import 'dart:io';

void main() {
  print('Enter a number: ');
  String input = stdin.readLineSync()!;

  String reversed = input.split('').reversed.join('');

  print('The number in reverse order is: $reversed');
}

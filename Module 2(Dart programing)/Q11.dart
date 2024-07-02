//Q-11. Write a Program to check the given year is leap year or not.

import 'dart:io';

void main(List<String> args) {
  print("Enter Year : ");
  int y = int.parse(stdin.readLineSync()!);
  if ((y % 4 == 0 && y % 100 != 0) || y % 400 == 0) {
    print("$y is leap year");
  } else {
    print("$y is not leap year");
  }
}

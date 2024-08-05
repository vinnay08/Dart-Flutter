//Q-12. Write a Program to check the given number is prime or not prime. 

import 'dart:io';

void main(List<String> args) {
  print("Enter Number : ");
  int n = int.parse(stdin.readLineSync()!);
  int c = 0;
  for (int i = 1; i <= n; i++) {
    if (n % 2 == 0) {
      c++;
    }
  }
  if (c == 2) {
    print("$n is Prime number");
  } else {
    print("$n is not prime number");
  }
}

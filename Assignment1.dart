/*
Assignment 1

1. Write an arrow function to check if the input number is even or odd.
2. Write a function with Optional Named Parameters.
3. Explain the Differentiate between required and optional parameters in Dart.
4. Give an example to find the difference of lists in Dart.
5. Write a Dart code to Swap Two Numbers.
6. Write a Dart function to find the Largest among Three Numbers.
7. Write a Dart function to Check Leap Year.
8. Write a Dart function to Find Factorial of a Number.
9. Write a Dart code to reverse a string.
10.Write a Dart function to check if a number is prime or not.
11.Write a Dart function to Display Prime Numbers between Two Intervals.
12.Write a Dart function to Find Factorial of a Number Using Recursion.
13.Write a Dart function to reverse a Sentence words Using Recursion.
14.How to find the largest and the smallest element in list?
15.Write a code to Multiply Two Matrix Using Multi-dimensional Lists.
*/

import 'dart:io';
import 'dart:math';

String checkEvenOdd(int i) => (i % 2 == 0) ? 'Even' : 'Odd';

OptionalNamedParam({int z = 0, int x = 0}) => print('Numbers are $z and $x');

void main() {
  print('Please Enter A no to check Even/Odd');
  int input = int.parse(stdin.readLineSync().toString());

//1. heck Wether the input is Even/Odd
  print(checkEvenOdd(input));
  print('----------------------------');
//2. Optional Named Parameters
  OptionalNamedParam(x: input, z: input);
  OptionalNamedParam();
  print('----------------------------');
//3. Explain

//4.

//5. Swap Two nos

  swap(int a, int b) {
    print('Before Swapping A is $a, B is $b');
    int temp;
    temp = a;
    a = b;
    b = temp;
    print('After  Swapping A is $a, B is $b');
  }

  print('We are going to swap two numbers');
  print('Enter First no:');

  int firstno = int.parse(stdin.readLineSync().toString());
  print('Enter Second no:');

  int secondno = int.parse(stdin.readLineSync().toString());

  swap(firstno, secondno);
  print('----------------------------');

//6.Write a Dart function to find the Largest among Three Numbers.
  int findLargest(int a, int b, int c) {
    int max;
    if (a > b)
      max = a;
    else
      max = b;
    if (max < c) max = c;
    return max;
  }

  print(findLargest(5, 1, 8));
  print('----------------------------');

//7.Write a Dart function to Check Leap Year.
  String checkYear(int z) => z % 4 == 0 ? 'Leap' : 'Non-Leap';
  print('Enter Year to check wheter Leap?');
  int year = int.parse(stdin.readLineSync().toString());
  print('The Entered Year is ' + checkYear(year));

//8. Write a Dart function to Find Factorial of a Number.
  print("Enter A No to Find it's Factorial");
  int num = int.parse(stdin.readLineSync().toString());

  int factorial(int z) {
    var factorial = 1;
    for (var i = num; i >= 1; i--) {
      factorial *= i;
    }
    return factorial;
  }

  print('Factorial of $num is ' + factorial(num).toString());
  print('----------------------------');

//9. Write a Dart code to reverse a string.
  print("Enter A string to reverse");
  String str = stdin.readLineSync().toString();
  String reverseString(String s) {
    List<String> newStr = [];
    List<String> newnewStr = [];
    for (int i = 0; i < str.length; i++) {
      newStr.add(str[i]);
    }
    // print(newStr.length);
    for (int z = newStr.length; z > 0; z--) {
      // print(newStr[z - 1]);
      newnewStr.add(newStr[z - 1]);
    }
    return newnewStr.join();
  }

  print(reverseString(str));
  print('----------------------------');

//10.Write a Dart function to check if a number is prime or not.
  bool CheckPrime(int a) {
    if (a <= 1) {
      return false;
    }

    for (int i = 2; i <= sqrt(a); i++) {
      if (a % i == 0) {
        return false;
      }
    }
    return true;
  }

  print('Enter number to check prime or no');
  int? n = int.parse(stdin.readLineSync()!);
  if (CheckPrime(n)) {
    print('$n is a prime');
  } else {
    print('$n is not a prime');
  }

  //11.Write a Dart function to Display Prime Numbers between Two Intervals.
  print('Enter First No');
  int? num1 = int.parse(stdin.readLineSync()!);
  print('Enter Second No');
  int? num2 = int.parse(stdin.readLineSync()!);

  for (int i = num1; i <= num2; i++) {
    checkPrime(i);
  }
  print('----------------------------');
}

void checkPrime(int num) {
  int i, m = 0, flag = 0;
  m = num ~/ 2;
  for (i = 2; i <= m; i++) {
    if (num % i == 0) {
      flag = 1;
      break;
    }
  }
  if (flag == 0) {
    print('$num');
  }

//12.Write a Dart function to Find Factorial of a Number Using Recursion.

//13.Write a Dart function to reverse a Sentence words Using Recursion.
//14.How to find the largest and the smallest element in list?

//15.Write a code to Multiply Two Matrix Using Multi-dimensional Lists.
}

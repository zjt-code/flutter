

import 'dart:io';

void main()
{

var x = 1;
var hex = 0xDEADBEEF;

print(x);
print(hex);

var y = 1.1;
var exponents = 1.42e5;

print(y);
print(exponents);

double z = 1; // 相当于 double z = 1.0.

print(z);

// String -> int
var one = int.parse('1');
assert(one == 1);

// String -> double
var onePointOne = double.parse('1.1');
assert(onePointOne == 1.1);

// int -> String
String oneAsString = 1.toString();
assert(oneAsString == '1');
print(oneAsString);

// double -> String
String piAsString = 3.14159.toStringAsFixed(2);
assert(piAsString == '3.14');
print(piAsString);


}
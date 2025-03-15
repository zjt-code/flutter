import 'dart:html';
import 'package:test/test.dart';

import 'package:lib1/lib1.dart';
import 'package:lib2/lib2.dart'; as lib2

Element element1 = Elment();
lib2.Element element2 = lib2.Element();


// Import only foo.
import 'package:lib1/lib1.dart' show foo;

// Import all names EXCEPT foo.
import 'package:lib2/lib2.dart' hide foo;


import 'package:greetings/hello.dart' deferred as hello;



Future greet() async {
  await hello.loadLibrary();
  hello.printGreeting();
}

void main()
{



}
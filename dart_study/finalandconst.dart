
final name ='b0b';
final String nickname = "Bobby";
const int bar = 1000000;
const  double atm = 1.01325 * bar;


var foo = const[];
final baz = const[];
const baa = [];

const Object i = 3; // Where i is a const Object with an int value...
const list = [i as int]; // Use a typecast.
const map = {if (i is int) i: 'int'}; // Use is and collection if.
const set = {if (list is List<int>) ...list}; // ...and a spread.

void main(){

  // name = 'Alice';

  print("hello world\r\n");
  print(atm);

  foo = [1,2.0,3,4.5];
  // baz = [5.0,1,4,7]
  print(foo);
  print(baz);
  print(baa);
  // assert(null);

}
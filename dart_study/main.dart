// void main() {
//   for (var i = 0; i < 10; i++) {
//     print('hello ${i + 1}');
//   }
// }

/****************** variable */
var name = 'Voyager I';
var year = 1977;
var antennaDiameter = 3.7;
var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
var image = {
  'tags': ['saturn'],
  'url': '//path/to/saturn.jpg'
};


void test_print()
{

 print(name);
  print(year);
  print(flybyObjects);
  print(year*antennaDiameter);
  print(image);

}
void main() {
  print('Hello, World!');
 
  test_print();
}
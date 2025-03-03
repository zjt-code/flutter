

import 'dart:ffi';
import 'dart:math';

void main()
{
  var p = Point(2, 2);
  
  assert(p.y==2);

  num distance = p.distanceTo(Point(4,4));
  print("distatnce = $distance");

  double dis = sqrt(8);


  print("p.x =${p.x}, p.y =${p.y}");
  print(dis);


var a = const ImmutablePoint(1, 1); // 创建一个常量对象
var b = ImmutablePoint(1, 1); // 创建一个非常量对象

assert(!identical(a, b)); // 两者不是同一个实例!

  assert(identical(a, b));

}
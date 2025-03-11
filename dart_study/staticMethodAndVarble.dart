import 'dart:math';
class Queue
{
  static const initialCapcity =16;
}

class Point{

  num x,y;

  Point(this.x,this.y);

  static num distanceBetween(Point a,Point b)
  {
    num dx = a.x-b.x;
    num dy = a.y-b.y;

    return sqrt(dx*dx + dy*dy);

  }

}

void main()
{

  print("initialCapcity=${Queue.initialCapcity}");
  print("Static method and varible");


  // var a = Point(1, 3),b=Point(4,6);

  num distance = Point.distanceBetween(Point(1,3), Point(4,5));
  print("distance = $distance");
}
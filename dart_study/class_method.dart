import 'dart:io';
import 'dart:math';
//method
class Point
{
  num x,y;
  Point(this.x,this.y);

  num distanceTo(Point other)
  {
    var dx = x-other.x;
    var dy = y-other.y;
    return sqrt(dx*dx+dy*dy);
  }



}

// getter and setter

class Rectangle{
  num left, top,width,height;
  Rectangle(this.left,this.top,this.width,this.height);

  //define calcution propertys, right and bottom

  num get right=>left+width;
  set right(num value)=>left=value-width;
  num get bottom=>top+height;
  set bottom(num value)=> top = value-height;
}


// abstract class
abstract class Doer
{
  void dosomething();

}

class EffectiveDor extends Doer
{

    void dosomething(){
    }

}

// externds class
class Television{
  void turnOn()
  {
    print("call Televeison turn on");
    _illuminateDisplay();
    _activeIrSensor();
  }
  //.....

  void _illuminateDisplay()
  {
        print("call _illuminateDisplay");
  }
  void _activeIrSensor()
  {
      print("call _activeIrSensor");
  }
}

// void Television _illuminateDisplay()
// {

// }
class SmartTelevision extends Television{

  // void turnOn()
  // {
  //   super.turnOn();
  //   _bootNetWorkInterface();
  //   _initializeMemory();
  //   _upgradeApps();

  // }
  // rewriter father methode
  // @override
  // void turnOn() {
  //     print("call smart tv turn on");
  // }
  void turnABC()
  {
    super.turnOn();
  }
}

//  Television:_illuminateDisplay()
// {


// }


// implicit interface
class Person{

  final _name;
  Person(this._name);

  String greet(String who)=>"hello,$who, I am $_name";
  
}

class Impostor implements Person{
  get _name=>'';

  String greet(String who)=>"Hi, $who,do you know who am I?, local name";
}

String greetBob(Person person)=>person.greet("bob");

void main()
{

  // var rect = Rectangle(3,4,20,15);
  // assert(rect.left ==3);
  // rect.right = 12;
  // assert(rect.left == -8);
  // print("hello world\r\n");

  // var tv = Television();
  // tv.turnOn();
  // tv._activeIrSensor();


  var smartTv = SmartTelevision();
  // smartTv.turnOn();
  smartTv.turnABC();

  print(greetBob(Person("Kaily")));
  print(greetBob(Impostor()));

}
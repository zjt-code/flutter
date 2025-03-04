// import 'dart:js_interop';
class Point{

  late num x=0,y=0;
  num z=0;

  // Point(num x,num y)  // construction
  // {
  //   this.x = x;
  //   this.y = y;
  // }

  // Point(this.x,this.y);

// initialize varible list
  // Point(Map<String,num> json)
  // :x=json['x'],y=json["x"]
  // {
  //   print("In point.fromJson:{$x,$y}");
  // }

  // Point.origin()  // name constructor
  // {
  //   x=0;
  //   y=0;
  // }
    
  // redirect constructor

    Point(this.x,this.y);
    Point.alongXAxis(num x):this(x,0);
     
}


//const constructor
class ImmutablePoint{
  static final ImmutablePoint origin= const ImmutablePoint(0,0);

  final num x,y;
  // num z;

  const ImmutablePoint(this.x,this.y);
}

//factory constructor

class logger{

  final String name;
  bool mute = false;
  static   Map<String,logger>_cache = <String,logger>{};

  factory logger(String name)
  {
      if(_cache.containsKey(name))
      { 
        return _cache[name];
      }
      else{
        final log =logger._internal(name);
        _cache[name]=log;
        return log;
              }
  }

  logger._internal(this.name);

  void log(String msg)
  {
    if(!mute)
    {
      print(msg);
    }
  }

}

void main()
{
  var point = Point(1,2);
  point.x=1;
  assert(point.x == 1);
  print("class");

  var myImmute = ImmutablePoint(4,5);

  print("myImmute.x = ${myImmute.x}");

  // print(myImmute.origin.x);
  print(ImmutablePoint.origin.x);

  var log = logger("zhang");
  // print(log.log("zsfs"));
  log.log("sfsfs");
}
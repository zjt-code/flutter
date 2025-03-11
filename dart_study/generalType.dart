// import '';



// import 'finalandconst.dart';

import 'dart:collection';

import 'varible.dart';

abstract class objectCache{

  Object getByKey(String key);
  void setByKey(String key, Object value);
}

abstract class stringCache{

  String getByKey(String key);
  void setByKey(String key, String value);
}


abstract class cache<T>{
  T getByKey(String Key);
  void setByKey(String , T value);

}

class View{

  
}
void main()
{

  print("General type");

  // List<String> names = [];
  // var names=[];

  // names.addAll(["Seth","Keith","Lars"]);
  // names.add(43);
  // print(names.length);
  // print(names[2].runtimeType);

var names = <String>['Seth', 'Kathy', 'Lars'];
var uniqueNames = <String>{'Seth', 'Kathy', 'Lars'};
var pages = <String, String>{
  'index.html': 'Homepage',
  'robots.txt': 'Hints for web robots',
  'humans.txt': 'We are people, not machines'
};

var nameSet = Set<String>.from(names);

print(nameSet.runtimeType);
print(nameSet);


var views = Map<int, View>();

print(views.runtimeType);
}
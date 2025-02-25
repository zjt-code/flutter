// map date
var _nobleGases = {
  2: 'helium',
  10: 'neon',
  18: 'argon',
};

// function

 isNoble(int atomicNumber) {
  return _nobleGases[atomicNumber] != null;
}

 bool isNolbe_b(int atomicNumber)=>_nobleGases[atomicNumber] !=null;
 
 // optional parameters

String say(String from, String msg,[String ?device])
{
  String result = "$from says $msg";
  if(device !=null)
  {
    result = "$result a with $device";
  }
  return result;
}


// list and map

void dostuff(
          {List<int> list= const[1,3,2],
          Map<String,String>gifts=const
          {"first":"paper",
          "second":'cotton',
          'third':'leather'}})
          {
                print('list:  $list');
                print('gifts: $gifts');
          }
// void main()
// {
//   print("hello world\r\n");

//   print(say("fasfs","fsfsfs","my phone" ));

//   dostuff();
// }


void printElement(int element)
{
  print(element);
}

var list=const[1,3,45,6];


void main(List<String> arguments) {
  print(arguments);

  // assert(arguments.length == 2);
  // assert(int.parse(arguments[0]) == 1);
  // assert(arguments[1] == 'test');

  list.forEach(print);
  list.forEach((item){
    print("${list.indexOf(item)}:$item");
  });

  list.forEach((item)=>print("${list.indexOf(item)}:$item"));
}
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

void main()
{
  print("hello world\r\n");

  print(say("fasfs","fsfsfs","my phone" ));
}
/// 返回一个函数，返回的函数参数与 [addBy] 相加。
Function makeAdder(num addBy) 
{
  return (num i) => addBy + i;
  // return newadd(num i){return addBy+ i;};
}

void main() {
  // 创建一个加 2 的函数。
  var add2 = makeAdder(2);

  // 创建一个加 4 的函数。
  var add4 = makeAdder(4);

  print(add2(3));
  print(add4(3));


  // assert(add2(3) == 5);
  // assert(add4(3) == 7);

  print("hewlo\r\n");
}
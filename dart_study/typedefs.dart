

// 在 Dart 中，函数也是对象，就想字符和数字对象一样。 使用 typedef ，或者 function-type alias 为函数起一个别名， 别名可以用来声明字段及返回值类型。 当函数类型分配给变量时，typedef会保留类型信息。

// 请考虑以下代码，代码中未使用 typedef ：

// 提示： 目前，typedefs 只能使用在函数类型上， 我们希望将来这种情况有所改变。

// class sortedColllection{

//   Function compare;

  // sortedColllection(int f(Object a, Object b))
  // {
  //   compare = f; 
  // }
  // sortedColllection(this.compare);
// }

typedef Compare = int Function(Object a, Object b);

class  sortedColllection{

  Compare compare;
  sortedColllection(this.compare);
}


int sort(Object a, Object b)=>0;



void main()
{
  sortedColllection coll = sortedColllection(sort);

  print(coll.compare.runtimeType);
  assert(coll.compare is Function);
  assert(coll.compare is Compare);


  print("typedefs dart");
}
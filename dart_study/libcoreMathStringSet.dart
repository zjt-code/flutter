
import 'dart:async';

void main()
{

// dart:core , int, double
  print(int.parse("42"));
  print(int.parse("0x42"));
  print(double.parse("0.50"));

  print(int.parse("42").runtimeType);
  print(int.parse("0x42").runtimeType);
  print(double.parse("0.50").runtimeType);

  // dart:core  ,num

  print(num.parse("43"));
  print(num.parse('0.5342'));

  print(num.parse("43").runtimeType);
  print(num.parse('0.5342').runtimeType);

  //通过添加 radix 参数，指定整数的进制基数：

  print(int.parse("42",radix:16));

  // 使用 toString() 方法将整型或双精度浮点类型转换为字符串类型。
  // 使用 toStringAsFixed(). 指定小数点右边的位数， 使用 toStringAsPrecision(): 指定字符串中的有效数字的位数。

  print(3131.toString());
  print(3131.toString().runtimeType);

  print(123.456.toString());
  print(123.456.toString().runtimeType);

  print(123.456.toStringAsFixed(2));

  print(123.455.toStringAsPrecision(2));
  print(1.2e+2.toStringAsFixed(6));


  // dart:core String
  // 检查一个字符串是否包含另一个字符串。
print('Never odd or even'.contains('odd'));

// 一个字符串是否以另一个字符串为开头?
print('Never odd or even'.startsWith('Never'));

// 一个字符串是否以另一个字符串为结尾?
print('Never odd or even'.endsWith('even'));

// 查找一个字符串在另一个字符串中的位置。
print('Never odd or even'.indexOf('odd') == 6);


// 抓取一个子字符串。
assert('Never odd or even'.substring(6, 9) == 'odd');

// 使用字符串模式分割字符串。
var parts = 'structured web apps'.split(' ');

for(var s in parts)
{
  print(s);
}
assert(parts.length == 3);
assert(parts[0] == 'structured');

// 通过下标获取 UTF-16 编码单元（编码单元作为字符串）。
assert('Never odd or even'[0] == 'N');

// 使用 split() 传入一个空字符串参数，
// 得到一个所有字符的 list 集合；
// 有助于字符迭代。
for (var char in 'hello'.split('')) {
  print(char);
}

// 获取一个字符串的所有 UTF-16 编码单元。
var codeUnitList =
    'Never odd or even'.codeUnits.toList();
assert(codeUnitList[0] == 78);



print("libcoreMathStringSet dart");
}
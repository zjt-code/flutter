
// 生成器
// 当您需要延迟生成( lazily produce )一系列值时， 可以考虑使用_生成器函数_。 Dart 内置支持两种生成器函数：

// Synchronous 生成器： 返回一个 Iterable 对象。
// Asynchronous 生成器： 返回一个 Stream 对象。
// 通过在函数体标记 sync*， 可以实现一个同步生成器函数。 使用 yield 语句来传递值：

Iterable<int> naturalsTo(int n)sync*{
  int k=0;
  while(k<n)yield k++;
}

Stream<int> asynchronousNaturalsTo(int n) async*{
  int k=0;
  while(k<n)yield k++;
}

// 如果生成器是递归的，可以使用 yield* 来提高其性能：

Iterable<int> naturalsDownFrom(int n) sync*{
  if(n>0)
  {
    yield n;
    yield* naturalsDownFrom(n-1);
  }
}


// Isolates
// 大多数计算机中，甚至在移动平台上，都在使用多核CPU。 为了有效利用多核性能，开发者一般使用共享内存数据来保证多线程的正确执行。 然而， 多线程共享数据通常会导致很多潜在的问题，并导致代码运行出错。

// 所有 Dart 代码都在隔离区（ isolates ）内运行，而不是线程。 每个隔离区都有自己的内存堆，确保每个隔离区的状态都不会被其他隔离区访问。

// 有关更多信息，请参考 dart:isolate library documentation. 。



void  main()
{

  print("generator dart");
}
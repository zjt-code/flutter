import 'dart:async';

Future<String> lookUpVersion() async=>"1.0.0";

Future checkVersion() async {

  try{
  
  var version = await lookUpVersion();
  // Do something with version
    return version;
  }catch(e)
  {
    // React to inability to look up the version
    print(e);
  }

  return "";
  // version.
}
// 如果在使用 await 导致编译时错误， 确认 await 是否在一个异步函数中。
//  await 表达式会阻塞代码的执行，直到需要的对象返回为止。
// Future test() async
// {
//   var entrypoint = await findEntrypoint();
//   var exitCode = await runExecutable(entrypoint, args);
//   await flushThenExit(exitCode);

// }

// await for (varOrType identifier in expression) {
//   // Executes each time the stream emits a value.
// }
// 上面 表达式 返回的值必须是 Stream 类型。 执行流程如下：

// 等待，直到流发出一个值。
// 执行 for 循环体，将变量设置为该发出的值
// 重复1和2，直到关闭流。
// 使用 break 或者 return 语句可以停止接收 stream 的数据， 这样就跳出了 for 循环， 并且从 stream 上取消注册。 **如果在实现异步 for 循环时遇到编译时错误， 请检查确保 await for 处于异步函数中。** 例如，要在应用程序的 main() 函数中使用异步 fo r循环， main() 函数体必须标记为 async` ：

// Future main() async {
//   // ...
//   await for (var request in requestServer) {
//     handleRequest(request);
//   }
//   // ...
// }


 main() 
{

  var abc = checkVersion();
  print(abc.asStream());
    // print("Main veerion ${checkVersion()}");

  print("synchronous dart");
}
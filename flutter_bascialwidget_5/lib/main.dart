import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
          colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 184, 25, 25)),
         inputDecorationTheme: InputDecorationTheme(
          // outlineBorder: BorderSide(
          //   color: Colors.green),
          //   focusColor: Colors.red.shade100,
          //   // hintStyle: TextStyle(inherit: false,color: Colors.red),
          //   alignLabelWithHint: false,
          //   // prefixIconColor: Colors.red,
          //   // prefixStyle: TextStyle(color: Colors.yellow),
          //   // focusedBorder:UnderlineInputBorder(borderSide: BorderSide(color: Colors.red)),
          //     // iconTheme: IconThemeData()
          //   // labelStyle: TextStyle(inherit: false,color:Colors.yellow),
              focusColor: Colors.yellow,
              hintStyle: TextStyle(color:Colors.amber),
              // ico
             ),
          // primaryIconTheme: IconThemeData(color:Colors.red),
        //  hintColor: Colors.red,
        //  focusColor: Colors.yellow,
      ),
      home: const MyHomePage(title: 'Lessons: TextField & Form'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  String usename="";
  String password="";

  final  TextEditingController _usernamecontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  final TextEditingController _textselectioncontroller = TextEditingController();

  final FocusNode _focusNod1 = FocusNode();
  final FocusNode _focusNod2 = FocusNode();
   FocusScopeNode ? _focusScopeNode = FocusScopeNode();

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  // Inital variable
   void initState() {
    // TODO: implement initState
    super.initState();

    _usernamecontroller.addListener((){
      debugPrint(_usernamecontroller.text);
    }
    );

    _passwordcontroller.addListener((){
      debugPrint(_passwordcontroller.text);
    });

    _textselectioncontroller.text="hello world!";
    _textselectioncontroller.selection=TextSelection(
      baseOffset: 2, 
      extentOffset:_textselectioncontroller.text.length);

      _focusNod1.addListener((){
         debugPrint(" focusNode1 == ${_focusNod1.hasFocus.toString()}");
      });

      
      _focusNod2.addListener((){
        debugPrint(" focusNode2 == ${_focusNod2.hasFocus.toString()}");
      });
  }


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
    

       // Padding(
          //padding: EdgeInsets.all(16.0),
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          //  mainAxisAlignment: MainAxisAlignment.start,

          
          child:Column(

            children: <Widget>[
            // const Text('You have pushed the button this many times:'),
            // Text(
            //   '$_counter',
            //   style: Theme.of(context).textTheme.headlineMedium,
            // ),
            TextField(autofocus: true,
            controller: _usernamecontroller,
            decoration: InputDecoration(
              labelText: "UserName:",
              hintText: "Username or Email",
              prefixIcon: Icon(Icons.person),
              // enabledBorder: UnderlineInputBorder(
              //   borderSide: BorderSide(color: Colors.grey),
              // ),
              // focusedBorder: UnderlineInputBorder(
              //   borderSide: BorderSide(color: Colors.blue),
              // ),
              //  prefixStyle: IconTheme(data: data, child: child)
              labelStyle: TextStyle(inherit: true),
              ),
              // onChanged: (value) {
              //   usename = value;
              //   debugPrint("username $value");
              // },    
              keyboardType: TextInputType.emailAddress,   
             // textInputAction: TextInputAction.done,
              //inputFormatters: [TextInputFormatter],  
                onSubmitted: (value) {
              debugPrint("call onSubmittted $value");
            },
              
            ),
            TextField(autofocus: true,
            controller: _passwordcontroller,
            decoration: InputDecoration(
              labelText: "Password",
              hintText: "Your login password",
              prefixIcon: Icon(Icons.lock),  
              //  enabledBorder: UnderlineInputBorder(
              //   borderSide: BorderSide(color: Colors.grey),
              // ),
              // focusedBorder: UnderlineInputBorder(
              //   borderSide: BorderSide(color: Colors.blue),
              // ),              
            ),
             keyboardType: TextInputType.text, 
             obscureText:true,   // password input ,hiden input2  
             textInputAction: TextInputAction.done,
            // onChanged: (value) {
            //   debugPrint("password: =$value");
            //   password = value;
            // },
            // onEditingComplete:(){
            //   debugPrint("call onEditingComplete");
            // },
            onSubmitted: (value) {
              debugPrint("call onSubmittted $value");
            },
            ),
            TextField(
              controller: _textselectioncontroller,
              
            ),

            TextField(

                focusNode: _focusNod1,
                decoration: InputDecoration(
                  labelText: "Input1",
                ),
            ),
            TextField(
                decoration: InputDecoration(labelText: "Input2"),
                focusNode: _focusNod2,
            ),
            ElevatedButton(onPressed:(){
                //  if(null == _focusScopeNode){
                //       _focusScopeNode = FocusScope.of(context);
                //     }
                 _focusScopeNode ??=FocusScope.of(context);
                    // if(_focusNod2 !=null){
                    //        _focusScopeNode.requestFocus(_focusNod2);
                    // }
                  
                debugPrint("Btn 1 pressed");
            }, child: Text("Move Foscous")),
            ElevatedButton(onPressed: (){
              _focusNod1.unfocus();
              _focusNod2.unfocus();
              debugPrint("BT2 Prewssed");
            },
             child: Text("Hide Focus")),
            ]
          )
       // ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

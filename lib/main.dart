import 'package:flutter/material.dart';

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
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          // TRY THIS: Try changing the color here to a specific color (to
          // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
          // change color while the other colors stay the same.
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
      
        body: Container(
          child: Column(
            children: [
              Container(
                width: 400,
                height: 80,
                margin: EdgeInsets.only(top: 5),
                alignment: Alignment.center,
                child: Text("Welcome to  Flutter ! ",
                style: TextStyle(
                  fontSize: 36.00
                ),),
      
              ),
              Container(
                width: 400,
                height: 50,
                color: Colors.tealAccent,
                margin: EdgeInsets.only(top: 5),
                alignment: Alignment.center,
                child: Text("Hello Flutter ! ",
                  style: TextStyle(
                      fontSize: 36.00
                  ),),
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                child: Row(
                  children: [
      
                    Expanded(child: Container(
                      height: 60,
                      color: Colors.blueGrey,
                      alignment: Alignment.center,
                      child: Text("Item 1"),
                    )),
                    Expanded(child: Container(
                      height: 60,
                      color: Colors.blueAccent,
                      alignment: Alignment.center,
                      child: Text("Item 1"),
      
                    )),
                    Expanded(child: Container(
      
                      height: 60,
                      color: Colors.cyan,
                      alignment: Alignment.center,
                      child: Text("Item 1", style: TextStyle(
                      ),),
                    ))
                  ],
                ),
              ),
      
              Container(
                width: 400,
                height: 50,
                margin: EdgeInsets.only(top: 5),
                alignment: Alignment.center,
                color: Colors.black38,
                child: Text("First ! ",
                  style: TextStyle(
                      fontSize: 26.00
                  ),),
      
              ),
              Container(
                width: 400,
                height: 50,
                margin: EdgeInsets.only(top: 5),
                alignment: Alignment.center,
                color: Colors.amber,
                child: Text("Second ! ",
                  style: TextStyle(
                      fontSize: 26.00
                  ),),
      
              ),
              Container(
                width: 400,
                height: 80,
                margin: EdgeInsets.only(top: 5),
                alignment: Alignment.center,
                color: Colors.blueGrey,
                child: Text("Third ! ",
                  style: TextStyle(
                      fontSize: 26.00
                  ),),
      
              ),
      
              Spacer(),
      
              Container(
                height: 80,
                margin: EdgeInsets.only(top: 5),
                alignment: Alignment.center,
                color: Colors.blueGrey,
                child: Text("Footer ! ",
                  style: TextStyle(
                      fontSize: 26.00
                  ),),
      
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

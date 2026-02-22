import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
final VoidCallback onTap;

class Mywight extends StatelessWidget {
  const Mywight({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(child: const Text("MyWight"));
  }
}


class MyButton extends StatelessWidget {
  final VoidCallback onTap;

  const MyButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      onDoubleTap: () {
        print("On Double tap");
      },
      onLongPress: () {
        print("On Long press");
      },
      child: Container(
        width: 180,
        height: 50,
        color: Colors.pink,
        child: const Center(
          child: Text("MY button"),
        ),
      ),
    );
  }
}
class MyFirstWidget extends StatelessWidget {
  const MyFirstWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(child: const Text("MyWight", style: TextStyle(color: Colors.deepOrangeAccent)));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 10;
  String _output = '';
  Color _counterColor = Colors.pink;

  @override
  void initState() {
    super.initState();
    _counter = 25;
    _is_oddOREvenn();
  }

  @override
  void didUpdateWidget(covariant MyHomePage oldWidget) {
    super.didUpdateWidget(oldWidget);
    _counter = 30;
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });

    _is_oddOREvenn();
  }

  void _is_oddOREvenn() {
      if (_counter % 2 == 0) {
        _output = "Even number";
        _counterColor = Colors.red;
      } else {
        _output = "Odd number";
        _counterColor = Colors.deepOrangeAccent;
      }
    print(_output);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                width: 400,
                height: 80,
                margin: const EdgeInsets.only(top: 5),
                alignment: Alignment.center,
                child: const Text(
                  "Welcome to  Flutter ! ",
                  style: TextStyle(
                    fontSize: 40.00,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              Container(
                width: 300,
                height: 50,
                margin: const EdgeInsets.only(top: 5),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.tealAccent,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Text(
                  "Hello Flutter ! ",
                  style: TextStyle(
                    fontSize: 36.00,
                    decoration: TextDecoration.overline,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                child: Center(
                  child: Text("Incrementer $_counter"),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 5),
                width: 350,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 60,
                        color: Colors.blueGrey,
                        alignment: Alignment.center,
                        child: const Text("Item 2"),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 60,
                        color: Colors.blueAccent,
                        alignment: Alignment.center,
                        child: const Text("Item 1"),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 60,
                        color: Colors.cyan,
                        alignment: Alignment.center,
                        child: const Text("Item 3"),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const MyFirstWidget(),

              Container(
                padding: const EdgeInsets.all(10),
                child: Text('This number is $_output',
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),

              ElevatedButton(
                onPressed: () {
                  _incrementCounter();
                },

                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  fixedSize: const Size(200, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text("ElevatedButton"),
              ),

              SizedBox(height: 10),

              TextButton(onPressed: () {
                _incrementCounter();
              },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  fixedSize: const Size(200, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text("ElevatedButton"),
              ),

              OutlinedButton(
                  onPressed: _incrementCounter, 
                  child: Text("Outline button")
              ),
              
              // IconButton(
              //     onPressed: _incrementCounter,
              //     icon: Icon(
              //       Icons.two_k_sharp,
              //       color: Colors.indigo,
              //     )
              // ),

              IconButton(
                  onPressed: _incrementCounter,
                  icon: Icon(
                    Icons.favorite,
                    color: _counterColor,
                  )
              ),
              
              
              MyButton(onTap: _incrementCounter),
              
              
              
              
              
              /*
              Container(
                width: 350,
                height: 50,
                ...
              ),
              */

              const Spacer(),

              Container(
                height: 80,
                margin: const EdgeInsets.only(top: 5),
                alignment: Alignment.center,
                color: Colors.blueGrey,
                child: const Text("Footer ! ", style: TextStyle(fontSize: 26.00)),
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
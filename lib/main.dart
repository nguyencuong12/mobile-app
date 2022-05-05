import 'package:flutter/material.dart';
import './widgets/drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.grey),
      home: const MyHomePage(title: 'Mobile App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.fromLTRB(5, 20, 5, 10),
            color: Colors.black26,
            width: MediaQuery.of(context).size.width,
            height: 300,
            child: Center(child: Text("CUONG")),
          ),
        ],
      ),
      // body: Center(
      //   child: Container(
      //     margin: const EdgeInsets.all(10.0),
      //     color: Colors.amber[600],
      //     width: MediaQuery.of(context).size.width,
      //     height: 300,
      //   ),
      // ),
      drawer: const DrawerWidget(),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

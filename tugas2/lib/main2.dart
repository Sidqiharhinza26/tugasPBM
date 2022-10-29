import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas 2 Flutter Sidqih',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: const MyHomePage(title: 'Name Changer'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var changing = true;
  String name = "Sidqih";
  void change() {
    setState(() {
      changing = !changing;
      if (changing) {
        name = "Sidqih";
      } else {
        name = "Sodiq";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('$name', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            width: 30,
          ),
          FloatingActionButton(
            onPressed: change,
            tooltip: 'Refresh',
            child: const Icon(Icons.change_circle_outlined, color: Colors.white),
            backgroundColor: Colors.indigo,
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
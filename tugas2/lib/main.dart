import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tugas 2 Flutter Sidqih',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: const MyHomePage(title: "Font Size Changer"),
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
  int numb = 12;
  var size = 15.0;

  void incrementNumber() {
    setState(() {
      size = size + 2.0;
      numb++;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title, style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('$numb', style: TextStyle(fontSize: size))
            ]),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            width: 30,
          ),

          FloatingActionButton(
            onPressed: incrementNumber,
            child: const Icon(Icons.add_circle_outline, color: Colors.white),
            backgroundColor: Colors.indigo,
          )
        ],
      ),
    );
  }
}
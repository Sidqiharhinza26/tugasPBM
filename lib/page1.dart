import 'package:flutter/material.dart';
import 'package:coba6/page2.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  final Future<SharedPreferences> _preference = SharedPreferences.getInstance();
  bool _boolean = false;

  void _booleanValue() async {
    final SharedPreferences prefs = await _preference;
    setState(() {
      _boolean = !_boolean;
      if (_boolean == true) {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Page2()));
      }
    });
    prefs.setBool('boolean', _boolean);
  }

  _getBool() async {
    final SharedPreferences prefs = await _preference;
    setState(() {
      _boolean = prefs.getBool('boolean') ?? _boolean;
      if (_boolean == true) {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Page2()));
      }
    });
  }

  void initState(){
    super.initState();
    _getBool();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 250,
          ),
          Center(
            child: Container(
              height: 40,
              width: 315,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.email,
                    size: 25,
                  )
                ),
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            height: 40,
            width: 315,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
                prefixIcon: Icon(
                  Icons.key,
                  size: 25,
                )
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: _booleanValue, 
            child: Text('Login'),
            style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black)),)
        ],
      ),
    );
  }
}
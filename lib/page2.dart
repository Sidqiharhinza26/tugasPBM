import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: const [
              Text('Profile',style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black)),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('../assets/profile.png')
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              height: 50,
              width: 315,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Card(
                child: ListTile(
                  title: Text(
                    "Muhamad Sidqih Arhinza Juliantara",
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Center(
            child: Container(
              height: 50,
              width: 315,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Card(
                child: ListTile(
                  title: Text(
                    "2010631170094",
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Center(
            child: Container(
              height: 50,
              width: 315,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Card(
                child: ListTile(
                  title: Text(
                    "5D",
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
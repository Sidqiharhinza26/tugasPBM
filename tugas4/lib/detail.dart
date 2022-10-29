import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:tugas4/model/food.dart';

class DetailPage extends StatelessWidget {
  final Risol risol;
  const DetailPage({super.key, required this.risol});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(scrollDirection: Axis.vertical, children: [
      Column(children: [
        SizedBox(height: 24),
        Container(
          height: 230,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(risol.photo))),
        ),
        SizedBox(height: 16),
        Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 243, 188, 25),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(risol.title,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    padding: EdgeInsets.all(10)),
                ],
              ),
            )
          ),
        Container(
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 219, 217, 212),
            ),
            child: Column(
              children: [
                Text(risol.description, style: TextStyle(fontSize: 15))
              ],
            )
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('back'),
            style: ElevatedButton.styleFrom(primary: Color.fromARGB(255, 0, 0, 0)))
      ]),
    ])
    );
  }
}
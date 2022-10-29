import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:tugas4/model/food.dart';
import 'package:tugas4/detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tugas 4 Flutter Sidqih',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Risol Mang Oyod'), backgroundColor: Color.fromARGB(255, 255, 149, 42)),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                SizedBox(height: 16),
                Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 16,
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(width: 200,),
                              Text('Menu Risol Mang Oyod',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black)),
                            ],
                          )
                        ])),
                SizedBox(height: 16),
                SizedBox(
                  height: 1000,
                  child: ListView.builder(
                      itemCount: risolList.length,
                      itemBuilder: (context, index) {
                        final item = risolList[index];
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 12),
                          child: ListTile(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(width: 1),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              title: Text(item.title),
                              subtitle: Text(item.description),
                              leading: Container(
                                width: 100,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(item.photo)
                                  )
                                ),
                              ),
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        DetailPage(risol: item),
                                  ))),
                        );
                      }),
                ),
                SizedBox(height: 16)
              ],
            ),
          ),
        ));
  }
}
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tugas 3 Flutter Sidqih',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          iconSize: 24,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
                color: Colors.grey,
              ),
              label: 'Beranda',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.chat,
                color: Colors.grey,
              ),
              label: 'Pesan',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.grey,
              ),
              label: 'Profil',
            ),
          ],
        ),
        body: SafeArea(
          child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 0),
                child: Column(
                  children: [
                    Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 5,
                          vertical: 16
                        ),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 54, 178, 236),
                            borderRadius: BorderRadius.circular(1)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('MengSehat',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                      fontSize: 25, color: Colors.white),
                                ),
                                SizedBox(height: 2,),
                                Text('Hai, Muhamad Sidqih',
                                  style: TextStyle(
                                        fontSize: 16, color: Colors.white)
                                ),
                                SizedBox(height: 4,),
                                Container(
                                  padding: EdgeInsets.only(left: 12),
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(95, 255, 255, 255),
                                    borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(Icons.search, size: 28, color: Colors.black54),
                                      SizedBox(width: 5),
                                      Text(' Apa yang kamu rasakan hari ini?',
                                          style: TextStyle(color: Colors.black54))
                                    ]
                                  )
                                ),
                              ]
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.grey,
                              radius: 30,
                              child: CircleAvatar(
                                radius: 28,
                                backgroundImage:
                                  AssetImage('assets/profile.png')
                              )
                            )
                          ],
                        )
                      ),
                    SizedBox(height: 20),
                    Image.asset('rs.png'),
                    SizedBox(height: 16),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Layanan',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold)),
                          Text('See All',
                              style: TextStyle(
                                  color: Colors.black45, fontSize: 16))
                        ]
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    ),
                    SizedBox(
                        height: 140,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                                width: 160,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 7.0, vertical: 7.0),
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 40,
                                      backgroundImage:
                                          AssetImage('assets/3.png'),
                                    ),
                                    SizedBox(height: 5),
                                    Text('Chat dengan dokter',
                                        overflow: TextOverflow.fade,
                                        maxLines: 2,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500)),
                                    SizedBox(height: 3)
                                  ],
                                )
                              ),
                            Container(
                                width: 160,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 7.0, vertical: 7.0),
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 40,
                                      backgroundImage:
                                          AssetImage('assets/3.png'),
                                    ),
                                    SizedBox(height: 5),
                                    Text('Rumah Sakit',
                                        overflow: TextOverflow.fade,
                                        maxLines: 2,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500)),
                                    SizedBox(height: 3),
                                  ],
                                )
                              ),
                            Container(
                                width: 160,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 7.0, vertical: 7.0),
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 40,
                                      backgroundImage:
                                          AssetImage('assets/3.png'),
                                    ),
                                    SizedBox(height: 5),
                                    Text('Apotek',
                                        overflow: TextOverflow.fade,
                                        maxLines: 2,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500)),
                                    SizedBox(height: 3),
                                  ],
                                )
                              ),
                            Container(
                                width: 160,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 7.0, vertical: 7.0),
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 40,
                                      backgroundImage:
                                          AssetImage('assets/3.png'),
                                    ),
                                    SizedBox(height: 5),
                                    Text('Ambulan',
                                        overflow: TextOverflow.fade,
                                        maxLines: 2,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500)),
                                    SizedBox(height: 3),
                                  ],
                                )
                            )
                          ],
                        )
                      ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    ),
                  ],
                )
          )
        )
                
    );
  }
}
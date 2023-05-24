import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:monstera_green_house/screen/buttomnav/airhumdity_screen.dart';
import 'package:monstera_green_house/screen/buttomnav/soilmoisture_screen.dart';
import 'package:monstera_green_house/screen/buttomnav/temperature_screen.dart';
import 'package:monstera_green_house/screen/buttomnav/watervalve_screen.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    WatervalveScreen(),
    SoilmoistureScreen(),
    AirhumdityScreen(),
    TemperatureScreen()
  ];
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  var router_path = [
    "/watervalve",
    "/soilmoisture",
    "/airhumdity",
    "/temperature"
  ];

  var services = [
    "Water Valve",
    "Soil Moisture",
    "Air Humidity",
    "Temperature"
  ];

  var images = [
    "assets/images/aa.png",
    "assets/images/bb.png",
    "assets/images/cc.png",
    "assets/images/dd.png"
  ];

  //การเตรียม firebase
  Future<FirebaseApp> firebase = Firebase.initializeApp();
  //สร้าง collection ที่ firestore
  // CollectionReference users = FirebaseFirestore.instance.collection('users');

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: firebase,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Scaffold(
              appBar: AppBar(
                title: Text("Error"),
              ),
              body: Center(
                child: Text("${snapshot.error}"),
              ),
            );
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return Container(
              margin: EdgeInsets.only(top: 120.0),
              child: GridView.builder(
                itemCount: services.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: MediaQuery.of(context).size.width /
                        (MediaQuery.of(context).size.height / 2.4)),
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: InkWell(
                      onTap: () {
                        onTabTapped(index);
                        print(index);
                        Navigator.pushNamed(context, router_path[index],
                            arguments: index);
                      },
                      child: Column(children: [
                        SizedBox(
                          height: 20,
                        ),
                        Image.asset(
                          images[index],
                          height: 50,
                          width: 50,
                        ),
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            services[index],
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w600),
                          ),
                        )
                      ]),
                    ),
                  );
                },
              ),
            );
          }
          return Scaffold(
            body: _children[_currentIndex],
          );
          // return const SizedBox();
        });
  }
}

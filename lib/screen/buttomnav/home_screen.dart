import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: services.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: MediaQuery.of(context).size.width /
              (MediaQuery.of(context).size.height / 2.4)),
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: InkWell(
            onTap: () {},
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
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
              )
            ]),
          ),
        );
      },
    );
  }
}

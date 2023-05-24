import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class WatervalveScreen extends StatefulWidget {
  const WatervalveScreen({super.key});

  @override
  State<WatervalveScreen> createState() => _WatervalveScreenState();
}

class _WatervalveScreenState extends State<WatervalveScreen> {
  bool on = false;

  final dbR = FirebaseDatabase.instance.ref();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Water Valve"),
      ),
      body: Center(
        child: Column(
          children: [
            on
                ? Icon(
                    Icons.lightbulb,
                    size: 100,
                    color: Colors.amber.shade700,
                  )
                : Icon(
                    Icons.lightbulb_outline,
                    size: 100,
                  ),
            ElevatedButton(
                style: TextButton.styleFrom(
                    backgroundColor: on ? Colors.green : Colors.white10),
                onPressed: () {
                  dbR.child("Valve").set({"Switch": !on});
                  setState(() {
                    on = !on;
                  });
                },
                child: on ? Text("On") : Text("Off"))
          ],
        ),
      ),
    );
  }
}
